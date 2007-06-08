From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.21.4 released
Date: Fri, 8 Jun 2007 05:14:44 GMT
Message-ID: <200706080514.l585Eiqa019724@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.21.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.21.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.21.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                25115             91070
Full source                       44021491         254412800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                              |    2 
 arch/arm/kernel/traps.c                               |    5 
 arch/arm/mach-iop13xx/pci.c                           |    8 
 arch/arm/plat-iop/time.c                              |    8 
 arch/i386/kernel/cpu/cpufreq/powernow-k7.c            |   36 ++-
 arch/i386/kernel/cpu/cpufreq/powernow-k8.c            |    2 
 arch/i386/kernel/cpu/cpufreq/powernow-k8.h            |    4 
 arch/sparc64/kernel/of_device.c                       |    7 
 arch/sparc64/kernel/prom.c                            |   19 +
 arch/sparc64/kernel/smp.c                             |    3 
 arch/x86_64/kernel/vsyscall.c                         |    2 
 crypto/api.c                                          |    4 
 drivers/acpi/tables/tbfadt.c                          |   14 +
 drivers/ata/libata-sff.c                              |   35 ++-
 drivers/ata/sata_via.c                                |    8 
 drivers/base/core.c                                   |    7 
 drivers/char/ipmi/ipmi_si_intf.c                      |    4 
 drivers/char/random.c                                 |   67 +++---
 drivers/crypto/geode-aes.c                            |   12 -
 drivers/crypto/geode-aes.h                            |    3 
 drivers/md/raid1.c                                    |   33 +-
 drivers/message/fusion/mptspi.c                       |    8 
 drivers/net/Kconfig                                   |    5 
 drivers/net/bnx2.c                                    |   15 -
 drivers/net/sis900.c                                  |    9 
 drivers/net/skge.c                                    |   22 +
 drivers/net/sky2.c                                    |   15 -
 drivers/net/smc911x.c                                 |    2 
 drivers/net/tg3.c                                     |   48 ++--
 drivers/pci/quirks.c                                  |   16 -
 drivers/serial/sunhv.c                                |    4 
 drivers/usb/atm/cxacru.c                              |   40 +++
 drivers/usb/input/hiddev.c                            |   14 +
 fs/fat/dir.c                                          |  199 +++++++++---------
 fs/jfs/jfs_logmgr.c                                   |    3 
 fs/nfsd/export.c                                      |   14 -
 fs/reiserfs/xattr.c                                   |    2 
 fs/udf/namei.c                                        |    2 
 include/asm-arm/arch-iop13xx/iop13xx.h                |   22 +
 include/asm-sparc64/openprom.h                        |    2 
 include/linux/clocksource.h                           |    3 
 include/linux/netdevice.h                             |    8 
 include/linux/netfilter/nf_conntrack_proto_gre.h      |   18 -
 include/linux/netfilter_ipv4/ip_conntrack_proto_gre.h |   19 -
 kernel/cpuset.c                                       |    7 
 kernel/time/clocksource.c                             |   45 ++++
 kernel/time/tick-common.c                             |    8 
 kernel/time/tick-internal.h                           |    1 
 kernel/time/tick-sched.c                              |   42 +++
 kernel/timer.c                                        |    2 
 lib/zlib_inflate/inflate.c                            |    8 
 mm/hugetlb.c                                          |    2 
 mm/oom_kill.c                                         |   10 
 mm/slob.c                                             |   15 -
 net/ipv4/fib_frontend.c                               |    4 
 net/ipv4/netfilter/ip_conntrack_core.c                |   10 
 net/ipv4/netfilter/ip_conntrack_proto_sctp.c          |    3 
 net/ipv4/netfilter/ip_nat_proto_gre.c                 |   20 -
 net/ipv4/netfilter/nf_nat_proto_gre.c                 |   20 -
 net/ipv4/tcp.c                                        |    3 
 net/ipv6/addrconf.c                                   |   10 
 net/ipv6/exthdrs.c                                    |   17 +
 net/ipv6/ip6_input.c                                  |    2 
 net/ipv6/ip6_output.c                                 |   13 -
 net/ipv6/proc.c                                       |    1 
 net/ipv6/xfrm6_tunnel.c                               |    2 
 net/netfilter/nf_conntrack_core.c                     |    8 
 net/netfilter/nf_conntrack_proto_sctp.c               |    3 
 net/sched/sch_prio.c                                  |    2 
 net/sctp/socket.c                                     |  111 ++++++----
 net/sunrpc/auth_gss/svcauth_gss.c                     |    8 
 net/xfrm/xfrm_policy.c                                |    4 
 scripts/basic/fixdep.c                                |    2 
 sound/pci/hda/patch_sigmatel.c                        |    1 
 74 files changed, 719 insertions(+), 438 deletions(-)

