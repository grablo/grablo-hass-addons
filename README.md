# Grablo Home Assistant Add-ons

Official [Home Assistant](https://www.home-assistant.io/) add-on repository for
[Grablo](https://grablo.co) — the web-based, no-code platform for AI IoT.

## Installation

1. In Home Assistant, go to **Settings → Add-ons → Add-on Store**.
2. Click the **⋮** menu (top right) → **Repositories**.
3. Add this URL:

   ```
   https://github.com/grablo/grablo-hass-addons
   ```

4. The **Grablo IoT Core** add-on now appears in the store — click it and press
   **Install**.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fgrablo%2Fgrablo-hass-addons)

## Add-ons in this repository

### [Grablo IoT Core](grablo/)

Run Grablo IoT Core next to Home Assistant — MQTT, Modbus, OPC-UA, HTTP, AI,
audio (TTS/STT/media) and remote control. When run as this add-on, it connects to
Home Assistant through the Supervisor automatically — **no Long-Lived Access Token
needed**. You pair and control the device from the [Grablo web app](https://grablo.co).

See the add-on's [documentation](grablo/DOCS.md).

## How images are distributed

Add-on images are pre-built for `amd64` and `aarch64` by GitHub Actions and
published to the GitHub Container Registry (`ghcr.io/grablo/{arch}-addon-grablo`),
so installation is a fast pull instead of an on-device build. Each image bakes in
the official Grablo release fetched from the public CDN (`downloads.grablo.co`).

## Links

- Website: **https://grablo.co**
- Documentation & release notes: **https://doc.grablo.co**
- Standalone Docker (non–Home Assistant): **https://github.com/grablo/grablo-docker**

## License

This repository contains only Home Assistant add-on packaging. The Grablo IoT Core
software itself is under Grablo's proprietary license.
