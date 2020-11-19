# [Android-x86](https://www.android-x86.org) on the Toshiba Encore 2 [[WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)/[WT10-A](https://support.dynabook.com/support/staticContentDetail?contentId=4012954)]

Android-x86_64 [v8.1r5] running on a Toshiba Encore 2 [WT8-B/WT10-A] tablet.

Please consider [donating](https://paypal.me/djouija) to support this project. Thanks!

----------------------------------------------------------------------------------

## Build Instructions [k4.19.122]

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Patched 4.19.122 kernel with [all patches](./Patches).
* Edited [kernel config file](./android-x86_64_defconfig) (`./kernel/arch/x86/configs/android-x86_64_defconfig`) to enable backlight/brightness control and hibernation:
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
CONFIG_HIBERNATION=y
```
* Replaced default `rtl8723bs` driver with [youling257's version](https://github.com/youling257/rockchip_wlan) and compiled from source as per [these instructions](https://groups.google.com/g/android-x86/c/iwSFhlLyW7A/m/kSxTf-rBAwAJ).

