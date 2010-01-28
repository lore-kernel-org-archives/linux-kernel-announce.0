From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.32.7 released
Date: Thu, 28 Jan 2010 23:44:25 GMT
Message-ID: <201001282344.o0SNiPYt003314@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.32.7 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.32.7.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.32.7.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               173502            749659
Full source                       64385857         382453760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/Changes                          |    2 
 Documentation/DocBook/Makefile                 |   21 +
 Documentation/filesystems/ext4.txt             |   12 -
 Documentation/kernel-parameters.txt            |    2 
 Documentation/video4linux/CARDLIST.saa7134     |    1 
 Documentation/video4linux/gspca.txt            |    1 
 MAINTAINERS                                    |    4 
 Makefile                                       |    2 
 arch/alpha/kernel/osf_sys.c                    |   19 -
 arch/arm/include/asm/mman.h                    |    3 
 arch/arm/kernel/calls.S                        |    2 
 arch/arm/kernel/entry-common.S                 |    4 
 arch/arm/kernel/sys_arm.c                      |   55 ----
 arch/arm/mach-davinci/dm646x.c                 |    9 
 arch/arm/mach-pxa/em-x270.c                    |   11 
 arch/arm/mm/mmap.c                             |    3 
 arch/avr32/include/asm/syscalls.h              |    4 
 arch/avr32/kernel/sys_avr32.c                  |   31 --
 arch/avr32/kernel/syscall-stubs.S              |    2 
 arch/blackfin/kernel/sys_bfin.c                |   33 --
 arch/blackfin/mach-common/entry.S              |    2 
 arch/cris/kernel/sys_cris.c                    |   30 --
 arch/frv/kernel/sys_frv.c                      |   66 -----
 arch/h8300/kernel/sys_h8300.c                  |   83 -------
 arch/h8300/kernel/syscalls.S                   |    2 
 arch/ia64/ia32/sys_ia32.c                      |    3 
 arch/ia64/include/asm/io.h                     |    2 
 arch/ia64/kernel/sys_ia64.c                    |   83 -------
 arch/ia64/mm/ioremap.c                         |   11 
 arch/m32r/kernel/sys_m32r.c                    |   24 --
 arch/m32r/kernel/syscall_table.S               |    2 
 arch/m68k/kernel/sys_m68k.c                    |   83 -------
 arch/m68knommu/kernel/sys_m68k.c               |   38 ---
 arch/m68knommu/kernel/syscalltable.S           |    2 
 arch/microblaze/kernel/sys_microblaze.c        |   38 ---
 arch/microblaze/kernel/syscall_table.S         |    2 
 arch/mips/kernel/linux32.c                     |   19 -
 arch/mips/kernel/syscall.c                     |   32 --
 arch/mn10300/include/asm/mman.h                |    5 
 arch/mn10300/kernel/entry.S                    |    2 
 arch/mn10300/kernel/sys_mn10300.c              |   36 ---
 arch/parisc/kernel/sys_parisc.c                |   30 --
 arch/powerpc/include/asm/module.h              |    5 
 arch/powerpc/kernel/align.c                    |   63 ++++-
 arch/powerpc/kernel/pci-common.c               |   13 +
 arch/powerpc/kernel/syscalls.c                 |   15 -
 arch/powerpc/kernel/vector.S                   |    2 
 arch/powerpc/kernel/vmlinux.lds.S              |    3 
 arch/powerpc/sysdev/fsl_pci.c                  |   14 +
 arch/s390/include/asm/kvm.h                    |    3 
 arch/s390/kernel/compat_linux.c                |   37 ---
 arch/s390/kernel/head64.S                      |    3 
 arch/s390/kernel/sys_s390.c                    |   30 --
 arch/s390/kvm/intercept.c                      |    4 
 arch/s390/kvm/kvm-s390.c                       |   25 +-
 arch/s390/kvm/sigp.c                           |    6 
 arch/score/kernel/sys_score.c                  |   28 --
 arch/sh/kernel/sys_sh.c                        |   28 --
 arch/sh/mm/mmap.c                              |    3 
 arch/sparc/Makefile                            |    2 
 arch/sparc/kernel/ldc.c                        |    4 
 arch/sparc/kernel/nmi.c                        |    3 
 arch/sparc/kernel/of_device_64.c               |   14 +
 arch/sparc/kernel/perf_event.c                 |   11 
 arch/sparc/kernel/sys_sparc_32.c               |   64 -----
 arch/sparc/kernel/sys_sparc_64.c               |   50 +---
 arch/sparc/kernel/systbls.h                    |    1 
 arch/sparc/kernel/systbls_32.S                 |    4 
 arch/sparc/kernel/systbls_64.S                 |    4 
 arch/sparc/lib/mcount.S                        |    5 
 arch/um/kernel/syscall.c                       |   28 --
 arch/um/sys-i386/shared/sysdep/syscalls.h      |    4 
 arch/x86/Kconfig.cpu                           |    2 
 arch/x86/Makefile_32.cpu                       |    7 
 arch/x86/ia32/ia32entry.S                      |    2 
 arch/x86/ia32/sys_ia32.c                       |   43 ---
 arch/x86/include/asm/irq_vectors.h             |    2 
 arch/x86/include/asm/kvm_emulate.h             |    2 
 arch/x86/include/asm/mce.h                     |    6 
 arch/x86/include/asm/msr.h                     |   19 +
 arch/x86/include/asm/processor.h               |    2 
 arch/x86/include/asm/sys_ia32.h                |    3 
 arch/x86/include/asm/syscalls.h                |    2 
 arch/x86/include/asm/uv/uv_hub.h               |   86 ++++---
 arch/x86/kernel/acpi/cstate.c                  |    2 
 arch/x86/kernel/amd_iommu.c                    |    8 
 arch/x86/kernel/amd_iommu_init.c               |   12 -
 arch/x86/kernel/apic/apic.c                    |    2 
 arch/x86/kernel/apic/apic_flat_64.c            |    5 
 arch/x86/kernel/apic/x2apic_uv_x.c             |   27 +-
 arch/x86/kernel/cpu/intel.c                    |    1 
 arch/x86/kernel/cpu/intel_cacheinfo.c          |    5 
 arch/x86/kernel/cpu/mcheck/mce.c               |    9 
 arch/x86/kernel/cpu/mcheck/therm_throt.c       |   34 ++-
 arch/x86/kernel/cpu/perfctr-watchdog.c         |    2 
 arch/x86/kernel/cpuid.c                        |    7 
 arch/x86/kernel/msr.c                          |    6 
 arch/x86/kernel/pci-calgary_64.c               |   12 -
 arch/x86/kernel/pci-dma.c                      |    2 
 arch/x86/kernel/pci-gart_64.c                  |    2 
 arch/x86/kernel/ptrace.c                       |   16 -
 arch/x86/kernel/reboot.c                       |    8 
 arch/x86/kernel/setup.c                        |    3 
 arch/x86/kernel/sys_i386_32.c                  |   27 --
 arch/x86/kernel/sys_x86_64.c                   |   17 -
 arch/x86/kernel/syscall_table_32.S             |    2 
 arch/x86/kernel/tlb_uv.c                       |    4 
 arch/x86/kernel/tsc.c                          |    1 
 arch/x86/kvm/emulate.c                         |    5 
 arch/x86/kvm/lapic.c                           |   12 -
 arch/x86/kvm/mmu.c                             |    6 
 arch/x86/kvm/paging_tmpl.h                     |   22 -
 arch/x86/kvm/x86.c                             |   18 +
 arch/x86/lib/Makefile                          |    4 
 arch/x86/lib/msr-smp.c                         |  204 ++++++++++++++++++
 arch/x86/lib/msr.c                             |  227 +-------------------
 arch/x86/pci/i386.c                            |    9 
 arch/x86/xen/enlighten.c                       |   27 +-
 arch/x86/xen/mmu.c                             |    2 
 arch/x86/xen/smp.c                             |    1 
 arch/x86/xen/suspend.c                         |   17 +
 arch/x86/xen/time.c                            |    7 
 arch/x86/xen/xen-asm_64.S                      |    4 
 arch/x86/xen/xen-ops.h                         |    2 
 arch/xtensa/include/asm/syscall.h              |    2 
 arch/xtensa/include/asm/unistd.h               |    2 
 arch/xtensa/kernel/syscall.c                   |   25 --
 block/blk-settings.c                           |   22 +
 drivers/acpi/button.c                          |    7 
 drivers/acpi/ec.c                              |  135 +++++++-----
 drivers/acpi/processor_idle.c                  |   21 -
 drivers/ata/ahci.c                             |   20 +
 drivers/ata/ata_piix.c                         |    6 
 drivers/ata/pata_cmd64x.c                      |    2 
 drivers/ata/pata_hpt37x.c                      |   32 +-
 drivers/ata/pata_hpt3x2n.c                     |   79 +++----
 drivers/base/core.c                            |    9 
 drivers/base/devtmpfs.c                        |    3 
 drivers/base/power/runtime.c                   |    2 
 drivers/bluetooth/btusb.c                      |    1 
 drivers/char/agp/intel-agp.c                   |    7 
 drivers/char/nozomi.c                          |    2 
 drivers/char/tty_io.c                          |    2 
 drivers/cpuidle/governors/menu.c               |   12 -
 drivers/dma/at_hdmac.c                         |    4 
 drivers/dma/ioat/dma.c                         |    2 
 drivers/dma/ioat/dma.h                         |   18 +
 drivers/dma/ioat/dma_v2.c                      |   69 ++++--
 drivers/dma/ioat/dma_v2.h                      |    2 
 drivers/dma/ioat/dma_v3.c                      |   60 +++--
 drivers/dma/ioat/registers.h                   |    1 
 drivers/edac/amd64_edac.c                      |  221 ++++++++++---------
 drivers/edac/amd64_edac.h                      |    9 
 drivers/edac/i5000_edac.c                      |    8 
 drivers/firewire/ohci.c                        |   12 -
 drivers/firmware/dmi_scan.c                    |   15 +
 drivers/gpu/drm/ati_pcigart.c                  |   10 
 drivers/gpu/drm/drm_bufs.c                     |    4 
 drivers/gpu/drm/drm_crtc_helper.c              |    3 
 drivers/gpu/drm/drm_irq.c                      |   34 ++-
 drivers/gpu/drm/drm_pci.c                      |    8 
 drivers/gpu/drm/i915/i915_dma.c                |    5 
 drivers/gpu/drm/i915/i915_drv.h                |    5 
 drivers/gpu/drm/i915/i915_gem.c                |   13 -
 drivers/gpu/drm/i915/i915_irq.c                |   43 +--
 drivers/gpu/drm/i915/i915_reg.h                |    4 
 drivers/gpu/drm/i915/intel_display.c           |  245 ++++++++--------------
 drivers/gpu/drm/i915/intel_dp.c                |    6 
 drivers/gpu/drm/i915/intel_lvds.c              |    9 
 drivers/gpu/drm/i915/intel_sdvo.c              |   83 +++++++
 drivers/gpu/drm/i915/intel_tv.c                |   11 
 drivers/gpu/drm/radeon/atombios_crtc.c         |   10 
 drivers/gpu/drm/radeon/radeon_atombios.c       |    8 
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c    |    7 
 drivers/gpu/drm/radeon/radeon_test.c           |    4 
 drivers/gpu/drm/radeon/rs600.c                 |   15 +
 drivers/gpu/drm/radeon/rs690.c                 |   19 -
 drivers/hid/hid-apple.c                        |    7 
 drivers/hid/hid-core.c                         |    3 
 drivers/hid/hid-ids.h                          |    3 
 drivers/hid/usbhid/hid-core.c                  |    3 
 drivers/hid/usbhid/hid-quirks.c                |    2 
 drivers/hwmon/Kconfig                          |    2 
 drivers/hwmon/adt7462.c                        |    2 
 drivers/hwmon/coretemp.c                       |   16 +
 drivers/hwmon/fschmd.c                         |    7 
 drivers/hwmon/sht15.c                          |    6 
 drivers/i2c/busses/i2c-pca-isa.c               |    4 
 drivers/i2c/busses/i2c-pca-platform.c          |    4 
 drivers/i2c/i2c-core.c                         |    5 
 drivers/ide/slc90e66.c                         |    3 
 drivers/infiniband/ulp/ipoib/ipoib_main.c      |    1 
 drivers/input/mouse/alps.c                     |  252 ++++++++++++++++++++--
 drivers/input/mouse/alps.h                     |    1 
 drivers/input/mouse/psmouse-base.c             |   28 +-
 drivers/input/serio/i8042-x86ia64io.h          |  158 +++++++-------
 drivers/lguest/segments.c                      |    4 
 drivers/macintosh/therm_adt746x.c              |   13 -
 drivers/macintosh/windfarm_smu_controls.c      |    2 
 drivers/md/bitmap.c                            |   24 +-
 drivers/md/bitmap.h                            |    2 
 drivers/md/dm-crypt.c                          |  170 ++++++++++-----
 drivers/md/dm-exception-store.c                |    3 
 drivers/md/dm-ioctl.c                          |   17 +
 drivers/md/dm-snap.c                           |   12 -
 drivers/md/dm-table.c                          |   20 -
 drivers/md/dm-uevent.c                         |    9 
 drivers/md/md.c                                |   13 -
 drivers/md/md.h                                |    1 
 drivers/media/common/tuners/mxl5007t.c         |    2 
 drivers/media/dvb/siano/smsusb.c               |   10 
 drivers/media/video/gspca/ov519.c              |    1 
 drivers/media/video/gspca/sn9c20x.c            |    2 
 drivers/media/video/gspca/sunplus.c            |   26 +-
 drivers/media/video/ov511.c                    |    2 
 drivers/media/video/saa7134/saa7134-cards.c    |   31 ++
 drivers/media/video/saa7134/saa7134-dvb.c      |    1 
 drivers/media/video/saa7134/saa7134.h          |    1 
 drivers/media/video/uvc/uvc_ctrl.c             |    2 
 drivers/mfd/wm8350-core.c                      |    3 
 drivers/misc/enclosure.c                       |    1 
 drivers/mmc/card/block.c                       |    8 
 drivers/mmc/card/queue.c                       |   18 -
 drivers/mtd/ubi/upd.c                          |   21 +
 drivers/mtd/ubi/vtbl.c                         |    1 
 drivers/net/atl1c/atl1c.h                      |    6 
 drivers/net/atl1c/atl1c_main.c                 |   72 ++----
 drivers/net/atl1e/atl1e_main.c                 |   36 ---
 drivers/net/b44.c                              |    3 
 drivers/net/bcm63xx_enet.c                     |   12 -
 drivers/net/benet/be.h                         |   15 +
 drivers/net/benet/be_main.c                    |    2 
 drivers/net/e100.c                             |    2 
 drivers/net/qlge/qlge_main.c                   |   30 --
 drivers/net/qlge/qlge_mpi.c                    |    3 
 drivers/net/sfc/tx.c                           |    4 
 drivers/net/usb/rtl8150.c                      |    2 
 drivers/net/wireless/ath/ar9170/usb.c          |    4 
 drivers/net/wireless/ath/ath5k/base.c          |    7 
 drivers/net/wireless/ath/ath5k/eeprom.c        |   33 ++
 drivers/net/wireless/ath/ath5k/eeprom.h        |    8 
 drivers/net/wireless/ath/ath5k/phy.c           |    2 
 drivers/net/wireless/ath/ath9k/ath9k.h         |    3 
 drivers/net/wireless/ath/ath9k/hw.c            |   11 
 drivers/net/wireless/ath/ath9k/hw.h            |    3 
 drivers/net/wireless/ath/ath9k/mac.c           |    8 
 drivers/net/wireless/ath/ath9k/mac.h           |    4 
 drivers/net/wireless/ath/ath9k/main.c          |   23 +-
 drivers/net/wireless/ath/ath9k/reg.h           |    4 
 drivers/net/wireless/ath/ath9k/xmit.c          |   24 +-
 drivers/net/wireless/b43/rfkill.c              |   10 
 drivers/net/wireless/b43legacy/rfkill.c        |    7 
 drivers/net/wireless/ipw2x00/ipw2100.c         |   11 
 drivers/net/wireless/iwlwifi/iwl-3945.c        |    2 
 drivers/net/wireless/iwlwifi/iwl-4965.c        |    4 
 drivers/net/wireless/iwlwifi/iwl-5000-hw.h     |   14 -
 drivers/net/wireless/iwlwifi/iwl-5000.c        |   11 
 drivers/net/wireless/iwlwifi/iwl-dev.h         |    4 
 drivers/net/wireless/iwlwifi/iwl-eeprom.c      |   23 +-
 drivers/net/wireless/iwlwifi/iwl-eeprom.h      |    4 
 drivers/net/wireless/iwlwifi/iwl3945-base.c    |   11 
 drivers/net/wireless/iwmc3200wifi/iwm.h        |    2 
 drivers/net/wireless/libertas/scan.c           |   22 -
 drivers/net/wireless/libertas/wext.c           |    2 
 drivers/net/wireless/orinoco/wext.c            |    6 
 drivers/net/wireless/rt2x00/rt61pci.c          |    5 
 drivers/net/wireless/rtl818x/rtl8187.h         |    5 
 drivers/net/wireless/rtl818x/rtl8187_dev.c     |   12 -
 drivers/net/wireless/rtl818x/rtl8187_rfkill.c  |    4 
 drivers/pci/dmar.c                             |   67 ++++--
 drivers/pci/intel-iommu.c                      |   26 +-
 drivers/pci/pci.c                              |    5 
 drivers/pci/pcie/aer/aer_inject.c              |    8 
 drivers/pci/setup-bus.c                        |   11 
 drivers/pcmcia/cardbus.c                       |    2 
 drivers/platform/x86/acerhdf.c                 |   70 +++---
 drivers/platform/x86/asus-laptop.c             |   12 -
 drivers/platform/x86/thinkpad_acpi.c           |   36 ---
 drivers/rtc/rtc-cmos.c                         |    9 
 drivers/s390/block/dasd_diag.c                 |   19 +
 drivers/s390/cio/device.c                      |   11 
 drivers/s390/cio/device_fsm.c                  |   25 --
 drivers/s390/net/netiucv.c                     |    4 
 drivers/scsi/device_handler/scsi_dh.c          |   11 
 drivers/scsi/fcoe/fcoe.c                       |   15 -
 drivers/scsi/hosts.c                           |   13 -
 drivers/scsi/ipr.c                             |    1 
 drivers/scsi/libfc/fc_disc.c                   |    2 
 drivers/scsi/libfc/fc_elsct.c                  |    4 
 drivers/scsi/libfc/fc_fcp.c                    |   35 +--
 drivers/scsi/libfc/fc_lport.c                  |   33 +-
 drivers/scsi/libfc/fc_rport.c                  |   82 +++++--
 drivers/scsi/lpfc/lpfc_init.c                  |   18 +
 drivers/scsi/megaraid/megaraid_sas.c           |   10 
 drivers/scsi/mpt2sas/mpi/mpi2_cnfg.h           |    8 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c           |   18 +
 drivers/scsi/qla2xxx/qla_attr.c                |    3 
 drivers/scsi/qla2xxx/qla_os.c                  |    6 
 drivers/scsi/scsi_devinfo.c                    |    9 
 drivers/scsi/scsi_lib_dma.c                    |    4 
 drivers/scsi/scsi_transport_fc.c               |   85 +++++--
 drivers/scsi/scsi_transport_iscsi.c            |    9 
 drivers/scsi/st.c                              |   23 +-
 drivers/scsi/st.h                              |    1 
 drivers/serial/8250.c                          |    8 
 drivers/serial/8250_pnp.c                      |   12 -
 drivers/ssb/sprom.c                            |   20 +
 drivers/staging/asus_oled/asus_oled.c          |   12 -
 drivers/staging/hv/Hv.c                        |   50 ++--
 drivers/staging/hv/Hv.h                        |    6 
 drivers/staging/hv/Vmbus.c                     |   12 -
 drivers/usb/class/usbtmc.c                     |   14 -
 drivers/usb/core/devices.c                     |    2 
 drivers/usb/core/hub.c                         |   61 +++--
 drivers/usb/core/message.c                     |    8 
 drivers/usb/core/sysfs.c                       |   12 -
 drivers/usb/core/usb.c                         |   31 +-
 drivers/usb/host/ehci-hcd.c                    |    5 
 drivers/usb/host/ehci-hub.c                    |   20 +
 drivers/usb/host/ehci-q.c                      |   11 
 drivers/usb/host/uhci-hcd.c                    |   15 +
 drivers/usb/host/uhci-hub.c                    |    2 
 drivers/usb/misc/appledisplay.c                |    4 
 drivers/usb/misc/emi62.c                       |    2 
 drivers/usb/musb/musb_gadget_ep0.c             |   15 -
 drivers/usb/serial/ftdi_sio.c                  |   14 +
 drivers/usb/serial/ftdi_sio.h                  |   14 +
 drivers/usb/serial/generic.c                   |    2 
 drivers/usb/serial/mos7840.c                   |   24 +-
 drivers/usb/serial/option.c                    |   42 +++
 drivers/usb/storage/transport.c                |   17 +
 drivers/usb/storage/unusual_devs.h             |   14 -
 drivers/usb/storage/usb.c                      |   21 +
 drivers/video/matrox/g450_pll.c                |    3 
 drivers/video/s3c-fb.c                         |   14 -
 drivers/watchdog/iTCO_wdt.c                    |  115 ++++++----
 drivers/xen/balloon.c                          |   38 ---
 drivers/xen/events.c                           |    3 
 drivers/xen/manage.c                           |   31 +-
 drivers/xen/xenbus/xenbus_probe.c              |   48 ++--
 fs/cifs/connect.c                              |   13 -
 fs/debugfs/inode.c                             |   55 ++--
 fs/devpts/inode.c                              |   16 +
 fs/ecryptfs/crypto.c                           |    4 
 fs/ecryptfs/file.c                             |   14 -
 fs/exofs/inode.c                               |   17 +
 fs/ext3/inode.c                                |   18 +
 fs/ext4/balloc.c                               |    8 
 fs/ext4/block_validity.c                       |    2 
 fs/ext4/ext4.h                                 |   14 +
 fs/ext4/ext4_jbd2.h                            |   21 +
 fs/ext4/extents.c                              |   22 +
 fs/ext4/fsync.c                                |   54 +---
 fs/ext4/inode.c                                |  106 ++++++---
 fs/ext4/ioctl.c                                |   29 +-
 fs/ext4/mballoc.c                              |   40 ++-
 fs/ext4/migrate.c                              |    4 
 fs/ext4/move_extent.c                          |  278 +++++++++++--------------
 fs/ext4/namei.c                                |   38 +--
 fs/ext4/resize.c                               |    2 
 fs/ext4/super.c                                |   45 +++-
 fs/ext4/xattr.c                                |    7 
 fs/fcntl.c                                     |  108 ++++++---
 fs/hfs/catalog.c                               |    4 
 fs/hfs/dir.c                                   |   11 
 fs/hfs/super.c                                 |    7 
 fs/jbd2/commit.c                               |    4 
 fs/jbd2/journal.c                              |   12 +
 fs/jffs2/gc.c                                  |    3 
 fs/namei.c                                     |    1 
 fs/nfs/super.c                                 |    2 
 fs/nfs/write.c                                 |    5 
 fs/nfsd/nfs4acl.c                              |    2 
 fs/nfsd/vfs.c                                  |    5 
 fs/notify/inotify/inotify_fsnotify.c           |    2 
 fs/notify/inotify/inotify_user.c               |    4 
 fs/partitions/efi.c                            |   30 +-
 fs/partitions/efi.h                            |    8 
 fs/quota/dquot.c                               |  216 ++++++++++---------
 fs/reiserfs/inode.c                            |   17 +
 fs/stat.c                                      |   10 
 fs/super.c                                     |    3 
 fs/udf/super.c                                 |   32 ++
 include/acpi/platform/aclinux.h                |    2 
 include/drm/drmP.h                             |    3 
 include/drm/ttm/ttm_memory.h                   |    1 
 include/linux/blkdev.h                         |   13 -
 include/linux/clocksource.h                    |    2 
 include/linux/cpumask.h                        |    2 
 include/linux/enclosure.h                      |    2 
 include/linux/fs.h                             |    1 
 include/linux/hid.h                            |    1 
 include/linux/hrtimer.h                        |    4 
 include/linux/kvm.h                            |    8 
 include/linux/mfd/wm8350/pmic.h                |   28 +-
 include/linux/pci.h                            |    3 
 include/linux/pci_ids.h                        |   14 +
 include/linux/perf_event.h                     |    2 
 include/linux/quota.h                          |    5 
 include/linux/sched.h                          |   13 -
 include/linux/security.h                       |    7 
 include/linux/syscalls.h                       |    4 
 include/linux/time.h                           |    1 
 include/linux/usb_usual.h                      |    4 
 include/linux/vmalloc.h                        |    2 
 include/net/ip.h                               |    1 
 include/net/ipv6.h                             |    8 
 include/net/netfilter/ipv6/nf_conntrack_ipv6.h |    2 
 include/net/tcp.h                              |   10 
 include/scsi/fc_frame.h                        |    3 
 include/scsi/libfc.h                           |    1 
 include/scsi/osd_protocol.h                    |    1 
 include/scsi/scsi_host.h                       |   16 +
 include/trace/ftrace.h                         |    2 
 init/calibrate.c                               |   24 +-
 ipc/msg.c                                      |    1 
 ipc/sem.c                                      |    1 
 ipc/shm.c                                      |   32 +-
 kernel/acct.c                                  |    3 
 kernel/audit_tree.c                            |   13 -
 kernel/cgroup.c                                |    1 
 kernel/cpu.c                                   |   23 +-
 kernel/cpuset.c                                |   16 -
 kernel/futex.c                                 |   37 +--
 kernel/module.c                                |   45 ++--
 kernel/perf_event.c                            |   36 ++-
 kernel/rcutree.c                               |  227 ++++++++++++--------
 kernel/rcutree.h                               |   13 -
 kernel/rcutree_plugin.h                        |    4 
 kernel/sched.c                                 |  104 +++++----
 kernel/sched_clock.c                           |   23 +-
 kernel/sched_debug.c                           |    4 
 kernel/sched_fair.c                            |   54 ++++
 kernel/signal.c                                |    3 
 kernel/sysctl.c                                |    5 
 kernel/time/clockevents.c                      |   21 +
 kernel/time/clocksource.c                      |   44 +++
 kernel/time/tick-sched.c                       |   52 +++-
 kernel/time/timekeeping.c                      |   11 
 lib/dma-debug.c                                |   15 -
 lib/rational.c                                 |    1 
 mm/Kconfig                                     |    1 
 mm/internal.h                                  |    3 
 mm/ksm.c                                       |   14 -
 mm/memcontrol.c                                |   20 +
 mm/memory.c                                    |    4 
 mm/mincore.c                                   |   37 +++
 mm/mlock.c                                     |    4 
 mm/mmap.c                                      |   42 ---
 mm/mremap.c                                    |  241 ++++++++++++++-------
 mm/oom_kill.c                                  |    2 
 mm/page_alloc.c                                |    2 
 mm/pagewalk.c                                  |   16 +
 mm/truncate.c                                  |   30 +-
 mm/util.c                                      |   44 +++
 mm/vmalloc.c                                   |    6 
 mm/vmscan.c                                    |   18 +
 net/bridge/netfilter/ebtables.c                |    6 
 net/core/dev.c                                 |   11 
 net/core/rtnetlink.c                           |    4 
 net/ipv4/ip_output.c                           |    2 
 net/ipv4/netfilter/nf_defrag_ipv4.c            |   21 +
 net/ipv6/exthdrs.c                             |    7 
 net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.c |   19 +
 net/ipv6/netfilter/nf_conntrack_reasm.c        |    7 
 net/ipv6/reassembly.c                          |    5 
 net/mac80211/cfg.c                             |    6 
 net/mac80211/ibss.c                            |    4 
 net/mac80211/ieee80211_i.h                     |    1 
 net/mac80211/iface.c                           |   40 +++
 net/mac80211/mesh.h                            |    5 
 net/mac80211/mesh_hwmp.c                       |    2 
 net/mac80211/mlme.c                            |   12 -
 net/mac80211/rx.c                              |    9 
 net/mac80211/scan.c                            |   32 ++
 net/mac80211/tx.c                              |    6 
 net/mac80211/util.c                            |   26 ++
 net/mac80211/wme.c                             |   89 +++++---
 net/mac80211/wme.h                             |    8 
 net/netfilter/ipvs/ip_vs_ctl.c                 |    4 
 net/netfilter/nf_conntrack_ftp.c               |   18 -
 net/netfilter/xt_conntrack.c                   |   61 +----
 net/sunrpc/auth_gss/auth_gss.c                 |   19 +
 net/sunrpc/auth_gss/gss_krb5_mech.c            |    4 
 net/sunrpc/auth_gss/gss_mech_switch.c          |    2 
 net/sunrpc/svc_xprt.c                          |    3 
 net/wireless/mlme.c                            |   13 +
 net/wireless/reg.c                             |    2 
 net/wireless/sme.c                             |    1 
 security/Makefile                              |    3 
 security/keys/keyctl.c                         |   10 
 sound/core/hrtimer.c                           |   15 +
 sound/mips/sgio2audio.c                        |    2 
 sound/pci/ac97/ac97_patch.c                    |    1 
 sound/pci/atiixp.c                             |    1 
 sound/pci/hda/hda_intel.c                      |    8 
 sound/pci/hda/patch_intelhdmi.c                |    2 
 sound/pci/hda/patch_realtek.c                  |   20 +
 sound/pci/ice1712/juli.c                       |   32 ++
 sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c         |    2 
 sound/soc/codecs/wm8350.c                      |    2 
 sound/soc/codecs/wm8510.c                      |   14 -
 sound/soc/codecs/wm8903.c                      |    3 
 sound/soc/codecs/wm8940.c                      |   14 -
 sound/soc/codecs/wm8974.c                      |   16 -
 sound/soc/codecs/wm9712.c                      |    3 
 sound/usb/usbaudio.c                           |    2 
 tools/perf/builtin-timechart.c                 |    2 
 virt/kvm/eventfd.c                             |   15 +
 virt/kvm/irq_comm.c                            |   19 +
 510 files changed, 5747 insertions(+), 4075 deletions(-)

