From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.16.3 released
Date: Tue, 11 Apr 2006 06:52:06 GMT
Message-ID: <200604110652.k3B6q6EI007149@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.16.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.16.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.16.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                11793             36238
Full source                       40842734         233953280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                      |    2 -
 arch/i386/kernel/cpu/cpufreq/Kconfig          |    1 
 arch/i386/kernel/cpu/cpufreq/p4-clockmod.c    |    2 -
 arch/i386/kernel/cpu/cpufreq/speedstep-smi.c  |    4 +-
 arch/i386/kernel/dmi_scan.c                   |    2 -
 arch/powerpc/kernel/pci_64.c                  |    1 
 drivers/base/cpu.c                            |    2 -
 drivers/base/firmware_class.c                 |    6 ++-
 drivers/base/node.c                           |    2 -
 drivers/block/cciss.c                         |    2 -
 drivers/char/Kconfig                          |    1 
 drivers/char/tlclk.c                          |    1 
 drivers/ieee1394/sbp2.c                       |   32 ++++++++----------
 drivers/md/dm.c                               |   45 ++++++++++++++------------
 drivers/media/video/Kconfig                   |    1 
 drivers/media/video/tuner-types.c             |    4 +-
 drivers/net/irda/irda-usb.c                   |    5 +-
 drivers/net/wireless/Kconfig                  |    5 ++
 drivers/net/wireless/hostap/hostap_80211_tx.c |    2 -
 drivers/net/wireless/ipw2200.c                |    5 +-
 drivers/pcmcia/ds.c                           |    2 -
 drivers/scsi/sata_mv.c                        |    7 ++--
 drivers/usb/core/message.c                    |   12 ++++--
 drivers/usb/host/ehci-sched.c                 |   11 +++---
 drivers/video/cfbimgblt.c                     |    2 -
 drivers/video/i810/i810_main.c                |    2 -
 fs/9p/vfs_inode.c                             |    3 -
 fs/nfsd/nfs3proc.c                            |    2 -
 fs/nfsd/nfs4proc.c                            |    2 -
 fs/nfsd/nfsproc.c                             |    2 -
 fs/proc/proc_misc.c                           |    2 -
 fs/proc/vmcore.c                              |    4 +-
 fs/sysfs/dir.c                                |    1 
 fs/sysfs/file.c                               |    2 -
 fs/sysfs/inode.c                              |    6 ++-
 fs/sysfs/symlink.c                            |    1 
 fs/xfs/linux-2.6/xfs_aops.c                   |    2 -
 include/asm-powerpc/floppy.h                  |    5 +-
 include/linux/cpu.h                           |    2 -
 include/linux/fb.h                            |    2 -
 include/linux/proc_fs.h                       |    2 -
 include/linux/raid/raid1.h                    |    2 -
 include/linux/rtc.h                           |    4 +-
 kernel/exec_domain.c                          |    1 
 kernel/fork.c                                 |    2 -
 kernel/sched.c                                |    9 ++++-
 net/core/sock.c                               |    5 +-
 net/ipv4/fib_trie.c                           |   12 +++---
 net/ipv4/ip_output.c                          |    6 ---
 net/ipv4/netfilter/ip_conntrack_netlink.c     |    2 -
 net/netfilter/nf_conntrack_netlink.c          |    2 -
 security/keys/key.c                           |    4 ++
 security/keys/keyring.c                       |    1 
 sound/isa/opti9xx/opti92x-ad1848.c            |    6 +++
 sound/pci/hda/patch_realtek.c                 |    2 +
 55 files changed, 149 insertions(+), 108 deletions(-)

