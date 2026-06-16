# Grablo Home Assistant Add-ons

Official [Home Assistant](https://www.home-assistant.io/) add-on repository for
[Grablo](https://grablo.co).

**Grablo** is a web-based, no-code platform for building AI-powered IoT projects —
no programming required. You build logic by placing blocks instead of writing code,
add AI vision and voice without any machine-learning expertise, use a built-in
device library, and monitor and control everything from a web dashboard, anywhere.

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

Runs the Grablo engine on your Home Assistant host, so you can build and run Grablo
projects right beside Home Assistant — and read, control, and expose Home Assistant
entities from your Grablo logic. Run as an add-on, it connects to Home Assistant
automatically, with no manual setup.

You build and control everything from the [Grablo web app](https://grablo.co); the
add-on has no UI of its own. See the add-on's [documentation](grablo/DOCS.md).

## How images are distributed

Add-on images are pre-built for `amd64` and `aarch64` by GitHub Actions and
published to the GitHub Container Registry (`ghcr.io/grablo/{arch}-addon-grablo`),
so installing is a fast pull instead of an on-device build. Each image bakes in the
official Grablo release fetched from the public CDN (`downloads.grablo.co`).

## Links

- Website: **https://grablo.co**
- Documentation & release notes: **https://doc.grablo.co**
- Standalone Docker (non–Home Assistant): **https://github.com/grablo/grablo-docker**

## License

This repository contains only Home Assistant add-on packaging. The Grablo IoT Core
software itself is under Grablo's proprietary license.
