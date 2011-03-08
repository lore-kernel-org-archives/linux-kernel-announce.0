From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.37.3 released
Date: Tue, 8 Mar 2011 00:22:45 GMT
Message-ID: <201103080022.p280MjjU015335@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.37.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.37.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.37.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               132880            534410
Full source                       73632687         431411200

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/hwmon/jc42                       |   21 ++-
 Documentation/hwmon/k10temp                    |    8 +
 Documentation/kernel-parameters.txt            |    1 
 Documentation/networking/dns_resolver.txt      |    9 +
 Makefile                                       |    2 
 arch/arm/kernel/head.S                         |   41 +++---
 arch/arm/kernel/signal.c                       |    4 
 arch/arm/kernel/vmlinux.lds.S                  |    9 +
 arch/arm/mach-s5pv310/cpu.c                    |    2 
 arch/arm/mach-sa1100/simpad.c                  |    7 -
 arch/arm/mm/init.c                             |    6 
 arch/arm/oprofile/common.c                     |   12 -
 arch/avr32/include/asm/syscalls.h              |    9 -
 arch/parisc/kernel/firmware.c                  |   13 --
 arch/powerpc/boot/dts/p1022ds.dts              |    4 
 arch/powerpc/kernel/cpu_setup_6xx.S            |   40 +++---
 arch/powerpc/mm/numa.c                         |    2 
 arch/powerpc/platforms/pseries/lpar.c          |   37 +++++
 arch/powerpc/sysdev/fsl_rio.c                  |    1 
 arch/s390/include/asm/processor.h              |    5 
 arch/s390/kernel/traps.c                       |   37 -----
 arch/sh/include/asm/io.h                       |   10 +
 arch/sh/include/asm/pgtable_32.h               |    7 -
 arch/x86/Kconfig                               |    1 
 arch/x86/include/asm/acpi.h                    |    1 
 arch/x86/include/asm/cpu.h                     |    1 
 arch/x86/include/asm/mmu_context.h             |    5 
 arch/x86/include/asm/smpboot_hooks.h           |    2 
 arch/x86/include/asm/uv/uv_bau.h               |    9 -
 arch/x86/kernel/acpi/boot.c                    |   14 +-
 arch/x86/kernel/apb_timer.c                    |    8 -
 arch/x86/kernel/cpu/mtrr/main.c                |   10 +
 arch/x86/kernel/early-quirks.c                 |   16 +-
 arch/x86/kernel/irq.c                          |    3 
 arch/x86/kernel/irq_32.c                       |    7 -
 arch/x86/kernel/process.c                      |   27 +++-
 arch/x86/kernel/smpboot.c                      |    3 
 arch/x86/platform/uv/tlb_uv.c                  |   22 ++-
 arch/x86/xen/mmu.c                             |   12 +
 block/blk-core.c                               |   44 ++++---
 block/blk-flush.c                              |    8 -
 block/blk-merge.c                              |    3 
 block/blk-throttle.c                           |   29 ++--
 block/cfq-iosched.c                            |   10 +
 block/elevator.c                               |    4 
 block/genhd.c                                  |    3 
 drivers/acpi/debugfs.c                         |   20 ++-
 drivers/acpi/wakeup.c                          |    6 
 drivers/ata/libata-scsi.c                      |   24 ++-
 drivers/ata/pata_mpc52xx.c                     |    2 
 drivers/base/power/runtime.c                   |    9 -
 drivers/block/floppy.c                         |    2 
 drivers/block/loop.c                           |    5 
 drivers/block/nbd.c                            |    3 
 drivers/bluetooth/ath3k.c                      |    5 
 drivers/bluetooth/btusb.c                      |   12 +
 drivers/char/agp/intel-agp.c                   |   27 ++--
 drivers/char/ipmi/ipmi_si_intf.c               |   12 -
 drivers/char/tpm/tpm.c                         |   10 -
 drivers/char/tpm/tpm_tis.c                     |    6 
 drivers/char/virtio_console.c                  |   15 ++
 drivers/cpuidle/cpuidle.c                      |   82 ++++++-------
 drivers/firewire/core-card.c                   |   11 +
 drivers/firmware/dmi_scan.c                    |   11 +
 drivers/gpu/drm/Kconfig                        |    3 
 drivers/gpu/drm/drm_crtc_helper.c              |   17 +-
 drivers/gpu/drm/drm_irq.c                      |    3 
 drivers/gpu/drm/i915/i915_dma.c                |   21 +++
 drivers/gpu/drm/i915/i915_drv.c                |   10 +
 drivers/gpu/drm/i915/i915_drv.h                |    1 
 drivers/gpu/drm/i915/i915_reg.h                |    9 -
 drivers/gpu/drm/i915/intel_crt.c               |   30 ++++
 drivers/gpu/drm/i915/intel_display.c           |    4 
 drivers/gpu/drm/i915/intel_dp.c                |   50 ++++++--
 drivers/gpu/drm/i915/intel_drv.h               |    3 
 drivers/gpu/drm/i915/intel_lvds.c              |   18 +-
 drivers/gpu/drm/i915/intel_panel.c             |   31 +++++
 drivers/gpu/drm/i915/intel_sdvo.c              |   65 ++++++----
 drivers/gpu/drm/nouveau/Kconfig                |    2 
 drivers/gpu/drm/radeon/atombios_crtc.c         |   42 +++---
 drivers/gpu/drm/radeon/atombios_dp.c           |    4 
 drivers/gpu/drm/radeon/evergreen.c             |    7 -
 drivers/gpu/drm/radeon/evergreen_blit_kms.c    |   39 +++++-
 drivers/gpu/drm/radeon/r600_cs.c               |   46 ++++---
 drivers/gpu/drm/radeon/radeon_atombios.c       |   47 +++----
 drivers/gpu/drm/radeon/radeon_combios.c        |   47 +++++++
 drivers/gpu/drm/radeon/radeon_display.c        |  140 +++++++++++++++++++++-
 drivers/gpu/drm/radeon/radeon_encoders.c       |   20 ++-
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c    |    6 
 drivers/gpu/drm/radeon/radeon_mode.h           |   24 ++-
 drivers/gpu/drm/radeon/radeon_ttm.c            |    4 
 drivers/gpu/vga/vgaarb.c                       |    2 
 drivers/hid/hid-cando.c                        |    2 
 drivers/hid/hid-core.c                         |    2 
 drivers/hid/hid-ids.h                          |    1 
 drivers/hid/hid-magicmouse.c                   |    5 
 drivers/hid/hid-mosart.c                       |    1 
 drivers/hid/usbhid/hid-quirks.c                |    1 
 drivers/hwmon/Kconfig                          |   19 +--
 drivers/hwmon/applesmc.c                       |   48 ++-----
 drivers/hwmon/jc42.c                           |   35 ++++-
 drivers/hwmon/k10temp.c                        |    5 
 drivers/hwmon/lm63.c                           |   59 +++++++--
 drivers/hwmon/lm85.c                           |   23 +++
 drivers/hwmon/via686a.c                        |   14 +-
 drivers/i2c/i2c-core.c                         |   14 ++
 drivers/idle/intel_idle.c                      |   43 ++++++
 drivers/infiniband/hw/cxgb4/cm.c               |    2 
 drivers/infiniband/hw/cxgb4/qp.c               |    6 
 drivers/input/input.c                          |   37 +----
 drivers/input/mouse/bcm5974.c                  |   40 ++++++
 drivers/input/serio/i8042-x86ia64io.h          |   21 +++
 drivers/input/serio/i8042.c                    |    6 
 drivers/md/dm-mpath.c                          |   12 -
 drivers/md/dm.c                                |    5 
 drivers/md/linear.c                            |    1 
 drivers/md/md.c                                |   52 ++++++--
 drivers/md/md.h                                |    5 
 drivers/md/multipath.c                         |    1 
 drivers/md/raid0.c                             |    1 
 drivers/md/raid1.c                             |    6 
 drivers/md/raid10.c                            |    7 -
 drivers/md/raid5.c                             |    1 
 drivers/media/IR/ir-keytable.c                 |   28 ++--
 drivers/media/dvb/frontends/ix2505v.c          |    2 
 drivers/media/dvb/ttpci/av7110_ca.c            |    2 
 drivers/media/radio/radio-aimslab.c            |   24 +--
 drivers/media/video/em28xx/em28xx-cards.c      |    4 
 drivers/message/fusion/mptctl.c                |    8 +
 drivers/message/fusion/mptscsih.c              |    7 -
 drivers/mfd/tps6586x.c                         |   10 -
 drivers/mfd/ucb1x00-ts.c                       |   12 +
 drivers/mmc/host/bfin_sdh.c                    |    2 
 drivers/mtd/nand/pxa3xx_nand.c                 |    2 
 drivers/net/can/janz-ican3.c                   |    2 
 drivers/net/e1000/e1000_main.c                 |   10 -
 drivers/net/e1000e/ich8lan.c                   |   16 +-
 drivers/net/e1000e/netdev.c                    |    3 
 drivers/net/e1000e/phy.c                       |   14 ++
 drivers/net/fec.c                              |    4 
 drivers/net/ixgbe/ixgbe_main.c                 |   11 +
 drivers/net/r8169.c                            |    6 
 drivers/net/tg3.c                              |    8 -
 drivers/net/virtio_net.c                       |   27 ++--
 drivers/net/wireless/ath/ath9k/ar9002_calib.c  |   10 -
 drivers/net/wireless/ath/ath9k/ar9002_hw.c     |    3 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c |   14 +-
 drivers/net/wireless/ath/ath9k/ath9k.h         |    4 
 drivers/net/wireless/ath/ath9k/hif_usb.c       |   49 ++++++-
 drivers/net/wireless/ath/ath9k/hif_usb.h       |    1 
 drivers/net/wireless/ath/ath9k/hw.c            |    6 
 drivers/net/wireless/ath/ath9k/hw.h            |    1 
 drivers/net/wireless/ath/ath9k/main.c          |    8 -
 drivers/net/wireless/ath/ath9k/pci.c           |    4 
 drivers/net/wireless/ath/carl9170/rx.c         |    2 
 drivers/net/wireless/ath/carl9170/usb.c        |    2 
 drivers/net/wireless/ath/key.c                 |    2 
 drivers/net/wireless/hostap/hostap_cs.c        |   15 --
 drivers/net/wireless/iwlwifi/iwl-3945.c        |    1 
 drivers/net/wireless/iwlwifi/iwl-agn.c         |   15 +-
 drivers/net/wireless/iwlwifi/iwl-helpers.h     |    6 
 drivers/net/wireless/p54/p54pci.c              |   14 +-
 drivers/net/wireless/p54/p54usb.c              |    1 
 drivers/net/wireless/p54/txrx.c                |    2 
 drivers/net/wireless/rt2x00/rt73usb.c          |    1 
 drivers/pci/pci-stub.c                         |    3 
 drivers/pci/pci-sysfs.c                        |    3 
 drivers/pcmcia/pcmcia_resource.c               |    2 
 drivers/platform/x86/acer-wmi.c                |    4 
 drivers/platform/x86/asus_acpi.c               |    8 -
 drivers/platform/x86/tc1100-wmi.c              |    2 
 drivers/power/ds2760_battery.c                 |    2 
 drivers/power/jz4740-battery.c                 |    7 +
 drivers/rtc/rtc-cmos.c                         |   16 +-
 drivers/rtc/rtc-ds3232.c                       |   14 +-
 drivers/s390/cio/qdio.h                        |    6 
 drivers/s390/cio/qdio_main.c                   |   43 ++++--
 drivers/s390/crypto/ap_bus.c                   |    2 
 drivers/scsi/libsas/sas_scsi_host.c            |    1 
 drivers/scsi/mpt2sas/mpt2sas_base.c            |   24 +++
 drivers/scsi/mpt2sas/mpt2sas_scsih.c           |   64 ++++++++--
 drivers/scsi/scsi_lib.c                        |    2 
 drivers/scsi/scsi_transport_fc.c               |    2 
 drivers/scsi/sd.c                              |    9 +
 drivers/serial/68360serial.c                   |    1 
 drivers/serial/8250.c                          |    3 
 drivers/ssb/pcmcia.c                           |    2 
 drivers/staging/bcm/InterfaceInit.c            |    1 
 drivers/staging/bcm/InterfaceInit.h            |    1 
 drivers/staging/brcm80211/sys/wl_mac80211.c    |   59 +++++----
 drivers/staging/brcm80211/sys/wlc_mac80211.c   |   14 ++
 drivers/staging/brcm80211/sys/wlc_pub.h        |    2 
 drivers/staging/comedi/drivers/jr3_pci.c       |    7 +
 drivers/staging/comedi/drivers/mite.c          |    2 
 drivers/staging/comedi/drivers/ni_6527.c       |    4 
 drivers/staging/comedi/drivers/ni_65xx.c       |    4 
 drivers/staging/comedi/drivers/ni_660x.c       |    4 
 drivers/staging/comedi/drivers/ni_670x.c       |    4 
 drivers/staging/comedi/drivers/ni_labpc.c      |    3 
 drivers/staging/comedi/drivers/ni_pcidio.c     |    4 
 drivers/staging/comedi/drivers/ni_pcimio.c     |    4 
 drivers/staging/hv/blkvsc_drv.c                |    1 
 drivers/staging/hv/netvsc.c                    |    2 
 drivers/staging/hv/netvsc_drv.c                |    2 
 drivers/staging/iio/adc/ad7476_core.c          |    2 
 drivers/staging/iio/adc/ad799x_core.c          |    2 
 drivers/staging/rt2860/chips/rt3090.c          |    3 
 drivers/staging/rt2860/chips/rt30xx.c          |    4 
 drivers/staging/rt2860/rt_main_dev.c           |    2 
 drivers/staging/rt2860/usb_main_dev.c          |    1 
 drivers/staging/rtl8712/usb_intf.c             |  145 ++++++++++++++++++-----
 drivers/staging/speakup/kobjects.c             |    2 
 drivers/staging/usbip/vhci.h                   |    6 
 drivers/staging/usbip/vhci_hcd.c               |   68 +++++++---
 drivers/staging/usbip/vhci_rx.c                |   15 +-
 drivers/staging/zram/zram_drv.c                |    4 
 drivers/tty/n_gsm.c                            |    1 
 drivers/tty/sysrq.c                            |   19 ++-
 drivers/tty/vt/vt.c                            |    9 +
 drivers/usb/class/cdc-acm.c                    |    1 
 drivers/usb/core/hcd-pci.c                     |    7 -
 drivers/usb/core/hcd.c                         |    2 
 drivers/usb/core/hub.c                         |   44 +++++--
 drivers/usb/core/quirks.c                      |    8 +
 drivers/usb/gadget/printer.c                   |   19 +--
 drivers/usb/host/ehci-au1xxx.c                 |    2 
 drivers/usb/host/ehci-hcd.c                    |   27 +++-
 drivers/usb/host/ehci-hub.c                    |    7 +
 drivers/usb/host/ehci-pci.c                    |   41 ++++++
 drivers/usb/host/ehci-sched.c                  |   79 ++++++++++++
 drivers/usb/host/ehci.h                        |    1 
 drivers/usb/host/xhci-ring.c                   |   42 +++---
 drivers/usb/host/xhci.c                        |   60 ++++-----
 drivers/usb/musb/musb_core.c                   |    1 
 drivers/usb/musb/omap2430.c                    |    1 
 drivers/usb/serial/ch341.c                     |   10 +
 drivers/usb/serial/cp210x.c                    |   16 --
 drivers/usb/serial/digi_acceleport.c           |   10 -
 drivers/usb/serial/ftdi_sio.c                  |   39 ++++++
 drivers/usb/serial/ftdi_sio_ids.h              |   32 ++++-
 drivers/usb/serial/generic.c                   |   20 +++
 drivers/usb/serial/io_edgeport.c               |    4 
 drivers/usb/serial/io_tables.h                 |    1 
 drivers/usb/serial/iuu_phoenix.c               |    1 
 drivers/usb/serial/keyspan.h                   |    4 
 drivers/usb/serial/keyspan_pda.c               |   17 --
 drivers/usb/serial/moto_modem.c                |    1 
 drivers/usb/serial/option.c                    |   23 +++
 drivers/usb/serial/oti6858.c                   |    1 
 drivers/usb/serial/pl2303.c                    |   12 +
 drivers/usb/serial/pl2303.h                    |    1 
 drivers/usb/serial/qcaux.c                     |    3 
 drivers/usb/serial/siemens_mpi.c               |    1 
 drivers/usb/serial/sierra.c                    |    3 
 drivers/usb/serial/spcp8x5.c                   |    7 -
 drivers/usb/serial/ti_usb_3410_5052.c          |    2 
 drivers/usb/serial/usb-serial.c                |    8 -
 drivers/usb/serial/usb_debug.c                 |    1 
 drivers/usb/serial/usb_wwan.c                  |   15 +-
 drivers/usb/serial/visor.c                     |   12 +
 drivers/usb/storage/unusual_cypress.h          |    5 
 drivers/usb/storage/unusual_devs.h             |   32 +++++
 drivers/video/aty/atyfb_base.c                 |   27 ----
 drivers/video/backlight/88pm860x_bl.c          |    4 
 drivers/virtio/virtio_pci.c                    |   20 ---
 drivers/xen/platform-pci.c                     |   21 +--
 fs/block_dev.c                                 |   12 -
 fs/btrfs/ioctl.c                               |   10 +
 fs/cifs/cifsproto.h                            |    2 
 fs/cifs/cifssmb.c                              |    4 
 fs/cifs/connect.c                              |    4 
 fs/cifs/file.c                                 |   21 +--
 fs/cifs/misc.c                                 |    2 
 fs/cifs/netmisc.c                              |    8 -
 fs/cifs/sess.c                                 |    8 -
 fs/direct-io.c                                 |   10 +
 fs/ecryptfs/inode.c                            |    2 
 fs/eventpoll.c                                 |  111 +++++++++++++++++
 fs/exofs/inode.c                               |    2 
 fs/ext2/namei.c                                |    9 -
 fs/ext4/inode.c                                |    1 
 fs/ext4/mballoc.c                              |  102 +++++++++-------
 fs/ext4/page-io.c                              |   11 -
 fs/ext4/super.c                                |   41 ++++--
 fs/file_table.c                                |    2 
 fs/fs-writeback.c                              |   98 ++++++++++++---
 fs/fuse/file.c                                 |   52 +++++++-
 fs/fuse/fuse_i.h                               |    6 
 fs/gfs2/main.c                                 |    9 -
 fs/inode.c                                     |   31 +++--
 fs/internal.h                                  |    2 
 fs/nfs/delegation.c                            |    6 
 fs/nfs/dir.c                                   |   50 ++++----
 fs/nfs/direct.c                                |   34 +++--
 fs/nfs/nfs2xdr.c                               |    6 
 fs/nfs/nfs3xdr.c                               |    6 
 fs/nfs/nfs4xdr.c                               |    6 
 fs/nfsd/nfs4idmap.c                            |    4 
 fs/nfsd/nfs4xdr.c                              |    8 -
 fs/nfsd/nfsd.h                                 |    1 
 fs/nfsd/nfsproc.c                              |    2 
 fs/nfsd/vfs.c                                  |    2 
 fs/nilfs2/btnode.c                             |    5 
 fs/nilfs2/btnode.h                             |    1 
 fs/nilfs2/mdt.c                                |    4 
 fs/nilfs2/page.h                               |    1 
 fs/nilfs2/segment.c                            |    3 
 fs/nilfs2/super.c                              |    5 
 fs/ocfs2/refcounttree.c                        |    7 -
 fs/ocfs2/super.c                               |   28 +++-
 fs/partitions/check.c                          |   10 +
 fs/partitions/ldm.c                            |    5 
 fs/partitions/mac.c                            |   17 +-
 fs/proc/array.c                                |    3 
 fs/proc/kcore.c                                |    2 
 fs/xfs/quota/xfs_qm.c                          |   46 +++----
 include/drm/drmP.h                             |    2 
 include/drm/drm_pciids.h                       |    1 
 include/linux/blkdev.h                         |    6 
 include/linux/completion.h                     |    8 -
 include/linux/dynamic_debug.h                  |   18 --
 include/linux/fs.h                             |    4 
 include/linux/genhd.h                          |    2 
 include/linux/ieee80211.h                      |    2 
 include/linux/klist.h                          |    2 
 include/linux/kref.h                           |    1 
 include/linux/lockdep.h                        |    3 
 include/linux/memory_hotplug.h                 |    6 
 include/linux/mmzone.h                         |   10 -
 include/linux/nl80211.h                        |    6 
 include/linux/oprofile.h                       |   13 +-
 include/linux/pci_ids.h                        |    1 
 include/linux/pm.h                             |    2 
 include/linux/pm_wakeup.h                      |   25 ++--
 include/linux/radix-tree.h                     |   16 ++
 include/linux/security.h                       |   21 +--
 include/linux/sunrpc/xdr.h                     |    4 
 include/linux/sysrq.h                          |    3 
 include/linux/usb/hcd.h                        |    1 
 include/linux/usb/serial.h                     |    3 
 include/linux/vmstat.h                         |    7 +
 include/net/cfg80211.h                         |   15 +-
 include/pcmcia/ds.h                            |    1 
 include/scsi/scsi.h                            |    1 
 init/calibrate.c                               |    6 
 kernel/capability.c                            |    2 
 kernel/cred.c                                  |   16 +-
 kernel/irq/internals.h                         |    6 
 kernel/irq/irqdesc.c                           |   11 +
 kernel/irq/manage.c                            |    2 
 kernel/irq/migration.c                         |   14 +-
 kernel/irq/resend.c                            |    2 
 kernel/perf_event.c                            |   34 +++--
 kernel/power/snapshot.c                        |    7 -
 kernel/ptrace.c                                |    2 
 kernel/sched.c                                 |   22 +++
 kernel/sched_rt.c                              |    2 
 kernel/smp.c                                   |   30 ++++
 kernel/sys.c                                   |    3 
 kernel/sysctl.c                                |    3 
 kernel/time/tick-broadcast.c                   |   10 +
 kernel/time/tick-common.c                      |    6 
 kernel/time/tick-internal.h                    |    3 
 kernel/trace/trace.c                           |    6 
 kernel/watchdog.c                              |   41 ++----
 kernel/workqueue.c                             |   27 +++-
 lib/dynamic_debug.c                            |    9 -
 lib/kref.c                                     |   12 +
 lib/swiotlb.c                                  |    6 
 mm/memcontrol.c                                |    7 -
 mm/memory.c                                    |    2 
 mm/memory_hotplug.c                            |    4 
 mm/migrate.c                                   |   75 ++++--------
 mm/mmzone.c                                    |   21 ---
 mm/page_alloc.c                                |   40 ++++--
 mm/slub.c                                      |    4 
 mm/vmscan.c                                    |   38 ++++--
 mm/vmstat.c                                    |   50 +++++++-
 net/ax25/af_ax25.c                             |    2 
 net/core/dev.c                                 |    2 
 net/core/ethtool.c                             |    2 
 net/core/rtnetlink.c                           |    3 
 net/core/sock.c                                |    2 
 net/dccp/input.c                               |    7 -
 net/dns_resolver/dns_key.c                     |   20 ++-
 net/ipv4/devinet.c                             |   30 +++-
 net/ipv4/inet_timewait_sock.c                  |    2 
 net/ipv4/ip_fragment.c                         |   34 +++++
 net/ipv6/ip6_output.c                          |    3 
 net/mac80211/agg-rx.c                          |   11 -
 net/mac80211/key.c                             |    6 
 net/mac80211/rx.c                              |    4 
 net/mac80211/tx.c                              |    6 
 net/netfilter/nf_conntrack_netlink.c           |   15 --
 net/sched/sch_fifo.c                           |    2 
 net/sunrpc/xdr.c                               |  155 ++++++++++++++++++++-----
 net/unix/af_unix.c                             |    2 
 net/wireless/reg.c                             |   33 ++++-
 net/wireless/wext-compat.c                     |    4 
 security/capability.c                          |    2 
 security/security.c                            |    8 -
 security/selinux/hooks.c                       |   21 ++-
 security/selinux/nlmsgtab.c                    |    2 
 security/smack/smack_lsm.c                     |   14 +-
 sound/atmel/ac97c.c                            |    5 
 sound/core/hrtimer.c                           |    5 
 sound/pci/au88x0/au88x0_pcm.c                  |   24 +++
 sound/pci/hda/hda_codec.c                      |    3 
 sound/pci/hda/hda_eld.c                        |    2 
 sound/pci/hda/hda_intel.c                      |    1 
 sound/pci/hda/patch_conexant.c                 |   16 ++
 sound/pci/hda/patch_hdmi.c                     |   51 ++++++++
 sound/pci/hda/patch_realtek.c                  |    2 
 sound/pci/hda/patch_sigmatel.c                 |    2 
 sound/pci/hda/patch_via.c                      |    2 
 sound/soc/blackfin/bf5xx-ac97.c                |    4 
 sound/soc/blackfin/bf5xx-tdm.c                 |    2 
 sound/soc/codecs/wm8903.c                      |    2 
 sound/soc/codecs/wm8990.c                      |   10 -
 sound/soc/codecs/wm8994.c                      |   17 +-
 sound/soc/codecs/wm_hubs.c                     |   15 +-
 sound/soc/davinci/davinci-evm.c                |    2 
 sound/soc/imx/eukrea-tlv320.c                  |    2 
 sound/soc/pxa/corgi.c                          |    4 
 sound/soc/pxa/e740_wm9705.c                    |    4 
 sound/soc/pxa/e750_wm9705.c                    |    4 
 sound/soc/pxa/e800_wm9712.c                    |    4 
 sound/soc/pxa/em-x270.c                        |    4 
 sound/soc/pxa/mioa701_wm9713.c                 |    4 
 sound/soc/pxa/palm27x.c                        |    4 
 sound/soc/pxa/poodle.c                         |    2 
 sound/soc/pxa/spitz.c                          |    4 
 sound/soc/pxa/tosa.c                           |    4 
 sound/soc/pxa/zylonite.c                       |    4 
 sound/soc/soc-core.c                           |    2 
 sound/usb/caiaq/audio.c                        |    2 
 sound/usb/caiaq/midi.c                         |    2 
 sound/usb/card.c                               |    4 
 sound/usb/midi.c                               |   11 +
 sound/usb/pcm.c                                |    7 -
 sound/usb/usbaudio.h                           |    1 
 sound/usb/usx2y/us122l.c                       |   41 +++---
 tools/perf/builtin-timechart.c                 |    2 
 443 files changed, 4026 insertions(+), 1816 deletions(-)

