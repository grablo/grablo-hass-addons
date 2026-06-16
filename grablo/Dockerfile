# Grablo IoT Core — HA add-on image.
# Built on the HA base (build.yaml) using the same recipe as the standalone image:
# fetch the public release .deb and extract it (install scripts are not run).
ARG BUILD_FROM
FROM ${BUILD_FROM}

ARG GRABLO_VERSION=1.20.0
ARG TARGETARCH
ENV DEBIAN_FRONTEND=noninteractive \
    LD_LIBRARY_PATH=/usr/lib/grablo \
    GRABLO_CONTAINER=1 \
    S6_KEEP_ENV=1
# S6_KEEP_ENV=1: the HA base image runs the entrypoint under s6-overlay, which by
# default starts services with a BLANK environment. Without this, the Supervisor-
# injected SUPERVISOR_TOKEN never reaches grablo → add-on auto-auth (controller
# 1.20.0+) silently fails. Verified on a real HAOS VM. (s6-overlay README: if
# S6_KEEP_ENV is set, the whole supervision tree sees the original env vars.)

# Runtime dependencies (same set as grablo-docker/Dockerfile — keep in sync).
RUN apt-get update && apt-get install -y --no-install-recommends \
      vlc libvlc5 libxss1 libltdl7 libssh2-1 libcurl4 libatomic1 \
      libusb-1.0-0 libpq5 unixodbc libpulse0 libvulkan1 \
      pulseaudio pulseaudio-utils alsa-utils libharfbuzz0b libxml2 \
      libfreetype6 mosquitto ca-certificates curl \
      libxcursor1 libxinerama1 libxrandr2 libwayland-cursor0 \
      libgstreamer1.0-0 libgstreamer-plugins-base1.0-0 \
 && rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    arch="${TARGETARCH:-amd64}"; \
    curl -fsSL -o /tmp/grablo.deb \
      "https://downloads.grablo.co/releases/grablo_${GRABLO_VERSION}_${arch}.deb"; \
    dpkg-deb -x /tmp/grablo.deb /tmp/grablo-root; \
    cp -a /tmp/grablo-root/usr/bin/grablo /usr/bin/; \
    cp -a /tmp/grablo-root/usr/lib/grablo /usr/lib/; \
    rm -rf /tmp/grablo.deb /tmp/grablo-root; \
    ldconfig /usr/lib/grablo

COPY rootfs/entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r$//' /entrypoint.sh \
 && chmod +x /entrypoint.sh /usr/bin/grablo/grablo

WORKDIR /usr/bin/grablo
CMD ["/entrypoint.sh"]
