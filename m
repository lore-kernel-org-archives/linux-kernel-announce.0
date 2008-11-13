From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.6 released
Date: Thu, 13 Nov 2008 18:50:39 GMT
Message-ID: <200811131850.mADIodAS028101@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.6 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.6.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.6.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                60476            227660
Full source                       50362112         293857280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/cciss.txt                          |    2 
 Documentation/i2c/busses/i2c-sis96x              |    2 
 Documentation/video4linux/CARDLIST.au0828        |    2 
 MAINTAINERS                                      |   20 -
 Makefile                                         |    4 
 arch/arm/mach-pxa/include/mach/reset.h           |    9 
 arch/arm/mach-pxa/reset.c                        |    9 
 arch/arm/mach-pxa/spitz.c                        |    2 
 arch/arm/mach-pxa/tosa.c                         |    2 
 arch/arm/mm/cache-xsc3l2.c                       |    4 
 arch/powerpc/configs/linkstation_defconfig       |    7 
 arch/powerpc/mm/hash_utils_64.c                  |    6 
 arch/powerpc/mm/numa.c                           |  113 +++++-
 arch/powerpc/platforms/embedded6xx/linkstation.c |   14 
 arch/s390/kernel/smp.c                           |   24 -
 arch/sparc64/kernel/trampoline.S                 |   18 -
 arch/x86/Kconfig                                 |   20 +
 arch/x86/kernel/acpi/sleep.c                     |    3 
 arch/x86/kernel/alternative.c                    |    2 
 arch/x86/kernel/amd_iommu_init.c                 |    2 
 arch/x86/kernel/early-quirks.c                   |   48 ++
 arch/x86/kernel/io_apic_32.c                     |    3 
 arch/x86/kernel/process_64.c                     |    4 
 arch/x86/kernel/rtc.c                            |   22 +
 arch/x86/kernel/setup.c                          |   41 ++
 arch/x86/kernel/tsc.c                            |    8 
 arch/x86/mm/ioremap.c                            |    2 
 arch/x86/mm/pat.c                                |    4 
 drivers/acpi/button.c                            |    3 
 drivers/acpi/dock.c                              |    5 
 drivers/acpi/ec.c                                |  374 +++++++++++------------
 drivers/acpi/hardware/hwsleep.c                  |   44 +-
 drivers/acpi/reboot.c                            |   25 +
 drivers/acpi/sleep/main.c                        |   10 
 drivers/ata/libata-core.c                        |    2 
 drivers/ata/libata-eh.c                          |   21 -
 drivers/ata/pata_it821x.c                        |    3 
 drivers/ata/sata_nv.c                            |   53 +--
 drivers/ata/sata_promise.c                       |   20 +
 drivers/base/core.c                              |   25 +
 drivers/base/sys.c                               |    6 
 drivers/block/cciss.c                            |   28 +
 drivers/block/cpqarray.c                         |    7 
 drivers/char/agp/intel-agp.c                     |   12 
 drivers/char/hvc_console.c                       |   10 
 drivers/char/ipmi/ipmi_devintf.c                 |    1 
 drivers/char/tty_io.c                            |    2 
 drivers/dca/dca-core.c                           |    2 
 drivers/dma/ioat_dma.c                           |   11 
 drivers/dma/iovlock.c                            |   17 -
 drivers/edac/cell_edac.c                         |    2 
 drivers/firewire/fw-cdev.c                       |    6 
 drivers/firewire/fw-sbp2.c                       |   38 +-
 drivers/firewire/fw-topology.c                   |    6 
 drivers/firewire/fw-transaction.h                |    2 
 drivers/gpio/gpiolib.c                           |    2 
 drivers/gpu/drm/i915/i915_dma.c                  |    2 
 drivers/hid/hidraw.c                             |    2 
 drivers/hid/usbhid/hid-quirks.c                  |    4 
 drivers/i2c/busses/scx200_i2c.c                  |    1 
 drivers/input/keyboard/atkbd.c                   |   10 
 drivers/md/dm-kcopyd.c                           |   13 
 drivers/md/dm-snap.c                             |   10 
 drivers/md/linear.c                              |    2 
 drivers/md/md.c                                  |    6 
 drivers/md/raid10.c                              |    2 
 drivers/media/dvb/frontends/s5h1411.c            |   35 +-
 drivers/media/dvb/siano/sms-cards.c              |    4 
 drivers/media/video/au0828/au0828-cards.c        |    3 
 drivers/media/video/pvrusb2/pvrusb2-encoder.c    |    4 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c        |    6 
 drivers/media/video/tvaudio.c                    |    2 
 drivers/mmc/core/core.c                          |    6 
 drivers/mtd/chips/cfi_cmdset_0002.c              |   13 
 drivers/mtd/chips/jedec_probe.c                  |   10 
 drivers/net/atl1e/atl1e_main.c                   |    2 
 drivers/net/atlx/atl1.c                          |    7 
 drivers/net/atlx/atl1.h                          |    2 
 drivers/net/bonding/bond_alb.c                   |   13 
 drivers/net/r8169.c                              |  134 ++++----
 drivers/net/sky2.c                               |   19 -
 drivers/net/wireless/ath9k/core.h                |    2 
 drivers/net/wireless/ath9k/main.c                |    8 
 drivers/net/wireless/b43legacy/xmit.c            |    2 
 drivers/net/wireless/iwlwifi/iwl-5000-hw.h       |    7 
 drivers/net/wireless/iwlwifi/iwl-5000.c          |   63 ---
 drivers/net/wireless/iwlwifi/iwl-agn.c           |   57 ++-
 drivers/net/wireless/iwlwifi/iwl-calib.c         |   60 +++
 drivers/net/wireless/iwlwifi/iwl-core.c          |   27 -
 drivers/net/wireless/iwlwifi/iwl-core.h          |    8 
 drivers/net/wireless/iwlwifi/iwl-dev.h           |   15 
 drivers/net/wireless/iwlwifi/iwl-power.c         |   39 ++
 drivers/net/wireless/iwlwifi/iwl-power.h         |    4 
 drivers/net/wireless/iwlwifi/iwl-scan.c          |    8 
 drivers/net/wireless/iwlwifi/iwl3945-base.c      |    7 
 drivers/net/wireless/libertas/main.c             |   20 +
 drivers/net/wireless/libertas/scan.c             |    4 
 drivers/net/wireless/zd1211rw/zd_usb.c           |    2 
 drivers/pci/hotplug/cpqphp_core.c                |    2 
 drivers/pci/probe.c                              |    2 
 drivers/rtc/rtc-cmos.c                           |   33 +-
 drivers/scsi/device_handler/scsi_dh_rdac.c       |    2 
 drivers/scsi/sd.c                                |   10 
 drivers/usb/atm/speedtch.c                       |   12 
 drivers/usb/class/cdc-acm.c                      |    3 
 drivers/usb/class/cdc-wdm.c                      |    2 
 drivers/usb/core/driver.c                        |    3 
 drivers/usb/core/hcd.c                           |   39 ++
 drivers/usb/core/hcd.h                           |    7 
 drivers/usb/core/hub.c                           |    3 
 drivers/usb/core/urb.c                           |   15 
 drivers/usb/gadget/s3c2410_udc.c                 |    2 
 drivers/usb/gadget/u_ether.c                     |    7 
 drivers/usb/host/ehci-hcd.c                      |   15 
 drivers/usb/host/ohci-hcd.c                      |    3 
 drivers/usb/host/ohci-hub.c                      |   87 +++--
 drivers/usb/host/uhci-hcd.c                      |    3 
 drivers/usb/musb/Kconfig                         |    4 
 drivers/usb/musb/cppi_dma.h                      |    4 
 drivers/usb/musb/davinci.c                       |   20 -
 drivers/usb/musb/musb_core.c                     |    8 
 drivers/usb/musb/musb_host.c                     |    6 
 drivers/usb/storage/unusual_devs.h               |    9 
 drivers/video/console/fbcon.c                    |    4 
 fs/cifs/cifsglob.h                               |    1 
 fs/cifs/cifssmb.c                                |    4 
 fs/cifs/readdir.c                                |  129 ++++---
 fs/ext2/dir.c                                    |   60 ++-
 fs/ext3/dir.c                                    |   10 
 fs/ext3/super.c                                  |   11 
 fs/ext4/dir.c                                    |   11 
 fs/hfs/catalog.c                                 |    4 
 fs/hfsplus/bitmap.c                              |   12 
 fs/hfsplus/catalog.c                             |    5 
 fs/jffs2/background.c                            |   10 
 fs/jffs2/compr_lzo.c                             |   15 
 fs/proc/task_mmu.c                               |   34 +-
 fs/xfs/linux-2.6/xfs_buf.c                       |    3 
 fs/xfs/linux-2.6/xfs_buf.h                       |    8 
 fs/xfs/linux-2.6/xfs_super.c                     |    2 
 fs/xfs/xfs_log.c                                 |    7 
 include/asm-generic/memory_model.h               |    2 
 include/linux/mtd/cfi.h                          |   22 +
 include/linux/sched.h                            |    4 
 include/math-emu/op-common.h                     |   17 -
 include/net/af_unix.h                            |    1 
 include/net/scm.h                                |    5 
 kernel/cgroup.c                                  |    1 
 kernel/module.c                                  |    2 
 kernel/sched_clock.c                             |    6 
 kernel/sched_features.h                          |    2 
 kernel/sched_rt.c                                |    8 
 kernel/sched_stats.h                             |    2 
 kernel/trace/Kconfig                             |    3 
 mm/hugetlb.c                                     |   49 ++-
 mm/internal.h                                    |   29 +
 mm/page_alloc.c                                  |   28 +
 mm/rmap.c                                        |   42 +-
 net/core/scm.c                                   |   24 +
 net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c   |    2 
 net/ipv4/netfilter/nf_nat_snmp_basic.c           |    1 
 net/ipv4/tcp_output.c                            |   33 +-
 net/ipv6/tcp_ipv6.c                              |    2 
 net/mac80211/debugfs_netdev.c                    |   14 
 net/mac80211/wext.c                              |    2 
 net/netfilter/xt_iprange.c                       |    8 
 net/rfkill/rfkill.c                              |    5 
 net/sched/sch_generic.c                          |    2 
 net/unix/af_unix.c                               |   31 +
 net/unix/garbage.c                               |   49 ++-
 scripts/package/mkspec                           |    3 
 security/commoncap.c                             |    6 
 security/keys/internal.h                         |    1 
 security/keys/process_keys.c                     |    2 
 security/keys/request_key.c                      |    4 
 sound/core/control.c                             |    4 
 sound/pci/hda/hda_intel.c                        |   29 +
 sound/pci/hda/patch_sigmatel.c                   |   15 
 178 files changed, 1885 insertions(+), 985 deletions(-)

