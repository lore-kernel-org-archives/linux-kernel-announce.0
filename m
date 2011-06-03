From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.38.8 released
Date: Fri, 3 Jun 2011 07:20:53 GMT
Message-ID: <201106030720.p537KrAJ011180@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.38.8 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.38.8.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.38.8.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               186457            765094
Full source                       74811146         440596480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/flexible-arrays.txt                      |    4 
 Documentation/i2c/instantiating-devices                |    2 
 Documentation/i2c/writing-clients                      |    2 
 Documentation/usb/linux-cdc-acm.inf                    |    4 
 Documentation/usb/linux.inf                            |    6 
 MAINTAINERS                                            |    1 
 Makefile                                               |    4 
 arch/arm/boot/compressed/Makefile                      |    2 
 arch/arm/boot/compressed/vmlinux.lds.in                |    1 
 arch/arm/kernel/hw_breakpoint.c                        |    7 
 arch/arm/kernel/sys_oabi-compat.c                      |    2 
 arch/arm/mach-davinci/board-dm644x-evm.c               |    8 
 arch/arm/mach-s3c2440/mach-mini2440.c                  |    7 
 arch/arm/mm/cache-v6.S                                 |    1 
 arch/arm/mm/cache-v7.S                                 |    2 
 arch/ia64/kernel/mca.c                                 |    3 
 arch/ia64/sn/pci/tioca_provider.c                      |    2 
 arch/m68k/mm/motorola.c                                |    2 
 arch/microblaze/include/asm/uaccess.h                  |    8 
 arch/parisc/include/asm/unistd.h                       |    5 
 arch/parisc/kernel/irq.c                               |    2 
 arch/parisc/kernel/sys_parisc32.c                      |    8 
 arch/parisc/kernel/syscall_table.S                     |    3 
 arch/parisc/mm/init.c                                  |    4 
 arch/powerpc/include/asm/reg.h                         |    1 
 arch/powerpc/kernel/crash.c                            |    2 
 arch/powerpc/kernel/misc_64.S                          |   13 
 arch/powerpc/kernel/paca.c                             |    2 
 arch/powerpc/kernel/perf_event.c                       |   61 +
 arch/powerpc/kernel/ptrace.c                           |   12 
 arch/powerpc/kernel/setup-common.c                     |    3 
 arch/powerpc/kernel/time.c                             |    5 
 arch/powerpc/oprofile/op_model_power4.c                |   24 
 arch/s390/kvm/sie64a.S                                 |    4 
 arch/s390/mm/fault.c                                   |    4 
 arch/sh/kernel/cpu/Makefile                            |    4 
 arch/sh/kernel/ptrace_32.c                             |    8 
 arch/sh/kernel/ptrace_64.c                             |    6 
 arch/sparc/kernel/entry.S                              |    2 
 arch/sparc/kernel/iommu.c                              |    3 
 arch/sparc/kernel/ldc.c                                |   28 
 arch/sparc/kernel/pci.c                                |    1 
 arch/sparc/kernel/pci_common.c                         |   11 
 arch/sparc/kernel/pci_fire.c                           |    2 
 arch/sparc/kernel/pci_schizo.c                         |    4 
 arch/sparc/kernel/pci_sun4v.c                          |    3 
 arch/sparc/kernel/pcr.c                                |    2 
 arch/sparc/kernel/ptrace_64.c                          |    3 
 arch/sparc/kernel/smp_64.c                             |   11 
 arch/sparc/kernel/traps_64.c                           |    3 
 arch/sparc/kernel/una_asm_64.S                         |    2 
 arch/sparc/mm/fault_32.c                               |    3 
 arch/um/sys-i386/Makefile                              |    2 
 arch/um/sys-i386/atomic64_cx8_32.S                     |  225 +++++
 arch/x86/crypto/aesni-intel_asm.S                      |    5 
 arch/x86/crypto/aesni-intel_glue.c                     |   14 
 arch/x86/include/asm/apicdef.h                         |    1 
 arch/x86/include/asm/cpufeature.h                      |    2 
 arch/x86/include/asm/gart.h                            |    4 
 arch/x86/include/asm/msr-index.h                       |    4 
 arch/x86/include/asm/pgtable-3level.h                  |   11 
 arch/x86/include/asm/uaccess.h                         |    2 
 arch/x86/include/asm/uv/uv_bau.h                       |   17 
 arch/x86/kernel/alternative.c                          |    7 
 arch/x86/kernel/aperture_64.c                          |    2 
 arch/x86/kernel/apic/io_apic.c                         |    4 
 arch/x86/kernel/cpu/amd.c                              |   29 
 arch/x86/kernel/cpu/common.c                           |    3 
 arch/x86/kernel/cpu/cpufreq/pcc-cpufreq.c              |    4 
 arch/x86/kernel/cpu/mcheck/mce_amd.c                   |    1 
 arch/x86/kernel/cpu/mcheck/therm_throt.c               |   12 
 arch/x86/kernel/cpu/mtrr/main.c                        |   20 
 arch/x86/kernel/e820.c                                 |   10 
 arch/x86/kernel/early-quirks.c                         |    7 
 arch/x86/kernel/entry_32.S                             |    2 
 arch/x86/kernel/entry_64.S                             |    2 
 arch/x86/kernel/pci-gart_64.c                          |    9 
 arch/x86/kernel/ptrace.c                               |   36 
 arch/x86/kvm/svm.c                                     |   10 
 arch/x86/lib/copy_user_64.S                            |    4 
 arch/x86/lib/semaphore_32.S                            |    2 
 arch/x86/mm/pgtable.c                                  |    3 
 arch/x86/oprofile/op_model_amd.c                       |   95 +-
 arch/x86/platform/uv/tlb_uv.c                          |   92 +-
 arch/x86/xen/mmu.c                                     |   15 
 block/blk-settings.c                                   |    3 
 block/blk-sysfs.c                                      |    7 
 block/blk.h                                            |    3 
 block/genhd.c                                          |    2 
 drivers/acpi/battery.c                                 |   22 
 drivers/acpi/pci_root.c                                |    2 
 drivers/acpi/scan.c                                    |    4 
 drivers/ata/ahci.c                                     |    5 
 drivers/ata/libahci.c                                  |   17 
 drivers/ata/libata-core.c                              |    4 
 drivers/ata/libata-eh.c                                |    8 
 drivers/ata/pata_cmd64x.c                              |   42 
 drivers/atm/solos-pci.c                                |   35 
 drivers/block/brd.c                                    |   11 
 drivers/block/cciss.h                                  |    1 
 drivers/block/loop.c                                   |   11 
 drivers/block/paride/pcd.c                             |   19 
 drivers/block/paride/pd.c                              |    7 
 drivers/block/paride/pf.c                              |   10 
 drivers/bluetooth/btusb.c                              |    3 
 drivers/cdrom/cdrom.c                                  |    6 
 drivers/cdrom/gdrom.c                                  |   16 
 drivers/cdrom/viocd.c                                  |   20 
 drivers/char/agp/generic.c                             |   19 
 drivers/char/i8k.c                                     |    4 
 drivers/char/tpm/tpm.c                                 |    2 
 drivers/char/virtio_console.c                          |   11 
 drivers/cpufreq/cpufreq.c                              |   20 
 drivers/cpufreq/cpufreq_stats.c                        |   21 
 drivers/cpuidle/governors/menu.c                       |    4 
 drivers/edac/amd64_edac.c                              |    2 
 drivers/firewire/ohci.c                                |   39 
 drivers/firmware/dcdbas.c                              |    4 
 drivers/gpu/drm/Kconfig                                |    1 
 drivers/gpu/drm/drm_crtc.c                             |   51 +
 drivers/gpu/drm/drm_gem.c                              |    5 
 drivers/gpu/drm/drm_irq.c                              |   23 
 drivers/gpu/drm/drm_sysfs.c                            |    7 
 drivers/gpu/drm/i915/i915_gem.c                        |    6 
 drivers/gpu/drm/i915/i915_gem_execbuffer.c             |   21 
 drivers/gpu/drm/i915/i915_irq.c                        |    9 
 drivers/gpu/drm/i915/i915_reg.h                        |    5 
 drivers/gpu/drm/i915/intel_display.c                   |   72 -
 drivers/gpu/drm/i915/intel_dp.c                        |   17 
 drivers/gpu/drm/i915/intel_lvds.c                      |    3 
 drivers/gpu/drm/i915/intel_ringbuffer.c                |   29 
 drivers/gpu/drm/i915/intel_tv.c                        |    2 
 drivers/gpu/drm/nouveau/nouveau_fbcon.c                |    4 
 drivers/gpu/drm/radeon/atom.c                          |   12 
 drivers/gpu/drm/radeon/atombios_crtc.c                 |   14 
 drivers/gpu/drm/radeon/evergreen.c                     |   23 
 drivers/gpu/drm/radeon/evergreend.h                    |    7 
 drivers/gpu/drm/radeon/radeon_asic.c                   |    4 
 drivers/gpu/drm/radeon/radeon_atombios.c               |   36 
 drivers/gpu/drm/radeon/radeon_combios.c                |   21 
 drivers/gpu/drm/radeon/radeon_connectors.c             |   30 
 drivers/gpu/drm/radeon/radeon_fence.c                  |    2 
 drivers/gpu/drm/radeon/radeon_kms.c                    |    3 
 drivers/gpu/drm/radeon/radeon_mode.h                   |    1 
 drivers/gpu/drm/radeon/radeon_ring.c                   |    2 
 drivers/hid/Kconfig                                    |   14 
 drivers/hid/Makefile                                   |    2 
 drivers/hid/hid-apple.c                                |    6 
 drivers/hid/hid-axff.c                                 |   31 
 drivers/hid/hid-core.c                                 |    9 
 drivers/hid/hid-ids.h                                  |    4 
 drivers/hid/hid-input.c                                |   30 
 drivers/hid/hid-magicmouse.c                           |   16 
 drivers/hid/hid-multitouch.c                           |    2 
 drivers/hid/hid-ortek.c                                |    3 
 drivers/hwmon/sht15.c                                  |    4 
 drivers/i2c/algos/i2c-algo-bit.c                       |   22 
 drivers/i2c/busses/i2c-parport.c                       |   27 
 drivers/ide/ide-cd.c                                   |   12 
 drivers/ide/ide-cd.h                                   |    3 
 drivers/ide/ide-cd_ioctl.c                             |    8 
 drivers/ide/ide-gd.c                                   |   14 
 drivers/infiniband/core/cm.c                           |    1 
 drivers/infiniband/core/cma.c                          |   15 
 drivers/input/mouse/bcm5974.c                          |   20 
 drivers/input/mouse/synaptics.c                        |    4 
 drivers/input/xen-kbdfront.c                           |   32 
 drivers/leds/leds-lp5521.c                             |   14 
 drivers/leds/leds-lp5523.c                             |   20 
 drivers/md/bitmap.c                                    |   10 
 drivers/md/dm-table.c                                  |   17 
 drivers/md/md.c                                        |   11 
 drivers/media/dvb/b2c2/flexcop-pci.c                   |    2 
 drivers/media/radio/Kconfig                            |    1 
 drivers/media/radio/saa7706h.c                         |    2 
 drivers/media/radio/tef6862.c                          |    2 
 drivers/media/rc/imon.c                                |   31 
 drivers/media/video/cx88/cx88-blackbird.c              |    5 
 drivers/media/video/cx88/cx88-dvb.c                    |    2 
 drivers/media/video/cx88/cx88-input.c                  |    4 
 drivers/media/video/cx88/cx88-mpeg.c                   |   20 
 drivers/media/video/cx88/cx88.h                        |    7 
 drivers/media/video/m52790.c                           |    2 
 drivers/media/video/sn9c102/sn9c102_core.c             |    6 
 drivers/media/video/tda9840.c                          |    2 
 drivers/media/video/tea6415c.c                         |    2 
 drivers/media/video/tea6420.c                          |    2 
 drivers/media/video/tlg2300/pd-video.c                 |    4 
 drivers/media/video/upd64031a.c                        |    2 
 drivers/media/video/upd64083.c                         |    2 
 drivers/media/video/uvc/uvc_driver.c                   |    8 
 drivers/media/video/uvc/uvc_video.c                    |   14 
 drivers/media/video/v4l2-device.c                      |    5 
 drivers/mfd/ab3100-core.c                              |    4 
 drivers/mfd/ab3550-core.c                              |    6 
 drivers/mfd/ab8500-debugfs.c                           |    6 
 drivers/misc/ep93xx_pwm.c                              |    6 
 drivers/mmc/core/sdio.c                                |    8 
 drivers/mmc/host/sdhci-pci.c                           |    9 
 drivers/mmc/host/sdhci.c                               |    9 
 drivers/mtd/mtdconcat.c                                |    4 
 drivers/mtd/nand/nand_base.c                           |    2 
 drivers/net/Kconfig                                    |    8 
 drivers/net/Makefile                                   |    6 
 drivers/net/atl1c/atl1c.h                              |    6 
 drivers/net/atl1c/atl1c_main.c                         |   14 
 drivers/net/bonding/bond_3ad.c                         |    7 
 drivers/net/bonding/bond_alb.c                         |    4 
 drivers/net/bonding/bond_main.c                        |   16 
 drivers/net/bonding/bond_sysfs.c                       |    6 
 drivers/net/can/sja1000/sja1000.c                      |    2 
 drivers/net/can/slcan.c                                |    4 
 drivers/net/ehea/ehea_ethtool.c                        |   21 
 drivers/net/ehea/ehea_main.c                           |    6 
 drivers/net/gianfar.c                                  |   16 
 drivers/net/gianfar.h                                  |    1 
 drivers/net/hydra.c                                    |   14 
 drivers/net/macvlan.c                                  |    4 
 drivers/net/myri10ge/myri10ge.c                        |    1 
 drivers/net/ne-h8300.c                                 |   16 
 drivers/net/netxen/netxen_nic.h                        |    4 
 drivers/net/netxen/netxen_nic_ethtool.c                |    2 
 drivers/net/netxen/netxen_nic_main.c                   |   17 
 drivers/net/pch_gbe/pch_gbe_main.c                     |   23 
 drivers/net/pppoe.c                                    |    2 
 drivers/net/qlcnic/qlcnic.h                            |    1 
 drivers/net/qlcnic/qlcnic_ethtool.c                    |    2 
 drivers/net/qlcnic/qlcnic_main.c                       |   14 
 drivers/net/s2io.c                                     |    2 
 drivers/net/slip.c                                     |    4 
 drivers/net/usb/cdc-phonet.c                           |    9 
 drivers/net/usb/cdc_ether.c                            |   14 
 drivers/net/usb/ipheth.c                               |   14 
 drivers/net/vmxnet3/vmxnet3_drv.c                      |   10 
 drivers/net/vmxnet3/vmxnet3_ethtool.c                  |    7 
 drivers/net/vxge/vxge-ethtool.c                        |    4 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c         |   14 
 drivers/net/wireless/ath/ath9k/ar9003_mac.c            |    8 
 drivers/net/wireless/ath/ath9k/calib.c                 |   13 
 drivers/net/wireless/ath/ath9k/hw.c                    |   30 
 drivers/net/wireless/ath/ath9k/mac.c                   |   39 
 drivers/net/wireless/ath/ath9k/mac.h                   |    2 
 drivers/net/wireless/ath/ath9k/main.c                  |    4 
 drivers/net/wireless/ath/ath9k/recv.c                  |   10 
 drivers/net/wireless/ath/ath9k/xmit.c                  |    4 
 drivers/net/wireless/ath/regd_common.h                 |    1 
 drivers/net/wireless/b43/dma.c                         |    2 
 drivers/net/wireless/b43/dma.h                         |    2 
 drivers/net/wireless/iwlwifi/iwl-3945-hw.h             |    2 
 drivers/net/wireless/iwlwifi/iwl-3945.c                |    2 
 drivers/net/wireless/iwlwifi/iwl-4965.c                |    2 
 drivers/net/wireless/iwlwifi/iwl-agn-lib.c             |    1 
 drivers/net/wireless/iwlwifi/iwl-agn-rxon.c            |    5 
 drivers/net/wireless/iwlwifi/iwl-agn-tx.c              |   27 
 drivers/net/wireless/iwlwifi/iwl-agn.c                 |   12 
 drivers/net/wireless/iwlwifi/iwl-core.c                |   32 
 drivers/net/wireless/iwlwifi/iwl-core.h                |    2 
 drivers/net/wireless/iwlwifi/iwl-dev.h                 |   19 
 drivers/net/wireless/iwlwifi/iwl-eeprom.c              |    7 
 drivers/net/wireless/iwlwifi/iwl-eeprom.h              |    2 
 drivers/net/wireless/iwlwifi/iwl-legacy.c              |    7 
 drivers/net/wireless/iwlwifi/iwl-rx.c                  |    8 
 drivers/net/wireless/iwlwifi/iwl3945-base.c            |   11 
 drivers/net/wireless/libertas/cmd.c                    |    6 
 drivers/net/wireless/p54/p54usb.c                      |    3 
 drivers/net/wireless/p54/txrx.c                        |    2 
 drivers/net/wireless/rt2x00/rt2800lib.c                |    6 
 drivers/net/wireless/rt2x00/rt2800pci.c                |   36 
 drivers/net/wireless/rt2x00/rt2x00dev.c                |    6 
 drivers/net/wireless/rtl818x/rtl8187/dev.c             |   25 
 drivers/net/wireless/rtl818x/rtl8187/rtl8187.h         |    2 
 drivers/net/wireless/wl12xx/testmode.c                 |    5 
 drivers/net/zorro8390.c                                |   12 
 drivers/pci/hotplug/acpiphp_glue.c                     |    1 
 drivers/pci/intel-iommu.c                              |   17 
 drivers/pci/pci-sysfs.c                                |    2 
 drivers/pci/pcie/aspm.c                                |    7 
 drivers/pci/quirks.c                                   |  123 +-
 drivers/platform/x86/acer-wmi.c                        |   19 
 drivers/platform/x86/ideapad-laptop.c                  |    2 
 drivers/platform/x86/intel_ips.c                       |    2 
 drivers/platform/x86/thinkpad_acpi.c                   |    6 
 drivers/rapidio/switches/idt_gen2.c                    |    9 
 drivers/rapidio/switches/idtcps.c                      |    6 
 drivers/rapidio/switches/tsi57x.c                      |    6 
 drivers/rtc/rtc-bfin.c                                 |    2 
 drivers/rtc/rtc-ds1511.c                               |    2 
 drivers/rtc/rtc-s3c.c                                  |   13 
 drivers/scsi/bnx2i/bnx2i_hwi.c                         |    1 
 drivers/scsi/bnx2i/bnx2i_init.c                        |    2 
 drivers/scsi/bnx2i/bnx2i_iscsi.c                       |    5 
 drivers/scsi/device_handler/scsi_dh.c                  |    9 
 drivers/scsi/device_handler/scsi_dh_alua.c             |    3 
 drivers/scsi/megaraid/megaraid_sas_base.c              |    3 
 drivers/scsi/mpt2sas/mpt2sas_ctl.c                     |   23 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c                   |   94 +-
 drivers/scsi/pmcraid.c                                 |    3 
 drivers/scsi/qla2xxx/qla_attr.c                        |    5 
 drivers/scsi/qla2xxx/qla_os.c                          |   32 
 drivers/scsi/scsi_lib.c                                |    7 
 drivers/scsi/scsi_sysfs.c                              |   16 
 drivers/scsi/scsi_transport_iscsi.c                    |    2 
 drivers/scsi/sd.c                                      |   63 -
 drivers/scsi/ses.c                                     |    4 
 drivers/scsi/sr.c                                      |    2 
 drivers/scsi/ultrastor.c                               |    2 
 drivers/sh/clk/cpg.c                                   |    2 
 drivers/staging/hv/channel.c                           |    8 
 drivers/staging/hv/connection.c                        |    4 
 drivers/staging/hv/netvsc_drv.c                        |   24 
 drivers/staging/hv/vmbus_drv.c                         |    2 
 drivers/staging/hv/vmbus_private.h                     |    1 
 drivers/staging/iio/imu/adis16400.h                    |    3 
 drivers/staging/iio/imu/adis16400_core.c               |   12 
 drivers/staging/iio/imu/adis16400_ring.c               |   12 
 drivers/staging/rtl8712/rtl871x_ioctl_set.c            |    5 
 drivers/staging/tidspbridge/rmgr/proc.c                |   19 
 drivers/staging/usbip/stub_rx.c                        |   40 
 drivers/staging/usbip/stub_tx.c                        |   74 +
 drivers/staging/usbip/usbip_common.c                   |   64 +
 drivers/staging/usbip/usbip_common.h                   |    2 
 drivers/staging/usbip/vhci_hcd.c                       |    2 
 drivers/staging/usbip/vhci_rx.c                        |    3 
 drivers/staging/winbond/core.h                         |    1 
 drivers/target/target_core_cdb.c                       |    8 
 drivers/target/target_core_device.c                    |    4 
 drivers/target/target_core_tmr.c                       |    7 
 drivers/target/target_core_transport.c                 |   46 -
 drivers/tty/n_gsm.c                                    |    8 
 drivers/tty/serial/8250.c                              |   33 
 drivers/tty/serial/imx.c                               |    3 
 drivers/tty/serial/mrst_max3110.c                      |    2 
 drivers/usb/class/cdc-acm.c                            |   20 
 drivers/usb/class/cdc-acm.h                            |    1 
 drivers/usb/class/cdc-wdm.c                            |    2 
 drivers/usb/core/devices.c                             |   10 
 drivers/usb/core/devio.c                               |    2 
 drivers/usb/core/hcd-pci.c                             |   13 
 drivers/usb/core/hcd.c                                 |   60 -
 drivers/usb/core/urb.c                                 |   11 
 drivers/usb/gadget/at91_udc.c                          |    2 
 drivers/usb/gadget/f_rndis.c                           |    3 
 drivers/usb/host/ehci-hcd.c                            |    4 
 drivers/usb/host/ehci-hub.c                            |   23 
 drivers/usb/host/ehci-q.c                              |   27 
 drivers/usb/host/ehci-sched.c                          |    8 
 drivers/usb/host/isp116x-hcd.c                         |    1 
 drivers/usb/host/isp1760-hcd.c                         |   22 
 drivers/usb/host/isp1760-hcd.h                         |    1 
 drivers/usb/host/ohci-hcd.c                            |    4 
 drivers/usb/host/ohci-pci.c                            |   12 
 drivers/usb/host/oxu210hp-hcd.c                        |    6 
 drivers/usb/host/xhci-mem.c                            |   97 +-
 drivers/usb/host/xhci-ring.c                           |   61 +
 drivers/usb/host/xhci.c                                |   27 
 drivers/usb/host/xhci.h                                |   15 
 drivers/usb/misc/uss720.c                              |    7 
 drivers/usb/musb/Kconfig                               |    6 
 drivers/usb/musb/blackfin.c                            |    6 
 drivers/usb/serial/ch341.c                             |    1 
 drivers/usb/serial/cp210x.c                            |    4 
 drivers/usb/serial/ftdi_sio.c                          |    6 
 drivers/usb/serial/ftdi_sio_ids.h                      |   17 
 drivers/usb/serial/garmin_gps.c                        |   20 
 drivers/usb/serial/kobil_sct.c                         |    2 
 drivers/usb/serial/moto_modem.c                        |    1 
 drivers/usb/serial/option.c                            |   16 
 drivers/usb/serial/qcserial.c                          |   31 
 drivers/usb/serial/usb-serial.c                        |    5 
 drivers/video/console/tileblit.c                       |    2 
 drivers/video/via/viafbdev.h                           |    3 
 drivers/virtio/virtio_ring.c                           |    1 
 drivers/watchdog/davinci_wdt.c                         |   22 
 drivers/watchdog/max63xx_wdt.c                         |   20 
 drivers/watchdog/pnx4008_wdt.c                         |   28 
 drivers/watchdog/s3c2410_wdt.c                         |   19 
 drivers/watchdog/sp5100_tco.c                          |   16 
 fs/aio.c                                               |    4 
 fs/binfmt_elf.c                                        |    6 
 fs/block_dev.c                                         |   45 -
 fs/btrfs/ctree.h                                       |    4 
 fs/btrfs/disk-io.c                                     |    4 
 fs/btrfs/ioctl.c                                       |    4 
 fs/btrfs/root-tree.c                                   |   18 
 fs/btrfs/transaction.c                                 |    1 
 fs/cifs/cifs_unicode.c                                 |   49 -
 fs/cifs/cifs_unicode.h                                 |    2 
 fs/cifs/cifsencrypt.c                                  |   15 
 fs/cifs/cifsfs.c                                       |    1 
 fs/cifs/connect.c                                      |  163 ++-
 fs/cifs/file.c                                         |    6 
 fs/cifs/sess.c                                         |   19 
 fs/dcache.c                                            |   98 +-
 fs/ecryptfs/keystore.c                                 |   47 -
 fs/ecryptfs/mmap.c                                     |    5 
 fs/ext3/namei.c                                        |   15 
 fs/ext3/super.c                                        |    7 
 fs/ext4/ext4.h                                         |    4 
 fs/ext4/inode.c                                        |   11 
 fs/ext4/mballoc.c                                      |    2 
 fs/ext4/super.c                                        |   55 -
 fs/file.c                                              |   18 
 fs/jbd/commit.c                                        |    9 
 fs/jbd/journal.c                                       |   16 
 fs/namei.c                                             |    1 
 fs/namespace.c                                         |   16 
 fs/nfs/nfs4proc.c                                      |    9 
 fs/nfs/nfs4state.c                                     |   10 
 fs/nfs/super.c                                         |    9 
 fs/nfs/write.c                                         |   31 
 fs/nfsd/lockd.c                                        |    1 
 fs/nfsd/nfs4proc.c                                     |    4 
 fs/nfsd/nfs4state.c                                    |  161 +--
 fs/nfsd/nfs4xdr.c                                      |    5 
 fs/nfsd/vfs.c                                          |    9 
 fs/nilfs2/file.c                                       |   11 
 fs/notify/inotify/inotify_fsnotify.c                   |    1 
 fs/notify/inotify/inotify_user.c                       |   39 
 fs/ocfs2/aops.c                                        |    6 
 fs/partitions/efi.c                                    |    6 
 fs/partitions/ldm.c                                    |   21 
 fs/partitions/osf.c                                    |    2 
 fs/proc/array.c                                        |    4 
 fs/proc/base.c                                         |    9 
 fs/proc/task_mmu.c                                     |   16 
 fs/quota/dquot.c                                       |   13 
 fs/ramfs/file-nommu.c                                  |    1 
 fs/squashfs/dir.c                                      |    9 
 fs/squashfs/namei.c                                    |   12 
 fs/squashfs/zlib_wrapper.c                             |    6 
 fs/super.c                                             |    2 
 fs/sync.c                                              |    4 
 fs/ubifs/commit.c                                      |    2 
 fs/ubifs/debug.c                                       |   47 -
 fs/ubifs/file.c                                        |    3 
 fs/ubifs/log.c                                         |   20 
 fs/ubifs/lpt.c                                         |    7 
 fs/ubifs/recovery.c                                    |   26 
 fs/ubifs/replay.c                                      |   18 
 fs/ubifs/sb.c                                          |    3 
 fs/ubifs/super.c                                       |   37 
 fs/xfs/linux-2.6/xfs_super.c                           |   34 
 include/drm/drm_pciids.h                               |    6 
 include/drm/radeon_drm.h                               |    1 
 include/linux/atmdev.h                                 |    1 
 include/linux/blkdev.h                                 |    7 
 include/linux/bootmem.h                                |    2 
 include/linux/compaction.h                             |    9 
 include/linux/ethtool.h                                |   35 
 include/linux/flex_array.h                             |    2 
 include/linux/ftrace.h                                 |    2 
 include/linux/genhd.h                                  |    1 
 include/linux/hid.h                                    |    2 
 include/linux/huge_mm.h                                |    2 
 include/linux/kernel.h                                 |   70 +
 include/linux/libata.h                                 |    1 
 include/linux/mm.h                                     |   38 
 include/linux/pci.h                                    |    7 
 include/linux/pci_ids.h                                |    2 
 include/linux/perf_event.h                             |    2 
 include/linux/pid.h                                    |    2 
 include/linux/pm_qos_params.h                          |    4 
 include/linux/ptrace.h                                 |   13 
 include/linux/sched.h                                  |    6 
 include/linux/seqlock.h                                |    4 
 include/linux/usb/ch9.h                                |    2 
 include/linux/usb/hcd.h                                |    4 
 include/linux/usb/serial.h                             |    3 
 include/net/bluetooth/hci.h                            |    2 
 include/scsi/scsi_device.h                             |    2 
 include/sound/pcm.h                                    |    4 
 include/sound/soc-dapm.h                               |   16 
 include/target/target_core_base.h                      |    1 
 include/target/target_core_transport.h                 |    1 
 init/Kconfig                                           |    1 
 init/main.c                                            |    2 
 kernel/cgroup.c                                        |   14 
 kernel/exit.c                                          |    2 
 kernel/futex.c                                         |    2 
 kernel/perf_event.c                                    |   25 
 kernel/pid.c                                           |    5 
 kernel/pm_qos_params.c                                 |   37 
 kernel/power/suspend.c                                 |    4 
 kernel/power/user.c                                    |    5 
 kernel/ptrace.c                                        |   17 
 kernel/sched.c                                         |    2 
 kernel/sched_fair.c                                    |   11 
 kernel/signal.c                                        |   16 
 kernel/smp.c                                           |   55 +
 kernel/sysctl.c                                        |   18 
 kernel/time/clocksource.c                              |    4 
 kernel/time/tick-broadcast.c                           |   12 
 kernel/trace/ftrace.c                                  |   64 +
 kernel/workqueue.c                                     |    8 
 lib/Kconfig.debug                                      |    3 
 lib/Makefile                                           |    2 
 lib/flex_array.c                                       |   24 
 lib/kstrtox.c                                          |  227 +++++
 lib/locking-selftest.c                                 |    2 
 lib/test-kstrtox.c                                     |  739 +++++++++++++++++
 lib/vsprintf.c                                         |  141 ---
 lib/xz/xz_dec_lzma2.c                                  |    6 
 mm/backing-dev.c                                       |    2 
 mm/compaction.c                                        |   24 
 mm/huge_memory.c                                       |   67 -
 mm/kmemleak.c                                          |    7 
 mm/memory.c                                            |   27 
 mm/mlock.c                                             |   18 
 mm/mmap.c                                              |   26 
 mm/mremap.c                                            |   11 
 mm/oom_kill.c                                          |   86 -
 mm/page_alloc.c                                        |   13 
 mm/shmem.c                                             |  157 ++-
 mm/slab.c                                              |    8 
 mm/swapfile.c                                          |    7 
 mm/vmscan.c                                            |   53 -
 net/8021q/vlan.c                                       |    3 
 net/8021q/vlan_dev.c                                   |    4 
 net/atm/atm_sysfs.c                                    |   10 
 net/atm/common.c                                       |    1 
 net/bluetooth/bnep/sock.c                              |    1 
 net/bluetooth/hci_core.c                               |    5 
 net/bluetooth/hci_event.c                              |    4 
 net/bluetooth/sco.c                                    |    1 
 net/bridge/br_input.c                                  |    2 
 net/bridge/br_multicast.c                              |    2 
 net/bridge/br_netfilter.c                              |    9 
 net/bridge/netfilter/ebtables.c                        |    2 
 net/can/bcm.c                                          |    7 
 net/can/raw.c                                          |    7 
 net/core/dev.c                                         |   12 
 net/core/ethtool.c                                     |   17 
 net/core/skbuff.c                                      |    3 
 net/dccp/options.c                                     |    2 
 net/econet/af_econet.c                                 |    2 
 net/ieee802154/Makefile                                |    2 
 net/ipv4/fib_frontend.c                                |    2 
 net/ipv4/igmp.c                                        |   10 
 net/ipv4/inet_connection_sock.c                        |    5 
 net/ipv4/inetpeer.c                                    |   13 
 net/ipv4/ip_fragment.c                                 |   31 
 net/ipv4/ip_options.c                                  |    6 
 net/ipv4/netfilter/arp_tables.c                        |    3 
 net/ipv4/netfilter/ip_tables.c                         |    7 
 net/ipv4/netfilter/ipt_CLUSTERIP.c                     |    5 
 net/ipv4/route.c                                       |    2 
 net/ipv4/sysctl_net_ipv4.c                             |    3 
 net/ipv4/tcp_input.c                                   |   12 
 net/ipv4/tcp_output.c                                  |    3 
 net/ipv6/inet6_connection_sock.c                       |    2 
 net/ipv6/netfilter/ip6_tables.c                        |    7 
 net/ipv6/route.c                                       |    1 
 net/ipv6/sysctl_net_ipv6.c                             |   18 
 net/ipv6/udp.c                                         |    2 
 net/irda/af_irda.c                                     |    3 
 net/irda/iriap.c                                       |    6 
 net/irda/irnet/irnet_ppp.c                             |    3 
 net/l2tp/l2tp_eth.c                                    |    2 
 net/mac80211/cfg.c                                     |   14 
 net/mac80211/debugfs_netdev.c                          |    4 
 net/mac80211/rc80211_minstrel_ht.c                     |   25 
 net/mac80211/sta_info.c                                |    1 
 net/netfilter/nf_conntrack_h323_asn1.c                 |    2 
 net/rose/rose_subr.c                                   |   18 
 net/sched/sch_sfq.c                                    |   22 
 net/sctp/associola.c                                   |   16 
 net/sctp/bind_addr.c                                   |   10 
 net/sctp/protocol.c                                    |    4 
 net/socket.c                                           |  120 ++
 net/sunrpc/auth_gss/gss_krb5_mech.c                    |    2 
 net/sunrpc/clnt.c                                      |    4 
 net/sunrpc/sched.c                                     |   14 
 net/sunrpc/xprtsock.c                                  |   18 
 net/unix/af_unix.c                                     |   16 
 net/wireless/nl80211.c                                 |    8 
 net/xfrm/xfrm_policy.c                                 |    2 
 scripts/checkpatch.pl                                  |    4 
 scripts/kconfig/conf.c                                 |    2 
 security/apparmor/lsm.c                                |    3 
 security/selinux/ss/policydb.c                         |    6 
 security/tomoyo/file.c                                 |    5 
 sound/core/init.c                                      |    4 
 sound/core/pcm_lib.c                                   |    4 
 sound/core/pcm_native.c                                |    9 
 sound/drivers/aloop.c                                  |   19 
 sound/oss/dev_table.h                                  |    2 
 sound/oss/midi_synth.c                                 |   30 
 sound/oss/midi_synth.h                                 |    2 
 sound/oss/opl3.c                                       |   23 
 sound/oss/sequencer.c                                  |    2 
 sound/pci/asihpi/hpioctl.c                             |    5 
 sound/pci/ctxfi/ctatc.c                                |    2 
 sound/pci/ctxfi/ctdaio.c                               |    2 
 sound/pci/ctxfi/ctmixer.c                              |   19 
 sound/pci/ens1370.c                                    |   23 
 sound/pci/hda/hda_intel.c                              |    9 
 sound/pci/hda/patch_analog.c                           |   92 ++
 sound/pci/hda/patch_conexant.c                         |    3 
 sound/pci/hda/patch_hdmi.c                             |   70 +
 sound/pci/hda/patch_realtek.c                          |  143 ++-
 sound/pci/hda/patch_sigmatel.c                         |   31 
 sound/pci/hda/patch_via.c                              |   53 -
 sound/soc/codecs/jz4740.c                              |    2 
 sound/soc/codecs/ssm2602.c                             |    2 
 sound/soc/codecs/uda134x.c                             |    5 
 sound/soc/codecs/wm_hubs.c                             |   32 
 sound/soc/imx/imx-pcm-dma-mx2.c                        |    9 
 sound/soc/imx/imx-ssi.h                                |    3 
 sound/soc/pxa/corgi.c                                  |    2 
 sound/soc/pxa/z2.c                                     |    2 
 sound/soc/samsung/s3c24xx_uda134x.c                    |    3 
 tools/perf/bench/sched-pipe.c                          |    2 
 tools/perf/builtin-sched.c                             |   12 
 tools/perf/builtin-top.c                               |    5 
 tools/perf/util/PERF-VERSION-GEN                       |    8 
 tools/perf/util/header.c                               |    2 
 tools/perf/util/hist.c                                 |    3 
 tools/perf/util/scripting-engines/trace-event-python.c |    3 
 tools/perf/util/symbol.c                               |    4 
 tools/perf/util/trace-event-parse.c                    |    2 
 tools/perf/util/ui/browsers/map.c                      |    2 
 621 files changed, 6440 insertions(+), 2719 deletions(-)

