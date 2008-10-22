From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.3 released
Date: Wed, 22 Oct 2008 22:09:25 GMT
Message-ID: <200810222209.m9MM9PC7001523@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                14096             46933
Full source                       50362556         293826560

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/video4linux/CARDLIST.au0828 |    2 
 Makefile                                  |    4 
 arch/x86/kernel/alternative.c             |    2 
 arch/x86/kernel/early-quirks.c            |   48 +++++++++++
 arch/x86/kernel/io_apic_32.c              |    3 
 arch/x86/mm/ioremap.c                     |    2 
 drivers/base/core.c                       |   25 ++++-
 drivers/char/tty_io.c                     |    2 
 drivers/gpu/drm/i915/i915_dma.c           |    2 
 drivers/md/md.c                           |    6 -
 drivers/media/dvb/siano/sms-cards.c       |    4 
 drivers/media/video/au0828/au0828-cards.c |    3 
 drivers/media/video/tvaudio.c             |    2 
 drivers/net/atl1e/atl1e_main.c            |    2 
 drivers/net/sky2.c                        |   19 +---
 drivers/net/wireless/ath9k/core.h         |    2 
 drivers/net/wireless/ath9k/main.c         |    8 +
 drivers/net/wireless/b43legacy/xmit.c     |    2 
 drivers/net/wireless/libertas/main.c      |   20 ++++
 drivers/usb/core/hcd.c                    |    4 
 drivers/usb/core/hcd.h                    |    6 +
 drivers/usb/gadget/s3c2410_udc.c          |    2 
 drivers/usb/gadget/u_ether.c              |    7 +
 drivers/usb/host/ehci-hcd.c               |   15 +++
 drivers/usb/host/ohci-hcd.c               |    3 
 drivers/usb/host/ohci-hub.c               |   87 ++++++++++++--------
 drivers/usb/host/uhci-hcd.c               |    3 
 drivers/usb/musb/Kconfig                  |    4 
 drivers/usb/musb/cppi_dma.h               |    4 
 drivers/usb/musb/davinci.c                |   20 ----
 drivers/usb/musb/musb_core.c              |    8 -
 drivers/usb/musb/musb_host.c              |    6 -
 drivers/video/console/fbcon.c             |    4 
 fs/cifs/cifsglob.h                        |    1 
 fs/cifs/cifssmb.c                         |    4 
 fs/cifs/readdir.c                         |  128 +++++++++++++++---------------
 fs/xfs/linux-2.6/xfs_buf.c                |    3 
 fs/xfs/linux-2.6/xfs_buf.h                |    8 +
 fs/xfs/linux-2.6/xfs_super.c              |    2 
 fs/xfs/xfs_log.c                          |    7 -
 kernel/module.c                           |    2 
 kernel/sched_rt.c                         |    8 -
 kernel/trace/Kconfig                      |    3 
 net/mac80211/debugfs_netdev.c             |   14 ++-
 net/mac80211/wext.c                       |    2 
 net/rfkill/rfkill.c                       |    5 -
 46 files changed, 331 insertions(+), 187 deletions(-)

