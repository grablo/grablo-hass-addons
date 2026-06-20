# Changelog

## 1.22.0

- AI: stabilized model output timing; detection confidence hysteresis to remove
  boundary flicker on object/face detection.
- AI: face-recognition identity sessions anchored to ByteTrack tracks for steadier IDs.
- Actions: calling a disabled action group / control / control group is now skipped
  as success instead of raising an error.
- Conditions: fixed schedule / time-range condition edge cases.
- File system: added DATA_DIR command; consistent HOME/TEMP/DATA accessors.
- Data log: FILE_FETCH max dimension raised to 4096 (full-screen fit).

Full release notes: https://doc.grablo.co

## 1.21.0

- Faster RUN startup: the engine now initializes only the devices and integrations that the
  active logic actually uses (demand-init), instead of every configured setting.
- AI camera: standardized V4L2 camera probing for containerized deployments (HA add-on),
  with more reliable fallback init and reconnect.
- Internal logging cleanup.

Full release notes: https://doc.grablo.co

## 1.20.0

Initial release. Grablo IoT Core as a Home Assistant add-on.

- Runs the Grablo engine next to Home Assistant. Build and control it from the Grablo
  web app.
- Connects to Home Assistant automatically, with no access token to set up.
- USB camera, USB serial, Zigbee and audio are supported.
- Settings, models, security keys and Zigbee pairing persist across add-on updates and
  restarts.

Full release notes: https://doc.grablo.co
