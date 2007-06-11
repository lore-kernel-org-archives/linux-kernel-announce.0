From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.21.5 released
Date: Mon, 11 Jun 2007 20:10:58 GMT
Message-ID: <200706112010.l5BKAwn3010354@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.21.5 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.21.5.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.21.5.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                44220            163121
Full source                       44025153         254423040

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/hrtimer/timer_stats.txt                 |    7 
 Makefile                                              |    2 
 arch/arm/kernel/traps.c                               |    5 
 arch/arm/mach-iop13xx/pci.c                           |    8 
 arch/arm/plat-iop/time.c                              |    8 
 arch/i386/kernel/cpu/cpufreq/powernow-k7.c            |   36 ++-
 arch/i386/kernel/cpu/cpufreq/powernow-k8.c            |    2 
 arch/i386/kernel/cpu/cpufreq/powernow-k8.h            |    4 
 arch/i386/kernel/hpet.c                               |   24 ++
 arch/i386/kernel/reboot.c                             |    8 
 arch/i386/oprofile/nmi_int.c                          |   17 +
 arch/sparc64/kernel/head.S                            |   29 ++
 arch/sparc64/kernel/itlb_miss.S                       |    4 
 arch/sparc64/kernel/of_device.c                       |    7 
 arch/sparc64/kernel/pci_sun4v.c                       |   36 ---
 arch/sparc64/kernel/prom.c                            |   19 +
 arch/sparc64/kernel/smp.c                             |    3 
 arch/sparc64/mm/init.c                                |    7 
 arch/um/os-Linux/start_up.c                           |   24 +-
 arch/x86_64/kernel/vsyscall.c                         |    2 
 arch/x86_64/mm/init.c                                 |    6 
 crypto/api.c                                          |    4 
 drivers/acpi/numa.c                                   |    8 
 drivers/acpi/tables/tbfadt.c                          |   14 +
 drivers/ata/ahci.c                                    |   10 
 drivers/ata/libata-sff.c                              |   35 ++-
 drivers/ata/sata_via.c                                |    8 
 drivers/base/core.c                                   |    7 
 drivers/block/cciss.c                                 |   45 ++--
 drivers/char/cyclades.c                               |    1 
 drivers/char/ipmi/ipmi_si_intf.c                      |    4 
 drivers/char/n_tty.c                                  |    1 
 drivers/char/random.c                                 |   67 +++---
 drivers/char/tty_io.c                                 |    3 
 drivers/crypto/geode-aes.c                            |   12 -
 drivers/crypto/geode-aes.h                            |    3 
 drivers/ide/pci/hpt366.c                              |    7 
 drivers/ieee1394/eth1394.c                            |    7 
 drivers/input/serio/i8042.c                           |   35 ++-
 drivers/md/bitmap.c                                   |   17 +
 drivers/md/raid0.c                                    |    3 
 drivers/md/raid1.c                                    |   33 +-
 drivers/media/dvb/ttpci/budget-ci.c                   |    2 
 drivers/message/fusion/mptspi.c                       |    8 
 drivers/net/Kconfig                                   |    5 
 drivers/net/bnx2.c                                    |   15 -
 drivers/net/e1000/e1000_main.c                        |   11 
 drivers/net/sis900.c                                  |    9 
 drivers/net/skge.c                                    |   22 +
 drivers/net/sky2.c                                    |   15 -
 drivers/net/smc911x.c                                 |    2 
 drivers/net/tg3.c                                     |   49 ++--
 drivers/net/wireless/zd1211rw/zd_chip.c               |    5 
 drivers/net/wireless/zd1211rw/zd_rf.c                 |    2 
 drivers/net/wireless/zd1211rw/zd_rf.h                 |    2 
 drivers/net/wireless/zd1211rw/zd_rf_al2230.c          |   89 ++++++--
 drivers/pci/quirks.c                                  |   17 -
 drivers/scsi/aacraid/aacraid.h                        |    1 
 drivers/scsi/aacraid/rx.c                             |    2 
 drivers/scsi/aacraid/sa.c                             |    3 
 drivers/serial/suncore.c                              |    6 
 drivers/serial/sunhv.c                                |    4 
 drivers/usb/atm/cxacru.c                              |   40 +++
 drivers/usb/core/message.c                            |    9 
 drivers/usb/input/hiddev.c                            |   14 +
 drivers/video/neofb.c                                 |   30 +-
 fs/compat_ioctl.c                                     |   33 ++
 fs/fat/dir.c                                          |  199 +++++++++---------
 fs/fuse/dir.c                                         |    2 
 fs/jfs/jfs_logmgr.c                                   |    3 
 fs/nfsd/export.c                                      |   14 -
 fs/ntfs/inode.c                                       |    2 
 fs/reiserfs/xattr.c                                   |    2 
 fs/udf/namei.c                                        |    2 
 include/acpi/acpi_numa.h                              |    7 
 include/asm-arm/arch-iop13xx/iop13xx.h                |   22 +
 include/asm-sparc64/openprom.h                        |    2 
 include/asm-sparc64/tsb.h                             |    2 
 include/linux/bootmem.h                               |    1 
 include/linux/clocksource.h                           |    3 
 include/linux/mii.h                                   |    4 
 include/linux/netdevice.h                             |    8 
 include/linux/netfilter/nf_conntrack_proto_gre.h      |   18 -
 include/linux/netfilter_ipv4/ip_conntrack_proto_gre.h |   19 -
 include/linux/pci_ids.h                               |    5 
 include/linux/raid/bitmap.h                           |    1 
 include/linux/workqueue.h                             |    2 
 include/net/af_unix.h                                 |    8 
 kernel/cpuset.c                                       |    7 
 kernel/sched.c                                        |    4 
 kernel/time/clocksource.c                             |   45 ++++
 kernel/time/tick-broadcast.c                          |   17 +
 kernel/time/tick-common.c                             |    8 
 kernel/time/tick-internal.h                           |    1 
 kernel/time/tick-sched.c                              |   54 ++++
 kernel/time/timer_stats.c                             |   44 ++-
 kernel/timer.c                                        |    2 
 lib/Kconfig.debug                                     |    5 
 lib/zlib_inflate/inflate.c                            |    8 
 mm/hugetlb.c                                          |    2 
 mm/oom_kill.c                                         |   10 
 mm/slob.c                                             |   15 -
 mm/sparse.c                                           |   11 
 net/bluetooth/hci_sock.c                              |    6 
 net/core/dev.c                                        |   10 
 net/core/net-sysfs.c                                  |    8 
 net/core/sock.c                                       |   14 +
 net/core/utils.c                                      |    6 
 net/ipv4/Kconfig                                      |    6 
 net/ipv4/fib_frontend.c                               |    4 
 net/ipv4/icmp.c                                       |   12 -
 net/ipv4/inet_connection_sock.c                       |    4 
 net/ipv4/netfilter/ip_conntrack_core.c                |   10 
 net/ipv4/netfilter/ip_conntrack_proto_sctp.c          |    3 
 net/ipv4/netfilter/ip_nat_proto_gre.c                 |   20 -
 net/ipv4/netfilter/nf_nat_proto_gre.c                 |   20 -
 net/ipv4/tcp.c                                        |    6 
 net/ipv4/xfrm4_input.c                                |    6 
 net/ipv4/xfrm4_mode_tunnel.c                          |    2 
 net/ipv6/addrconf.c                                   |   10 
 net/ipv6/exthdrs.c                                    |   17 +
 net/ipv6/ip6_fib.c                                    |    8 
 net/ipv6/ip6_input.c                                  |    2 
 net/ipv6/ip6_output.c                                 |   13 -
 net/ipv6/proc.c                                       |    1 
 net/ipv6/xfrm6_input.c                                |    6 
 net/ipv6/xfrm6_mode_tunnel.c                          |    1 
 net/ipv6/xfrm6_tunnel.c                               |    2 
 net/netfilter/nf_conntrack_core.c                     |    8 
 net/netfilter/nf_conntrack_proto_sctp.c               |    3 
 net/sched/sch_prio.c                                  |    2 
 net/sctp/socket.c                                     |  111 ++++++----
 net/sunrpc/auth_gss/svcauth_gss.c                     |    8 
 net/unix/af_unix.c                                    |  127 +++++++----
 net/xfrm/xfrm_policy.c                                |    4 
 scripts/basic/fixdep.c                                |    2 
 sound/pci/hda/hda_intel.c                             |   25 +-
 sound/pci/hda/patch_sigmatel.c                        |    1 
 sound/soc/codecs/wm8750.c                             |    2 
 sound/usb/usbquirks.h                                 |   23 ++
 140 files changed, 1326 insertions(+), 723 deletions(-)

