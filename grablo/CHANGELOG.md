# Changelog

## 1.28.1

- Region labels are now anchored to the topmost vertex of the shape — on angled polygons the label no longer floats away from the region it names.
- Regions drawn as polygons were missing their labels entirely; they are now drawn.
- Labels are kept inside the frame, so regions at the top or right edge no longer have their label clipped or hidden.
- Region outlines use one consistent colour regardless of shape, so they are no longer confused with detection results.

Full release notes: https://doc.grablo.co

## 1.28.0

- Custom Anomaly: preview inference now runs on demand, draws defect boxes at your own threshold, and reports the decision thresholds actually applied.
- Custom Anomaly: heatmaps and defect boxes are smoothed (anomalib-style), and the normal-score distribution is returned after fitting.
- Custom Anomaly inference is roughly 4x faster — distance computation now uses all CPU cores instead of one.
- Zone/ROI polygon masking is available across all AI analyzers, and face recognition no longer ignores its input region.
- Training samples can be registered straight from log event snapshots, with untrained sample ids and counts reported back.
- STOP-mode preview now honors the analyzer settings (detection FPS, GPU, sensitivity, minimum face area).
- Data logging: actions choose their own log target, channels open lazily with an open-handle limit, and the file-descriptor limit is raised at startup — fixing P2P connection failures caused by fd exhaustion.
- Fixed logs being unreadable in STOP mode and a deadlock that froze anomaly preview and the AI thread.

Full release notes: https://doc.grablo.co

## 1.27.0

- Network audio input: use a network stream (RTSP and other protocols) as an audio source for STT, Audio Analyzer, and AI Audio Analyzer.
- Network audio streams now automatically reconnect across all protocols after a drop, without restarting the controller.
- TRIGGER_ONCE is now self-contained: a single one-shot analysis that writes its result without needing a separate continuous subscription.
- Fixed a crash, lost STT results, and slow teardown during network audio reconnection.
- Fixed TRIGGER_ONCE losing output for multiple consumers and killing coexisting continuous (ADD) subscriptions.

Full release notes: https://doc.grablo.co

## 1.26.0

- On-device Vision AI training and management from Studio: Custom Classification training, live Face enrollment, and License Plate registration — applied without a rebuild.
- Vision analyzer cards and live previews now show detection confidence (%).
- Added visual anomaly detection (PatchCore) for inspection use cases.

Full release notes: https://doc.grablo.co

## 1.25.2

- Harden ONVIF camera handling for reliability with multiple cameras: fix rare parallel-initialization thread-safety races and memory-safety issues across discovery, authentication, and streaming so cameras connect consistently even under heavy or malformed network responses.

Full release notes: https://doc.grablo.co

## 1.25.1

- Fix ONVIF camera discovery so cameras that advertise an unreachable service address (e.g. some Dahua models) now connect reliably by matching the address that actually replied.
- Fix the SQL Database output action inserting each row twice, and harden database result handling for NULL cells and multi-row results.

Full release notes: https://doc.grablo.co

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
