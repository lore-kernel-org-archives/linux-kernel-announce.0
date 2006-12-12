From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.19.1 released
Date: Tue, 12 Dec 2006 09:06:52 GMT
Message-ID: <200612120906.kBC96qlE022141@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.19.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.19.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.19.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                12674             47972
Full source                       42731688         246476800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                      |    2 
 arch/i386/kernel/acpi/boot.c                  |   10 -
 arch/i386/kernel/nmi.c                        |    8 -
 arch/m32r/kernel/entry.S                      |   65 +++++------
 arch/x86_64/kernel/nmi.c                      |    9 -
 drivers/block/Kconfig                         |    1 
 drivers/char/drm/drm_sman.c                   |    1 
 drivers/infiniband/core/ucm.c                 |    2 
 drivers/net/forcedeth.c                       |    3 
 drivers/net/sunhme.c                          |    5 
 drivers/net/tokenring/ibmtr.c                 |    2 
 drivers/usb/misc/phidgetservo.c               |    1 
 fs/autofs/inode.c                             |    7 -
 fs/autofs4/inode.c                            |    7 -
 fs/compat.c                                   |    2 
 fs/exec.c                                     |    3 
 include/asm-m32r/ptrace.h                     |   28 -----
 include/asm-m32r/sigcontext.h                 |   13 --
 include/linux/bottom_half.h                   |    5 
 include/linux/if_addr.h                       |    6 +
 include/linux/if_link.h                       |    6 +
 include/linux/interrupt.h                     |    7 -
 include/linux/rtnetlink.h                     |    2 
 include/linux/spinlock.h                      |    1 
 kernel/power/disk.c                           |    2 
 kernel/softirq.c                              |    2 
 net/bridge/br_netfilter.c                     |   36 +++++-
 net/bridge/netfilter/ebtables.c               |   54 +++++----
 net/ieee80211/softmac/ieee80211softmac_scan.c |    2 
 net/ieee80211/softmac/ieee80211softmac_wx.c   |    3 
 net/ipv4/netfilter/arp_tables.c               |   48 ++++----
 net/ipv4/netfilter/ip_tables.c                |  144 +++++++++++++-------------
 net/ipv4/route.c                              |    2 
 net/ipv4/xfrm4_policy.c                       |    2 
 net/ipv6/ndisc.c                              |   16 ++
 net/ipv6/netfilter/ip6_tables.c               |   59 ++++------
 net/irda/irttp.c                              |    4 
 net/sched/act_gact.c                          |    4 
 net/sched/act_police.c                        |   26 +++-
 39 files changed, 323 insertions(+), 277 deletions(-)

