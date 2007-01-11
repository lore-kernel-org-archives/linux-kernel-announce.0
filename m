From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.19.2 released
Date: Thu, 11 Jan 2007 04:59:12 GMT
Message-ID: <200701110459.l0B4xC87019128@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.19.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.19.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.19.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                32340            123915
Full source                       42729366         246487040

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                       |    2 
 arch/arm/kernel/calls.S                        |   13 +
 arch/i386/kernel/acpi/boot.c                   |   10 -
 arch/i386/kernel/apm.c                         |    6 
 arch/i386/kernel/nmi.c                         |    8 -
 arch/i386/kernel/process.c                     |    7 
 arch/i386/kernel/smpboot.c                     |    2 
 arch/ia64/kernel/process.c                     |   10 +
 arch/m32r/kernel/entry.S                       |   65 +++-----
 arch/sparc/kernel/ioport.c                     |    3 
 arch/sparc64/kernel/isa.c                      |   20 +-
 arch/sparc64/mm/init.c                         |  147 ++++++++++++++++----
 arch/x86_64/kernel/nmi.c                       |    9 -
 arch/x86_64/kernel/process.c                   |    6 
 arch/x86_64/kernel/setup.c                     |    5 
 crypto/sha512.c                                |    2 
 drivers/acpi/processor_idle.c                  |   12 +
 drivers/ata/libata-core.c                      |   30 ++--
 drivers/block/Kconfig                          |    1 
 drivers/block/aoe/aoecmd.c                     |   13 -
 drivers/block/cciss.c                          |    2 
 drivers/char/drm/drm_sman.c                    |    1 
 drivers/char/mem.c                             |   12 +
 drivers/connector/cn_proc.c                    |   11 -
 drivers/i2c/chips/ds1337.c                     |    8 -
 drivers/ieee1394/ohci1394.c                    |   21 ++
 drivers/infiniband/core/ucm.c                  |    2 
 drivers/infiniband/ulp/srp/ib_srp.c            |    2 
 drivers/infiniband/ulp/srp/ib_srp.h            |    2 
 drivers/md/Kconfig                             |    1 
 drivers/media/dvb/dvb-core/dvb_net.c           |    4 
 drivers/media/dvb/frontends/lgdt330x.c         |    6 
 drivers/media/video/cx88/cx88-cards.c          |    2 
 drivers/media/video/tuner-simple.c             |    2 
 drivers/media/video/tuner-types.c              |   14 -
 drivers/net/bonding/bond_main.c                |    2 
 drivers/net/forcedeth.c                        |    3 
 drivers/net/smc911x.c                          |    2 
 drivers/net/sunhme.c                           |    5 
 drivers/net/tokenring/ibmtr.c                  |    2 
 drivers/net/wireless/zd1211rw/zd_ieee80211.h   |    2 
 drivers/net/wireless/zd1211rw/zd_mac.c         |   93 +++++++++---
 drivers/net/wireless/zd1211rw/zd_mac.h         |   10 -
 drivers/net/wireless/zd1211rw/zd_usb.c         |    4 
 drivers/net/wireless/zd1211rw/zd_usb.h         |   14 -
 drivers/scsi/scsi_lib.c                        |    1 
 drivers/usb/misc/phidgetservo.c                |    1 
 drivers/usb/net/asix.c                         |    2 
 fs/autofs/inode.c                              |    7 
 fs/autofs4/inode.c                             |    7 
 fs/compat.c                                    |    2 
 fs/cramfs/inode.c                              |    2 
 fs/exec.c                                      |    3 
 fs/ext2/dir.c                                  |    8 +
 fs/ext3/dir.c                                  |    3 
 fs/ext3/namei.c                                |    9 +
 fs/ramfs/file-mmu.c                            |    4 
 fs/ramfs/file-nommu.c                          |    4 
 include/asm-arm/unistd.h                       |   13 +
 include/asm-m32r/ptrace.h                      |   28 ---
 include/asm-m32r/sigcontext.h                  |   13 -
 include/linux/bottom_half.h                    |    5 
 include/linux/if_addr.h                        |    6 
 include/linux/if_link.h                        |    6 
 include/linux/interrupt.h                      |    7 
 include/linux/libata.h                         |    9 -
 include/linux/net.h                            |    2 
 include/linux/rtnetlink.h                      |    2 
 include/linux/spinlock.h                       |    1 
 include/media/cx2341x.h                        |    2 
 kernel/power/disk.c                            |    2 
 kernel/sched.c                                 |    2 
 kernel/softirq.c                               |    2 
 mm/memory.c                                    |   32 ++--
 mm/mincore.c                                   |  183 ++++++++++---------------
 mm/oom_kill.c                                  |   12 -
 mm/page-writeback.c                            |   39 ++++-
 mm/rmap.c                                      |   23 +--
 mm/shmem.c                                     |    7 
 mm/vmscan.c                                    |    2 
 net/bluetooth/cmtp/capi.c                      |   39 ++++-
 net/bridge/br_netfilter.c                      |   36 +++-
 net/bridge/netfilter/ebtables.c                |   55 ++++---
 net/core/pktgen.c                              |   20 ++
 net/ieee80211/softmac/ieee80211softmac_assoc.c |   14 +
 net/ieee80211/softmac/ieee80211softmac_auth.c  |    2 
 net/ieee80211/softmac/ieee80211softmac_priv.h  |    2 
 net/ieee80211/softmac/ieee80211softmac_scan.c  |    2 
 net/ieee80211/softmac/ieee80211softmac_wx.c    |    5 
 net/ipv4/devinet.c                             |    5 
 net/ipv4/netfilter/arp_tables.c                |   48 +++---
 net/ipv4/netfilter/ip_tables.c                 |  144 ++++++++++---------
 net/ipv4/route.c                               |    2 
 net/ipv4/udp.c                                 |   13 +
 net/ipv4/xfrm4_policy.c                        |    2 
 net/ipv6/addrconf.c                            |    4 
 net/ipv6/ndisc.c                               |   16 +-
 net/ipv6/netfilter/ip6_tables.c                |   59 +++-----
 net/irda/irttp.c                               |    4 
 net/netlabel/netlabel_cipso_v4.c               |    9 +
 net/sched/act_gact.c                           |    4 
 net/sched/act_police.c                         |   26 +++
 scripts/Kbuild.include                         |   19 +-
 sound/sparc/cs4231.c                           |   26 +--
 104 files changed, 994 insertions(+), 611 deletions(-)

