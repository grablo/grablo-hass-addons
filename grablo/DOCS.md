# Grablo IoT Core

**Turn imagination into reality — build expert-level AI IoT devices without coding.**

[Grablo](https://grablo.co) is a web-based, no-code platform for AI-powered IoT. You
build logic by placing blocks instead of writing code, add AI vision and audio
without any machine-learning expertise, and monitor and control your devices from a
web and mobile dashboard, anywhere — with no extra setup. This add-on runs the Grablo
engine right next to Home Assistant, so your Grablo projects can also read, control,
and expose Home Assistant entities.

> You build and control everything from the **[Grablo web app](https://app.grablo.co)** —
> this add-on does not serve its own UI.

---

## What you can do

- **Block coding** — build programs by placing and nesting blocks: math, date/time,
  text, JSON/XML, files, scheduling, database, multimedia, network, IoT and
  industrial communication.
- **Algorithm blocks** — express goals as *conditions* and *actions* for powerful,
  flexible logic — no programming required.
- **AI without ML expertise** — built-in vision (object detection, face recognition,
  pose estimation, hand & color tracking) and audio (speech-to-text, text-to-speech);
  connect custom models such as Teachable Machine or Edge Impulse.
- **Device library** — Arduino / Raspberry Pi device libraries built in: search a
  device, pick a command, use it right away.
- **Web & mobile dashboard** — control and monitor your devices from any browser or
  your phone, with no extra setup; build widgets in a few clicks.
- **Home Assistant** — read and control HA entities from your Grablo logic, and
  expose Grablo variables back to Home Assistant as entities.

---

## Home Assistant connection

When Grablo runs as this add-on, it connects to your Home Assistant **automatically —
there is no access token to set up.**

In the Grablo web app, open the device's **Home Assistant** settings and keep
**Add-on mode** on (the default). Turn it off only if you want to connect to a
*different* Home Assistant instance, in which case enter that server's address and
token.

---

## Getting started

1. **Install** this add-on and press **Start**.
2. Once it connects to the Grablo cloud, open the
   **[Grablo web app](https://app.grablo.co)**, sign in, and **pair** the device that
   appears.
3. Build your project, add the **Home Assistant** integration, and keep
   **Add-on mode** on.

Your device identity, settings, AI/speech models, security keys and Zigbee pairing
are stored on the add-on's `/data` volume, so they **survive add-on updates and
restarts**.

---

## Hardware

There's nothing to configure here — you build and configure everything in the Grablo
web app. The add-on just needs to run.

USB camera (AI video, via V4L2), USB serial (Modbus RTU), Zigbee dongle and audio are
provided by the Supervisor through the add-on's permissions (host network, audio, usb,
uart, udev). **No `privileged` / `full_access` needed.** If a specific USB camera isn't
detected, add its node under `devices:` (e.g. `/dev/video0`).

---

## Links

- Website: **https://grablo.co**
- Web app: **https://app.grablo.co**
- Documentation & release notes: **https://doc.grablo.co**
