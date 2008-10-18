From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.2 released
Date: Sat, 18 Oct 2008 18:29:24 GMT
Message-ID: <200810181829.m9IITOZ1022937@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 6542             20412
Full source                       50360143         293826560

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                              |    2 
 arch/x86/kernel/alternative.c         |    2 
 arch/x86/kernel/early-quirks.c        |   48 ++++++++++++
 arch/x86/kernel/io_apic_32.c          |    3 
 arch/x86/mm/ioremap.c                 |    2 
 drivers/char/tty_io.c                 |    2 
 drivers/net/atl1e/atl1e_main.c        |    2 
 drivers/net/sky2.c                    |   19 +----
 drivers/net/wireless/b43legacy/xmit.c |    2 
 drivers/net/wireless/libertas/main.c  |   20 +++++
 fs/cifs/cifsglob.h                    |    1 
 fs/cifs/cifssmb.c                     |    4 +
 fs/cifs/readdir.c                     |  128 +++++++++++++++++-----------------
 fs/xfs/linux-2.6/xfs_buf.c            |    3 
 fs/xfs/linux-2.6/xfs_buf.h            |    8 ++
 fs/xfs/xfs_log.c                      |    7 +
 kernel/sched_rt.c                     |    8 +-
 kernel/trace/Kconfig                  |    3 
 net/mac80211/debugfs_netdev.c         |   14 +++
 net/rfkill/rfkill.c                   |    5 -
 20 files changed, 184 insertions(+), 99 deletions(-)

