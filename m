From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.4 released
Date: Sun, 26 Oct 2008 04:38:44 GMT
Message-ID: <200810260438.m9Q4ciOR008926@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                21492             74096
Full source                       50359534         293836800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/video4linux/CARDLIST.au0828      |    2 
 Makefile                                       |    4 
 arch/x86/kernel/acpi/sleep.c                   |    3 
 arch/x86/kernel/alternative.c                  |    2 
 arch/x86/kernel/amd_iommu_init.c               |    2 
 arch/x86/kernel/early-quirks.c                 |   48 +++++++++
 arch/x86/kernel/io_apic_32.c                   |    3 
 arch/x86/mm/ioremap.c                          |    2 
 drivers/acpi/hardware/hwsleep.c                |   37 ++-----
 drivers/acpi/sleep/main.c                      |   10 +
 drivers/base/core.c                            |   25 +++-
 drivers/char/hvc_console.c                     |   10 -
 drivers/char/tty_io.c                          |    2 
 drivers/edac/cell_edac.c                       |    2 
 drivers/gpio/gpiolib.c                         |    2 
 drivers/gpu/drm/i915/i915_dma.c                |    2 
 drivers/md/dm-kcopyd.c                         |   13 ++
 drivers/md/dm-snap.c                           |   10 -
 drivers/md/md.c                                |    6 -
 drivers/media/dvb/siano/sms-cards.c            |    4 
 drivers/media/video/au0828/au0828-cards.c      |    3 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c      |    6 -
 drivers/media/video/tvaudio.c                  |    2 
 drivers/net/atl1e/atl1e_main.c                 |    2 
 drivers/net/sky2.c                             |   19 ---
 drivers/net/wireless/ath9k/core.h              |    2 
 drivers/net/wireless/ath9k/main.c              |    8 +
 drivers/net/wireless/b43legacy/xmit.c          |    2 
 drivers/net/wireless/libertas/main.c           |   20 +++
 drivers/pci/hotplug/cpqphp_core.c              |    2 
 drivers/scsi/device_handler/scsi_dh_rdac.c     |    2 
 drivers/usb/atm/speedtch.c                     |   12 ++
 drivers/usb/class/cdc-acm.c                    |    3 
 drivers/usb/class/cdc-wdm.c                    |    2 
 drivers/usb/core/driver.c                      |    3 
 drivers/usb/core/hcd.c                         |    4 
 drivers/usb/core/hcd.h                         |    6 +
 drivers/usb/core/hub.c                         |    2 
 drivers/usb/gadget/s3c2410_udc.c               |    2 
 drivers/usb/gadget/u_ether.c                   |    7 +
 drivers/usb/host/ehci-hcd.c                    |   15 ++
 drivers/usb/host/ohci-hcd.c                    |    3 
 drivers/usb/host/ohci-hub.c                    |   87 ++++++++++------
 drivers/usb/host/uhci-hcd.c                    |    3 
 drivers/usb/musb/Kconfig                       |    4 
 drivers/usb/musb/cppi_dma.h                    |    4 
 drivers/usb/musb/davinci.c                     |   20 ---
 drivers/usb/musb/musb_core.c                   |    8 -
 drivers/usb/musb/musb_host.c                   |    6 -
 drivers/video/console/fbcon.c                  |    4 
 fs/cifs/cifsglob.h                             |    1 
 fs/cifs/cifssmb.c                              |    4 
 fs/cifs/readdir.c                              |  129 ++++++++++++-------------
 fs/ext2/dir.c                                  |   60 ++++++-----
 fs/ext3/dir.c                                  |   10 +
 fs/ext4/dir.c                                  |   11 +-
 fs/proc/task_mmu.c                             |   34 ++++--
 fs/xfs/linux-2.6/xfs_buf.c                     |    3 
 fs/xfs/linux-2.6/xfs_buf.h                     |    8 +
 fs/xfs/linux-2.6/xfs_super.c                   |    2 
 fs/xfs/xfs_log.c                               |    7 -
 kernel/module.c                                |    2 
 kernel/sched_rt.c                              |    8 -
 kernel/sched_stats.h                           |    2 
 kernel/trace/Kconfig                           |    3 
 mm/rmap.c                                      |   42 ++++++--
 net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c |    2 
 net/ipv4/netfilter/nf_nat_snmp_basic.c         |    1 
 net/mac80211/debugfs_netdev.c                  |   14 ++
 net/mac80211/wext.c                            |    2 
 net/netfilter/xt_iprange.c                     |    8 -
 net/rfkill/rfkill.c                            |    5 
 72 files changed, 513 insertions(+), 297 deletions(-)

