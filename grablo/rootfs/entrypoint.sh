#!/bin/bash
# ============================================================================
# Grablo HA add-on entrypoint (mirrors grablo-docker/entrypoint.sh — keep in sync).
# HA add-ons get a persistent /data automatically; everything else lives in the
# container's writable layer and is LOST on add-on update/restart — so all of
# grablo's writable data is redirected onto /data below.
# ============================================================================
set -e

DATA_DIR="${GRABLO_DATA_DIR:-/data}"

# 1) Device identity persistence (stable pairing across recreation/updates)
if [ -s "${DATA_DIR}/machine-id" ]; then
    cp "${DATA_DIR}/machine-id" /etc/machine-id
elif [ ! -s /etc/machine-id ]; then
    cat /proc/sys/kernel/random/uuid | tr -d '-' > /etc/machine-id
    if [ -d "${DATA_DIR}" ] || mkdir -p "${DATA_DIR}" 2>/dev/null; then
        cp /etc/machine-id "${DATA_DIR}/machine-id" 2>/dev/null || true
    fi
fi
echo "[entrypoint] device identity ready"

# 1b) Persist grablo's writable data on /data — for HA add-ons ONLY /data survives
# updates/restarts. Redirect each data dir to a /data subdir via symlink, migrating
# any pre-existing content once. (The standalone Docker image persists these via
# named volumes; add-ons can't add volumes, so /data is the equivalent.)
persist_to_data() {
    real="$1"; store="${DATA_DIR}/$2"
    mkdir -p "$store"
    if [ -e "$real" ] && [ ! -L "$real" ]; then
        cp -an "$real/." "$store/" 2>/dev/null || true
        rm -rf "$real"
    fi
    mkdir -p "$(dirname "$real")"
    ln -sfn "$store" "$real"
}
persist_to_data /etc/grablo            config    # settings + secure/ + zigbee.conf
persist_to_data /usr/share/grablo      share     # AI/speech/LPR models + face DB
persist_to_data /var/grablo            var       # downloads / datalog
persist_to_data /var/lib/.syscache     syscache  # security key/salt
persist_to_data /usr/lib/grablo/zigbee zigbee    # zigbee runtime + paired-device DB
echo "[entrypoint] persistent dirs linked to ${DATA_DIR} (config/share/var/syscache/zigbee)"

# 2) Library cache
ldconfig /usr/lib/grablo 2>/dev/null || true

# 3) Audio — Supervisor (audio: true) injects PulseAudio; PULSE_SERVER is provided.
[ -n "${PULSE_SERVER}" ] && echo "[entrypoint] PULSE_SERVER=${PULSE_SERVER}"

# 4) Remove stale single-instance lock (grablo records PID 1; /run persists across
#    restarts). Harmless once the controller uses flock; safe belt-and-suspenders.
rm -f /run/grablo.pid

# 5) Mirror grablo's file log to stdout so HA add-on logs show it.
if [ "${GRABLO_LOG_STDOUT:-1}" = "1" ]; then
    tail -n0 -F /var/log/grablo/log.txt 2>/dev/null &
fi

# 6) Run grablo as PID 1.
echo "[entrypoint] exec grablo ..."
exec /usr/bin/grablo/grablo
