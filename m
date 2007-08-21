From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.22.4 released
Date: Tue, 21 Aug 2007 04:46:35 GMT
Message-ID: <200708210446.l7L4kZCK024891@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.22.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.22.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.22.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                29591            108773
Full source                       45107615         262942720

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
 arch/i386/kernel/cpu/cpufreq/acpi-cpufreq.c    |   13 --
 arch/i386/kernel/hpet.c                        |   24 +++
 arch/powerpc/kernel/prom_parse.c               |    2 
 arch/powerpc/mm/slice.c                        |    2 
 arch/powerpc/platforms/83xx/mpc832x_mds.c      |    1 
 arch/powerpc/platforms/83xx/mpc832x_rdb.c      |    1 
 arch/powerpc/platforms/83xx/mpc836x_mds.c      |    1 
 arch/powerpc/platforms/85xx/mpc85xx_mds.c      |    1 
 arch/sparc/kernel/entry.S                      |   14 +-
 arch/sparc/lib/memset.S                        |    2 
 arch/sparc64/kernel/head.S                     |    1 
 arch/um/drivers/ubd_kern.c                     |    2 
 arch/um/os-Linux/user_syms.c                   |   20 +--
 block/cfq-iosched.c                            |   39 +++++-
 drivers/acpi/dock.c                            |    7 +
 drivers/ata/ata_piix.c                         |    4 
 drivers/ata/libata-core.c                      |    1 
 drivers/ata/libata-sff.c                       |    2 
 drivers/ata/pata_atiixp.c                      |    1 
 drivers/ata/pata_scc.c                         |    2 
 drivers/base/cpu.c                             |    2 
 drivers/char/drm/i915_dma.c                    |   14 +-
 drivers/char/drm/i915_drv.h                    |    1 
 drivers/char/random.c                          |    9 +
 drivers/char/sx.c                              |    4 
 drivers/cpufreq/cpufreq_ondemand.c             |   30 +++-
 drivers/firewire/fw-ohci.c                     |    2 
 drivers/firewire/fw-sbp2.c                     |    5 
 drivers/firewire/fw-transaction.c              |    4 
 drivers/firewire/fw-transaction.h              |    6 
 drivers/ieee1394/sbp2.c                        |    5 
 drivers/input/mouse/lifebook.c                 |    2 
 drivers/kvm/svm.c                              |    6 
 drivers/kvm/svm.h                              |    3 
 drivers/md/dm-crypt.c                          |    5 
 drivers/md/dm-exception-store.c                |   11 -
 drivers/md/dm-io.c                             |    5 
 drivers/md/dm-mpath.c                          |    3 
 drivers/md/dm-raid1.c                          |    4 
 drivers/md/dm-snap.c                           |   11 -
 drivers/md/dm.c                                |    9 +
 drivers/md/raid10.c                            |   10 +
 drivers/media/video/ivtv/ivtv-driver.c         |    1 
 drivers/media/video/ivtv/ivtv-driver.h         |    2 
 drivers/media/video/ivtv/ivtv-irq.c            |    7 -
 drivers/media/video/ivtv/ivtv-streams.c        |   30 ++--
 drivers/media/video/ivtv/ivtv-vbi.c            |   31 +---
 drivers/media/video/v4l2-common.c              |   19 ++
 drivers/media/video/wm8739.c                   |    2 
 drivers/media/video/wm8775.c                   |    2 
 drivers/misc/sony-laptop.c                     |   30 +++-
 drivers/net/forcedeth.c                        |  162 +++++++++++++++++++++++--
 drivers/pcmcia/cs.c                            |    3 
 drivers/scsi/aacraid/linit.c                   |    4 
 drivers/serial/sunhv.c                         |   30 ++++
 drivers/serial/sunsab.c                        |   19 ++
 drivers/serial/sunsu.c                         |   14 ++
 drivers/serial/sunzilog.c                      |   17 ++
 drivers/usb/class/cdc-acm.c                    |   12 +
 drivers/usb/core/hub.c                         |   10 -
 drivers/usb/serial/ftdi_sio.c                  |  104 ++++++----------
 drivers/usb/serial/io_edgeport.c               |   19 +-
 drivers/video/backlight/cr_bllcd.c             |    2 
 drivers/video/macmodes.c                       |    5 
 drivers/video/macmodes.h                       |    8 -
 drivers/video/stifb.c                          |   19 +-
 fs/9p/conv.c                                   |    1 
 fs/direct-io.c                                 |    1 
 fs/ecryptfs/inode.c                            |    5 
 fs/exec.c                                      |   13 +-
 fs/ext4/extents.c                              |    2 
 fs/jbd/commit.c                                |    3 
 fs/jbd2/commit.c                               |    3 
 fs/nfsd/vfs.c                                  |    2 
 fs/splice.c                                    |    5 
 fs/sysfs/file.c                                |    1 
 fs/timerfd.c                                   |    6 
 include/linux/Kbuild                           |    1 
 include/linux/ioprio.h                         |    6 
 include/linux/netfilter_ipv4/ipt_iprange.h     |    2 
 include/net/bluetooth/rfcomm.h                 |    1 
 include/net/xfrm.h                             |    1 
 ipc/shm.c                                      |    2 
 kernel/auditsc.c                               |   22 +--
 kernel/futex.c                                 |    4 
 kernel/lockdep_proc.c                          |    2 
 kernel/time/timer_list.c                       |    2 
 kernel/time/timer_stats.c                      |    2 
 kernel/workqueue.c                             |   11 -
 mm/hugetlb.c                                   |   15 +-
 mm/mlock.c                                     |    5 
 mm/readahead.c                                 |   12 +
 net/bluetooth/rfcomm/tty.c                     |   34 ++++-
 net/bridge/netfilter/ebt_log.c                 |    6 
 net/bridge/netfilter/ebt_ulog.c                |    8 -
 net/core/gen_estimator.c                       |   82 +++++++-----
 net/core/netpoll.c                             |    2 
 net/ieee80211/softmac/ieee80211softmac_assoc.c |    5 
 net/ieee80211/softmac/ieee80211softmac_wx.c    |   11 +
 net/ipv4/netfilter/ipt_LOG.c                   |    6 
 net/ipv4/netfilter/nf_conntrack_proto_icmp.c   |   22 ---
 net/ipv4/tcp_input.c                           |    4 
 net/ipv6/addrconf.c                            |    1 
 net/ipv6/anycast.c                             |    1 
 net/ipv6/icmp.c                                |    2 
 net/ipv6/ip6_tunnel.c                          |    4 
 net/ipv6/netfilter/ip6t_LOG.c                  |    6 
 net/ipv6/tcp_ipv6.c                            |    1 
 net/netfilter/nf_conntrack_proto_sctp.c        |    3 
 net/rfkill/rfkill-input.c                      |    2 
 net/sched/sch_api.c                            |    6 
 net/sctp/ipv6.c                                |    4 
 net/sunrpc/auth_gss/svcauth_gss.c              |    9 -
 net/xfrm/xfrm_policy.c                         |    2 
 115 files changed, 805 insertions(+), 391 deletions(-)

