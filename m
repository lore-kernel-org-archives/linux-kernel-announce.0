From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.17.8 released
Date: Mon, 7 Aug 2006 05:11:03 GMT
Message-ID: <200608070511.k775B3NW000363@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.17.8 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.17.8.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.17.8.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                28491            100148
Full source                       41276096         236625920

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
 arch/powerpc/Kconfig                          |    3 
 arch/sparc/mm/iommu.c                         |    3 
 arch/um/kernel/time_kern.c                    |    2 
 arch/x86_64/Kconfig                           |    2 
 arch/x86_64/kernel/setup.c                    |    2 
 arch/x86_64/pci/mmconfig.c                    |   13 +
 block/ll_rw_blk.c                             |    2 
 drivers/acpi/namespace/nsxfeval.c             |    5 
 drivers/cdrom/cdrom.c                         |    2 
 drivers/char/tty_io.c                         |   14 +
 drivers/i2c/busses/scx200_acb.c               |   20 +-
 drivers/i2c/i2c-core.c                        |    4 
 drivers/ide/ide-io.c                          |    2 
 drivers/ieee1394/ohci1394.c                   |    3 
 drivers/ieee1394/sbp2.c                       |    3 
 drivers/infiniband/hw/mthca/mthca_reset.c     |   59 ++++++
 drivers/input/input.c                         |    2 
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
 drivers/net/sky2.c                            |    5 
 drivers/net/via-velocity.c                    |    6 
 drivers/net/wireless/bcm43xx/bcm43xx_main.c   |   28 +--
 drivers/parport/Kconfig                       |    2 
 drivers/pnp/resource.c                        |    3 
 drivers/scsi/libata-core.c                    |    2 
 drivers/serial/8250.c                         |   13 +
 drivers/usb/host/uhci-q.c                     |    6 
 drivers/usb/serial/ftdi_sio.c                 |   84 ++++++++-
 drivers/usb/serial/whiteheat.c                |    4 
 fs/buffer.c                                   |    7 
 fs/ext3/inode.c                               |   19 +-
 fs/ext3/namei.c                               |   15 +
 fs/file.c                                     |    4 
 fs/namei.c                                    |    8 
 fs/ntfs/file.c                                |   13 -
 fs/proc/base.c                                |   35 +++
 fs/splice.c                                   |  230 ++++++++++++++------------
 fs/xfs/xfs_dir2_node.c                        |    2 
 include/asm-i386/alternative.h                |    2 
 include/asm-s390/futex.h                      |    5 
 include/asm-sparc64/sfp-machine.h             |    2 
 include/linux/ext3_fs.h                       |    9 +
 include/linux/libata.h                        |    9 -
 include/linux/pfkeyv2.h                       |    2 
 include/linux/skbuff.h                        |   24 +-
 include/net/sctp/structs.h                    |    3 
 include/sound/initval.h                       |    3 
 kernel/exit.c                                 |    2 
 kernel/sched.c                                |   25 +-
 kernel/sys.c                                  |    2 
 lib/idr.c                                     |   16 +
 mm/Kconfig                                    |    2 
 mm/filemap.c                                  |   27 ++-
 mm/filemap.h                                  |    4 
 mm/pdflush.c                                  |   15 -
 net/8021q/vlan.c                              |    8 
 net/core/dev.c                                |    1 
 net/core/ethtool.c                            |    5 
 net/core/skbuff.c                             |  108 ++++++++----
 net/decnet/dn_rules.c                         |    3 
 net/ieee80211/Kconfig                         |    1 
 net/ipv4/fib_rules.c                          |    4 
 net/ipv4/netfilter/ip_conntrack_helper_h323.c |    2 
 net/ipv4/netfilter/ip_conntrack_proto_sctp.c  |    2 
 net/ipv6/addrconf.c                           |   37 +++-
 net/netfilter/nf_conntrack_proto_sctp.c       |    2 
 net/netfilter/xt_sctp.c                       |    2 
 net/sched/act_api.c                           |   18 +-
 net/sctp/input.c                              |    3 
 net/sctp/ipv6.c                               |    6 
 net/sctp/outqueue.c                           |    1 
 net/sctp/protocol.c                           |    8 
 net/sctp/sm_statefuns.c                       |   10 +
 net/sctp/socket.c                             |   28 ++-
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
 103 files changed, 852 insertions(+), 385 deletions(-)

