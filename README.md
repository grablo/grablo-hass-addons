# Grablo Home Assistant Add-ons

Official [Home Assistant](https://www.home-assistant.io/) add-on repository for
[Grablo](https://grablo.co).

**Grablo** is a web-based, no-code platform for building AI-powered IoT projects —
no programming required. You build logic by placing blocks instead of writing code,
add AI vision and audio without any machine-learning expertise, use a built-in
device library, and monitor and control everything from a web and mobile dashboard —
anywhere, with no extra setup.

## Installation

1. In Home Assistant, go to **Settings → Apps → App store**.
2. Click the **⋮** menu (top right) → **Repositories**.
3. Add this URL:

   ```
   https://github.com/grablo/grablo-hass-addons
   ```

4. The **Grablo IoT Core** add-on now appears in the store — click it and press
   **Install**.

## Add-ons in this repository

### [Grablo IoT Core](grablo/)

Runs the Grablo engine on your Home Assistant host, so you can build and run Grablo
projects right beside Home Assistant — and read, control, and expose Home Assistant
entities from your Grablo logic. Run as an add-on, it connects to Home Assistant
automatically, with no manual setup.

You build and control everything from the [Grablo web app](https://app.grablo.co); the
add-on has no UI of its own. See the add-on's [documentation](grablo/DOCS.md).

## Links

- Website: **https://grablo.co**
- Web app: **https://app.grablo.co**
- Template gallery: **https://app.grablo.co/gallery**
- Documentation & release notes: **https://doc.grablo.co**
- Standalone Docker (non–Home Assistant): **https://github.com/grablo/grablo-docker**

## License

This repository contains only Home Assistant add-on packaging. The Grablo IoT Core
software itself is under Grablo's proprietary license.
