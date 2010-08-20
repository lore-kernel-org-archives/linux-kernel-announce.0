From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.35.3 released
Date: Fri, 20 Aug 2010 19:20:00 GMT
Message-ID: <201008201920.o7KJK0nC026181@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.35.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.35.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.35.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                39766            152303
Full source                       69267320         412907520

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
 arch/arm/Kconfig                               |   12 ++
 arch/arm/include/asm/tlbflush.h                |    8 +
 arch/arm/mach-pxa/cm-x300.c                    |    3 
 arch/arm/plat-mxc/gpio.c                       |    8 +
 arch/arm/plat-mxc/include/mach/gpio.h          |    2 
 arch/parisc/kernel/firmware.c                  |   12 --
 arch/powerpc/Makefile                          |   16 ++
 arch/powerpc/kernel/perf_event_fsl_emb.c       |    1 
 arch/x86/include/asm/cmpxchg_32.h              |   68 +++++------
 arch/x86/include/asm/cmpxchg_64.h              |   40 +++---
 arch/x86/kernel/cpu/mtrr/main.c                |   56 +++++++--
 arch/x86/kernel/cpu/vmware.c                   |   10 +
 arch/x86/kernel/smpboot.c                      |    7 +
 arch/x86/mm/fault.c                            |    4 
 arch/x86/mm/kmmio.c                            |   16 ++
 arch/x86/mm/testmmiotrace.c                    |   22 +++
 arch/x86/pci/acpi.c                            |    9 +
 arch/x86/xen/enlighten.c                       |    2 
 arch/x86/xen/time.c                            |   39 ------
 crypto/Kconfig                                 |    8 +
 crypto/algboss.c                               |    4 
 crypto/testmgr.c                               |   14 ++
 drivers/ata/ata_piix.c                         |    8 +
 drivers/atm/solos-pci.c                        |    7 +
 drivers/block/drbd/drbd_main.c                 |   27 +++-
 drivers/bluetooth/btusb.c                      |    3 
 drivers/char/ipmi/ipmi_si_intf.c               |    8 +
 drivers/char/nozomi.c                          |    4 
 drivers/dma/ioat/dma.h                         |    1 
 drivers/dma/ioat/dma_v2.c                      |   24 +++-
 drivers/dma/ioat/dma_v3.c                      |    5 
 drivers/edac/amd64_edac.c                      |    6 -
 drivers/gpu/drm/i915/intel_display.c           |  144 ++++++++++++++++---------
 drivers/gpu/drm/i915/intel_drv.h               |    8 +
 drivers/gpu/drm/i915/intel_overlay.c           |    7 -
 drivers/gpu/drm/radeon/r600.c                  |   24 +++-
 drivers/gpu/drm/radeon/r600d.h                 |    1 
 drivers/gpu/drm/radeon/radeon_object.c         |   27 +++-
 drivers/gpu/drm/radeon/rs690.c                 |   27 +---
 drivers/gpu/drm/radeon/rv515.c                 |   23 +--
 drivers/gpu/drm/radeon/rv770.c                 |    5 
 drivers/gpu/drm/radeon/rv770d.h                |    1 
 drivers/ide/ide-cd.c                           |   14 +-
 drivers/md/md.c                                |   37 +++---
 drivers/md/md.h                                |    4 
 drivers/md/raid10.c                            |   18 +++
 drivers/misc/enclosure.c                       |    7 -
 drivers/mtd/nand/mxc_nand.c                    |    2 
 drivers/mtd/nand/plat_nand.c                   |    2 
 drivers/net/e100.c                             |    2 
 drivers/net/e1000/e1000_main.c                 |    3 
 drivers/net/e1000e/hw.h                        |    2 
 drivers/net/e1000e/netdev.c                    |   17 ++
 drivers/net/igb/igb_main.c                     |   10 +
 drivers/net/igbvf/netdev.c                     |    2 
 drivers/net/ixgb/ixgb_main.c                   |    2 
 drivers/net/ixgbe/ixgbe_main.c                 |    1 
 drivers/net/ixgbevf/ixgbevf_main.c             |    2 
 drivers/net/smsc911x.c                         |   92 +++++++++------
 drivers/net/wireless/ath/ath9k/ar9002_calib.c  |    2 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c |    2 
 drivers/net/wireless/ath/ath9k/eeprom.h        |    2 
 drivers/net/wireless/ath/ath9k/eeprom_4k.c     |    4 
 drivers/net/wireless/ath/ath9k/eeprom_9287.c   |    4 
 drivers/net/wireless/ath/ath9k/eeprom_def.c    |    6 -
 drivers/net/wireless/ath/ath9k/hw.c            |   23 +++
 drivers/net/wireless/ath/ath9k/xmit.c          |   95 ++++++++++------
 drivers/net/wireless/iwlwifi/iwl-devtrace.h    |    2 
 drivers/net/wireless/iwlwifi/iwl-scan.c        |   18 +--
 drivers/net/wireless/rtl818x/rtl8180_dev.c     |    2 
 drivers/net/xen-netfront.c                     |    1 
 drivers/parisc/led.c                           |    6 -
 drivers/pci/intel-iommu.c                      |   28 ++++
 drivers/pci/quirks.c                           |    4 
 drivers/pcmcia/pcmcia_resource.c               |    5 
 drivers/serial/8250_pci.c                      |   13 ++
 drivers/ssb/driver_chipcommon.c                |    1 
 drivers/ssb/pci.c                              |   15 ++
 drivers/staging/hv/Kconfig                     |    2 
 drivers/staging/line6/Kconfig                  |    1 
 drivers/staging/panel/panel.c                  |    2 
 drivers/staging/rt2860/usb_main_dev.c          |    1 
 drivers/usb/core/hub.c                         |    6 -
 drivers/usb/core/quirks.c                      |    3 
 drivers/usb/core/urb.c                         |   50 +++-----
 drivers/usb/host/ehci-pci.c                    |    1 
 drivers/usb/host/ehci-sched.c                  |   10 -
 drivers/usb/host/ehci.h                        |    1 
 drivers/usb/misc/usbtest.c                     |    6 -
 drivers/usb/mon/mon_bin.c                      |    2 
 drivers/usb/musb/musb_debugfs.c                |   32 ++---
 drivers/usb/serial/cp210x.c                    |    4 
 drivers/usb/serial/ftdi_sio.c                  |    4 
 drivers/usb/serial/ftdi_sio_ids.h              |   10 +
 drivers/usb/serial/generic.c                   |   15 +-
 drivers/usb/serial/option.c                    |   13 ++
 drivers/video/w100fb.c                         |    4 
 drivers/xen/events.c                           |    1 
 fs/block_dev.c                                 |   14 +-
 fs/ecryptfs/file.c                             |   60 ++++++----
 fs/ecryptfs/inode.c                            |    5 
 fs/ext4/super.c                                |    4 
 fs/jfs/xattr.c                                 |   87 ++++++---------
 fs/namespace.c                                 |    2 
 fs/proc/task_mmu.c                             |    8 +
 fs/signalfd.c                                  |    2 
 fs/super.c                                     |    6 +
 include/drm/drm_pciids.h                       |    7 +
 include/linux/Kbuild                           |    1 
 include/linux/fs.h                             |    7 -
 include/linux/interrupt.h                      |    7 +
 include/linux/netdevice.h                      |    2 
 include/linux/notifier.h                       |    1 
 include/linux/sched.h                          |    6 -
 include/linux/usb/quirks.h                     |    4 
 kernel/irq/manage.c                            |    2 
 kernel/sched.c                                 |   10 -
 kernel/signal.c                                |    9 +
 kernel/time/tick-sched.c                       |    2 
 mm/memory.c                                    |   32 ++++-
 mm/mlock.c                                     |    8 +
 mm/swapfile.c                                  |    6 -
 net/9p/trans_fd.c                              |    2 
 net/ipv4/devinet.c                             |    1 
 net/mac80211/mesh_plink.c                      |   42 +++++--
 net/sched/sch_generic.c                        |   18 +++
 net/wireless/mlme.c                            |    8 -
 net/wireless/scan.c                            |    5 
 sound/pci/hda/patch_realtek.c                  |    1 
 130 files changed, 1135 insertions(+), 575 deletions(-)

