From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.36.4 released
Date: Fri, 18 Feb 2011 00:21:50 GMT
Message-ID: <201102180021.p1I0LoUk004275@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.36.4 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.36.4.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.36.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               186814            787035
Full source                       70262144         413747200

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/kernel-parameters.txt                  |    3 
 Documentation/power/runtime_pm.txt                   |    4 
 Makefile                                             |    2 
 arch/arm/include/asm/assembler.h                     |    2 
 arch/arm/include/asm/kgdb.h                          |    5 
 arch/arm/kernel/kgdb.c                               |    2 
 arch/arm/lib/findbit.S                               |    6 
 arch/arm/mach-at91/include/mach/at91_mci.h           |    2 
 arch/arm/mach-cns3xxx/include/mach/debug-macro.S     |    2 
 arch/arm/mach-cns3xxx/pcie.c                         |    2 
 arch/arm/mm/cache-v6.S                               |   28 +-
 arch/arm/mm/fault-armv.c                             |   28 ++
 arch/arm/mm/init.c                                   |    6 
 arch/arm/plat-omap/dma.c                             |   50 ++++
 arch/arm/plat-omap/include/plat/dma.h                |    4 
 arch/avr32/include/asm/syscalls.h                    |    9 
 arch/microblaze/Makefile                             |    8 
 arch/mips/jz4740/board-qi_lb60.c                     |    4 
 arch/parisc/kernel/firmware.c                        |   13 -
 arch/powerpc/boot/dts/p1022ds.dts                    |    4 
 arch/powerpc/kernel/cpu_setup_6xx.S                  |   40 +--
 arch/powerpc/kernel/ppc970-pmu.c                     |    2 
 arch/powerpc/mm/hash_utils_64.c                      |    2 
 arch/powerpc/mm/numa.c                               |    2 
 arch/powerpc/platforms/pseries/lpar.c                |   37 +++
 arch/powerpc/sysdev/fsl_rio.c                        |    1 
 arch/s390/kernel/nmi.c                               |   10 
 arch/s390/kernel/vtime.c                             |   19 +
 arch/s390/lib/delay.c                                |   14 -
 arch/sh/include/asm/io.h                             |   10 
 arch/sh/include/asm/pgtable_32.h                     |    7 
 arch/sh/include/asm/syscalls_32.h                    |    7 
 arch/sparc/include/asm/openprom.h                    |    2 
 arch/sparc/include/asm/oplib_32.h                    |   35 ---
 arch/sparc/include/asm/oplib_64.h                    |   46 ----
 arch/sparc/kernel/leon_kernel.c                      |    4 
 arch/sparc/prom/Makefile                             |    1 
 arch/sparc/prom/console_32.c                         |   65 +-----
 arch/sparc/prom/console_64.c                         |   81 +------
 arch/sparc/prom/devops_32.c                          |   87 --------
 arch/sparc/prom/devops_64.c                          |   67 ------
 arch/sparc/prom/misc_64.c                            |   16 -
 arch/sparc/prom/printf.c                             |   35 ++-
 arch/sparc/prom/tree_32.c                            |   15 -
 arch/sparc/prom/tree_64.c                            |   18 -
 arch/tile/kernel/process.c                           |    7 
 arch/um/drivers/line.c                               |    5 
 arch/um/kernel/uml.lds.S                             |    2 
 arch/um/os-Linux/time.c                              |    2 
 arch/x86/include/asm/cpufeature.h                    |    2 
 arch/x86/include/asm/io.h                            |    1 
 arch/x86/include/asm/kvm_host.h                      |    2 
 arch/x86/include/asm/mmu_context.h                   |    5 
 arch/x86/include/asm/mrst.h                          |    2 
 arch/x86/include/asm/processor.h                     |   23 --
 arch/x86/include/asm/smp.h                           |    9 
 arch/x86/kernel/apic/apic.c                          |    8 
 arch/x86/kernel/apic/io_apic.c                       |    3 
 arch/x86/kernel/apic/probe_64.c                      |    7 
 arch/x86/kernel/cpu/amd.c                            |    3 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c           |    1 
 arch/x86/kernel/cpu/mtrr/cleanup.c                   |    2 
 arch/x86/kernel/cpu/mtrr/main.c                      |   10 
 arch/x86/kernel/cpu/perf_event_amd.c                 |    4 
 arch/x86/kernel/crash_dump_64.c                      |    3 
 arch/x86/kernel/hw_breakpoint.c                      |    4 
 arch/x86/kernel/microcode_intel.c                    |   16 -
 arch/x86/kernel/olpc.c                               |    5 
 arch/x86/kernel/reboot.c                             |    2 
 arch/x86/kernel/smp.c                                |   15 -
 arch/x86/kernel/smpboot.c                            |   85 +++++++
 arch/x86/kernel/traps.c                              |    1 
 arch/x86/kernel/vm86_32.c                            |   10 
 arch/x86/kernel/xsave.c                              |    3 
 arch/x86/kvm/i8259.c                                 |    2 
 arch/x86/kvm/mmu.c                                   |   10 
 arch/x86/kvm/svm.c                                   |   43 +++-
 arch/x86/kvm/vmx.c                                   |   24 --
 arch/x86/kvm/x86.c                                   |   25 +-
 arch/x86/kvm/x86.h                                   |    5 
 arch/x86/oprofile/op_model_amd.c                     |   24 +-
 arch/x86/vdso/Makefile                               |    4 
 arch/x86/xen/enlighten.c                             |    4 
 arch/x86/xen/smp.c                                   |    6 
 block/blk-map.c                                      |    2 
 block/blk-merge.c                                    |    6 
 block/blk-settings.c                                 |   27 --
 block/blk-sysfs.c                                    |    2 
 block/cfq-iosched.c                                  |    4 
 block/genhd.c                                        |    6 
 block/scsi_ioctl.c                                   |   34 ++-
 drivers/acpi/acpica/dswexec.c                        |   19 +
 drivers/acpi/battery.c                               |   38 +++
 drivers/acpi/bus.c                                   |    7 
 drivers/acpi/debugfs.c                               |    2 
 drivers/acpi/ec.c                                    |    3 
 drivers/ata/ahci.h                                   |    1 
 drivers/ata/libahci.c                                |   18 +
 drivers/ata/libata-scsi.c                            |    5 
 drivers/ata/libata-sff.c                             |    7 
 drivers/ata/pata_mpc52xx.c                           |    2 
 drivers/ata/sata_via.c                               |    9 
 drivers/block/xen-blkfront.c                         |    2 
 drivers/bluetooth/hci_ldisc.c                        |    7 
 drivers/char/agp/intel-agp.c                         |   28 +-
 drivers/char/agp/intel-gtt.c                         |   63 ++---
 drivers/char/hpet.c                                  |   17 +
 drivers/char/ipmi/ipmi_si_intf.c                     |   42 +--
 drivers/char/n_gsm.c                                 |    6 
 drivers/char/pcmcia/synclink_cs.c                    |    2 
 drivers/char/ramoops.c                               |   12 -
 drivers/char/tpm/tpm.c                               |   28 ++
 drivers/char/tpm/tpm.h                               |    2 
 drivers/char/tpm/tpm_tis.c                           |   28 ++
 drivers/char/tty_buffer.c                            |   14 +
 drivers/char/tty_io.c                                |   13 +
 drivers/char/tty_ldisc.c                             |   51 ++++
 drivers/char/virtio_console.c                        |   15 +
 drivers/char/vt_ioctl.c                              |   11 -
 drivers/cpuidle/cpuidle.c                            |   82 +++----
 drivers/crypto/padlock-aes.c                         |    2 
 drivers/dma/mv_xor.c                                 |    2 
 drivers/edac/amd64_edac.c                            |    2 
 drivers/edac/edac_mc.c                               |   10 
 drivers/firewire/core-card.c                         |   11 -
 drivers/firewire/ohci.c                              |  107 +++++++--
 drivers/gpio/cs5535-gpio.c                           |   27 ++
 drivers/gpio/rdc321x-gpio.c                          |    2 
 drivers/gpu/drm/Kconfig                              |    3 
 drivers/gpu/drm/drm_crtc.c                           |   10 
 drivers/gpu/drm/drm_crtc_helper.c                    |    5 
 drivers/gpu/drm/i915/i915_dma.c                      |   36 +++
 drivers/gpu/drm/i915/i915_drv.c                      |   10 
 drivers/gpu/drm/i915/i915_irq.c                      |   21 +
 drivers/gpu/drm/i915/i915_reg.h                      |   17 +
 drivers/gpu/drm/i915/i915_suspend.c                  |    4 
 drivers/gpu/drm/i915/intel_crt.c                     |    3 
 drivers/gpu/drm/i915/intel_display.c                 |   11 -
 drivers/gpu/drm/i915/intel_dp.c                      |   60 ++++-
 drivers/gpu/drm/i915/intel_drv.h                     |    1 
 drivers/gpu/drm/i915/intel_lvds.c                    |    8 
 drivers/gpu/drm/i915/intel_overlay.c                 |    8 
 drivers/gpu/drm/i915/intel_sdvo.c                    |    8 
 drivers/gpu/drm/nouveau/nouveau_drv.h                |    6 
 drivers/gpu/drm/nouveau/nouveau_irq.c                |    1 
 drivers/gpu/drm/nouveau/nv50_display.c               |   35 ++-
 drivers/gpu/drm/radeon/atom.c                        |    1 
 drivers/gpu/drm/radeon/atombios_crtc.c               |    3 
 drivers/gpu/drm/radeon/atombios_dp.c                 |    4 
 drivers/gpu/drm/radeon/evergreen.c                   |   25 --
 drivers/gpu/drm/radeon/r100.c                        |    6 
 drivers/gpu/drm/radeon/r100_track.h                  |    1 
 drivers/gpu/drm/radeon/r200.c                        |    2 
 drivers/gpu/drm/radeon/r600.c                        |   32 +-
 drivers/gpu/drm/radeon/r600_blit_kms.c               |    8 
 drivers/gpu/drm/radeon/r600_cs.c                     |    4 
 drivers/gpu/drm/radeon/r600_reg.h                    |    1 
 drivers/gpu/drm/radeon/radeon_atombios.c             |   53 +++-
 drivers/gpu/drm/radeon/radeon_bios.c                 |   13 -
 drivers/gpu/drm/radeon/radeon_combios.c              |   15 +
 drivers/gpu/drm/radeon/radeon_connectors.c           |   34 +++
 drivers/gpu/drm/radeon/radeon_device.c               |    9 
 drivers/gpu/drm/radeon/radeon_display.c              |    4 
 drivers/gpu/drm/radeon/radeon_encoders.c             |   36 +++
 drivers/gpu/drm/radeon/radeon_i2c.c                  |    1 
 drivers/gpu/drm/radeon/radeon_object.c               |    4 
 drivers/gpu/drm/radeon/radeon_reg.h                  |    1 
 drivers/gpu/drm/radeon/rv770.c                       |    9 
 drivers/gpu/vga/vgaarb.c                             |    2 
 drivers/hid/hid-egalax.c                             |   16 +
 drivers/hid/usbhid/hid-quirks.c                      |    1 
 drivers/hwmon/adm1026.c                              |   20 -
 drivers/hwmon/applesmc.c                             |   48 +---
 drivers/hwmon/lm63.c                                 |   59 ++++-
 drivers/hwmon/lm85.c                                 |    1 
 drivers/hwmon/via686a.c                              |   14 +
 drivers/i2c/busses/i2c-pca-platform.c                |    2 
 drivers/i2c/i2c-core.c                               |   14 +
 drivers/idle/intel_idle.c                            |    2 
 drivers/infiniband/core/uverbs_cmd.c                 |   99 +++++----
 drivers/infiniband/hw/cxgb4/cm.c                     |    2 
 drivers/input/mouse/bcm5974.c                        |   40 +++
 drivers/input/mouse/synaptics.h                      |    3 
 drivers/input/serio/i8042-x86ia64io.h                |   28 ++
 drivers/input/serio/i8042.c                          |    6 
 drivers/isdn/gigaset/bas-gigaset.c                   |   89 +++-----
 drivers/isdn/gigaset/isocdata.c                      |    8 
 drivers/leds/leds-ss4200.c                           |    1 
 drivers/md/dm-mpath.c                                |   12 -
 drivers/md/dm-table.c                                |    5 
 drivers/md/dm.c                                      |    5 
 drivers/md/md.c                                      |   44 ++--
 drivers/md/md.h                                      |    3 
 drivers/md/raid1.c                                   |    1 
 drivers/md/raid10.c                                  |    2 
 drivers/media/common/saa7146_hlp.c                   |    8 
 drivers/media/common/saa7146_video.c                 |   16 -
 drivers/media/radio/radio-aimslab.c                  |   23 --
 drivers/media/video/cx23885/cx23885-core.c           |    1 
 drivers/media/video/em28xx/em28xx-cards.c            |    4 
 drivers/media/video/gspca/gspca.c                    |    4 
 drivers/media/video/gspca/sonixj.c                   |   20 +
 drivers/media/video/hdpvr/hdpvr-video.c              |    1 
 drivers/media/video/msp3400-driver.c                 |    7 
 drivers/media/video/mx2_camera.c                     |    2 
 drivers/media/video/saa7134/saa7134-cards.c          |   24 +-
 drivers/mfd/wm831x-core.c                            |    8 
 drivers/misc/ad525x_dpot-spi.c                       |    4 
 drivers/misc/sgi-xp/xpc_partition.c                  |   25 +-
 drivers/misc/sgi-xp/xpc_uv.c                         |   17 +
 drivers/mmc/core/core.c                              |    3 
 drivers/mmc/host/at91_mci.c                          |   13 -
 drivers/mmc/host/atmel-mci.c                         |   18 +
 drivers/mmc/host/bfin_sdh.c                          |    2 
 drivers/net/8139cp.c                                 |   10 
 drivers/net/atlx/atl1.c                              |   10 
 drivers/net/benet/be_cmds.c                          |    2 
 drivers/net/bonding/bonding.h                        |    4 
 drivers/net/e1000/e1000_main.c                       |   12 -
 drivers/net/fec.c                                    |    4 
 drivers/net/ifb.c                                    |    2 
 drivers/net/ixgbe/ixgbe_main.c                       |   11 -
 drivers/net/jme.c                                    |   22 +-
 drivers/net/pcmcia/pcnet_cs.c                        |    1 
 drivers/net/phy/marvell.c                            |   31 +-
 drivers/net/pppoe.c                                  |    2 
 drivers/net/r6040.c                                  |   22 +-
 drivers/net/r8169.c                                  |   23 +-
 drivers/net/tehuti.c                                 |    4 
 drivers/net/usb/usbnet.c                             |   11 +
 drivers/net/virtio_net.c                             |   27 +-
 drivers/net/wireless/ath/ath.h                       |    1 
 drivers/net/wireless/ath/ath9k/ar9002_calib.c        |   10 
 drivers/net/wireless/ath/ath9k/ar9002_hw.c           |    6 
 drivers/net/wireless/ath/ath9k/ar9003_2p2_initvals.h |  191 ++++++++++++-----
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c       |   87 ++++----
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.h       |    9 
 drivers/net/wireless/ath/ath9k/ar9003_mac.c          |    3 
 drivers/net/wireless/ath/ath9k/ar9003_paprd.c        |   14 -
 drivers/net/wireless/ath/ath9k/ath9k.h               |   12 -
 drivers/net/wireless/ath/ath9k/beacon.c              |    2 
 drivers/net/wireless/ath/ath9k/common.c              |   11 +
 drivers/net/wireless/ath/ath9k/eeprom.c              |    6 
 drivers/net/wireless/ath/ath9k/eeprom.h              |   13 -
 drivers/net/wireless/ath/ath9k/eeprom_9287.c         |    2 
 drivers/net/wireless/ath/ath9k/eeprom_def.c          |   12 -
 drivers/net/wireless/ath/ath9k/hif_usb.c             |   60 +++++
 drivers/net/wireless/ath/ath9k/hif_usb.h             |    1 
 drivers/net/wireless/ath/ath9k/htc_drv_init.c        |    2 
 drivers/net/wireless/ath/ath9k/htc_drv_txrx.c        |    2 
 drivers/net/wireless/ath/ath9k/hw.c                  |   10 
 drivers/net/wireless/ath/ath9k/hw.h                  |    1 
 drivers/net/wireless/ath/ath9k/init.c                |   41 +++
 drivers/net/wireless/ath/ath9k/mac.c                 |    2 
 drivers/net/wireless/ath/ath9k/main.c                |   96 +++++---
 drivers/net/wireless/ath/ath9k/pci.c                 |    4 
 drivers/net/wireless/ath/ath9k/rc.c                  |    8 
 drivers/net/wireless/ath/ath9k/recv.c                |   49 ++--
 drivers/net/wireless/ath/ath9k/reg.h                 |   15 +
 drivers/net/wireless/ath/ath9k/xmit.c                |  116 +++++-----
 drivers/net/wireless/b43/sdio.c                      |    3 
 drivers/net/wireless/iwlwifi/iwl-agn.c               |   15 +
 drivers/net/wireless/iwlwifi/iwl-helpers.h           |    6 
 drivers/net/wireless/orinoco/main.c                  |    6 
 drivers/net/wireless/orinoco/orinoco_cs.c            |   14 -
 drivers/net/wireless/orinoco/spectrum_cs.c           |   14 -
 drivers/net/wireless/orinoco/wext.c                  |    4 
 drivers/net/wireless/p54/eeprom.c                    |    4 
 drivers/net/wireless/p54/p54usb.c                    |   21 +
 drivers/net/wireless/p54/txrx.c                      |    2 
 drivers/net/wireless/rt2x00/rt2400pci.c              |    6 
 drivers/net/wireless/rt2x00/rt2500pci.c              |   12 -
 drivers/net/wireless/rt2x00/rt2500usb.c              |   12 -
 drivers/net/wireless/rt2x00/rt2800.h                 |    7 
 drivers/net/wireless/rt2x00/rt2800lib.c              |   59 +++--
 drivers/net/wireless/rt2x00/rt2x00.h                 |    5 
 drivers/net/wireless/rt2x00/rt2x00dev.c              |    2 
 drivers/net/wireless/rt2x00/rt61pci.c                |   12 -
 drivers/net/wireless/rt2x00/rt73usb.c                |   13 -
 drivers/net/xen-netfront.c                           |    4 
 drivers/oprofile/timer_int.c                         |   13 +
 drivers/pci/dmar.c                                   |    5 
 drivers/pci/pci-stub.c                               |    3 
 drivers/pci/pci-sysfs.c                              |   22 +-
 drivers/pci/pci.h                                    |    7 
 drivers/pci/proc.c                                   |    2 
 drivers/pci/quirks.c                                 |   23 ++
 drivers/pcmcia/soc_common.c                          |    1 
 drivers/platform/x86/asus-laptop.c                   |    6 
 drivers/platform/x86/intel_ips.c                     |   36 +++
 drivers/platform/x86/intel_ips.h                     |   21 +
 drivers/platform/x86/wmi.c                           |    2 
 drivers/pnp/pnpacpi/core.c                           |   29 ++
 drivers/power/ds2760_battery.c                       |    2 
 drivers/power/jz4740-battery.c                       |    7 
 drivers/power/olpc_battery.c                         |    8 
 drivers/rtc/rtc-cmos.c                               |   16 -
 drivers/rtc/rtc-rs5c372.c                            |    2 
 drivers/s390/cio/qdio.h                              |    6 
 drivers/s390/cio/qdio_main.c                         |   43 ++--
 drivers/scsi/gdth.c                                  |    8 
 drivers/scsi/libsas/sas_ata.c                        |    1 
 drivers/scsi/libsas/sas_scsi_host.c                  |    1 
 drivers/scsi/mpt2sas/mpt2sas_base.c                  |   24 +-
 drivers/scsi/mpt2sas/mpt2sas_scsih.c                 |   64 ++++-
 drivers/scsi/pmcraid.h                               |    1 
 drivers/scsi/qla2xxx/qla_gbl.h                       |    1 
 drivers/scsi/qla2xxx/qla_init.c                      |    5 
 drivers/scsi/qla2xxx/qla_iocb.c                      |    1 
 drivers/scsi/qla2xxx/qla_nx.c                        |    1 
 drivers/scsi/qla2xxx/qla_os.c                        |    6 
 drivers/scsi/qla4xxx/ql4_nx.c                        |    1 
 drivers/scsi/scsi_lib.c                              |    6 
 drivers/scsi/scsi_sysfs.c                            |    3 
 drivers/scsi/sd.c                                    |   24 +-
 drivers/serial/8250.c                                |    3 
 drivers/serial/mfd.c                                 |   18 -
 drivers/ssb/b43_pci_bridge.c                         |    1 
 drivers/ssb/pcmcia.c                                 |    2 
 drivers/staging/asus_oled/asus_oled.c                |    8 
 drivers/staging/batman-adv/soft-interface.c          |    4 
 drivers/staging/comedi/drivers/jr3_pci.c             |    7 
 drivers/staging/comedi/drivers/ni_labpc.c            |    3 
 drivers/staging/cx25821/cx25821-video.c              |    8 
 drivers/staging/cx25821/cx25821-video.h              |    2 
 drivers/staging/frontier/tranzport.c                 |    2 
 drivers/staging/hv/blkvsc_drv.c                      |    1 
 drivers/staging/hv/netvsc.c                          |    2 
 drivers/staging/hv/netvsc_drv.c                      |    1 
 drivers/staging/iio/accel/adis16220_core.c           |    2 
 drivers/staging/line6/control.c                      |  204 +++++++++----------
 drivers/staging/line6/midi.c                         |    4 
 drivers/staging/line6/pod.c                          |   32 +-
 drivers/staging/line6/toneport.c                     |    4 
 drivers/staging/line6/variax.c                       |   12 -
 drivers/staging/phison/phison.c                      |    2 
 drivers/staging/rt2860/chips/rt3090.c                |    3 
 drivers/staging/rt2860/chips/rt30xx.c                |    4 
 drivers/staging/rt2860/rt_main_dev.c                 |    2 
 drivers/staging/rt2860/usb_main_dev.c                |    3 
 drivers/staging/rtl8187se/r8185b_init.c              |   30 ++
 drivers/staging/samsung-laptop/samsung-laptop.c      |    2 
 drivers/staging/udlfb/udlfb.c                        |    2 
 drivers/staging/usbip/usbip_event.c                  |   16 -
 drivers/staging/usbip/vhci_hcd.c                     |   16 -
 drivers/staging/zram/zram_drv.c                      |    4 
 drivers/usb/atm/ueagle-atm.c                         |    7 
 drivers/usb/class/cdc-acm.c                          |    1 
 drivers/usb/core/devio.c                             |    7 
 drivers/usb/core/hcd.c                               |    2 
 drivers/usb/core/hub.c                               |   35 ++-
 drivers/usb/core/message.c                           |   14 -
 drivers/usb/gadget/atmel_usba_udc.c                  |    3 
 drivers/usb/gadget/composite.c                       |   19 -
 drivers/usb/gadget/f_acm.c                           |    2 
 drivers/usb/gadget/g_ffs.c                           |    4 
 drivers/usb/gadget/multi.c                           |    4 
 drivers/usb/gadget/printer.c                         |   19 -
 drivers/usb/host/ehci-au1xxx.c                       |    2 
 drivers/usb/host/ehci-dbg.c                          |    2 
 drivers/usb/host/ehci-hcd.c                          |   37 ++-
 drivers/usb/host/ehci-hub.c                          |    7 
 drivers/usb/host/ehci-pci.c                          |   53 ++++
 drivers/usb/host/ehci-sched.c                        |   79 +++++++
 drivers/usb/host/ehci.h                              |    1 
 drivers/usb/host/ohci-jz4740.c                       |    2 
 drivers/usb/host/r8a66597.h                          |    2 
 drivers/usb/host/xhci-hub.c                          |    7 
 drivers/usb/host/xhci-mem.c                          |  173 +++++++++++++++-
 drivers/usb/host/xhci-ring.c                         |    1 
 drivers/usb/host/xhci.c                              |   32 ++
 drivers/usb/host/xhci.h                              |   32 ++
 drivers/usb/misc/cypress_cy7c63.c                    |    6 
 drivers/usb/misc/iowarrior.c                         |    1 
 drivers/usb/misc/sisusbvga/sisusb.c                  |    1 
 drivers/usb/misc/trancevibrator.c                    |    2 
 drivers/usb/misc/usbled.c                            |    2 
 drivers/usb/misc/usbsevseg.c                         |   10 
 drivers/usb/misc/uss720.c                            |    4 
 drivers/usb/musb/blackfin.c                          |    7 
 drivers/usb/musb/davinci.c                           |    2 
 drivers/usb/musb/musb_core.c                         |    5 
 drivers/usb/musb/omap2430.c                          |    1 
 drivers/usb/musb/tusb6010.c                          |    4 
 drivers/usb/serial/ch341.c                           |   10 
 drivers/usb/serial/cp210x.c                          |   18 -
 drivers/usb/serial/digi_acceleport.c                 |   10 
 drivers/usb/serial/ftdi_sio.c                        |   83 +++++++
 drivers/usb/serial/ftdi_sio_ids.h                    |   87 +++++++-
 drivers/usb/serial/generic.c                         |   20 +
 drivers/usb/serial/io_edgeport.c                     |    4 
 drivers/usb/serial/io_tables.h                       |    1 
 drivers/usb/serial/iuu_phoenix.c                     |    1 
 drivers/usb/serial/keyspan.h                         |    4 
 drivers/usb/serial/keyspan_pda.c                     |   17 -
 drivers/usb/serial/mct_u232.c                        |    7 
 drivers/usb/serial/moto_modem.c                      |    1 
 drivers/usb/serial/opticon.c                         |    6 
 drivers/usb/serial/option.c                          |   48 +++-
 drivers/usb/serial/oti6858.c                         |    1 
 drivers/usb/serial/pl2303.c                          |   12 +
 drivers/usb/serial/pl2303.h                          |    1 
 drivers/usb/serial/qcaux.c                           |    3 
 drivers/usb/serial/siemens_mpi.c                     |    1 
 drivers/usb/serial/spcp8x5.c                         |    7 
 drivers/usb/serial/ti_usb_3410_5052.c                |    2 
 drivers/usb/serial/usb-serial.c                      |    7 
 drivers/usb/serial/usb_debug.c                       |    1 
 drivers/usb/serial/visor.c                           |   11 -
 drivers/usb/storage/sierra_ms.c                      |    2 
 drivers/usb/storage/unusual_cypress.h                |    5 
 drivers/usb/storage/unusual_devs.h                   |   39 +++
 drivers/video/backlight/88pm860x_bl.c                |    4 
 drivers/video/backlight/backlight.c                  |   12 -
 drivers/video/via/accel.c                            |    7 
 drivers/video/via/via_i2c.c                          |   27 ++
 drivers/virtio/virtio_pci.c                          |   20 -
 drivers/watchdog/rdc321x_wdt.c                       |    2 
 drivers/xen/events.c                                 |    2 
 fs/bio.c                                             |   23 +-
 fs/cifs/cifsproto.h                                  |    3 
 fs/cifs/dir.c                                        |   12 -
 fs/cifs/dns_resolve.c                                |    2 
 fs/cifs/file.c                                       |    4 
 fs/cifs/inode.c                                      |   12 -
 fs/compat.c                                          |   28 +-
 fs/direct-io.c                                       |   10 
 fs/ecryptfs/inode.c                                  |   11 -
 fs/exec.c                                            |   41 +++
 fs/ext4/inode.c                                      |    1 
 fs/ext4/super.c                                      |    1 
 fs/fuse/file.c                                       |   82 +++++++
 fs/hostfs/hostfs.h                                   |    3 
 fs/hostfs/hostfs_kern.c                              |    2 
 fs/hostfs/hostfs_user.c                              |    9 
 fs/nfs/delegation.c                                  |    6 
 fs/nfs/direct.c                                      |   36 +--
 fs/nfs/file.c                                        |   19 -
 fs/nfs/mount_clnt.c                                  |    4 
 fs/nfs/nfs4proc.c                                    |    9 
 fs/nfs/nfs4state.c                                   |   16 +
 fs/nfs/pagelist.c                                    |    8 
 fs/nfsd/nfs3xdr.c                                    |    6 
 fs/nfsd/xdr4.h                                       |   21 -
 fs/nilfs2/super.c                                    |    3 
 fs/notify/inotify/inotify_user.c                     |    1 
 fs/pipe.c                                            |   16 +
 fs/proc/base.c                                       |    2 
 fs/proc/kcore.c                                      |    2 
 fs/reiserfs/ioctl.c                                  |    7 
 fs/reiserfs/xattr_acl.c                              |    6 
 fs/splice.c                                          |   24 --
 include/drm/drm_pciids.h                             |    1 
 include/linux/binfmts.h                              |    5 
 include/linux/blkdev.h                               |   13 -
 include/linux/bootmem.h                              |    2 
 include/linux/gfp.h                                  |    4 
 include/linux/ieee80211.h                            |    2 
 include/linux/kfifo.h                                |    7 
 include/linux/klist.h                                |    2 
 include/linux/mfd/wm8994/pdata.h                     |    2 
 include/linux/mmzone.h                               |   10 
 include/linux/netfilter.h                            |    2 
 include/linux/pci_ids.h                              |    1 
 include/linux/perf_event.h                           |    1 
 include/linux/pipe_fs_i.h                            |    1 
 include/linux/pm_runtime.h                           |    3 
 include/linux/radix-tree.h                           |   36 +--
 include/linux/sched.h                                |    2 
 include/linux/socket.h                               |    2 
 include/linux/tty.h                                  |    1 
 include/linux/usb/serial.h                           |    3 
 include/linux/vmstat.h                               |    5 
 include/media/saa7146.h                              |    2 
 include/net/af_unix.h                                |    2 
 include/net/cfg80211.h                               |   15 -
 include/net/mac80211.h                               |   16 +
 include/net/sock.h                                   |    4 
 include/scsi/scsi.h                                  |    1 
 include/xen/interface/io/ring.h                      |   11 -
 init/calibrate.c                                     |    6 
 ipc/compat.c                                         |    6 
 ipc/compat_mq.c                                      |    5 
 ipc/shm.c                                            |    1 
 kernel/exit.c                                        |   17 +
 kernel/fork.c                                        |    1 
 kernel/futex.c                                       |   31 +-
 kernel/irq/proc.c                                    |    2 
 kernel/latencytop.c                                  |   17 -
 kernel/perf_event.c                                  |   30 ++
 kernel/pm_qos_params.c                               |    4 
 kernel/power/hibernate.c                             |   22 +-
 kernel/power/suspend.c                               |    5 
 kernel/power/user.c                                  |    4 
 kernel/printk.c                                      |    4 
 kernel/ptrace.c                                      |    2 
 kernel/sched.c                                       |  181 ++++++++++++++--
 kernel/smp.c                                         |   30 ++
 kernel/sys.c                                         |    3 
 kernel/timer.c                                       |    8 
 kernel/trace/trace.c                                 |   10 
 kernel/user.c                                        |    1 
 kernel/watchdog.c                                    |   26 +-
 lib/percpu_counter.c                                 |    1 
 lib/radix-tree.c                                     |   83 +++++--
 mm/filemap.c                                         |   29 +-
 mm/hugetlb.c                                         |    8 
 mm/internal.h                                        |    2 
 mm/memcontrol.c                                      |   63 +++--
 mm/memory_hotplug.c                                  |    2 
 mm/mempolicy.c                                       |    2 
 mm/migrate.c                                         |   48 +---
 mm/mmap.c                                            |   16 +
 mm/mmzone.c                                          |   21 -
 mm/mprotect.c                                        |    2 
 mm/nommu.c                                           |    1 
 mm/page_alloc.c                                      |   56 +++--
 mm/vmalloc.c                                         |    9 
 mm/vmscan.c                                          |   23 +-
 mm/vmstat.c                                          |   68 ++++++
 net/8021q/vlan_core.c                                |    3 
 net/ax25/af_ax25.c                                   |    2 
 net/bluetooth/l2cap.c                                |    4 
 net/bridge/br_multicast.c                            |    2 
 net/can/bcm.c                                        |    2 
 net/compat.c                                         |   10 
 net/core/dev.c                                       |   16 +
 net/core/dst.c                                       |    1 
 net/core/filter.c                                    |   83 +++----
 net/core/iovec.c                                     |   20 -
 net/core/rtnetlink.c                                 |    3 
 net/core/timestamping.c                              |    6 
 net/decnet/af_decnet.c                               |    2 
 net/econet/af_econet.c                               |   99 ++++-----
 net/ipv4/tcp.c                                       |    2 
 net/ipv4/tcp_ipv4.c                                  |    8 
 net/ipv4/tcp_output.c                                |   42 ++-
 net/irda/iriap.c                                     |    3 
 net/irda/parameters.c                                |    4 
 net/l2tp/l2tp_ip.c                                   |    6 
 net/llc/af_llc.c                                     |    5 
 net/mac80211/agg-rx.c                                |   11 -
 net/mac80211/cfg.c                                   |    5 
 net/mac80211/ibss.c                                  |    1 
 net/mac80211/ieee80211_i.h                           |    2 
 net/mac80211/key.c                                   |    6 
 net/mac80211/main.c                                  |    3 
 net/mac80211/mesh_plink.c                            |   17 +
 net/mac80211/mlme.c                                  |   48 +++-
 net/mac80211/offchannel.c                            |    7 
 net/mac80211/rate.c                                  |    3 
 net/mac80211/rc80211_minstrel_ht.c                   |    7 
 net/mac80211/rx.c                                    |    3 
 net/mac80211/status.c                                |    1 
 net/mac80211/tx.c                                    |   27 ++
 net/netfilter/nf_conntrack_core.c                    |    3 
 net/netfilter/xt_SECMARK.c                           |    2 
 net/packet/af_packet.c                               |    7 
 net/rds/rdma.c                                       |    2 
 net/sched/cls_cgroup.c                               |    2 
 net/socket.c                                         |    4 
 net/sunrpc/clnt.c                                    |    2 
 net/sunrpc/svc_xprt.c                                |    9 
 net/unix/af_unix.c                                   |   37 ++-
 net/unix/garbage.c                                   |    9 
 net/wireless/chan.c                                  |   51 ++++
 net/wireless/nl80211.c                               |   11 -
 net/wireless/reg.c                                   |   15 -
 net/wireless/scan.c                                  |   12 -
 net/x25/x25_facilities.c                             |   20 +
 net/x25/x25_in.c                                     |    2 
 net/x25/x25_link.c                                   |    1 
 scripts/kconfig/conf.c                               |    2 
 security/integrity/ima/ima_policy.c                  |    2 
 security/keys/request_key.c                          |    1 
 security/selinux/hooks.c                             |    5 
 security/selinux/nlmsgtab.c                          |    2 
 sound/atmel/ac97c.c                                  |    5 
 sound/core/hrtimer.c                                 |    5 
 sound/core/oss/mixer_oss.c                           |   12 -
 sound/core/oss/pcm_oss.c                             |   19 +
 sound/oss/soundcard.c                                |    4 
 sound/pci/au88x0/au88x0_pcm.c                        |   24 +-
 sound/pci/hda/hda_codec.c                            |    8 
 sound/pci/hda/hda_codec.h                            |    1 
 sound/pci/hda/hda_eld.c                              |   22 --
 sound/pci/hda/hda_intel.c                            |   27 +-
 sound/pci/hda/patch_analog.c                         |    7 
 sound/pci/hda/patch_ca0110.c                         |    2 
 sound/pci/hda/patch_conexant.c                       |   13 -
 sound/pci/hda/patch_hdmi.c                           |    1 
 sound/pci/hda/patch_realtek.c                        |   53 ++++
 sound/pci/hda/patch_sigmatel.c                       |   16 +
 sound/pci/intel8x0.c                                 |    6 
 sound/soc/blackfin/bf5xx-ac97.c                      |    4 
 sound/soc/blackfin/bf5xx-tdm.c                       |    2 
 sound/soc/codecs/wm8580.c                            |    2 
 sound/soc/codecs/wm8900.c                            |    6 
 sound/soc/codecs/wm8904.c                            |    3 
 sound/soc/codecs/wm8955.c                            |    3 
 sound/soc/codecs/wm8960.c                            |    3 
 sound/soc/codecs/wm8961.c                            |    4 
 sound/soc/codecs/wm8990.c                            |   10 
 sound/soc/codecs/wm8994.c                            |   17 +
 sound/soc/codecs/wm_hubs.c                           |   17 -
 sound/usb/midi.c                                     |   11 -
 sound/usb/usx2y/us122l.c                             |   41 +--
 607 files changed, 5840 insertions(+), 2908 deletions(-)

