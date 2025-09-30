# About

My kinesis advantage 360 pro keyboard layouts, firmware files, and other related
resources.

The [subdirectory](./Adv360-Pro-ZMK) is a git submodule tracking [official adv360pro repo](https://github.com/KinesisCorporation/Adv360-Pro-ZMK).

It is developed and maintained by [kinesis](https://kinesis-ergo.com/).

This repository is necessary for:

- [firmware updates](./Adv360-Pro-ZMK/README.md)
- [custom layouts](#custom-layouts)

Kinesis user manuals and other important resources can be found at:

[customer support index](https://kinesis-ergo.com/support/kb360pro/)

# Custom layouts

To change the layout of the adv360pro kbd one has to rebuild the firmware with a
custom keymap file and then flash the new firmware into the keyboard.

This file should be named `adv360.keymap` and be placed under the directory
`Adv360-Pro-ZMK/config` when rebuilding.

The [official adv360pro repo](https://github.com/KinesisCorporation/Adv360-Pro-ZMK) defines the [default qwerty layout](https://github.com/KinesisCorporation/Adv360-Pro-ZMK/blob/V3.0/config/adv360.keymap).

Every `adv360.keymap` file defines a complete layout and consists among others
of these fundamental elements:

- layers
- behaviors
- macros

More information on the customization of the keyboard can be found at [ZMK docs](https://zmk.dev/docs).

## Personal layout

My [personal layout]() is a heavily modified version of the [programmers dvorak]().

It consists of the following layers:

- layer 0 (default) (modified programmers dvorak)
- layer 1 (modified programmers dvorak greek)
- layer 2 (qwerty)
- layer 3 (qwerty gr)
- layer 4 (kinesis firmware controls, bluetooth, firmware flash, etc)
- layer 5 (keypad, function keys, media keys, etc)

# Firmware updates log

2025-09-13T20:57:50 20240415-v3.0-9e5e845 -> 20250913-v3.0-091a5da5d4

# Keyboard layouts updates log
# Links

[customer support index](https://kinesis-ergo.com/support/kb360pro/)
[zmk documentation](https://zmk.dev/docs)
[zmk behaviors](https://zmk.dev/docs/keymaps/behaviors)
[zmk keycodes](https://zmk.dev/docs/keymaps/list-of-keycodes)
