From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.34.2 released
Date: Mon, 2 Aug 2010 18:32:36 GMT
Message-ID: <201008021832.o72IWagC026695@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.34.2 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.34.2.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.34.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               139650            592413
Full source                       67663954         404756480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/hwmon/ltc4245                     |    4 
 Documentation/kernel-parameters.txt             |    4 
 Makefile                                        |    2 
 arch/arm/common/sa1111.c                        |    9 
 arch/arm/include/asm/atomic.h                   |  132 +++----
 arch/arm/kernel/kprobes-decode.c                |    5 
 arch/arm/kernel/perf_event.c                    |    2 
 arch/arm/mach-mx2/devices.c                     |    4 
 arch/arm/mach-omap2/board-rx51-peripherals.c    |   17 
 arch/arm/mach-realview/Kconfig                  |    2 
 arch/arm/mach-realview/include/mach/barriers.h  |    8 
 arch/arm/mm/cache-v7.S                          |    4 
 arch/arm/mm/copypage-feroceon.c                 |    4 
 arch/arm/mm/copypage-v4wb.c                     |    4 
 arch/arm/mm/copypage-v4wt.c                     |    4 
 arch/arm/mm/copypage-xsc3.c                     |    4 
 arch/arm/mm/fault.c                             |    3 
 arch/arm/mm/init.c                              |    6 
 arch/arm/vfp/vfphw.S                            |    2 
 arch/blackfin/include/asm/cache.h               |    2 
 arch/frv/include/asm/cache.h                    |    2 
 arch/ia64/mm/tlb.c                              |    2 
 arch/m68k/include/asm/cache.h                   |    2 
 arch/mips/alchemy/mtx-1/board_setup.c           |    8 
 arch/mn10300/include/asm/cache.h                |    2 
 arch/parisc/math-emu/decode_exc.c               |    1 
 arch/powerpc/include/asm/cpm.h                  |   24 +
 arch/powerpc/kernel/asm-offsets.c               |    8 
 arch/powerpc/kernel/head_fsl_booke.S            |   13 
 arch/powerpc/kernel/irq.c                       |    5 
 arch/powerpc/kvm/book3s.c                       |   10 
 arch/powerpc/kvm/booke.c                        |   15 
 arch/powerpc/kvm/powerpc.c                      |    3 
 arch/powerpc/lib/string.S                       |    4 
 arch/powerpc/mm/fsl_booke_mmu.c                 |   25 -
 arch/powerpc/mm/mmu_decl.h                      |   10 
 arch/powerpc/mm/pgtable_32.c                    |    8 
 arch/powerpc/mm/pgtable_64.c                    |    8 
 arch/powerpc/mm/tlb_nohash_low.S                |   28 +
 arch/powerpc/oprofile/op_model_cell.c           |    2 
 arch/powerpc/platforms/pseries/hotplug-cpu.c    |   30 -
 arch/powerpc/platforms/pseries/plpar_wrappers.h |    8 
 arch/powerpc/platforms/pseries/smp.c            |   28 +
 arch/powerpc/sysdev/micropatch.c                |   12 
 arch/s390/kvm/kvm-s390.c                        |    4 
 arch/um/os-Linux/mem.c                          |    1 
 arch/x86/include/asm/kvm_host.h                 |    3 
 arch/x86/include/asm/msr-index.h                |    6 
 arch/x86/include/asm/suspend_32.h               |    2 
 arch/x86/include/asm/suspend_64.h               |    2 
 arch/x86/include/asm/system.h                   |    2 
 arch/x86/kernel/acpi/cstate.c                   |    9 
 arch/x86/kernel/acpi/sleep.c                    |    2 
 arch/x86/kernel/amd_iommu.c                     |   16 
 arch/x86/kernel/amd_iommu_init.c                |   20 -
 arch/x86/kernel/apic/apic.c                     |    2 
 arch/x86/kernel/cpu/perf_event.c                |    5 
 arch/x86/kernel/cpu/perf_event_amd.c            |    4 
 arch/x86/kernel/cpu/perf_event_intel.c          |    1 
 arch/x86/kernel/hpet.c                          |    2 
 arch/x86/kernel/i8259.c                         |   25 -
 arch/x86/kernel/kprobes.c                       |    2 
 arch/x86/kernel/pci-calgary_64.c                |   17 
 arch/x86/kernel/pvclock.c                       |   24 +
 arch/x86/kernel/setup.c                         |   11 
 arch/x86/kernel/tboot.c                         |    1 
 arch/x86/kernel/traps.c                         |   11 
 arch/x86/kvm/mmu.c                              |   15 
 arch/x86/kvm/svm.c                              |  259 +++++++++++---
 arch/x86/kvm/vmx.c                              |   38 +-
 arch/x86/kvm/x86.c                              |   58 +--
 arch/x86/oprofile/nmi_int.c                     |   10 
 arch/x86/pci/mrst.c                             |    7 
 arch/x86/power/cpu.c                            |    4 
 arch/x86/xen/suspend.c                          |    4 
 arch/xtensa/include/asm/cache.h                 |    1 
 block/blk-core.c                                |    2 
 block/cfq-iosched.c                             |   33 +
 drivers/acpi/acpica/acevents.h                  |    4 
 drivers/acpi/acpica/achware.h                   |    6 
 drivers/acpi/acpica/evgpe.c                     |   85 ----
 drivers/acpi/acpica/evgpeblk.c                  |   14 
 drivers/acpi/acpica/evxfevnt.c                  |   66 +++
 drivers/acpi/acpica/hwgpe.c                     |   94 +++--
 drivers/acpi/button.c                           |    4 
 drivers/acpi/processor_core.c                   |    2 
 drivers/acpi/processor_idle.c                   |    2 
 drivers/acpi/sleep.c                            |  157 --------
 drivers/acpi/system.c                           |    6 
 drivers/acpi/video_detect.c                     |    2 
 drivers/acpi/wakeup.c                           |   20 -
 drivers/ata/ahci.c                              |   10 
 drivers/ata/ata_generic.c                       |   30 +
 drivers/ata/libata-core.c                       |    7 
 drivers/ata/libata-sff.c                        |    2 
 drivers/ata/sata_nv.c                           |    5 
 drivers/ata/sata_via.c                          |   13 
 drivers/base/cpu.c                              |    2 
 drivers/base/firmware_class.c                   |   26 +
 drivers/char/agp/amd64-agp.c                    |   27 -
 drivers/char/ipmi/ipmi_si_intf.c                |   13 
 drivers/char/tpm/tpm.h                          |    1 
 drivers/char/tpm/tpm_tis.c                      |    9 
 drivers/clocksource/sh_cmt.c                    |   21 -
 drivers/clocksource/sh_tmu.c                    |   20 -
 drivers/cpufreq/cpufreq.c                       |   11 
 drivers/edac/Kconfig                            |    2 
 drivers/edac/amd64_edac.c                       |   24 -
 drivers/firewire/core-card.c                    |   24 +
 drivers/gpu/drm/drm_edid.c                      |    2 
 drivers/gpu/drm/i915/i915_debugfs.c             |    2 
 drivers/gpu/drm/i915/i915_dma.c                 |    4 
 drivers/gpu/drm/i915/i915_drv.c                 |    1 
 drivers/gpu/drm/i915/i915_drv.h                 |    1 
 drivers/gpu/drm/i915/i915_gem.c                 |   32 +
 drivers/gpu/drm/i915/i915_irq.c                 |   16 
 drivers/gpu/drm/i915/i915_reg.h                 |   69 +++
 drivers/gpu/drm/i915/intel_display.c            |   94 +++--
 drivers/gpu/drm/i915/intel_dp.c                 |   63 ++-
 drivers/gpu/drm/i915/intel_drv.h                |    1 
 drivers/gpu/drm/radeon/r100.c                   |   61 +--
 drivers/gpu/drm/radeon/r200.c                   |    5 
 drivers/gpu/drm/radeon/r300.c                   |    5 
 drivers/gpu/drm/radeon/radeon.h                 |    1 
 drivers/gpu/drm/radeon/radeon_agp.c             |    5 
 drivers/gpu/drm/radeon/radeon_atombios.c        |   27 +
 drivers/gpu/drm/radeon/radeon_connectors.c      |   27 -
 drivers/gpu/drm/radeon/radeon_device.c          |    2 
 drivers/gpu/drm/radeon/radeon_display.c         |    5 
 drivers/gpu/drm/radeon/radeon_encoders.c        |    4 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c |    1 
 drivers/gpu/drm/radeon/radeon_legacy_tv.c       |    4 
 drivers/gpu/drm/radeon/radeon_state.c           |    5 
 drivers/hid/hid-core.c                          |    1 
 drivers/hid/hid-gyration.c                      |    1 
 drivers/hid/hid-ids.h                           |    1 
 drivers/hid/usbhid/hid-core.c                   |    7 
 drivers/hid/usbhid/usbkbd.c                     |    1 
 drivers/hwmon/coretemp.c                        |   32 +
 drivers/hwmon/i5k_amb.c                         |    6 
 drivers/hwmon/it87.c                            |   22 +
 drivers/hwmon/k10temp.c                         |   14 
 drivers/hwmon/k8temp.c                          |   12 
 drivers/hwmon/ltc4245.c                         |   18 
 drivers/ide/cmd640.c                            |    6 
 drivers/infiniband/ulp/ipoib/ipoib_main.c       |    4 
 drivers/input/joystick/gamecon.c                |    5 
 drivers/input/keyboard/twl4030_keypad.c         |   17 
 drivers/input/serio/i8042-x86ia64io.h           |    7 
 drivers/isdn/capi/kcapi.c                       |    6 
 drivers/isdn/gigaset/asyncdata.c                |   44 --
 drivers/isdn/gigaset/capi.c                     |  433 +++++++++++++++---------
 drivers/isdn/gigaset/common.c                   |   36 -
 drivers/isdn/gigaset/ev-layer.c                 |    4 
 drivers/isdn/gigaset/gigaset.h                  |   38 +-
 drivers/isdn/gigaset/i4l.c                      |   21 +
 drivers/isdn/gigaset/isocdata.c                 |   72 +--
 drivers/md/linear.c                             |    1 
 drivers/md/md.c                                 |   99 ++++-
 drivers/md/md.h                                 |    1 
 drivers/md/raid1.c                              |    9 
 drivers/md/raid10.c                             |   14 
 drivers/md/raid5.c                              |    7 
 drivers/media/dvb/dvb-core/dvb_net.c            |   12 
 drivers/media/dvb/ttpci/Kconfig                 |    5 
 drivers/media/video/cx23885/cx23885-i2c.c       |   12 
 drivers/media/video/cx88/cx88-i2c.c             |   16 
 drivers/media/video/uvc/uvc_ctrl.c              |    2 
 drivers/media/video/uvc/uvc_driver.c            |   25 +
 drivers/media/video/uvc/uvcvideo.h              |    4 
 drivers/mfd/88pm860x-i2c.c                      |    1 
 drivers/mfd/max8925-i2c.c                       |    2 
 drivers/misc/vmware_balloon.c                   |   18 
 drivers/mmc/host/sdhci-s3c.c                    |   20 +
 drivers/net/3c503.c                             |   42 +-
 drivers/net/arcnet/com20020-pci.c               |    4 
 drivers/net/bnx2.c                              |   14 
 drivers/net/can/sja1000/sja1000.c               |   20 -
 drivers/net/can/sja1000/sja1000.h               |    1 
 drivers/net/cpmac.c                             |    3 
 drivers/net/dm9000.c                            |   38 +-
 drivers/net/mlx4/icm.c                          |    3 
 drivers/net/r8169.c                             |   11 
 drivers/net/sky2.c                              |   20 -
 drivers/net/usb/pegasus.h                       |    2 
 drivers/net/usb/usbnet.c                        |    5 
 drivers/net/virtio_net.c                        |   28 -
 drivers/net/wireless/ath/ar9170/hw.h            |    1 
 drivers/net/wireless/ath/ar9170/main.c          |    2 
 drivers/net/wireless/ath/ar9170/usb.c           |   10 
 drivers/net/wireless/ath/ath5k/attach.c         |    1 
 drivers/net/wireless/ath/ath5k/base.c           |   11 
 drivers/net/wireless/ath/ath9k/hw.c             |    4 
 drivers/net/wireless/ath/ath9k/init.c           |    3 
 drivers/net/wireless/ath/ath9k/initvals.h       |    8 
 drivers/net/wireless/hostap/hostap_cs.c         |   15 
 drivers/net/wireless/hostap/hostap_hw.c         |   13 
 drivers/net/wireless/hostap/hostap_wlan.h       |    2 
 drivers/net/wireless/iwlwifi/iwl-1000.c         |    3 
 drivers/net/wireless/iwlwifi/iwl-3945.c         |    3 
 drivers/net/wireless/iwlwifi/iwl-4965.c         |    1 
 drivers/net/wireless/iwlwifi/iwl-5000.c         |    9 
 drivers/net/wireless/iwlwifi/iwl-6000.c         |    8 
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c       |   10 
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   16 
 drivers/net/wireless/iwlwifi/iwl-core.c         |   93 +++++
 drivers/net/wireless/iwlwifi/iwl-core.h         |    7 
 drivers/net/wireless/iwlwifi/iwl-dev.h          |   10 
 drivers/net/wireless/iwlwifi/iwl-scan.c         |   22 +
 drivers/net/wireless/iwlwifi/iwl-tx.c           |    9 
 drivers/net/wireless/iwlwifi/iwl3945-base.c     |   16 
 drivers/net/wireless/libertas/if_sdio.c         |   22 +
 drivers/net/wireless/p54/p54pci.c               |    2 
 drivers/net/wireless/p54/p54usb.c               |    1 
 drivers/net/wireless/rtl818x/rtl8180_dev.c      |    1 
 drivers/net/wireless/wl12xx/wl1251_sdio.c       |    1 
 drivers/oprofile/cpu_buffer.c                   |   63 ---
 drivers/pci/pci.c                               |    1 
 drivers/pci/pcie/pme/pcie_pme.c                 |   19 -
 drivers/pci/quirks.c                            |   13 
 drivers/pcmcia/ds.c                             |    4 
 drivers/pcmcia/yenta_socket.c                   |    5 
 drivers/platform/x86/Kconfig                    |    1 
 drivers/rtc/rtc-cmos.c                          |    5 
 drivers/rtc/rtc-ds1307.c                        |    4 
 drivers/rtc/rtc-s3c.c                           |    5 
 drivers/scsi/aacraid/commctrl.c                 |    4 
 drivers/scsi/libsas/sas_ata.c                   |    5 
 drivers/scsi/libsas/sas_scsi_host.c             |   16 
 drivers/serial/68328serial.c                    |    2 
 drivers/serial/cpm_uart/cpm_uart_core.c         |  143 ++++---
 drivers/spi/spi_mpc8xxx.c                       |   22 -
 drivers/ssb/driver_chipcommon.c                 |    3 
 drivers/ssb/driver_chipcommon_pmu.c             |   17 
 drivers/ssb/pci.c                               |   46 ++
 drivers/ssb/sprom.c                             |   15 
 drivers/staging/batman-adv/proc.c               |   51 +-
 drivers/staging/batman-adv/vis.c                |  235 ++++++++-----
 drivers/staging/batman-adv/vis.h                |    8 
 drivers/staging/comedi/drivers/ni_mio_cs.c      |    2 
 drivers/staging/rt2860/usb_main_dev.c           |    1 
 drivers/staging/vt6655/device_main.c            |    2 
 drivers/usb/class/cdc-acm.c                     |    6 
 drivers/usb/core/driver.c                       |   15 
 drivers/usb/core/hcd.c                          |  169 +++++----
 drivers/usb/core/hub.c                          |    3 
 drivers/usb/core/message.c                      |   45 --
 drivers/usb/core/quirks.c                       |    7 
 drivers/usb/core/urb.c                          |    9 
 drivers/usb/core/usb.c                          |    4 
 drivers/usb/gadget/fsl_udc_core.c               |    2 
 drivers/usb/gadget/u_serial.c                   |   16 
 drivers/usb/host/ehci-au1xxx.c                  |   16 
 drivers/usb/host/ehci-fsl.c                     |    2 
 drivers/usb/host/ehci-hub.c                     |  158 ++++++--
 drivers/usb/host/ehci-mxc.c                     |   13 
 drivers/usb/host/ehci-pci.c                     |   15 
 drivers/usb/host/ehci.h                         |   10 
 drivers/usb/host/fhci.h                         |    9 
 drivers/usb/host/whci/qset.c                    |    2 
 drivers/usb/host/xhci-mem.c                     |    5 
 drivers/usb/host/xhci-pci.c                     |    2 
 drivers/usb/host/xhci-ring.c                    |   39 +-
 drivers/usb/host/xhci.c                         |   54 ++
 drivers/usb/misc/sisusbvga/sisusb.c             |    5 
 drivers/usb/mon/mon_bin.c                       |    2 
 drivers/usb/mon/mon_text.c                      |    4 
 drivers/usb/musb/musb_core.c                    |    9 
 drivers/usb/musb/musb_core.h                    |    6 
 drivers/usb/musb/tusb6010.c                     |   13 
 drivers/usb/serial/cp210x.c                     |   11 
 drivers/usb/serial/cypress_m8.c                 |    2 
 drivers/usb/serial/digi_acceleport.c            |    4 
 drivers/usb/serial/ftdi_sio.c                   |   13 
 drivers/usb/serial/ftdi_sio_ids.h               |   15 
 drivers/usb/serial/ir-usb.c                     |    2 
 drivers/usb/serial/kl5kusb105.c                 |    1 
 drivers/usb/serial/kobil_sct.c                  |    3 
 drivers/usb/serial/mos7840.c                    |    1 
 drivers/usb/serial/option.c                     |  184 ++++++++++
 drivers/usb/serial/qcaux.c                      |    5 
 drivers/usb/serial/sierra.c                     |    1 
 drivers/usb/serial/spcp8x5.c                    |    4 
 drivers/usb/serial/visor.c                      |    1 
 drivers/usb/storage/unusual_devs.h              |   15 
 drivers/vhost/net.c                             |    2 
 drivers/video/arcfb.c                           |    8 
 drivers/video/hgafb.c                           |   10 
 drivers/video/vfb.c                             |    4 
 drivers/video/vga16fb.c                         |   10 
 drivers/video/w100fb.c                          |   10 
 drivers/virtio/virtio_pci.c                     |    3 
 drivers/virtio/virtio_ring.c                    |    7 
 drivers/xen/xenbus/xenbus_xs.c                  |    2 
 fs/aio.c                                        |   65 ++-
 fs/btrfs/acl.c                                  |    3 
 fs/btrfs/ioctl.c                                |    4 
 fs/cifs/cifsfs.c                                |    6 
 fs/cifs/cifsproto.h                             |    6 
 fs/cifs/dir.c                                   |   20 -
 fs/cifs/dns_resolve.c                           |   69 +++
 fs/cifs/dns_resolve.h                           |    4 
 fs/cifs/file.c                                  |   11 
 fs/cifs/inode.c                                 |    4 
 fs/cifs/sess.c                                  |   10 
 fs/compat.c                                     |  132 ++++---
 fs/dcache.c                                     |    1 
 fs/ecryptfs/messaging.c                         |   17 
 fs/exofs/dir.c                                  |    2 
 fs/ext4/move_extent.c                           |    3 
 fs/ext4/resize.c                                |    3 
 fs/fs-writeback.c                               |   14 
 fs/gfs2/file.c                                  |    7 
 fs/libfs.c                                      |    3 
 fs/namei.c                                      |    2 
 fs/nfs/nfs4xdr.c                                |    4 
 fs/nfs/super.c                                  |   22 -
 fs/nfs/write.c                                  |   20 -
 fs/nfsd/nfssvc.c                                |    2 
 fs/nfsd/vfs.c                                   |   11 
 fs/nfsd/vfs.h                                   |    1 
 fs/ocfs2/aops.c                                 |   52 --
 fs/ocfs2/file.c                                 |  118 ++++--
 fs/ocfs2/xattr.c                                |   82 ++--
 fs/splice.c                                     |    9 
 fs/sysv/ialloc.c                                |    6 
 fs/xfs/xfs_dfrag.c                              |    5 
 include/acpi/acexcep.h                          |    2 
 include/acpi/actypes.h                          |    1 
 include/acpi/processor.h                        |    3 
 include/linux/acpi.h                            |    1 
 include/linux/aio.h                             |    5 
 include/linux/compat.h                          |    4 
 include/linux/compiler-gcc.h                    |   10 
 include/linux/compiler-gcc4.h                   |    4 
 include/linux/ethtool.h                         |    2 
 include/linux/fb.h                              |    4 
 include/linux/firmware.h                        |    1 
 include/linux/fs.h                              |    2 
 include/linux/miscdevice.h                      |    7 
 include/linux/mmc/sdio.h                        |    2 
 include/linux/pci_ids.h                         |    2 
 include/linux/perf_event.h                      |    5 
 include/linux/slub_def.h                        |   11 
 include/linux/ssb/ssb.h                         |    1 
 include/linux/ssb/ssb_driver_chipcommon.h       |    2 
 include/linux/ssb/ssb_regs.h                    |    3 
 include/linux/swap.h                            |   10 
 include/linux/tboot.h                           |    1 
 include/linux/usb.h                             |    9 
 include/math-emu/op-common.h                    |    2 
 include/net/sock.h                              |    7 
 include/trace/events/signal.h                   |    3 
 kernel/cgroup.c                                 |    2 
 kernel/compat.c                                 |   25 -
 kernel/early_res.c                              |    6 
 kernel/futex.c                                  |   17 
 kernel/irq/manage.c                             |    3 
 kernel/module.c                                 |    4 
 kernel/mutex.c                                  |    7 
 kernel/perf_event.c                             |  299 +++++++++-------
 kernel/posix-timers.c                           |   11 
 kernel/sched.c                                  |    9 
 kernel/signal.c                                 |    6 
 lib/idr.c                                       |    5 
 mm/bootmem.c                                    |   24 +
 mm/filemap.c                                    |   10 
 mm/page_alloc.c                                 |    8 
 mm/slub.c                                       |   33 -
 net/bridge/br_fdb.c                             |    6 
 net/core/dev.c                                  |    7 
 net/core/ethtool.c                              |   43 +-
 net/core/neighbour.c                            |    5 
 net/core/skbuff.c                               |    1 
 net/dccp/input.c                                |    6 
 net/ipv4/syncookies.c                           |    2 
 net/ipv4/tcp_output.c                           |   12 
 net/ipv6/addrconf.c                             |    7 
 net/ipv6/ndisc.c                                |    2 
 net/ipv6/netfilter/ip6t_REJECT.c                |    6 
 net/ipv6/route.c                                |    2 
 net/mac80211/Kconfig                            |    9 
 net/mac80211/cfg.c                              |    7 
 net/mac80211/mlme.c                             |   40 ++
 net/mac80211/rx.c                               |    3 
 net/mac80211/scan.c                             |   21 -
 net/mac80211/tx.c                               |    5 
 net/mac80211/work.c                             |   28 +
 net/netfilter/ipvs/ip_vs_conn.c                 |    4 
 net/sunrpc/xprtsock.c                           |   38 +-
 scripts/kconfig/Makefile                        |    2 
 scripts/mod/modpost.c                           |    2 
 sound/core/pcm_lib.c                            |   13 
 sound/core/pcm_native.c                         |   39 --
 sound/pci/hda/hda_codec.c                       |   27 +
 sound/pci/hda/hda_codec.h                       |    5 
 sound/pci/hda/hda_intel.c                       |    9 
 sound/pci/hda/patch_hdmi.c                      |   13 
 sound/pci/hda/patch_nvhdmi.c                    |    3 
 sound/pci/hda/patch_realtek.c                   |   24 -
 sound/pci/hda/patch_sigmatel.c                  |    2 
 sound/soc/codecs/wm8350.c                       |    4 
 sound/soc/codecs/wm8400.c                       |   18 
 sound/soc/codecs/wm8776.c                       |    1 
 sound/soc/codecs/wm8990.c                       |   18 
 sound/soc/fsl/mpc5200_dma.h                     |    2 
 sound/soc/imx/imx-pcm-dma-mx2.c                 |    7 
 tools/perf/bench/mem-memcpy.c                   |    2 
 tools/perf/bench/sched-messaging.c              |    4 
 tools/perf/builtin-annotate.c                   |    8 
 tools/perf/builtin-buildid-cache.c              |    2 
 tools/perf/builtin-buildid-list.c               |    4 
 tools/perf/builtin-diff.c                       |    4 
 tools/perf/builtin-help.c                       |    2 
 tools/perf/builtin-lock.c                       |    2 
 tools/perf/builtin-probe.c                      |    2 
 tools/perf/builtin-record.c                     |   24 -
 tools/perf/builtin-report.c                     |    6 
 tools/perf/builtin-sched.c                      |    6 
 tools/perf/builtin-stat.c                       |   10 
 tools/perf/builtin-timechart.c                  |    2 
 tools/perf/builtin-top.c                        |   47 +-
 tools/perf/builtin-trace.c                      |    2 
 tools/perf/util/callchain.h                     |    3 
 tools/perf/util/debug.c                         |    2 
 tools/perf/util/debug.h                         |    3 
 tools/perf/util/parse-options.c                 |    6 
 tools/perf/util/parse-options.h                 |    4 
 tools/perf/util/symbol.c                        |   25 -
 tools/perf/util/symbol.h                        |   15 
 tools/perf/util/trace-event-parse.c             |    2 
 tools/perf/util/trace-event.h                   |    3 
 virt/kvm/ioapic.c                               |    3 
 433 files changed, 4896 insertions(+), 2461 deletions(-)

