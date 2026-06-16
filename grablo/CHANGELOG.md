# Changelog

## 1.20.1

- Fix USB camera detection: expose host video devices (`/dev/video*`) to the add-on so
  the controller finds USB cameras via V4L2.

## 1.20.0

Initial release. Grablo IoT Core as a Home Assistant add-on.

- Runs the Grablo engine next to Home Assistant. Build and control it from the Grablo
  web app.
- Connects to Home Assistant automatically, with no access token to set up.
- USB camera, USB serial, Zigbee and audio are supported.
- Settings, models, security keys and Zigbee pairing persist across add-on updates and
  restarts.

Full release notes: https://doc.grablo.co
