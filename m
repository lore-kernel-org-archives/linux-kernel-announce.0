From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.33.7 released
Date: Mon, 2 Aug 2010 18:32:37 GMT
Message-ID: <201008021832.o72IWbCj026841@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.33.7 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.33.7.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.33.7.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               249837           1022084
Full source                       66240255         395223040

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/proc.txt              |    3 
 Documentation/filesystems/tmpfs.txt             |    6 
 Documentation/hwmon/ltc4245                     |    4 
 Documentation/i2c/busses/i2c-i801               |    3 
 Documentation/kernel-parameters.txt             |    7 
 Documentation/laptops/thinkpad-acpi.txt         |    4 
 Makefile                                        |    2 
 arch/Kconfig                                    |    2 
 arch/arm/boot/compressed/head.S                 |   52 -
 arch/arm/boot/compressed/vmlinux.lds.in         |    3 
 arch/arm/common/sa1111.c                        |    9 
 arch/arm/kernel/kprobes-decode.c                |    5 
 arch/arm/mach-omap2/board-rx51-peripherals.c    |   17 
 arch/arm/mach-pxa/include/mach/colibri.h        |    1 
 arch/arm/mach-realview/Kconfig                  |    2 
 arch/arm/mach-realview/include/mach/barriers.h  |    8 
 arch/arm/mm/copypage-feroceon.c                 |    4 
 arch/arm/mm/copypage-v4wb.c                     |    4 
 arch/arm/mm/copypage-v4wt.c                     |    4 
 arch/arm/mm/copypage-xsc3.c                     |    4 
 arch/arm/mm/fault.c                             |    3 
 arch/arm/mm/init.c                              |    6 
 arch/arm/vfp/vfphw.S                            |    2 
 arch/blackfin/include/asm/cache.h               |    2 
 arch/frv/include/asm/cache.h                    |    2 
 arch/ia64/kvm/kvm-ia64.c                        |    9 
 arch/ia64/mm/tlb.c                              |    2 
 arch/m68k/include/asm/cache.h                   |    2 
 arch/mips/include/asm/mach-sibyte/war.h         |    6 
 arch/mips/include/asm/mipsregs.h                |    9 
 arch/mips/math-emu/cp1emu.c                     |   15 
 arch/mips/sibyte/sb1250/setup.c                 |   15 
 arch/mn10300/include/asm/cache.h                |    2 
 arch/parisc/math-emu/decode_exc.c               |    1 
 arch/powerpc/include/asm/cpm.h                  |   24 
 arch/powerpc/include/asm/hw_irq.h               |   38 
 arch/powerpc/kernel/asm-offsets.c               |    1 
 arch/powerpc/kernel/entry_64.S                  |    9 
 arch/powerpc/kernel/head_64.S                   |   11 
 arch/powerpc/kernel/irq.c                       |   11 
 arch/powerpc/kernel/perf_event.c                |    8 
 arch/powerpc/kernel/time.c                      |   60 +
 arch/powerpc/kvm/book3s.c                       |   15 
 arch/powerpc/kvm/booke.c                        |   15 
 arch/powerpc/kvm/powerpc.c                      |    3 
 arch/powerpc/lib/string.S                       |    4 
 arch/powerpc/mm/fsl_booke_mmu.c                 |    5 
 arch/powerpc/oprofile/op_model_cell.c           |    2 
 arch/powerpc/platforms/pseries/hotplug-cpu.c    |   72 -
 arch/powerpc/platforms/pseries/offline_states.h |   23 
 arch/powerpc/platforms/pseries/plpar_wrappers.h |    8 
 arch/powerpc/platforms/pseries/smp.c            |   28 
 arch/powerpc/sysdev/micropatch.c                |   12 
 arch/s390/kernel/ptrace.c                       |    5 
 arch/s390/kvm/kvm-s390.c                        |    4 
 arch/s390/mm/vmem.c                             |   11 
 arch/sh/boot/compressed/misc.c                  |    2 
 arch/sh/include/asm/elf.h                       |    6 
 arch/sh/kernel/smp.c                            |    1 
 arch/sparc/include/asm/irqflags_64.h            |   23 
 arch/sparc/include/asm/stat.h                   |    4 
 arch/sparc/include/asm/thread_info_64.h         |    2 
 arch/sparc/kernel/pci_common.c                  |   11 
 arch/sparc/kernel/perf_event.c                  |    4 
 arch/sparc/kernel/ptrace_32.c                   |    4 
 arch/sparc/kernel/ptrace_64.c                   |    4 
 arch/sparc/kernel/rtrap_64.S                    |   12 
 arch/sparc/kernel/traps_64.c                    |   26 
 arch/sparc/kernel/unaligned_64.c                |    6 
 arch/sparc/prom/p1275.c                         |   12 
 arch/um/sys-x86_64/Makefile                     |    3 
 arch/x86/Kconfig                                |    4 
 arch/x86/Kconfig.cpu                            |    2 
 arch/x86/ia32/ia32_aout.c                       |    1 
 arch/x86/include/asm/fixmap.h                   |    6 
 arch/x86/include/asm/io_apic.h                  |    1 
 arch/x86/include/asm/k8.h                       |    5 
 arch/x86/include/asm/kvm_host.h                 |    3 
 arch/x86/include/asm/msr-index.h                |    8 
 arch/x86/include/asm/pgalloc.h                  |    5 
 arch/x86/include/asm/rwsem.h                    |   81 +-
 arch/x86/include/asm/smp.h                      |    9 
 arch/x86/include/asm/suspend_32.h               |    2 
 arch/x86/include/asm/suspend_64.h               |    2 
 arch/x86/include/asm/system.h                   |    2 
 arch/x86/include/asm/uv/uv_hub.h                |    3 
 arch/x86/include/asm/vmx.h                      |    1 
 arch/x86/kernel/acpi/boot.c                     |    9 
 arch/x86/kernel/acpi/cstate.c                   |    9 
 arch/x86/kernel/acpi/sleep.c                    |    2 
 arch/x86/kernel/amd_iommu.c                     |   22 
 arch/x86/kernel/amd_iommu_init.c                |   25 
 arch/x86/kernel/aperture_64.c                   |   15 
 arch/x86/kernel/apic/apic.c                     |    4 
 arch/x86/kernel/apic/io_apic.c                  |   71 +
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c       |    3 
 arch/x86/kernel/cpu/intel.c                     |   24 
 arch/x86/kernel/cpu/intel_cacheinfo.c           |  254 ++++--
 arch/x86/kernel/cpu/perf_event.c                |  118 ++-
 arch/x86/kernel/crash.c                         |    6 
 arch/x86/kernel/dumpstack_64.c                  |   10 
 arch/x86/kernel/hpet.c                          |   10 
 arch/x86/kernel/hw_breakpoint.c                 |    5 
 arch/x86/kernel/k8.c                            |   14 
 arch/x86/kernel/kgdb.c                          |    2 
 arch/x86/kernel/mpparse.c                       |    4 
 arch/x86/kernel/pci-calgary_64.c                |   17 
 arch/x86/kernel/pci-gart_64.c                   |    5 
 arch/x86/kernel/process.c                       |   34 
 arch/x86/kernel/process_64.c                    |    4 
 arch/x86/kernel/pvclock.c                       |   24 
 arch/x86/kernel/reboot.c                        |    8 
 arch/x86/kernel/setup.c                         |   11 
 arch/x86/kernel/tboot.c                         |    1 
 arch/x86/kernel/traps.c                         |   11 
 arch/x86/kvm/emulate.c                          |   55 -
 arch/x86/kvm/mmu.c                              |   28 
 arch/x86/kvm/svm.c                              |  285 +++++--
 arch/x86/kvm/vmx.c                              |   84 +-
 arch/x86/kvm/x86.c                              |  104 +-
 arch/x86/lib/Makefile                           |    3 
 arch/x86/lib/cache-smp.c                        |   19 
 arch/x86/lib/rwsem_64.S                         |   81 ++
 arch/x86/mm/pageattr.c                          |   25 
 arch/x86/mm/pgtable.c                           |   31 
 arch/x86/oprofile/nmi_int.c                     |   27 
 arch/x86/oprofile/op_model_amd.c                |   42 -
 arch/x86/oprofile/op_model_p4.c                 |    6 
 arch/x86/oprofile/op_model_ppro.c               |    6 
 arch/x86/pci/irq.c                              |    2 
 arch/x86/pci/mmconfig-shared.c                  |   17 
 arch/x86/power/cpu.c                            |    4 
 arch/x86/power/hibernate_asm_32.S               |   15 
 arch/x86/xen/enlighten.c                        |    7 
 arch/x86/xen/mmu.c                              |   11 
 arch/x86/xen/suspend.c                          |    4 
 arch/xtensa/include/asm/cache.h                 |    1 
 block/blk-timeout.c                             |   12 
 block/cfq-iosched.c                             |   33 
 crypto/async_tx/async_raid6_recov.c             |   21 
 crypto/authenc.c                                |   16 
 drivers/Makefile                                |    2 
 drivers/acpi/acpica/exprep.c                    |   17 
 drivers/acpi/ec.c                               |   35 
 drivers/acpi/power_meter.c                      |    2 
 drivers/acpi/processor_idle.c                   |    2 
 drivers/acpi/sleep.c                            |  101 --
 drivers/acpi/video_detect.c                     |    2 
 drivers/ata/ahci.c                              |   56 +
 drivers/ata/ata_generic.c                       |    6 
 drivers/ata/ata_piix.c                          |    8 
 drivers/ata/libata-core.c                       |   10 
 drivers/ata/libata-eh.c                         |    5 
 drivers/ata/libata-sff.c                        |    2 
 drivers/ata/pata_hpt3x2n.c                      |   20 
 drivers/ata/pata_via.c                          |    5 
 drivers/ata/sata_nv.c                           |    5 
 drivers/ata/sata_via.c                          |   13 
 drivers/base/core.c                             |   13 
 drivers/base/cpu.c                              |    2 
 drivers/base/devtmpfs.c                         |   13 
 drivers/base/firmware_class.c                   |   26 
 drivers/base/memory.c                           |    2 
 drivers/char/agp/Kconfig                        |    2 
 drivers/char/agp/amd64-agp.c                    |   27 
 drivers/char/agp/intel-agp.c                    |   15 
 drivers/char/ipmi/ipmi_si_intf.c                |   11 
 drivers/char/raw.c                              |    1 
 drivers/char/tpm/tpm.h                          |    1 
 drivers/char/tpm/tpm_tis.c                      |    9 
 drivers/char/tty_buffer.c                       |    6 
 drivers/char/tty_io.c                           |    3 
 drivers/char/tty_ldisc.c                        |   50 -
 drivers/clocksource/sh_cmt.c                    |   53 -
 drivers/clocksource/sh_mtu2.c                   |    6 
 drivers/clocksource/sh_tmu.c                    |   26 
 drivers/cpufreq/cpufreq.c                       |   11 
 drivers/cpuidle/governors/menu.c                |    9 
 drivers/edac/Kconfig                            |    2 
 drivers/edac/amd64_edac.c                       |   24 
 drivers/edac/edac_mce_amd.c                     |   12 
 drivers/firewire/core-card.c                    |   24 
 drivers/gpio/cs5535-gpio.c                      |    4 
 drivers/gpio/wm831x-gpio.c                      |   22 
 drivers/gpu/drm/drm_crtc_helper.c               |    1 
 drivers/gpu/drm/drm_edid.c                      |   13 
 drivers/gpu/drm/drm_fops.c                      |   16 
 drivers/gpu/drm/i915/i915_debugfs.c             |    2 
 drivers/gpu/drm/i915/i915_dma.c                 |   16 
 drivers/gpu/drm/i915/i915_drv.c                 |   10 
 drivers/gpu/drm/i915/i915_drv.h                 |   33 
 drivers/gpu/drm/i915/i915_gem.c                 |  206 ++++-
 drivers/gpu/drm/i915/i915_gem_tiling.c          |   24 
 drivers/gpu/drm/i915/i915_irq.c                 |   26 
 drivers/gpu/drm/i915/i915_reg.h                 |   77 +-
 drivers/gpu/drm/i915/intel_bios.c               |    3 
 drivers/gpu/drm/i915/intel_crt.c                |   14 
 drivers/gpu/drm/i915/intel_display.c            |   62 -
 drivers/gpu/drm/i915/intel_lvds.c               |   15 
 drivers/gpu/drm/i915/intel_overlay.c            |   15 
 drivers/gpu/drm/i915/intel_sdvo.c               |   23 
 drivers/gpu/drm/nouveau/nouveau_connector.c     |    6 
 drivers/gpu/drm/radeon/atom.c                   |   14 
 drivers/gpu/drm/radeon/r100.c                   |   61 -
 drivers/gpu/drm/radeon/r200.c                   |    5 
 drivers/gpu/drm/radeon/r300.c                   |   10 
 drivers/gpu/drm/radeon/radeon_atombios.c        |   27 
 drivers/gpu/drm/radeon/radeon_combios.c         |   20 
 drivers/gpu/drm/radeon/radeon_connectors.c      |   34 
 drivers/gpu/drm/radeon/radeon_cp.c              |   11 
 drivers/gpu/drm/radeon/radeon_cs.c              |   15 
 drivers/gpu/drm/radeon/radeon_device.c          |    8 
 drivers/gpu/drm/radeon/radeon_drv.h             |    2 
 drivers/gpu/drm/radeon/radeon_encoders.c        |    8 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c |    1 
 drivers/gpu/drm/radeon/radeon_legacy_tv.c       |   33 
 drivers/gpu/drm/radeon/radeon_state.c           |    7 
 drivers/gpu/drm/radeon/rs600.c                  |    2 
 drivers/gpu/drm/ttm/ttm_tt.c                    |   18 
 drivers/hid/hid-core.c                          |    3 
 drivers/hid/hid-gyration.c                      |    6 
 drivers/hid/hid-ids.h                           |    5 
 drivers/hid/usbhid/hid-core.c                   |   28 
 drivers/hid/usbhid/usbhid.h                     |    2 
 drivers/hwmon/ams/ams-core.c                    |   11 
 drivers/hwmon/ams/ams-i2c.c                     |    2 
 drivers/hwmon/ams/ams-pmu.c                     |    2 
 drivers/hwmon/ams/ams.h                         |    1 
 drivers/hwmon/coretemp.c                        |   34 
 drivers/hwmon/fschmd.c                          |   15 
 drivers/hwmon/hp_accel.c                        |    2 
 drivers/hwmon/it87.c                            |   22 
 drivers/hwmon/k10temp.c                         |   14 
 drivers/hwmon/k8temp.c                          |   12 
 drivers/hwmon/ltc4245.c                         |   18 
 drivers/hwmon/sht15.c                           |   13 
 drivers/hwmon/tmp401.c                          |    7 
 drivers/hwmon/tmp421.c                          |   24 
 drivers/i2c/busses/Kconfig                      |    5 
 drivers/i2c/busses/i2c-i801.c                   |   11 
 drivers/i2c/busses/i2c-powermac.c               |   25 
 drivers/i2c/i2c-core.c                          |   21 
 drivers/ide/cmd640.c                            |    6 
 drivers/ide/icside.c                            |   64 +
 drivers/ide/ide-probe.c                         |   12 
 drivers/ide/ide-taskfile.c                      |    6 
 drivers/ide/pdc202xx_old.c                      |    4 
 drivers/infiniband/ulp/ipoib/ipoib_cm.c         |    2 
 drivers/infiniband/ulp/ipoib/ipoib_main.c       |    4 
 drivers/input/keyboard/twl4030_keypad.c         |   17 
 drivers/input/mouse/alps.c                      |    2 
 drivers/input/mouse/psmouse-base.c              |   14 
 drivers/input/serio/i8042-x86ia64io.h           |   14 
 drivers/input/sparse-keymap.c                   |    2 
 drivers/input/tablet/wacom_sys.c                |   12 
 drivers/isdn/gigaset/capi.c                     |   46 -
 drivers/isdn/gigaset/common.c                   |    6 
 drivers/isdn/gigaset/dummyll.c                  |   14 
 drivers/isdn/gigaset/ev-layer.c                 |   12 
 drivers/isdn/gigaset/gigaset.h                  |    6 
 drivers/isdn/gigaset/i4l.c                      |   28 
 drivers/isdn/gigaset/interface.c                |    1 
 drivers/leds/leds-gpio.c                        |    3 
 drivers/macintosh/therm_adt746x.c               |   34 
 drivers/md/dm-ioctl.c                           |   24 
 drivers/md/dm.c                                 |   11 
 drivers/md/dm.h                                 |    4 
 drivers/md/linear.c                             |   13 
 drivers/md/md.c                                 |  109 ++
 drivers/md/md.h                                 |    1 
 drivers/md/multipath.c                          |   20 
 drivers/md/raid0.c                              |   13 
 drivers/md/raid1.c                              |    9 
 drivers/md/raid10.c                             |   42 -
 drivers/md/raid5.c                              |   61 -
 drivers/media/dvb/dvb-core/dvb_net.c            |   13 
 drivers/media/dvb/ttpci/Kconfig                 |    5 
 drivers/media/dvb/ttpci/budget.c                |    3 
 drivers/media/video/cx23885/cx23885-i2c.c       |   12 
 drivers/media/video/cx88/cx88-i2c.c             |   16 
 drivers/media/video/em28xx/em28xx-dvb.c         |    1 
 drivers/media/video/gspca/mr97310a.c            |    6 
 drivers/media/video/gspca/stv06xx/stv06xx.c     |    2 
 drivers/media/video/soc_mediabus.c              |    3 
 drivers/media/video/uvc/uvc_driver.c            |   30 
 drivers/media/video/uvc/uvcvideo.h              |    7 
 drivers/mmc/host/atmel-mci.c                    |   14 
 drivers/mmc/host/s3cmci.c                       |    4 
 drivers/mmc/host/sdhci-s3c.c                    |   20 
 drivers/net/3c503.c                             |   42 -
 drivers/net/arcnet/com20020-pci.c               |    4 
 drivers/net/bnx2.c                              |    6 
 drivers/net/bonding/bond_main.c                 |    2 
 drivers/net/can/bfin_can.c                      |    3 
 drivers/net/can/sja1000/sja1000.c               |   20 
 drivers/net/can/sja1000/sja1000.h               |    1 
 drivers/net/cpmac.c                             |    3 
 drivers/net/cxgb3/ael1002.c                     |    2 
 drivers/net/dm9000.c                            |   38 
 drivers/net/e100.c                              |    2 
 drivers/net/e1000e/netdev.c                     |    2 
 drivers/net/forcedeth.c                         |    2 
 drivers/net/jme.c                               |   35 
 drivers/net/mlx4/icm.c                          |    3 
 drivers/net/pppol2tp.c                          |    9 
 drivers/net/r8169.c                             |   53 +
 drivers/net/sfc/efx.c                           |    4 
 drivers/net/sfc/falcon.c                        |    4 
 drivers/net/sfc/falcon_boards.c                 |   13 
 drivers/net/sfc/nic.h                           |    2 
 drivers/net/sfc/siena.c                         |   13 
 drivers/net/sky2.c                              |   19 
 drivers/net/tg3.c                               |    3 
 drivers/net/tun.c                               |    4 
 drivers/net/usb/cdc_ether.c                     |    1 
 drivers/net/usb/dm9601.c                        |    2 
 drivers/net/usb/pegasus.h                       |    2 
 drivers/net/veth.c                              |    1 
 drivers/net/wan/hdlc_ppp.c                      |    6 
 drivers/net/wireless/airo.c                     |   34 
 drivers/net/wireless/ath/ar9170/hw.h            |    1 
 drivers/net/wireless/ath/ar9170/main.c          |    2 
 drivers/net/wireless/ath/ar9170/usb.c           |   12 
 drivers/net/wireless/ath/ath5k/ath5k.h          |    3 
 drivers/net/wireless/ath/ath5k/attach.c         |    1 
 drivers/net/wireless/ath/ath5k/base.c           |   66 +
 drivers/net/wireless/ath/ath5k/phy.c            |   37 
 drivers/net/wireless/ath/ath5k/qcu.c            |    5 
 drivers/net/wireless/ath/ath5k/reg.h            |    1 
 drivers/net/wireless/ath/ath5k/reset.c          |    5 
 drivers/net/wireless/ath/ath9k/ath9k.h          |    1 
 drivers/net/wireless/ath/ath9k/beacon.c         |   16 
 drivers/net/wireless/ath/ath9k/hw.c             |   17 
 drivers/net/wireless/ath/ath9k/hw.h             |    1 
 drivers/net/wireless/ath/ath9k/initvals.h       |    8 
 drivers/net/wireless/ath/ath9k/main.c           |   40 -
 drivers/net/wireless/ath/ath9k/pci.c            |    1 
 drivers/net/wireless/ath/ath9k/phy.h            |    3 
 drivers/net/wireless/ath/ath9k/rc.c             |   21 
 drivers/net/wireless/ath/ath9k/xmit.c           |   28 
 drivers/net/wireless/b43/Kconfig                |    6 
 drivers/net/wireless/b43/Makefile               |    2 
 drivers/net/wireless/b43/b43.h                  |   12 
 drivers/net/wireless/b43/dma.c                  |    2 
 drivers/net/wireless/b43/main.c                 |   25 
 drivers/net/wireless/b43/pio.h                  |   40 -
 drivers/net/wireless/b43legacy/main.c           |    2 
 drivers/net/wireless/hostap/hostap_cs.c         |   15 
 drivers/net/wireless/hostap/hostap_hw.c         |   13 
 drivers/net/wireless/hostap/hostap_wlan.h       |    2 
 drivers/net/wireless/iwlwifi/iwl-3945.c         |    8 
 drivers/net/wireless/iwlwifi/iwl-4965.c         |   16 
 drivers/net/wireless/iwlwifi/iwl-5000.c         |    7 
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c       |   25 
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   10 
 drivers/net/wireless/iwlwifi/iwl-core.c         |   12 
 drivers/net/wireless/iwlwifi/iwl-helpers.h      |    7 
 drivers/net/wireless/iwlwifi/iwl-rx.c           |   21 
 drivers/net/wireless/iwlwifi/iwl-scan.c         |   28 
 drivers/net/wireless/iwlwifi/iwl-tx.c           |   48 -
 drivers/net/wireless/iwlwifi/iwl3945-base.c     |   27 
 drivers/net/wireless/libertas/if_sdio.c         |   22 
 drivers/net/wireless/p54/p54pci.c               |   22 
 drivers/net/wireless/p54/p54usb.c               |    3 
 drivers/net/wireless/p54/txrx.c                 |    2 
 drivers/net/wireless/rtl818x/rtl8180_dev.c      |    1 
 drivers/net/wireless/wl12xx/wl1251_debugfs.c    |    3 
 drivers/net/wireless/wl12xx/wl1251_sdio.c       |    1 
 drivers/oprofile/cpu_buffer.c                   |   63 -
 drivers/pci/hotplug/ibmphp_ebda.c               |   13 
 drivers/pci/pci.c                               |   73 +
 drivers/pci/quirks.c                            |   15 
 drivers/platform/x86/Kconfig                    |   10 
 drivers/platform/x86/classmate-laptop.c         |   31 
 drivers/platform/x86/eeepc-laptop.c             |   21 
 drivers/platform/x86/thinkpad_acpi.c            |  116 ++-
 drivers/rtc/class.c                             |    1 
 drivers/rtc/rtc-cmos.c                          |    5 
 drivers/rtc/rtc-coh901331.c                     |    5 
 drivers/rtc/rtc-ds1307.c                        |    4 
 drivers/rtc/rtc-s3c.c                           |    5 
 drivers/s390/block/dasd.c                       |   17 
 drivers/scsi/aacraid/commctrl.c                 |    4 
 drivers/scsi/libiscsi.c                         |    7 
 drivers/scsi/libsas/sas_ata.c                   |    4 
 drivers/scsi/libsas/sas_scsi_host.c             |    4 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c            |   17 
 drivers/scsi/qla1280.c                          |    4 
 drivers/scsi/qla2xxx/qla_isr.c                  |   28 
 drivers/scsi/qlogicpti.c                        |    2 
 drivers/scsi/scsi_debug.c                       |    3 
 drivers/scsi/scsi_error.c                       |   15 
 drivers/scsi/scsi_lib.c                         |   10 
 drivers/scsi/scsi_transport_fc.c                |   24 
 drivers/scsi/sd.c                               |    1 
 drivers/scsi/ses.c                              |    4 
 drivers/serial/8250_pnp.c                       |    2 
 drivers/serial/cpm_uart/cpm_uart_core.c         |  143 ++-
 drivers/serial/imx.c                            |   16 
 drivers/spi/spi_mpc8xxx.c                       |   22 
 drivers/ssb/driver_chipcommon.c                 |    3 
 drivers/ssb/driver_chipcommon_pmu.c             |   17 
 drivers/ssb/pci.c                               |   46 +
 drivers/ssb/sprom.c                             |   15 
 drivers/staging/Kconfig                         |    2 
 drivers/staging/Makefile                        |    1 
 drivers/staging/comedi/drivers/ni_mio_cs.c      |    2 
 drivers/staging/hv/Hv.c                         |    2 
 drivers/staging/hv/RndisFilter.c                |    1 
 drivers/staging/hv/netvsc_drv.c                 |    3 
 drivers/staging/hv/vmbus_drv.c                  |   30 
 drivers/staging/mimio/Kconfig                   |   10 
 drivers/staging/mimio/Makefile                  |    1 
 drivers/staging/mimio/mimio.c                   |  914 ------------------------
 drivers/staging/pohmelfs/inode.c                |   20 
 drivers/staging/pohmelfs/netfs.h                |    3 
 drivers/staging/rt2860/usb_main_dev.c           |    1 
 drivers/staging/rtl8192su/r8192U_core.c         |    2 
 drivers/staging/usbip/usbip_event.c             |    3 
 drivers/staging/vt6655/device_main.c            |    2 
 drivers/staging/wlan-ng/Kconfig                 |    1 
 drivers/usb/class/cdc-acm.c                     |   49 -
 drivers/usb/class/cdc-acm.h                     |    1 
 drivers/usb/core/devio.c                        |   17 
 drivers/usb/core/driver.c                       |   25 
 drivers/usb/core/generic.c                      |    2 
 drivers/usb/core/hcd.c                          |    2 
 drivers/usb/core/hcd.h                          |    2 
 drivers/usb/core/hub.c                          |   12 
 drivers/usb/core/inode.c                        |    4 
 drivers/usb/core/message.c                      |    2 
 drivers/usb/core/quirks.c                       |    7 
 drivers/usb/core/usb.c                          |    3 
 drivers/usb/gadget/f_mass_storage.c             |    1 
 drivers/usb/gadget/fsl_udc_core.c               |    2 
 drivers/usb/gadget/u_serial.c                   |   16 
 drivers/usb/host/ehci-hcd.c                     |    3 
 drivers/usb/host/ehci-hub.c                     |   17 
 drivers/usb/host/ehci-mem.c                     |    2 
 drivers/usb/host/ehci-mxc.c                     |   13 
 drivers/usb/host/ehci-sched.c                   |   66 +
 drivers/usb/host/ehci.h                         |   10 
 drivers/usb/host/fhci.h                         |    9 
 drivers/usb/host/ohci-hub.c                     |    2 
 drivers/usb/host/ohci-pnx4008.c                 |    6 
 drivers/usb/host/r8a66597-hcd.c                 |   16 
 drivers/usb/host/uhci-hcd.c                     |    1 
 drivers/usb/host/xhci-ext-caps.h                |    7 
 drivers/usb/host/xhci-hcd.c                     |   55 +
 drivers/usb/host/xhci-mem.c                     |   65 +
 drivers/usb/host/xhci-pci.c                     |    2 
 drivers/usb/host/xhci-ring.c                    |   37 
 drivers/usb/host/xhci.h                         |    4 
 drivers/usb/misc/sisusbvga/sisusb.c             |    5 
 drivers/usb/serial/cp210x.c                     |   14 
 drivers/usb/serial/ftdi_sio.c                   |   19 
 drivers/usb/serial/ftdi_sio_ids.h               |   37 
 drivers/usb/serial/ir-usb.c                     |    2 
 drivers/usb/serial/kl5kusb105.c                 |    1 
 drivers/usb/serial/kobil_sct.c                  |    3 
 drivers/usb/serial/mos7840.c                    |    1 
 drivers/usb/serial/option.c                     |  237 ++++++
 drivers/usb/serial/qcserial.c                   |   29 
 drivers/usb/serial/sierra.c                     |   21 
 drivers/usb/serial/visor.c                      |    1 
 drivers/usb/storage/unusual_devs.h              |  103 ++
 drivers/video/Kconfig                           |   12 
 drivers/video/Makefile                          |    1 
 drivers/video/backlight/mbp_nvidia_bl.c         |   45 +
 drivers/video/bfin-t350mcqb-fb.c                |   15 
 drivers/video/sunxvr1000.c                      |  228 +++++
 drivers/video/sunxvr500.c                       |   25 
 drivers/virtio/virtio_pci.c                     |    3 
 drivers/w1/slaves/w1_therm.c                    |    5 
 drivers/watchdog/hpwdt.c                        |    2 
 drivers/watchdog/iTCO_wdt.c                     |   99 ++
 drivers/xen/xenbus/xenbus_xs.c                  |    2 
 fs/9p/vfs_file.c                                |    2 
 fs/block_dev.c                                  |    3 
 fs/btrfs/acl.c                                  |    3 
 fs/btrfs/ioctl.c                                |    9 
 fs/cachefiles/security.c                        |    4 
 fs/cifs/cifsfs.c                                |    6 
 fs/cifs/cifsglob.h                              |    1 
 fs/cifs/cifsproto.h                             |    6 
 fs/cifs/cifssmb.c                               |   19 
 fs/cifs/dir.c                                   |   20 
 fs/cifs/dns_resolve.c                           |   69 +
 fs/cifs/dns_resolve.h                           |    4 
 fs/cifs/file.c                                  |   11 
 fs/cifs/inode.c                                 |   25 
 fs/cifs/sess.c                                  |   10 
 fs/compat.c                                     |    2 
 fs/ecryptfs/inode.c                             |  108 +-
 fs/ecryptfs/messaging.c                         |   17 
 fs/ecryptfs/super.c                             |    1 
 fs/exec.c                                       |    5 
 fs/exofs/dir.c                                  |    2 
 fs/ext4/ext4.h                                  |    6 
 fs/ext4/extents.c                               |   11 
 fs/ext4/inode.c                                 |    2 
 fs/ext4/move_extent.c                           |    3 
 fs/ext4/resize.c                                |    3 
 fs/fat/namei_vfat.c                             |    6 
 fs/file_table.c                                 |    2 
 fs/fs-writeback.c                               |   14 
 fs/gfs2/file.c                                  |    9 
 fs/jfs/resize.c                                 |    6 
 fs/libfs.c                                      |    3 
 fs/namespace.c                                  |    9 
 fs/nfs/client.c                                 |    5 
 fs/nfs/delegation.h                             |    6 
 fs/nfs/dir.c                                    |    6 
 fs/nfs/dns_resolve.c                            |   18 
 fs/nfs/file.c                                   |    3 
 fs/nfs/inode.c                                  |    2 
 fs/nfs/nfs4proc.c                               |    4 
 fs/nfs/nfs4xdr.c                                |    4 
 fs/nfs/pagelist.c                               |   23 
 fs/nfs/super.c                                  |   22 
 fs/nfsd/nfs4state.c                             |    2 
 fs/nfsd/nfs4xdr.c                               |   20 
 fs/nfsd/nfssvc.c                                |    2 
 fs/nilfs2/segment.c                             |    3 
 fs/nilfs2/super.c                               |    1 
 fs/notify/inotify/inotify_fsnotify.c            |    2 
 fs/notify/inotify/inotify_user.c                |    9 
 fs/ocfs2/acl.c                                  |   77 +-
 fs/ocfs2/aops.c                                 |    5 
 fs/ocfs2/buffer_head_io.c                       |    2 
 fs/ocfs2/dlm/dlmfs.c                            |    2 
 fs/ocfs2/inode.c                                |    1 
 fs/ocfs2/refcounttree.c                         |    3 
 fs/ocfs2/suballoc.c                             |   13 
 fs/partitions/msdos.c                           |   85 +-
 fs/proc/array.c                                 |    3 
 fs/proc/base.c                                  |    7 
 fs/proc/task_mmu.c                              |   19 
 fs/quota/dquot.c                                |   57 +
 fs/reiserfs/dir.c                               |    2 
 fs/reiserfs/super.c                             |   10 
 fs/reiserfs/xattr.c                             |   19 
 fs/sysfs/dir.c                                  |   82 +-
 fs/xfs/linux-2.6/xfs_aops.c                     |   93 +-
 fs/xfs/linux-2.6/xfs_super.c                    |    5 
 fs/xfs/linux-2.6/xfs_sync.c                     |  117 ++-
 fs/xfs/linux-2.6/xfs_sync.h                     |    7 
 fs/xfs/quota/xfs_qm_syscalls.c                  |    3 
 fs/xfs/xfs_ag.h                                 |    1 
 fs/xfs/xfs_iget.c                               |   19 
 fs/xfs/xfs_mount.h                              |    1 
 include/acpi/processor.h                        |    3 
 include/asm-generic/dma-mapping-common.h        |    4 
 include/drm/drm_pciids.h                        |    2 
 include/linux/acpi.h                            |    1 
 include/linux/ata.h                             |    4 
 include/linux/decompress/mm.h                   |   14 
 include/linux/dm-ioctl.h                        |    9 
 include/linux/ethtool.h                         |    2 
 include/linux/fb.h                              |    4 
 include/linux/firmware.h                        |    1 
 include/linux/freezer.h                         |    7 
 include/linux/fs.h                              |    8 
 include/linux/ieee80211.h                       |    2 
 include/linux/if_tunnel.h                       |    1 
 include/linux/irq.h                             |    2 
 include/linux/kfifo.h                           |    5 
 include/linux/kvm.h                             |    1 
 include/linux/kvm_host.h                        |    7 
 include/linux/mmc/sdio.h                        |    2 
 include/linux/module.h                          |    2 
 include/linux/netdevice.h                       |   10 
 include/linux/netfilter/nfnetlink.h             |    2 
 include/linux/netlink.h                         |    2 
 include/linux/nfs_fs_sb.h                       |    1 
 include/linux/pci.h                             |    5 
 include/linux/pci_ids.h                         |    5 
 include/linux/perf_event.h                      |   12 
 include/linux/poison.h                          |    9 
 include/linux/quotaops.h                        |   11 
 include/linux/sched.h                           |    6 
 include/linux/skbuff.h                          |   19 
 include/linux/ssb/ssb.h                         |    1 
 include/linux/ssb/ssb_driver_chipcommon.h       |    2 
 include/linux/ssb/ssb_regs.h                    |    3 
 include/linux/swap.h                            |   10 
 include/linux/syscalls.h                        |    6 
 include/linux/tboot.h                           |    1 
 include/linux/tty.h                             |   11 
 include/math-emu/op-common.h                    |    2 
 include/net/mac80211.h                          |    7 
 include/net/netlink.h                           |    6 
 include/net/sctp/command.h                      |    1 
 include/net/sctp/sctp.h                         |    1 
 include/net/sctp/structs.h                      |    1 
 include/net/sock.h                              |   24 
 include/net/xfrm.h                              |    3 
 include/trace/events/signal.h                   |    3 
 include/trace/ftrace.h                          |    3 
 init/initramfs.c                                |    3 
 init/main.c                                     |    2 
 ipc/mqueue.c                                    |    3 
 kernel/cgroup_freezer.c                         |    9 
 kernel/compat.c                                 |   25 
 kernel/cpuset.c                                 |   20 
 kernel/cred.c                                   |    2 
 kernel/fork.c                                   |    2 
 kernel/futex.c                                  |   17 
 kernel/hw_breakpoint.c                          |    1 
 kernel/irq/chip.c                               |   83 +-
 kernel/irq/manage.c                             |   31 
 kernel/kthread.c                                |    2 
 kernel/lockdep.c                                |    6 
 kernel/module.c                                 |    6 
 kernel/mutex.c                                  |    7 
 kernel/perf_event.c                             |  213 +++--
 kernel/posix-timers.c                           |   11 
 kernel/power/process.c                          |    2 
 kernel/power/snapshot.c                         |    2 
 kernel/profile.c                                |    4 
 kernel/sched.c                                  |  116 +--
 kernel/signal.c                                 |    6 
 kernel/softlockup.c                             |    4 
 kernel/time/clocksource.c                       |    4 
 kernel/trace/ftrace.c                           |    2 
 kernel/trace/ring_buffer.c                      |   12 
 kernel/trace/trace.c                            |  161 +++-
 kernel/trace/trace.h                            |    3 
 lib/flex_array.c                                |    2 
 mm/fadvise.c                                    |   10 
 mm/filemap.c                                    |   10 
 mm/hugetlb.c                                    |    7 
 mm/memcontrol.c                                 |    4 
 mm/mempolicy.c                                  |   40 -
 mm/readahead.c                                  |    6 
 mm/slab.c                                       |    6 
 net/8021q/vlan_core.c                           |    4 
 net/bluetooth/l2cap.c                           |   15 
 net/bluetooth/rfcomm/core.c                     |   13 
 net/bluetooth/rfcomm/sock.c                     |   11 
 net/bluetooth/sco.c                             |   11 
 net/bridge/br_fdb.c                             |    6 
 net/core/dev.c                                  |   25 
 net/core/ethtool.c                              |   43 -
 net/core/neighbour.c                            |    5 
 net/core/scm.c                                  |    2 
 net/core/skbuff.c                               |    1 
 net/core/sock.c                                 |   16 
 net/dccp/input.c                                |    6 
 net/dccp/minisocks.c                            |    2 
 net/ieee802154/af_ieee802154.c                  |    3 
 net/ipv4/arp.c                                  |    6 
 net/ipv4/ip_gre.c                               |    4 
 net/ipv4/route.c                                |   33 
 net/ipv4/syncookies.c                           |    2 
 net/ipv4/tcp.c                                  |   66 +
 net/ipv4/tcp_input.c                            |    3 
 net/ipv4/tcp_ipv4.c                             |    6 
 net/ipv4/tcp_minisocks.c                        |    2 
 net/ipv4/tcp_output.c                           |   30 
 net/ipv4/udp.c                                  |   16 
 net/ipv4/xfrm4_policy.c                         |    5 
 net/ipv6/af_inet6.c                             |    2 
 net/ipv6/ndisc.c                                |    2 
 net/ipv6/netfilter/ip6t_REJECT.c                |    6 
 net/ipv6/route.c                                |   13 
 net/ipv6/tcp_ipv6.c                             |    8 
 net/ipv6/udp.c                                  |   32 
 net/ipv6/xfrm6_policy.c                         |    3 
 net/llc/llc_c_ac.c                              |    2 
 net/llc/llc_conn.c                              |    3 
 net/llc/llc_sap.c                               |    2 
 net/mac80211/Kconfig                            |    9 
 net/mac80211/agg-tx.c                           |    4 
 net/mac80211/cfg.c                              |    7 
 net/mac80211/ieee80211_i.h                      |    1 
 net/mac80211/mesh.c                             |    3 
 net/mac80211/mesh_hwmp.c                        |    4 
 net/mac80211/mlme.c                             |   40 -
 net/mac80211/rate.h                             |    5 
 net/mac80211/rx.c                               |   21 
 net/mac80211/scan.c                             |   21 
 net/mac80211/status.c                           |   17 
 net/mac80211/tx.c                               |   16 
 net/mac80211/util.c                             |   20 
 net/netfilter/ipvs/ip_vs_conn.c                 |    4 
 net/netfilter/nf_conntrack_netlink.c            |    3 
 net/netfilter/nfnetlink.c                       |    4 
 net/netfilter/xt_recent.c                       |    4 
 net/netlink/af_netlink.c                        |   17 
 net/sctp/associola.c                            |    6 
 net/sctp/endpointola.c                          |    1 
 net/sctp/input.c                                |   42 -
 net/sctp/sm_make_chunk.c                        |   94 +-
 net/sctp/sm_sideeffect.c                        |   26 
 net/sctp/sm_statefuns.c                         |    8 
 net/sctp/socket.c                               |   17 
 net/sunrpc/auth_gss/auth_gss.c                  |    5 
 net/sunrpc/rpc_pipe.c                           |    2 
 net/sunrpc/svc_xprt.c                           |   18 
 net/sunrpc/svcsock.c                            |    1 
 net/sunrpc/xprtsock.c                           |   43 -
 net/tipc/bearer.c                               |   37 
 net/tipc/bearer.h                               |    2 
 net/tipc/net.c                                  |   25 
 net/tipc/socket.c                               |    6 
 net/wireless/core.h                             |    2 
 net/wireless/nl80211.c                          |   37 
 net/wireless/util.c                             |   33 
 net/wireless/wext-compat.c                      |    5 
 net/x25/x25_dev.c                               |    2 
 net/xfrm/xfrm_policy.c                          |    7 
 scripts/get_maintainer.pl                       |    4 
 scripts/kconfig/Makefile                        |    2 
 scripts/mod/modpost.c                           |    2 
 security/inode.c                                |    4 
 security/integrity/ima/ima_iint.c               |    3 
 security/keys/keyring.c                         |   18 
 security/keys/process_keys.c                    |    6 
 security/keys/request_key.c                     |    9 
 security/min_addr.c                             |    2 
 security/selinux/ss/ebitmap.c                   |    2 
 sound/core/pcm_native.c                         |    8 
 sound/pci/ac97/ac97_patch.c                     |    2 
 sound/pci/cmipci.c                              |   14 
 sound/pci/echoaudio/echoaudio.c                 |    4 
 sound/pci/hda/hda_intel.c                       |   32 
 sound/pci/hda/patch_analog.c                    |   10 
 sound/pci/hda/patch_conexant.c                  |   25 
 sound/pci/hda/patch_realtek.c                   |   16 
 sound/pci/hda/patch_sigmatel.c                  |   14 
 sound/pci/ice1712/maya44.c                      |    6 
 sound/pci/maestro3.c                            |    9 
 sound/pci/mixart/mixart.c                       |   24 
 sound/pci/oxygen/xonar_cs43xx.c                 |    3 
 sound/pci/via82xx.c                             |    6 
 sound/soc/codecs/ak4104.c                       |    6 
 sound/soc/codecs/wm8350.c                       |    4 
 sound/soc/codecs/wm8400.c                       |   18 
 sound/soc/codecs/wm8776.c                       |    1 
 sound/soc/codecs/wm8990.c                       |   18 
 sound/usb/usbaudio.c                            |   32 
 sound/usb/usbmidi.c                             |   48 +
 sound/usb/usbquirks.h                           |   27 
 tools/perf/Documentation/Makefile               |    4 
 tools/perf/Makefile                             |    4 
 tools/perf/builtin-annotate.c                   |   63 -
 tools/perf/builtin-probe.c                      |    1 
 tools/perf/util/callchain.h                     |    3 
 tools/perf/util/probe-finder.c                  |    3 
 tools/perf/util/symbol.c                        |    4 
 tools/perf/util/symbol.h                        |    2 
 virt/kvm/ioapic.c                               |    3 
 virt/kvm/kvm_main.c                             |   13 
 754 files changed, 8431 insertions(+), 4501 deletions(-)

