# [Android-x86](https://www.android-x86.org) on the Toshiba Encore 2 [[WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)/[WT10-A](https://support.dynabook.com/support/staticContentDetail?contentId=4012954)]

Android-x86_64 [v8.1r5] running on a Toshiba Encore 2 [WT8-B/WT10-A] tablet.

Please consider [donating](https://paypal.me/djouija) to support this project. Thanks!

----------------------------------------------------------------------------------

## Build Instructions [k4.19.122]

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Patched 4.19.122 kernel with [all patches](./00%20%20Kernel%204.19.122/Patches).
* Edited [kernel config file](./00%20%20Kernel%204.19/android-x86_64_defconfig) (`./kernel/arch/x86/configs/android-x86_64_defconfig`) to enable backlight/brightness control and hibernation:
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
CONFIG_HIBERNATION=y
```
* Replaced default `rtl8723bs` driver with [youling257's version](https://github.com/youling257/rockchip_wlan) and compiled from source as per [these instructions](https://groups.google.com/g/android-x86/c/iwSFhlLyW7A/m/kSxTf-rBAwAJ).
* Added `acpi_backlight=vendor` boot args to GRUB (`android.cfg`) to resolve black screen when resume from sleep.
* Added `sdhci.debug_quirks=0x10000` boot arg to GRUB (`android.cfg`) to resolve SD card read-only issue.
* Updated `0-auto-detect` script in `initrd.img` to modprobe `gpio_keys` and `hid_multitouch` which sometimes [fail to autoload](https://groups.google.com/g/android-x86/c/5WG0tfojGhU) properly.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `init_hal_sensors` function to properly initialize accelerometers _(screen rotation and gyroscope)_.
* Updated `/system/etc/init.sh` startup script and added `WT8-B/WT10-A` to `do_bootcomplete` function to run custom scripts _(enable headphone switching, suspend-to-ram, etc)_.
* Enabled `navtivebridge` support by default and included `houdini` in the pre-built image, and fixed url link issue with `/system/bin/enable_nativebridge` script.
* Updated `build.prop` with optimizations for better GPU and system performance.
* Removed `taskbar`, `calibration` and `developer tools` apps from pre-built image.
* Updates Android-x86 GRUB loader with prettier theme.
* Added `ES File Explorer` to pre-built image.
* Added `nano` to pre-built image.