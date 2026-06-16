# Grablo IoT Core

Run Grablo IoT Core next to Home Assistant. [Grablo](https://grablo.co) is a web-based,
no-code platform for AI IoT and automation: you build logic visually with blocks, add AI
vision and audio without any machine-learning expertise, and monitor and control
everything from a web and mobile dashboard.

You build and control everything from the **[Grablo web app](https://app.grablo.co)**;
this add-on has no UI of its own.

## What you can do

- **No-code automation:** build logic visually with blocks (conditions, actions,
  controls); the Grablo engine runs it.
- **Industrial & IoT protocols:** MQTT, Modbus (RTU/TCP, master & slave), OPC-UA, HTTP,
  Zigbee (bundled Zigbee2MQTT), Telegram, email.
- **AI vision & audio:** object/face detection, pose, hand, OCR, QR, color & line
  tracking; speech-to-text and text-to-speech (cloud or on-device); custom models
  (Teachable Machine, Edge Impulse).
- **Home Assistant:** read and control Home Assistant entities, and expose Grablo
  variables back as entities.
- **Dashboard & data:** web and mobile dashboard; database, data logging, LLM queries,
  and notifications (push, Telegram, email).

## Installation

1. Install the add-on and press **Start**.
2. Open the **[Grablo web app](https://app.grablo.co)**, sign in, and **connect** to
   your device.
3. Build your project, add the **Home Assistant** integration, and keep **Add-on mode**
   on.

New to Grablo? Browse the [Project Gallery](https://app.grablo.co/gallery) to find
community projects you can copy and build on.

## Home Assistant connection

When Grablo runs as this add-on, it connects to your Home Assistant automatically, with
no access token to set up. In the Grablo web app, open the device's **Home Assistant**
settings and keep **Add-on mode** on (the default). Turn it off only to connect to a
different Home Assistant instance, then enter that server's address and token.

## Configuration

This add-on has no options to configure. You build and set up everything in the Grablo
web app; the add-on just needs to run.

## Hardware

USB camera (AI video), USB serial (Modbus RTU), Zigbee dongle and audio work
automatically. If a specific USB camera isn't detected, add its node under `devices:`
(e.g. `/dev/video0`).

## Data and persistence

Your settings, models, security keys and Zigbee pairing are stored on the add-on's
`/data` volume, so they survive add-on updates and restarts.

## Support

- Website: **https://grablo.co**
- Web app: **https://app.grablo.co**
- Project gallery: **https://app.grablo.co/gallery**
- Documentation and release notes: **https://doc.grablo.co**
