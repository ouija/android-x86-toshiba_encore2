# [Android-x86](https://www.android-x86.org) on the [Toshiba Encore 2 WT8-B](https://www.toshiba.ca/productdetailpage.aspx?id=2147499291)

This repository contains kernel patches, scripts and more that I've utilized to get Android-x86 [v8.1-r2] running on a Toshiba Encore 2 [WT8-B] tablet.

Based off [Kernel 4.19](https://osdn.net/projects/android-x86/scm/git/kernel/tree/kernel-4.19/)


To build from source, follow the instructions at [Android-x86.org](https://www.android-x86.org/source.html)

## Instructions

* To be completed soon..
* To fully resolve the c-stage bug, it is advised to at "intel_idle.max_state=1 reboot=acpi acpi_osi='!Windows 2013' acpi_osi='!Windows 2012' i915.enable_execlists=0" kernel commands to the grub loader
* To fix read-only issue with SD Card, add "sdhci.debug_quirks=0x10000" kernel command to grub loader

See [this topic](https://groups.google.com/forum/#!topic/android-x86/qyCvK176UXA) on the [Android-x86 Google Group](https://groups.google.com/forum/#!forum/android-x86) for more information and for further assistance if necessary
