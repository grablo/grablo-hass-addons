# Grablo Home Assistant Add-ons

Official [Home Assistant](https://www.home-assistant.io/) add-on repository for
[Grablo](https://grablo.co).

**Grablo** is a web-based, no-code platform for AI-powered IoT and automation. You
build logic visually with blocks, add AI vision and audio, connect industrial and IoT
protocols (MQTT, Modbus, OPC-UA, Zigbee and more), and monitor and control everything
from a web and mobile dashboard.

## Installation

Click the button below:

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fgrablo%2Fgrablo-hass-addons)

Or, in your Home Assistant, navigate to **Settings > Apps > App store > ⋮ >
Repositories** and add `https://github.com/grablo/grablo-hass-addons` to the list.

Then find **Grablo IoT Core** in the store and press **Install**.

## Add-ons in this repository

### [Grablo IoT Core](grablo/)

Runs the Grablo engine on your Home Assistant host, so you can build and run Grablo
projects next to Home Assistant, and read, control and expose Home Assistant entities
from your logic. As an add-on it connects to Home Assistant automatically, with no
manual setup.

You build and control everything from the [Grablo web app](https://app.grablo.co). The
add-on has no UI of its own. See the add-on's [documentation](grablo/DOCS.md).

## Links

- Website: **https://grablo.co**
- Web app: **https://app.grablo.co**
- Project gallery: **https://app.grablo.co/gallery**
- Documentation & release notes: **https://doc.grablo.co**
- Standalone Docker (non-Home Assistant): **https://github.com/grablo/grablo-docker**

## License

This repository contains only Home Assistant add-on packaging. The Grablo IoT Core
software itself is under Grablo's proprietary license.
