#redwood

The goal of this project is provide a source-based Linux image, in this case Buildroot, to boot to a Motorola NeXT Computer environment via Previous.

#Technologies

- Buildroot
- Previous
- frnt
- SDL2 

#Methods

Standard processes for bootstrapping a Buildroot environment were followed:

    make def_raspberrypi2_config

    make menuconfig

# Customizations

## Previous

Packaging and building Previous from source, using the Buildroot methods (Config.in, previous.mk, etc.) are desired. In the interim, a build of Previous for Raspberry Pi is included.

## Overlay

A filesystem overlay is used in the image to provide the necessary data files for Previous, The contents of that overlay directory structure are in a seperate git repository; [Previous-data](https://github.com/itomato/Previous-data).

A basic Openstep 4.2 image is included. This image contains the Patches for Y2k (Patch Release 4).

## Monitor

A basic init replacement is in development, currently available as a panel to common activities:

- Network configuration
- Raspberry Pi configuration
- Previous.cfg editor
- Exit to shell
- Prepare disk image
- Show configuration
- NFS client configuration


	+----------------------------------------------------------------------------------------------+
	|                                                                                              |
	|                                                                                              |
	|                                                                                              |
	|                                                                                              |
	|                                                                                              |
	|   +-------------------------------------------------------------------------------------+    |
	|   |    +---------------------+ +------------------+ +---------------+                   |    |
	|   |    |   SDL Framebuffer   | |       SLiRP      | |      NFS      |                   |    |
	|   |    |                     | |                  | |               |                   |    |
	|   |    +---------------------+ +------------------+ +---------------+                   |    |
	|   |    +----------------------------------------------------------------------------+   |    |
	|   |    |                                                                            |   |    |
	|   |    |                                  Previous                                  |   |    |
	|   |    +----------------------------------------------------------------------------+   |    |
	|   |    +----------------------------------------------------------------------------+   |    |
	|   |    |                                                                            |   |    |
	|   |    |                                                                            |   |    |
	|   |    |                                                         +------------+     |   |    |
	|   |    |                           Previous data overlay         |  ROM Files |     |   |    |
	|   |    |                                                         +------------+     |   |    |
	|   |    |                                                                            |   |    |
	|   |    |                                                                            |   |    |
	|   |    +----------------------------------------------------------------------------+   |    |
	|   |    +----------------------+                                                         |    |
	|   |    |       Firmware       |                                                         |    |
	|   |    |                      |                                                         |    |
	|   |    +----------------------+                                                         |    |
	|   |                                                                                     |    |
	|   |                                                                                     |    |
	|   |                                                                                     |    |
	|   |                                   Buildroot image                                   |    |
	|   +-------------------------------------------------------------------------------------+    |
	|                                                                                              |
	|                                                                                              |
	|                                                                                              |
	|                                                                                              |
	|                                  Raspberry Pi 2 & 3 Series                                   |
	|                                                                                              |
	+----------------------------------------------------------------------------------------------+

# Development

Devlopment is currently done with a Debian x86_64 Jessie build environment. An ARM image based on redwood is at https://github.com/itomato/redwood-developer. This system provides a native toolchain and package management for deployment in the trimmed-down release.

