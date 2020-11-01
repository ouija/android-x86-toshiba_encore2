# [Android-x86](https://www.android-x86.org) on the [Toshiba Encore 2 WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)

This repository contains kernel patches, scripts and more that I've utilized to get Android-x86 [v8.1-r2] running on a Toshiba Encore 2 [WT8-B] tablet.

Based off [Kernel 4.19](https://osdn.net/projects/android-x86/scm/git/kernel/tree/kernel-4.19/)


To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

## Build Instructions

* THIS IS STILL UNDER DEVELOPMENT / BEING UPDATED

* Applied all [Kernel 4.19 Patches](https://github.com/ouija/android-x86-toshiba_encore2/tree/master/Android-x86-9.0r2/00%20%20Kernel%204.19)
* Applied [0001-ISurfaceComposer-Workaround-for-screenshots-on-intel.patch](https://github.com/ouija/android-x86-toshiba_encore2/raw/master/Android-x86-9.0r2/00%20%20Kernel%204.19/0001-ISurfaceComposer-Workaround-for-screenshots-on-intel.patch) _(fixes power button crash)_
* Added `intel_idle.max_state=1 reboot=acpi sdhci.debug_quirks=0x10000` boot args to grub loader to fix cstate bug and sd card issues.
* Added init functions to `init.sh` startup script to fix rotation, sound, sleep and more.
* Enabled `Force GPU Rendering`, `OpenGL (Skia)` and `nativebridge` support via build.prop
* Included `/system/etc/houdini9_y.sfs` in system image by default and fixed 404 error with `/system/bin/enable_nativebridge` script
