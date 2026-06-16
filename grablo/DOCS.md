# Grablo IoT Core

**Build expert‑level AI IoT devices — without coding.**

[Grablo](https://grablo.co) is a web‑based, no‑code platform for AI IoT. Place
blocks instead of writing code, and control everything from a web dashboard —
anywhere. This add‑on runs **Grablo IoT Core** right next to Home Assistant so
your Grablo projects can read, control, and expose Home Assistant entities.

> You pair and control the device from the **[Grablo web app](https://grablo.co)** —
> this add‑on does not serve its own UI.

---

## What you can do

- **Algorithm blocks** — build logic by placing blocks, no programming required.
- **Web dashboard** — monitor and control your device from anywhere.
- **AI, no ML knowledge needed** — vision (object detection, face recognition,
  pose, hand tracking) and voice (speech‑to‑text, text‑to‑speech).
- **Device library** — Arduino‑style device libraries built in.
- **Home Assistant** — expose Grablo variables as HA entities, and read/control
  existing HA entities from your Grablo logic.

---

## Home Assistant connection (zero‑config)

When Grablo runs as this add‑on, it can talk to Home Assistant **through the
Supervisor — no Long‑Lived Access Token required.**

In the Grablo web app, open the device's **Home Assistant** settings and turn on
**Add‑on mode** (default on). The connection address and token are filled in
automatically. Turn it off only if you want to connect to a *different* Home
Assistant instance, in which case enter that server's address and token.

---

## Getting started

1. **Install** this add‑on and press **Start**.
2. Once it connects to the Grablo cloud, open the
   **[Grablo web app](https://grablo.co)**, sign in, and **pair** the device
   that appears.
3. Build your project, add the **Home Assistant** integration, and keep
   **Add‑on mode** on.

Your device identity, settings, AI/speech models, security keys and Zigbee
pairing are stored on the add‑on's `/data` volume, so they **survive add‑on
updates and restarts**.

---

## Configuration

| Option | Description |
|---|---|
| `license_key` | Optional Grablo license key. Leave empty for the free tier. |

Hardware — USB camera (AI video, via V4L2), USB serial (Modbus RTU), Zigbee dongle,
and audio — is provided by the Supervisor through the add‑on's permissions
(host network, audio, usb, uart, udev). **No `privileged` / `full_access` needed.**
If a specific USB camera isn't detected, add its node under `devices:` (e.g. `/dev/video0`).

---

## Links

- Website: **https://grablo.co**
- Documentation & release notes: **https://doc.grablo.co**
