From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.22.9 released
Date: Wed, 26 Sep 2007 18:22:31 GMT
Message-ID: <200709261822.l8QIMVZO005025@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.22.9 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.22.9.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.22.9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                60812            229132
Full source                       45109213         262952960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/i386/kernel/legacy_serial.c                 |   67 --------
 b/Documentation/dvb/get_dvb_firmware             |   26 +--
 b/Documentation/kernel-parameters.txt            |    5 
 b/Makefile                                       |    2 
 b/arch/i386/Makefile                             |    4 
 b/arch/i386/kernel/Makefile                      |    1 
 b/arch/i386/kernel/cpu/cpufreq/acpi-cpufreq.c    |   13 -
 b/arch/i386/kernel/cpu/perfctr-watchdog.c        |    4 
 b/arch/i386/kernel/doublefault.c                 |   13 -
 b/arch/i386/kernel/hpet.c                        |   24 +++
 b/arch/i386/kernel/sysenter.c                    |    4 
 b/arch/i386/mm/fault.c                           |    5 
 b/arch/powerpc/kernel/process.c                  |    6 
 b/arch/powerpc/kernel/prom_parse.c               |    2 
 b/arch/powerpc/mm/slice.c                        |    2 
 b/arch/powerpc/platforms/83xx/mpc832x_mds.c      |    1 
 b/arch/powerpc/platforms/83xx/mpc832x_rdb.c      |    1 
 b/arch/powerpc/platforms/83xx/mpc836x_mds.c      |    1 
 b/arch/powerpc/platforms/85xx/mpc85xx_mds.c      |    1 
 b/arch/sparc/kernel/entry.S                      |   14 +
 b/arch/sparc/lib/memset.S                        |    2 
 b/arch/sparc64/kernel/head.S                     |    1 
 b/arch/sparc64/kernel/pci.c                      |   28 ++-
 b/arch/sparc64/kernel/pci_common.c               |  123 +++++++++++++++-
 b/arch/sparc64/kernel/traps.c                    |   18 +-
 b/arch/sparc64/mm/fault.c                        |    5 
 b/arch/um/drivers/ubd_kern.c                     |    2 
 b/arch/um/os-Linux/user_syms.c                   |   20 +-
 b/arch/x86_64/Makefile                           |    4 
 b/arch/x86_64/ia32/ia32entry.S                   |   18 ++
 b/arch/x86_64/kernel/Makefile                    |    2 
 b/arch/x86_64/kernel/head.S                      |    3 
 b/arch/x86_64/kernel/ptrace.c                    |    4 
 b/block/cfq-iosched.c                            |   39 ++++-
 b/block/ll_rw_blk.c                              |   13 -
 b/crypto/blkcipher.c                             |   11 -
 b/drivers/acpi/dock.c                            |    7 
 b/drivers/acpi/events/evgpeblk.c                 |    4 
 b/drivers/acpi/tables/tbfadt.c                   |   44 +++--
 b/drivers/acpi/tables/tbutils.c                  |   71 +++++++++
 b/drivers/ata/ahci.c                             |    5 
 b/drivers/ata/ata_piix.c                         |    4 
 b/drivers/ata/libata-core.c                      |    1 
 b/drivers/ata/libata-sff.c                       |    2 
 b/drivers/ata/pata_atiixp.c                      |    1 
 b/drivers/ata/pata_scc.c                         |    2 
 b/drivers/base/cpu.c                             |    2 
 b/drivers/block/DAC960.c                         |   18 +-
 b/drivers/block/DAC960.h                         |    7 
 b/drivers/char/drm/i915_dma.c                    |   14 +
 b/drivers/char/drm/i915_drv.h                    |    1 
 b/drivers/char/random.c                          |    9 -
 b/drivers/char/sx.c                              |    4 
 b/drivers/cpufreq/cpufreq_ondemand.c             |   30 ++--
 b/drivers/firewire/fw-ohci.c                     |   12 -
 b/drivers/firewire/fw-sbp2.c                     |    5 
 b/drivers/firewire/fw-transaction.c              |    4 
 b/drivers/firewire/fw-transaction.h              |    6 
 b/drivers/hwmon/lm78.c                           |    2 
 b/drivers/hwmon/smsc47m1.c                       |    2 
 b/drivers/hwmon/w83781d.c                        |    6 
 b/drivers/ieee1394/ieee1394_core.c               |    2 
 b/drivers/ieee1394/ohci1394.c                    |    4 
 b/drivers/ieee1394/sbp2.c                        |    5 
 b/drivers/input/mouse/lifebook.c                 |    2 
 b/drivers/kvm/svm.c                              |    6 
 b/drivers/kvm/svm.h                              |    3 
 b/drivers/md/dm-crypt.c                          |    5 
 b/drivers/md/dm-exception-store.c                |   11 -
 b/drivers/md/dm-io.c                             |    5 
 b/drivers/md/dm-mpath.c                          |    3 
 b/drivers/md/dm-raid1.c                          |    4 
 b/drivers/md/dm-snap.c                           |   11 -
 b/drivers/md/dm.c                                |    9 +
 b/drivers/md/raid10.c                            |   10 +
 b/drivers/media/dvb/b2c2/flexcop-i2c.c           |    7 
 b/drivers/media/video/cx88/cx88-mpeg.c           |    2 
 b/drivers/media/video/ivtv/ivtv-driver.c         |    1 
 b/drivers/media/video/ivtv/ivtv-driver.h         |    2 
 b/drivers/media/video/ivtv/ivtv-ioctl.c          |    1 
 b/drivers/media/video/ivtv/ivtv-irq.c            |    7 
 b/drivers/media/video/ivtv/ivtv-streams.c        |   30 ++--
 b/drivers/media/video/ivtv/ivtv-vbi.c            |   31 +---
 b/drivers/media/video/pwc/pwc-if.c               |   52 ++++--
 b/drivers/media/video/pwc/pwc.h                  |    1 
 b/drivers/media/video/v4l2-common.c              |   19 +-
 b/drivers/media/video/wm8739.c                   |    2 
 b/drivers/media/video/wm8775.c                   |    2 
 b/drivers/misc/sony-laptop.c                     |   30 ++--
 b/drivers/mtd/Makefile                           |    2 
 b/drivers/mtd/mtdpart.c                          |    4 
 b/drivers/mtd/mtdsuper.c                         |    2 
 b/drivers/net/bonding/bond_main.c                |   30 +---
 b/drivers/net/forcedeth.c                        |  172 ++++++++++++++++++++---
 b/drivers/net/ppp_generic.c                      |    2 
 b/drivers/net/r8169.c                            |   18 +-
 b/drivers/net/sky2.c                             |   53 ++++---
 b/drivers/net/wireless/bcm43xx/bcm43xx_main.c    |   28 ++-
 b/drivers/net/wireless/bcm43xx/bcm43xx_main.h    |    2 
 b/drivers/net/wireless/bcm43xx/bcm43xx_sysfs.c   |    2 
 b/drivers/pci/probe.c                            |   18 +-
 b/drivers/pci/quirks.c                           |    3 
 b/drivers/pcmcia/cs.c                            |    3 
 b/drivers/scsi/3w-9xxx.c                         |   18 +-
 b/drivers/scsi/aacraid/linit.c                   |    4 
 b/drivers/serial/Kconfig                         |   14 -
 b/drivers/serial/sunhv.c                         |   30 +++-
 b/drivers/serial/sunsab.c                        |   19 +-
 b/drivers/serial/sunsu.c                         |   14 +
 b/drivers/serial/sunzilog.c                      |   17 +-
 b/drivers/usb/class/cdc-acm.c                    |   12 +
 b/drivers/usb/core/driver.c                      |    2 
 b/drivers/usb/core/hub.c                         |   10 -
 b/drivers/usb/core/message.c                     |   28 +++
 b/drivers/usb/serial/ftdi_sio.c                  |  104 +++++--------
 b/drivers/usb/serial/io_edgeport.c               |   19 +-
 b/drivers/video/backlight/cr_bllcd.c             |    2 
 b/drivers/video/macmodes.c                       |    5 
 b/drivers/video/macmodes.h                       |    8 -
 b/drivers/video/stifb.c                          |   19 +-
 b/fs/9p/conv.c                                   |    1 
 b/fs/afs/mntpt.c                                 |    2 
 b/fs/direct-io.c                                 |    1 
 b/fs/ecryptfs/inode.c                            |    5 
 b/fs/exec.c                                      |   22 +-
 b/fs/ext3/namei.c                                |   73 ++++++++-
 b/fs/ext4/extents.c                              |    2 
 b/fs/ext4/namei.c                                |   73 ++++++++-
 b/fs/jbd/commit.c                                |    3 
 b/fs/jbd2/commit.c                               |    3 
 b/fs/jffs2/fs.c                                  |    2 
 b/fs/jffs2/write.c                               |    3 
 b/fs/locks.c                                     |    2 
 b/fs/nfs/super.c                                 |    2 
 b/fs/nfsd/vfs.c                                  |    2 
 b/fs/ocfs2/file.c                                |    2 
 b/fs/signalfd.c                                  |   14 +
 b/fs/splice.c                                    |    9 -
 b/fs/sysfs/file.c                                |    1 
 b/fs/timerfd.c                                   |    6 
 b/include/asm-avr32/atomic.h                     |    4 
 b/include/asm-i386/serial.h                      |   16 ++
 b/include/asm-sparc/sfp-machine.h                |    6 
 b/include/asm-sparc64/sfp-machine.h              |    2 
 b/include/asm-x86_64/serial.h                    |   16 ++
 b/include/linux/Kbuild                           |    2 
 b/include/linux/ioprio.h                         |    6 
 b/include/linux/netdevice.h                      |    2 
 b/include/linux/netfilter/Kbuild                 |    1 
 b/include/linux/netfilter_ipv4/ipt_iprange.h     |    2 
 b/include/linux/pci_ids.h                        |    3 
 b/include/math-emu/op-common.h                   |    5 
 b/include/math-emu/soft-fp.h                     |    7 
 b/include/net/bluetooth/rfcomm.h                 |    1 
 b/include/net/tcp.h                              |    2 
 b/include/net/xfrm.h                             |    1 
 b/init/Kconfig                                   |    1 
 b/ipc/shm.c                                      |    2 
 b/kernel/auditsc.c                               |   22 +-
 b/kernel/futex.c                                 |    4 
 b/kernel/futex_compat.c                          |    4 
 b/kernel/lockdep_proc.c                          |    2 
 b/kernel/power/snapshot.c                        |    3 
 b/kernel/signal.c                                |   23 +--
 b/kernel/sys.c                                   |    3 
 b/kernel/time/timer_list.c                       |    2 
 b/kernel/time/timer_stats.c                      |    2 
 b/kernel/workqueue.c                             |   11 -
 b/mm/hugetlb.c                                   |   15 +-
 b/mm/mlock.c                                     |    5 
 b/mm/readahead.c                                 |   12 +
 b/net/802/psnap.c                                |   17 +-
 b/net/8021q/vlan_dev.c                           |   12 +
 b/net/bluetooth/rfcomm/tty.c                     |   34 +++-
 b/net/bridge/br_device.c                         |    3 
 b/net/bridge/br_if.c                             |   28 ---
 b/net/bridge/br_netfilter.c                      |   12 -
 b/net/bridge/netfilter/ebt_log.c                 |    6 
 b/net/bridge/netfilter/ebt_ulog.c                |    8 -
 b/net/core/datagram.c                            |    3 
 b/net/core/dev.c                                 |   38 +++++
 b/net/core/gen_estimator.c                       |   82 ++++++----
 b/net/core/netpoll.c                             |    2 
 b/net/core/pktgen.c                              |   10 +
 b/net/dccp/ccids/ccid2.c                         |    2 
 b/net/decnet/dn_dev.c                            |    2 
 b/net/ieee80211/softmac/ieee80211softmac_assoc.c |    5 
 b/net/ieee80211/softmac/ieee80211softmac_wx.c    |   11 +
 b/net/ipv4/af_inet.c                             |    2 
 b/net/ipv4/ah4.c                                 |    2 
 b/net/ipv4/devinet.c                             |    2 
 b/net/ipv4/inet_diag.c                           |    4 
 b/net/ipv4/netfilter/ipt_LOG.c                   |    6 
 b/net/ipv4/netfilter/nf_conntrack_proto_icmp.c   |   22 --
 b/net/ipv4/tcp.c                                 |    3 
 b/net/ipv4/tcp_input.c                           |   41 +++--
 b/net/ipv4/tcp_ipv4.c                            |    1 
 b/net/ipv6/addrconf.c                            |    3 
 b/net/ipv6/af_inet6.c                            |    2 
 b/net/ipv6/anycast.c                             |    1 
 b/net/ipv6/icmp.c                                |    2 
 b/net/ipv6/ip6_output.c                          |    7 
 b/net/ipv6/ip6_tunnel.c                          |    4 
 b/net/ipv6/ipv6_sockglue.c                       |    2 
 b/net/ipv6/ndisc.c                               |    2 
 b/net/ipv6/netfilter/ip6t_LOG.c                  |    6 
 b/net/ipv6/raw.c                                 |    3 
 b/net/ipv6/tcp_ipv6.c                            |    2 
 b/net/netfilter/nf_conntrack_proto_sctp.c        |    3 
 b/net/rfkill/rfkill-input.c                      |    2 
 b/net/sched/sch_api.c                            |    6 
 b/net/sctp/ipv6.c                                |    4 
 b/net/socket.c                                   |    2 
 b/net/sunrpc/auth_gss/svcauth_gss.c              |    9 -
 b/net/sunrpc/svcsock.c                           |    6 
 b/net/xfrm/xfrm_policy.c                         |    2 
 b/scripts/kconfig/conf.c                         |   21 +-
 b/sound/core/memalloc.c                          |   68 +++++----
 218 files changed, 1749 insertions(+), 864 deletions(-)

