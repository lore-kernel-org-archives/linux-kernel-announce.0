From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.35.4 released
Date: Fri, 27 Aug 2010 00:23:55 GMT
Message-ID: <201008270023.o7R0NtWA024328@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.35.4 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.35.4.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.35.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                75980            298535
Full source                       69259115         412928000

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                       |    2 
 arch/arm/Kconfig                               |   12 +
 arch/arm/include/asm/ptrace.h                  |   17 +
 arch/arm/include/asm/tlbflush.h                |    8 
 arch/arm/mach-ixp4xx/ixdp425-setup.c           |    1 
 arch/arm/mach-mx3/mach-qong.c                  |    1 
 arch/arm/mach-orion5x/ts78xx-setup.c           |    1 
 arch/arm/mach-pxa/cm-x300.c                    |    3 
 arch/arm/plat-mxc/gpio.c                       |    8 
 arch/arm/plat-mxc/include/mach/gpio.h          |    2 
 arch/blackfin/mach-bf537/boards/stamp.c        |    1 
 arch/blackfin/mach-bf561/boards/acvilon.c      |    1 
 arch/parisc/kernel/firmware.c                  |   12 -
 arch/powerpc/Makefile                          |   16 +
 arch/powerpc/kernel/perf_event_fsl_emb.c       |    1 
 arch/sparc/include/asm/atomic_64.h             |   10 -
 arch/sparc/include/asm/fb.h                    |    4 
 arch/sparc/include/asm/parport.h               |    4 
 arch/sparc/include/asm/rwsem-const.h           |    2 
 arch/x86/Kconfig                               |    5 
 arch/x86/include/asm/cmpxchg_32.h              |  121 ++++--------
 arch/x86/include/asm/cmpxchg_64.h              |   44 ++--
 arch/x86/kernel/apic/apic.c                    |    2 
 arch/x86/kernel/apic/io_apic.c                 |    2 
 arch/x86/kernel/cpu/mtrr/main.c                |   56 ++++-
 arch/x86/kernel/cpu/perf_event_intel.c         |   81 ++++++--
 arch/x86/kernel/cpu/perf_event_p4.c            |    9 
 arch/x86/kernel/cpu/vmware.c                   |   10 -
 arch/x86/kernel/mpparse.c                      |   16 +
 arch/x86/kernel/smpboot.c                      |   26 ++
 arch/x86/lib/atomic64_386_32.S                 |  236 +++++++++++++------------
 arch/x86/mm/fault.c                            |    4 
 arch/x86/mm/kmmio.c                            |   16 +
 arch/x86/mm/testmmiotrace.c                    |   22 ++
 arch/x86/oprofile/nmi_int.c                    |   17 +
 arch/x86/pci/acpi.c                            |    9 
 arch/x86/xen/enlighten.c                       |    2 
 arch/x86/xen/time.c                            |   39 ----
 crypto/Kconfig                                 |    8 
 crypto/algboss.c                               |    4 
 crypto/testmgr.c                               |   14 +
 drivers/acpi/apei/erst.c                       |    1 
 drivers/ata/ata_piix.c                         |    8 
 drivers/atm/solos-pci.c                        |    7 
 drivers/block/drbd/drbd_main.c                 |   27 ++
 drivers/bluetooth/btusb.c                      |    3 
 drivers/char/agp/intel-gtt.c                   |   11 +
 drivers/char/ipmi/ipmi_si_intf.c               |    8 
 drivers/char/mem.c                             |    2 
 drivers/char/nozomi.c                          |    4 
 drivers/char/tty_io.c                          |    4 
 drivers/dma/ioat/dma.h                         |    1 
 drivers/dma/ioat/dma_v2.c                      |   24 ++
 drivers/dma/ioat/dma_v3.c                      |    5 
 drivers/edac/amd64_edac.c                      |    6 
 drivers/gpu/drm/drm_drv.c                      |    4 
 drivers/gpu/drm/i915/i915_dma.c                |    8 
 drivers/gpu/drm/i915/intel_display.c           |  167 +++++++++++------
 drivers/gpu/drm/i915/intel_drv.h               |    8 
 drivers/gpu/drm/i915/intel_overlay.c           |    7 
 drivers/gpu/drm/radeon/r600.c                  |   24 ++
 drivers/gpu/drm/radeon/r600d.h                 |    1 
 drivers/gpu/drm/radeon/radeon_atombios.c       |   16 +
 drivers/gpu/drm/radeon/radeon_device.c         |    2 
 drivers/gpu/drm/radeon/radeon_i2c.c            |    7 
 drivers/gpu/drm/radeon/radeon_irq_kms.c        |    5 
 drivers/gpu/drm/radeon/radeon_kms.c            |    4 
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c    |    2 
 drivers/gpu/drm/radeon/radeon_object.c         |   27 +-
 drivers/gpu/drm/radeon/radeon_pm.c             |    5 
 drivers/gpu/drm/radeon/rs690.c                 |   27 --
 drivers/gpu/drm/radeon/rv515.c                 |   23 --
 drivers/gpu/drm/radeon/rv770.c                 |    5 
 drivers/gpu/drm/radeon/rv770d.h                |    1 
 drivers/hwmon/pc87360.c                        |   31 +--
 drivers/ide/ide-cd.c                           |   14 +
 drivers/isdn/gigaset/capi.c                    |   17 -
 drivers/isdn/sc/ioctl.c                        |   10 -
 drivers/md/dm-exception-store.c                |    4 
 drivers/md/dm-exception-store.h                |    3 
 drivers/md/dm-ioctl.c                          |   50 +++--
 drivers/md/dm-snap.c                           |   44 ++--
 drivers/md/dm.c                                |   63 ++++--
 drivers/md/dm.h                                |    5 
 drivers/md/md.c                                |   37 ++-
 drivers/md/md.h                                |    4 
 drivers/md/raid10.c                            |   18 +
 drivers/memstick/core/mspro_block.c            |    6 
 drivers/misc/enclosure.c                       |    7 
 drivers/mtd/chips/cfi_cmdset_0001.c            |   20 +-
 drivers/mtd/lpddr/lpddr_cmds.c                 |   20 +-
 drivers/mtd/nand/mxc_nand.c                    |    2 
 drivers/mtd/nand/nand_base.c                   |    1 
 drivers/mtd/nand/plat_nand.c                   |    7 
 drivers/mtd/nand/pxa3xx_nand.c                 |    2 
 drivers/net/e100.c                             |    2 
 drivers/net/e1000/e1000_main.c                 |    3 
 drivers/net/e1000e/82571.c                     |   31 +--
 drivers/net/e1000e/defines.h                   |    4 
 drivers/net/e1000e/hw.h                        |    2 
 drivers/net/e1000e/lib.c                       |   10 +
 drivers/net/e1000e/netdev.c                    |   17 +
 drivers/net/igb/igb_main.c                     |   10 -
 drivers/net/igbvf/netdev.c                     |    2 
 drivers/net/ixgb/ixgb_main.c                   |    2 
 drivers/net/ixgbe/ixgbe_main.c                 |    1 
 drivers/net/ixgbevf/ixgbevf_main.c             |    2 
 drivers/net/smsc911x.c                         |   92 +++++----
 drivers/net/wireless/ath/ath5k/base.c          |   21 ++
 drivers/net/wireless/ath/ath9k/ar9002_calib.c  |    2 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c |    2 
 drivers/net/wireless/ath/ath9k/eeprom.h        |    2 
 drivers/net/wireless/ath/ath9k/eeprom_4k.c     |    4 
 drivers/net/wireless/ath/ath9k/eeprom_9287.c   |    4 
 drivers/net/wireless/ath/ath9k/eeprom_def.c    |    6 
 drivers/net/wireless/ath/ath9k/htc_drv_txrx.c  |   15 +
 drivers/net/wireless/ath/ath9k/hw.c            |   23 ++
 drivers/net/wireless/ath/ath9k/xmit.c          |   95 ++++++----
 drivers/net/wireless/iwlwifi/iwl-3945.c        |   16 -
 drivers/net/wireless/iwlwifi/iwl-agn-hcmd.c    |   17 +
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c      |   17 -
 drivers/net/wireless/iwlwifi/iwl-agn-tx.c      |   20 --
 drivers/net/wireless/iwlwifi/iwl-agn.c         |   83 +++++++-
 drivers/net/wireless/iwlwifi/iwl-core.c        |   70 ++-----
 drivers/net/wireless/iwlwifi/iwl-core.h        |   13 -
 drivers/net/wireless/iwlwifi/iwl-devtrace.h    |    2 
 drivers/net/wireless/iwlwifi/iwl-scan.c        |   18 -
 drivers/net/wireless/iwlwifi/iwl3945-base.c    |   56 +++++
 drivers/net/wireless/rtl818x/rtl8180_dev.c     |    2 
 drivers/net/wireless/wl12xx/wl1251_cmd.c       |    2 
 drivers/net/xen-netfront.c                     |    1 
 drivers/parisc/led.c                           |    6 
 drivers/pci/intel-iommu.c                      |   28 ++
 drivers/pci/quirks.c                           |    4 
 drivers/pcmcia/pcmcia_resource.c               |    5 
 drivers/platform/x86/compal-laptop.c           |    9 
 drivers/platform/x86/dell-laptop.c             |    7 
 drivers/regulator/wm8994-regulator.c           |    5 
 drivers/serial/8250_pci.c                      |   13 +
 drivers/serial/suncore.c                       |   15 -
 drivers/ssb/driver_chipcommon.c                |    1 
 drivers/ssb/pci.c                              |   15 +
 drivers/staging/batman-adv/hard-interface.c    |   21 +-
 drivers/staging/batman-adv/originator.c        |   14 -
 drivers/staging/hv/Kconfig                     |    2 
 drivers/staging/line6/Kconfig                  |    1 
 drivers/staging/panel/panel.c                  |    2 
 drivers/staging/rt2860/usb_main_dev.c          |    1 
 drivers/usb/core/hub.c                         |    6 
 drivers/usb/core/quirks.c                      |    3 
 drivers/usb/core/urb.c                         |   50 ++---
 drivers/usb/host/ehci-pci.c                    |    1 
 drivers/usb/host/ehci-sched.c                  |   10 -
 drivers/usb/host/ehci.h                        |    1 
 drivers/usb/host/xhci-ring.c                   |    2 
 drivers/usb/misc/usbtest.c                     |    6 
 drivers/usb/mon/mon_bin.c                      |    2 
 drivers/usb/musb/musb_debugfs.c                |   32 +--
 drivers/usb/serial/cp210x.c                    |    8 
 drivers/usb/serial/ftdi_sio.c                  |    9 
 drivers/usb/serial/ftdi_sio_ids.h              |   19 ++
 drivers/usb/serial/generic.c                   |   15 +
 drivers/usb/serial/io_ti.c                     |    2 
 drivers/usb/serial/navman.c                    |    1 
 drivers/usb/serial/option.c                    |   20 +-
 drivers/usb/serial/pl2303.c                    |    1 
 drivers/usb/serial/pl2303.h                    |    4 
 drivers/video/matrox/matroxfb_base.h           |    4 
 drivers/video/w100fb.c                         |    4 
 drivers/xen/events.c                           |    1 
 firmware/Makefile                              |    2 
 fs/block_dev.c                                 |   14 -
 fs/char_dev.c                                  |    1 
 fs/ecryptfs/file.c                             |   60 +++---
 fs/ecryptfs/inode.c                            |    5 
 fs/ext4/super.c                                |    4 
 fs/jfs/xattr.c                                 |   87 ++++-----
 fs/namespace.c                                 |    2 
 fs/nfs/dir.c                                   |    2 
 fs/nfs/nfs4proc.c                              |    8 
 fs/nfs/super.c                                 |    7 
 fs/nilfs2/super.c                              |    4 
 fs/ocfs2/acl.c                                 |   33 ++-
 fs/ocfs2/dlm/dlmmaster.c                       |    9 
 fs/ocfs2/dlm/dlmrecovery.c                     |   22 +-
 fs/ocfs2/dlm/dlmthread.c                       |  114 +++++-------
 fs/ocfs2/refcounttree.c                        |   20 +-
 fs/proc/task_mmu.c                             |    8 
 fs/signalfd.c                                  |    2 
 fs/super.c                                     |    6 
 include/acpi/platform/aclinux.h                |   10 -
 include/drm/drm_pciids.h                       |    7 
 include/linux/Kbuild                           |    1 
 include/linux/fs.h                             |    7 
 include/linux/interrupt.h                      |    7 
 include/linux/mm_types.h                       |    2 
 include/linux/mtd/flashchip.h                  |    2 
 include/linux/netdevice.h                      |    2 
 include/linux/notifier.h                       |    1 
 include/linux/sched.h                          |    6 
 include/linux/skbuff.h                         |    4 
 include/linux/tty.h                            |    3 
 include/linux/usb/quirks.h                     |    4 
 include/sound/emu10k1.h                        |    1 
 include/trace/events/timer.h                   |    8 
 kernel/fork.c                                  |    7 
 kernel/irq/manage.c                            |    2 
 kernel/sched.c                                 |   20 --
 kernel/signal.c                                |    9 
 kernel/time/tick-sched.c                       |    2 
 kernel/time/timekeeping.c                      |   14 -
 kernel/trace/ring_buffer.c                     |    3 
 kernel/trace/trace_functions_graph.c           |   10 -
 mm/memory.c                                    |   39 +++-
 mm/mlock.c                                     |   19 ++
 mm/mmap.c                                      |   21 +-
 mm/nommu.c                                     |    7 
 mm/slab.c                                      |    4 
 mm/swapfile.c                                  |    6 
 net/9p/trans_fd.c                              |    2 
 net/bridge/br_device.c                         |    8 
 net/bridge/br_fdb.c                            |    2 
 net/bridge/br_input.c                          |    6 
 net/bridge/br_stp_bpdu.c                       |    2 
 net/can/bcm.c                                  |   41 ++--
 net/can/raw.c                                  |    4 
 net/core/dev.c                                 |    9 
 net/ipv4/devinet.c                             |    1 
 net/ipv4/tcp.c                                 |    7 
 net/mac80211/mesh_plink.c                      |   42 +++-
 net/netlink/af_netlink.c                       |   46 +---
 net/sched/act_nat.c                            |    3 
 net/sched/sch_generic.c                        |   18 +
 net/sched/sch_sfq.c                            |   13 +
 net/wireless/mlme.c                            |   16 +
 net/wireless/scan.c                            |    5 
 scripts/mkmakefile                             |    4 
 sound/core/pcm_native.c                        |    4 
 sound/pci/emu10k1/emu10k1.c                    |    4 
 sound/pci/emu10k1/emupcm.c                     |   30 ++-
 sound/pci/emu10k1/memory.c                     |    4 
 sound/pci/hda/patch_conexant.c                 |    1 
 sound/pci/hda/patch_realtek.c                  |    2 
 sound/pci/intel8x0.c                           |    6 
 sound/pci/riptide/riptide.c                    |   11 -
 sound/soc/codecs/wm8580.c                      |    6 
 sound/soc/codecs/wm8776.c                      |    7 
 sound/soc/soc-cache.c                          |    4 
 248 files changed, 2376 insertions(+), 1257 deletions(-)

