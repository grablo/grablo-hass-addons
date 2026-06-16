# Grablo IoT Core

**Turn imagination into reality. Build expert-level AI IoT devices without coding.**

[Grablo](https://grablo.co) is a web-based, no-code platform for AI-powered IoT. You
build logic by placing blocks instead of writing code, add AI vision and audio without
any machine-learning expertise, and monitor and control your devices from a web and
mobile dashboard. This add-on runs the Grablo engine next to Home Assistant, so your
Grablo projects can also read, control and expose Home Assistant entities.

> You build and control everything from the **[Grablo web app](https://app.grablo.co)**.
> This add-on does not serve its own UI.

---

## What you can do

- **No-code automation:** build logic visually with blocks (conditions, actions,
  controls) in the web app; the Grablo engine runs it.
- **Industrial & IoT protocols:** MQTT, Modbus (RTU/TCP, master & slave), OPC-UA,
  HTTP, Zigbee (bundled Zigbee2MQTT), Telegram, email.
- **AI vision & audio:** object/face detection, pose, hand, OCR, QR, color & line
  tracking; speech-to-text and text-to-speech (cloud or on-device); custom models
  (Teachable Machine, Edge Impulse).
- **Home Assistant:** read and control Home Assistant entities, and expose Grablo
  variables back as entities.
- **Dashboard & data:** web and mobile dashboard; database, data logging, LLM queries,
  and notifications (push, Telegram, email).

---

## Home Assistant connection

When Grablo runs as this add-on, it connects to your Home Assistant automatically, with
no access token to set up.

In the Grablo web app, open the device's **Home Assistant** settings and keep
**Add-on mode** on (the default). Turn it off only to connect to a different Home
Assistant instance, then enter that server's address and token.

---

## Getting started

1. **Install** this add-on and press **Start**.
2. Once the add-on is running, open the
   **[Grablo web app](https://app.grablo.co)**, sign in, and **connect** to your device.
3. Build your project, add the **Home Assistant** integration, and keep
   **Add-on mode** on.

New to Grablo? Browse the [Project Gallery](https://app.grablo.co/gallery) to find
community projects you can copy and build on.

Your settings, models, security keys and Zigbee pairing are stored on the add-on's
`/data` volume, so they survive add-on updates and restarts.

---

## Hardware

There's nothing to configure here. You set up everything in the Grablo web app, and the
add-on just needs to run.

USB camera (AI video), USB serial (Modbus RTU), Zigbee dongle and audio work
automatically. If a specific USB camera isn't detected, add its node under `devices:`
(e.g. `/dev/video0`).

---

## Links

- Website: **https://grablo.co**
- Web app: **https://app.grablo.co**
- Project gallery: **https://app.grablo.co/gallery**
- Documentation & release notes: **https://doc.grablo.co**
