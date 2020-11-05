# [Android-x86](https://www.android-x86.org) on the [Toshiba Encore 2 WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)

Android-x86_64 [v9.0-r2] running on a Toshiba Encore 2 [WT8-B] tablet.

Based off [Kernel 4.19.50](https://osdn.net/projects/android-x86/scm/git/kernel/tree/kernel-4.19/)

----------------------------------------------------------------------------------

## Build Instructions

To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

* Patched 4.19.50 kernel with [all patches](./00%20%20Kernel%20Patches).
* Edited [kernel config file](./00%20%20Kernel%20Patches/android-x86_64_defconfig) [`./kernel/arch/x86/configs/android-x86_64_defconfig`] and updated the following to enable LPSS backlight control:
```
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
CONFIG_PWM_LPSS_PLATFORM=y
```
* This build is still under development and not ready for release:
	* 'GRALLOC=gbm' boot argument in GRUB needed to resolve issue w/ISurfaceComposer [(power button crash)](https://groups.google.com/u/1/g/android-x86/c/QfIMLBYNJxI/m/Ymrymjg6BAAJ), but device is not waking from sleep _if_ PWM_LPSS is patched, and if not patched, device not entering low-state power mode (display backlight remains on) and obviously brightness slider not working.


Please check back in the near future for possible updates.