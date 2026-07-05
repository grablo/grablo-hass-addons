# Changelog

## 1.25.0

- Add a "hold" option to the delay timer (PEND) that keeps the output on while the condition stays true, and restore the original timer to its proper behavior.
- Improve log management: delete multiple logs at once with their captured files, apply the retention limit to manual entries, and reclaim storage automatically.
- Show the number of enrolled samples per person in the face recognition list, and block invalid characters in names that could corrupt the list.
- Automatically recover live camera video that could get stuck while connecting.
- Detect capture saves that could silently fail when storage is full, and fix captures saved to subfolders.
- Fix a rare error during video recognition processing for more stable operation.

Full release notes: https://doc.grablo.co

## 1.24.1

- Fix a vision processing concurrency bug (use-after-free) that could crash the controller under load.
- Clear stale logic state when preparing a RUN, so a previously failed RUN no longer leaves residual logic behind.

Full release notes: https://doc.grablo.co

## 1.24.0

- Fix MQTT subscribe when the client ID is empty (force clean session so standard brokers accept it).
- Deterministic speech model path resolution for TTS/STT.
- File downloads integrated into demand-init (only active features are fetched).

Full release notes: https://doc.grablo.co

## 1.23.0

- AI object detection engine switched to YOLOX (ncnn + Vulkan) for better accuracy.
- AI: per-detection input-region (ROI) cropping extended to all vision models.
- AI: object-detection commands consolidated with multi-class filtering.
- AI: detection-FPS cap with box smoothing (hold) to remove trailing artifacts.
- AI: model output timing stabilized; detection confidence hysteresis.
- Push notifications: attached images are downscaled to a banner thumbnail.

Full release notes: https://doc.grablo.co

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
