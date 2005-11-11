From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.14.2 released
Date: Fri, 11 Nov 2005 06:42:34 GMT
Message-ID: <200511110642.jAB6gYvY023667@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.14.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.14.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.14.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 6281             20572
Full source                       39184746         224092160

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                  |    2 
 arch/s390/appldata/appldata_base.c        |    7 +
 drivers/block/cfq-iosched.c               |    4 
 drivers/net/wireless/airo.c               |    2 
 drivers/net/wireless/airo.h               |    9 +
 drivers/net/wireless/airo_cs.c            |    6 -
 drivers/net/wireless/prism54/islpci_eth.c |    7 -
 drivers/usb/core/sysfs.c                  |   33 ++-----
 drivers/usb/core/usb.c                    |   63 +++++--------
 fs/exec.c                                 |   10 +-
 fs/xfs/Kconfig                            |    2 
 include/asm-alpha/barrier.h               |    2 
 include/linux/proc_fs.h                   |    1 
 include/linux/sysctl.h                    |    3 
 kernel/ptrace.c                           |    2 
 kernel/signal.c                           |    2 
 kernel/sysctl.c                           |  136 +++++++++++++++++++++++-------
 net/core/datagram.c                       |    4 
 net/ipv4/ipvs/ip_vs_core.c                |    7 -
 net/ipv4/tcp_bic.c                        |    2 
 20 files changed, 189 insertions(+), 115 deletions(-)

