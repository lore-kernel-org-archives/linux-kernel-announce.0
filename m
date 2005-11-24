From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.14.3 released
Date: Thu, 24 Nov 2005 23:10:03 GMT
Message-ID: <200511242310.jAONA3Of026578@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.14.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.14.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.14.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                13172             46260
Full source                       39186327         224102400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                     |    2 
 arch/i386/kernel/cpu/mtrr/main.c             |    8 +
 arch/ppc64/Kconfig                           |   11 --
 arch/s390/appldata/appldata_base.c           |    7 -
 arch/x86_64/kernel/setup.c                   |    5 
 drivers/block/cfq-iosched.c                  |    4 
 drivers/block/pktcdvd.c                      |    2 
 drivers/char/rtc.c                           |   65 +++++++-----
 drivers/hwmon/it87.c                         |    7 +
 drivers/hwmon/lm78.c                         |    2 
 drivers/hwmon/w83627hf.c                     |    8 +
 drivers/isdn/hardware/eicon/os_4bri.c        |    3 
 drivers/net/wan/hdlc_cisco.c                 |    6 +
 drivers/net/wan/hdlc_fr.c                    |    4 
 drivers/net/wan/hdlc_generic.c               |    6 +
 drivers/net/wireless/airo.c                  |    2 
 drivers/net/wireless/airo.h                  |    9 +
 drivers/net/wireless/airo_cs.c               |    6 -
 drivers/net/wireless/prism54/islpci_eth.c    |    7 -
 drivers/usb/core/sysfs.c                     |   33 ++----
 drivers/usb/core/usb.c                       |   63 ++++--------
 fs/exec.c                                    |   10 +
 fs/locks.c                                   |    2 
 fs/xfs/Kconfig                               |    2 
 include/asm-alpha/barrier.h                  |    2 
 include/linux/proc_fs.h                      |    1 
 include/linux/sysctl.h                       |    3 
 include/net/ipv6.h                           |    2 
 kernel/ptrace.c                              |    2 
 kernel/signal.c                              |    4 
 kernel/sysctl.c                              |  136 +++++++++++++++++++++------
 net/core/datagram.c                          |    4 
 net/ipv4/ipvs/ip_vs_core.c                   |    7 -
 net/ipv4/netfilter/ip_conntrack_ftp.c        |    4 
 net/ipv4/netfilter/ip_conntrack_irc.c        |    4 
 net/ipv4/netfilter/ip_conntrack_netlink.c    |    9 +
 net/ipv4/netfilter/ip_conntrack_proto_icmp.c |    3 
 net/ipv4/netfilter/ip_conntrack_proto_tcp.c  |    6 +
 net/ipv4/netfilter/ip_conntrack_tftp.c       |    4 
 net/ipv4/netfilter/ip_nat_core.c             |    6 -
 net/ipv4/netfilter/ip_nat_helper_pptp.c      |   28 +++++
 net/ipv4/netfilter/ip_nat_proto_gre.c        |    4 
 net/ipv4/netfilter/ip_nat_proto_unknown.c    |    2 
 net/ipv4/tcp_bic.c                           |    2 
 net/ipv6/datagram.c                          |    2 
 net/ipv6/exthdrs.c                           |   22 ++++
 net/ipv6/ip6_flowlabel.c                     |   12 --
 net/ipv6/raw.c                               |    4 
 net/ipv6/udp.c                               |    4 
 net/netfilter/nf_queue.c                     |    2 
 50 files changed, 365 insertions(+), 188 deletions(-)

