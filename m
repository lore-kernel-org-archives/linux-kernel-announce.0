From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.17.11 released
Date: Wed, 23 Aug 2006 22:23:40 GMT
Message-ID: <200608232223.k7NMNeZa019076@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.17.11 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.17.11.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.17.11.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                36809            132979
Full source                       41288067         236625920

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 MAINTAINERS                                   |    8 
 Makefile                                      |    2 
 arch/i386/Kconfig                             |    3 
 arch/i386/kernel/cpu/cpufreq/powernow-k7.c    |    5 
 arch/i386/kernel/cpu/cpufreq/powernow-k8.c    |    2 
 arch/i386/pci/mmconfig.c                      |    9 -
 arch/ia64/Kconfig                             |    3 
 arch/ia64/kernel/sys_ia64.c                   |   28 +--
 arch/powerpc/Kconfig                          |    3 
 arch/powerpc/kernel/cpu_setup_power4.S        |    2 
 arch/sparc/kernel/sys_sparc.c                 |   27 +--
 arch/sparc/mm/iommu.c                         |    3 
 arch/sparc64/kernel/sys_sparc.c               |   36 ++--
 arch/um/kernel/time_kern.c                    |    2 
 arch/x86_64/Kconfig                           |    2 
 arch/x86_64/kernel/setup.c                    |    2 
 arch/x86_64/pci/mmconfig.c                    |   13 +
 block/elevator.c                              |    3 
 block/ll_rw_blk.c                             |    2 
 drivers/acpi/namespace/nsxfeval.c             |    5 
 drivers/cdrom/cdrom.c                         |    2 
 drivers/char/tpm/tpm_tis.c                    |    1 
 drivers/char/tty_io.c                         |   14 +
 drivers/i2c/busses/scx200_acb.c               |   20 +-
 drivers/i2c/i2c-core.c                        |    4 
 drivers/ide/ide-io.c                          |    2 
 drivers/ieee1394/ohci1394.c                   |    3 
 drivers/ieee1394/sbp2.c                       |    3 
 drivers/infiniband/hw/mthca/mthca_reset.c     |   59 ++++++
 drivers/input/input.c                         |    2 
 drivers/md/dm-mpath.c                         |    3 
 drivers/md/raid1.c                            |    4 
 drivers/media/dvb/bt8xx/dvb-bt8xx.c           |   10 +
 drivers/media/dvb/bt8xx/dvb-bt8xx.h           |    1 
 drivers/media/dvb/dvb-core/dvb_frontend.c     |   14 -
 drivers/media/dvb/frontends/dvb-pll.c         |   10 -
 drivers/media/dvb/ttpci/budget-av.c           |   24 +-
 drivers/media/dvb/ttpci/budget.c              |    6 
 drivers/media/video/Kconfig                   |    6 
 drivers/media/video/stradis.c                 |    1 
 drivers/net/e1000/e1000_hw.c                  |    1 
 drivers/net/e1000/e1000_hw.h                  |    1 
 drivers/net/sky2.c                            |    9 -
 drivers/net/via-velocity.c                    |    6 
 drivers/net/wireless/bcm43xx/bcm43xx_main.c   |   28 +--
 drivers/parport/Kconfig                       |    2 
 drivers/pci/quirks.c                          |    2 
 drivers/pnp/resource.c                        |    3 
 drivers/scsi/libata-core.c                    |    2 
 drivers/serial/8250.c                         |   13 +
 drivers/serial/Kconfig                        |    1 
 drivers/usb/host/uhci-q.c                     |    6 
 drivers/usb/serial/ftdi_sio.c                 |   84 ++++++++-
 drivers/usb/serial/whiteheat.c                |    4 
 fs/befs/linuxvfs.c                            |   11 +
 fs/buffer.c                                   |    7 
 fs/ext3/inode.c                               |   19 +-
 fs/ext3/namei.c                               |   15 +
 fs/ext3/super.c                               |   40 ++++
 fs/file.c                                     |    4 
 fs/namei.c                                    |    8 
 fs/ntfs/file.c                                |   13 -
 fs/proc/base.c                                |   35 +++
 fs/splice.c                                   |  230 ++++++++++++++------------
 fs/udf/super.c                                |    2 
 fs/udf/truncate.c                             |   64 ++++---
 fs/xfs/xfs_dir2_node.c                        |    2 
 include/asm-generic/mman.h                    |    6 
 include/asm-i386/alternative.h                |    2 
 include/asm-ia64/mman.h                       |    6 
 include/asm-s390/futex.h                      |    5 
 include/asm-sparc/mman.h                      |    6 
 include/asm-sparc64/mman.h                    |    6 
 include/asm-sparc64/sfp-machine.h             |    2 
 include/linux/ext3_fs.h                       |    9 +
 include/linux/libata.h                        |    9 -
 include/linux/pfkeyv2.h                       |    2 
 include/linux/skbuff.h                        |   24 +-
 include/net/sctp/sctp.h                       |   13 -
 include/net/sctp/sm.h                         |    3 
 include/net/sctp/structs.h                    |    3 
 include/sound/initval.h                       |    3 
 kernel/exit.c                                 |    2 
 kernel/sched.c                                |   25 +-
 kernel/sys.c                                  |    2 
 kernel/timer.c                                |   41 ----
 lib/idr.c                                     |   16 +
 lib/spinlock_debug.c                          |   10 -
 mm/Kconfig                                    |    2 
 mm/filemap.c                                  |   27 ++-
 mm/filemap.h                                  |    4 
 mm/mmap.c                                     |   13 +
 mm/pdflush.c                                  |   15 -
 mm/swapfile.c                                 |    3 
 net/8021q/vlan.c                              |    8 
 net/bridge/netfilter/ebt_ulog.c               |    3 
 net/core/dev.c                                |    1 
 net/core/dst.c                                |    3 
 net/core/ethtool.c                            |    5 
 net/core/rtnetlink.c                          |   15 +
 net/core/skbuff.c                             |  108 ++++++++----
 net/decnet/dn_rules.c                         |    3 
 net/ieee80211/Kconfig                         |    1 
 net/ipv4/fib_rules.c                          |    4 
 net/ipv4/fib_semantics.c                      |   12 -
 net/ipv4/netfilter/arp_tables.c               |    3 
 net/ipv4/netfilter/ip_conntrack_helper_h323.c |    2 
 net/ipv4/netfilter/ip_conntrack_proto_sctp.c  |    2 
 net/ipv4/netfilter/ip_tables.c                |    3 
 net/ipv4/netfilter/ipt_ULOG.c                 |    5 
 net/ipv4/route.c                              |    2 
 net/ipv6/addrconf.c                           |   37 +++-
 net/ipx/af_ipx.c                              |    3 
 net/netfilter/nf_conntrack_proto_sctp.c       |    2 
 net/netfilter/nfnetlink_log.c                 |    3 
 net/netfilter/xt_sctp.c                       |    2 
 net/sched/act_api.c                           |   18 +-
 net/sctp/input.c                              |    3 
 net/sctp/ipv6.c                               |    6 
 net/sctp/outqueue.c                           |    1 
 net/sctp/protocol.c                           |    8 
 net/sctp/sm_make_chunk.c                      |   30 +--
 net/sctp/sm_statefuns.c                       |   30 +--
 net/sctp/socket.c                             |   38 +++-
 net/sctp/ulpevent.c                           |   30 +++
 net/sunrpc/cache.c                            |    6 
 sound/core/oss/pcm_oss.c                      |    2 
 sound/core/timer.c                            |    5 
 sound/isa/cs423x/Makefile                     |    1 
 sound/pci/Kconfig                             |   14 -
 sound/pci/au88x0/au88x0_mpu401.c              |    2 
 sound/pci/fm801.c                             |    2 
 sound/pci/hda/hda_intel.c                     |    4 
 sound/pci/hda/patch_analog.c                  |   19 +-
 sound/pci/hda/patch_realtek.c                 |    2 
 sound/pci/hda/patch_sigmatel.c                |    8 
 sound/pci/rme9652/hdsp.c                      |    5 
 usr/Makefile                                  |    3 
 138 files changed, 1118 insertions(+), 566 deletions(-)

