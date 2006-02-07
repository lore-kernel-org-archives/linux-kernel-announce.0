From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.15.3 released
Date: Tue, 7 Feb 2006 00:03:16 GMT
Message-ID: <200602070003.k1703GGu010647@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.15.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.15.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.15.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                10726             33846
Full source                       39849988         228157440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                |    2 
 arch/ppc/boot/simple/Makefile           |    2 
 arch/sparc64/Kconfig                    |    2 
 arch/sparc64/kernel/entry.S             |    7 --
 arch/sparc64/kernel/systbls.S           |    2 
 arch/sparc64/kernel/time.c              |   22 ++++----
 arch/x86_64/kernel/pci-gart.c           |    1 
 block/ll_rw_blk.c                       |   24 ---------
 drivers/char/moxa.c                     |    2 
 drivers/ide/ide-cd.c                    |   10 ----
 drivers/message/i2o/i2o_scsi.c          |    2 
 drivers/net/hamradio/mkiss.c            |    1 
 drivers/net/skge.c                      |   80 +++++++++++++++++++-------------
 drivers/usb/input/pid.c                 |    2 
 drivers/video/aty/atyfb_base.c          |    2 
 drivers/video/console/vgacon.c          |    8 ++-
 fs/reiserfs/super.c                     |    2 
 fs/ufs/super.c                          |    4 +
 fs/ufs/util.h                           |    4 -
 include/linux/blkdev.h                  |    1 
 include/linux/skbuff.h                  |    2 
 ipc/mqueue.c                            |   59 +++++++++++++----------
 kernel/workqueue.c                      |   16 ++++--
 net/bridge/br_stp_if.c                  |    2 
 net/bridge/netfilter/ebt_ip.c           |    3 +
 net/core/net-sysfs.c                    |   28 +++++++----
 net/ipv4/icmp.c                         |    2 
 net/ipv4/netfilter/ip_nat_helper_pptp.c |   59 +++++++++++------------
 net/netlink/af_netlink.c                |    4 -
 sound/usb/usbaudio.c                    |   26 ++++++++--
 30 files changed, 205 insertions(+), 176 deletions(-)

