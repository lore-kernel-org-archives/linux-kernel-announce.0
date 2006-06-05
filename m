From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.16.20 released
Date: Mon, 5 Jun 2006 16:57:06 GMT
Message-ID: <200606051657.k55Gv6Jo021186@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.16.20 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.16.20.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.16.20.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                53046            197284
Full source                       40839066         233953280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/m32r/lib/getuser.S                          |   88 -------
 arch/m32r/lib/putuser.S                          |   84 -------
 b/Documentation/dvb/get_dvb_firmware             |    8 
 b/Makefile                                       |    2 
 b/arch/alpha/kernel/setup.c                      |   17 +
 b/arch/alpha/kernel/smp.c                        |    8 
 b/arch/alpha/lib/strncpy.S                       |    8 
 b/arch/i386/kernel/apm.c                         |    2 
 b/arch/i386/kernel/cpu/amd.c                     |    2 
 b/arch/i386/kernel/cpu/cpufreq/Kconfig           |    1 
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c     |    2 
 b/arch/i386/kernel/cpu/cpufreq/speedstep-smi.c   |    4 
 b/arch/i386/kernel/dmi_scan.c                    |    2 
 b/arch/i386/kernel/vm86.c                        |   12 -
 b/arch/m32r/kernel/m32r_ksyms.c                  |    4 
 b/arch/m32r/kernel/setup.c                       |   12 -
 b/arch/m32r/kernel/smpboot.c                     |   19 -
 b/arch/m32r/lib/Makefile                         |    4 
 b/arch/mips/kernel/branch.c                      |    2 
 b/arch/mips/mm/c-r4k.c                           |    3 
 b/arch/powerpc/kernel/pci_64.c                   |    1 
 b/arch/powerpc/kernel/setup_64.c                 |   10 
 b/arch/powerpc/kernel/signal_64.c                |    2 
 b/arch/powerpc/platforms/powermac/setup.c        |   12 +
 b/arch/x86_64/ia32/Makefile                      |    4 
 b/arch/x86_64/kernel/entry.S                     |   35 ---
 b/arch/x86_64/kernel/pci-gart.c                  |    4 
 b/arch/x86_64/kernel/process.c                   |    8 
 b/arch/x86_64/kernel/setup.c                     |    4 
 b/arch/x86_64/kernel/traps.c                     |    5 
 b/block/elevator.c                               |    8 
 b/block/genhd.c                                  |  103 --------
 b/block/ll_rw_blk.c                              |   17 +
 b/drivers/base/cpu.c                             |    2 
 b/drivers/base/firmware_class.c                  |    6 
 b/drivers/base/node.c                            |    2 
 b/drivers/block/cciss.c                          |   98 ++++----
 b/drivers/block/ub.c                             |   18 -
 b/drivers/char/Kconfig                           |    1 
 b/drivers/char/agp/efficeon-agp.c                |    8 
 b/drivers/char/cs5535_gpio.c                     |    5 
 b/drivers/char/ipmi/ipmi_bt_sm.c                 |    2 
 b/drivers/char/pcmcia/cm4000_cs.c                |   10 
 b/drivers/char/pcmcia/cm4040_cs.c                |   11 
 b/drivers/char/snsc.c                            |    3 
 b/drivers/char/sonypi.c                          |    3 
 b/drivers/char/tipar.c                           |    2 
 b/drivers/char/tlclk.c                           |   37 +--
 b/drivers/char/tty_io.c                          |    8 
 b/drivers/edac/Kconfig                           |    2 
 b/drivers/i2c/busses/i2c-i801.c                  |    5 
 b/drivers/i2c/busses/scx200_acb.c                |    4 
 b/drivers/i2c/chips/m41t00.c                     |    8 
 b/drivers/ide/pci/alim15x3.c                     |    2 
 b/drivers/ieee1394/ohci1394.c                    |    2 
 b/drivers/ieee1394/sbp2.c                        |   52 ++--
 b/drivers/input/mouse/psmouse-base.c             |    4 
 b/drivers/macintosh/therm_adt746x.c              |    4 
 b/drivers/md/dm-snap.c                           |    6 
 b/drivers/md/dm.c                                |   48 ++--
 b/drivers/md/kcopyd.c                            |   17 +
 b/drivers/md/raid10.c                            |    2 
 b/drivers/media/dvb/dvb-usb/cxusb.c              |   17 +
 b/drivers/media/video/Kconfig                    |    1 
 b/drivers/media/video/saa7127.c                  |    1 
 b/drivers/media/video/tuner-types.c              |    4 
 b/drivers/mtd/nand/Kconfig                       |   17 -
 b/drivers/net/e1000/e1000_main.c                 |    1 
 b/drivers/net/irda/irda-usb.c                    |    5 
 b/drivers/net/sky2.c                             |    4 
 b/drivers/net/sky2.h                             |    1 
 b/drivers/net/tg3.c                              |    8 
 b/drivers/net/via-rhine.c                        |    6 
 b/drivers/net/wireless/Kconfig                   |    5 
 b/drivers/net/wireless/hostap/hostap_80211_tx.c  |    2 
 b/drivers/net/wireless/ipw2200.c                 |   21 +
 b/drivers/pci/pci-acpi.c                         |   60 +++--
 b/drivers/pci/quirks.c                           |   22 +
 b/drivers/pcmcia/ds.c                            |    2 
 b/drivers/scsi/3w-9xxx.c                         |    8 
 b/drivers/scsi/3w-xxxx.c                         |    3 
 b/drivers/scsi/libata-core.c                     |    1 
 b/drivers/scsi/sata_mv.c                         |    7 
 b/drivers/sn/ioc3.c                              |    2 
 b/drivers/sn/ioc4.c                              |    2 
 b/drivers/usb/core/message.c                     |   12 -
 b/drivers/usb/host/ehci-sched.c                  |   11 
 b/drivers/usb/serial/console.c                   |    2 
 b/drivers/usb/serial/option.c                    |    4 
 b/drivers/usb/storage/Kconfig                    |    3 
 b/drivers/video/cfbimgblt.c                      |    2 
 b/drivers/video/fbmem.c                          |   14 -
 b/drivers/video/i810/i810_main.c                 |    2 
 b/fs/9p/vfs_inode.c                              |    3 
 b/fs/char_dev.c                                  |   87 -------
 b/fs/cifs/cifsencrypt.c                          |   36 +--
 b/fs/cifs/dir.c                                  |   14 +
 b/fs/compat.c                                    |    6 
 b/fs/ext3/resize.c                               |    1 
 b/fs/fuse/file.c                                 |    8 
 b/fs/locks.c                                     |   60 +++--
 b/fs/nfsd/nfs3proc.c                             |    2 
 b/fs/nfsd/nfs4proc.c                             |    2 
 b/fs/nfsd/nfsproc.c                              |    2 
 b/fs/open.c                                      |   24 +-
 b/fs/partitions/check.c                          |    5 
 b/fs/proc/base.c                                 |   21 +
 b/fs/proc/proc_misc.c                            |  163 +++-----------
 b/fs/proc/vmcore.c                               |    4 
 b/fs/reiserfs/xattr_acl.c                        |    5 
 b/fs/smbfs/dir.c                                 |    5 
 b/fs/smbfs/request.c                             |    4 
 b/fs/sysfs/dir.c                                 |    1 
 b/fs/sysfs/file.c                                |    2 
 b/fs/sysfs/inode.c                               |    6 
 b/fs/sysfs/symlink.c                             |    1 
 b/fs/xfs/linux-2.6/xfs_aops.c                    |    2 
 b/fs/xfs/linux-2.6/xfs_iops.c                    |    3 
 b/include/asm-i386/cpufeature.h                  |    1 
 b/include/asm-i386/i387.h                        |   30 ++
 b/include/asm-i386/pgtable-2level.h              |    3 
 b/include/asm-i386/pgtable-3level.h              |   20 +
 b/include/asm-i386/pgtable.h                     |    4 
 b/include/asm-m32r/smp.h                         |    3 
 b/include/asm-m32r/uaccess.h                     |  266 +++++++++--------------
 b/include/asm-mips/bitops.h                      |   14 +
 b/include/asm-mips/byteorder.h                   |    4 
 b/include/asm-mips/interrupt.h                   |    8 
 b/include/asm-mips/r4kcache.h                    |    2 
 b/include/asm-powerpc/floppy.h                   |    5 
 b/include/asm-x86_64/cpufeature.h                |    1 
 b/include/asm-x86_64/i387.h                      |   20 +
 b/include/linux/cpu.h                            |    2 
 b/include/linux/cpumask.h                        |    1 
 b/include/linux/fb.h                             |    2 
 b/include/linux/fs.h                             |   15 -
 b/include/linux/mm.h                             |    5 
 b/include/linux/page-flags.h                     |    8 
 b/include/linux/proc_fs.h                        |    2 
 b/include/linux/raid/raid1.h                     |    2 
 b/include/linux/rtc.h                            |    4 
 b/include/net/ip.h                               |    1 
 b/include/net/sctp/sctp.h                        |    6 
 b/include/net/sctp/structs.h                     |    1 
 b/ipc/shm.c                                      |    2 
 b/ipc/util.c                                     |    3 
 b/kernel/auditsc.c                               |    5 
 b/kernel/exec_domain.c                           |    1 
 b/kernel/fork.c                                  |    2 
 b/kernel/power/process.c                         |    3 
 b/kernel/ptrace.c                                |   64 +++--
 b/kernel/sched.c                                 |    9 
 b/kernel/signal.c                                |    6 
 b/kernel/sys.c                                   |   14 +
 b/kernel/uid16.c                                 |   59 +++--
 b/mm/madvise.c                                   |    3 
 b/mm/mempolicy.c                                 |    1 
 b/mm/page_alloc.c                                |   34 +-
 b/mm/shmem.c                                     |    1 
 b/mm/vmscan.c                                    |   11 
 b/net/atm/clip.c                                 |   42 ++-
 b/net/bridge/br_netfilter.c                      |   13 -
 b/net/core/dev.c                                 |    2 
 b/net/core/sock.c                                |    5 
 b/net/ipv4/fib_trie.c                            |   12 -
 b/net/ipv4/ip_output.c                           |   12 -
 b/net/ipv4/netfilter/arp_tables.c                |    2 
 b/net/ipv4/netfilter/ip_conntrack_core.c         |    1 
 b/net/ipv4/netfilter/ip_conntrack_netlink.c      |    2 
 b/net/ipv4/netfilter/ip_conntrack_proto_sctp.c   |   11 
 b/net/ipv4/netfilter/ip_nat_snmp_basic.c         |   15 -
 b/net/ipv4/netfilter/ip_tables.c                 |    2 
 b/net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c |    1 
 b/net/ipv4/route.c                               |    5 
 b/net/ipv4/tcp_output.c                          |    4 
 b/net/ipv6/exthdrs.c                             |   12 +
 b/net/ipv6/netfilter/ip6_tables.c                |    2 
 b/net/ipv6/xfrm6_policy.c                        |    8 
 b/net/netfilter/nf_conntrack_netlink.c           |    2 
 b/net/netfilter/nf_conntrack_proto_sctp.c        |   11 
 b/net/sctp/inqueue.c                             |    1 
 b/net/sctp/sm_statefuns.c                        |   65 ++++-
 b/net/sctp/sm_statetable.c                       |   10 
 b/net/sctp/ulpqueue.c                            |   27 ++
 b/security/keys/key.c                            |    4 
 b/security/keys/keyring.c                        |    1 
 b/security/selinux/ss/mls.c                      |    2 
 b/security/selinux/ss/services.c                 |    4 
 b/sound/isa/opti9xx/opti92x-ad1848.c             |    6 
 b/sound/oss/dmasound/tas_common.c                |    4 
 b/sound/pci/hda/patch_realtek.c                  |    2 
 b/sound/ppc/daca.c                               |    2 
 b/sound/ppc/tumbler.c                            |    2 
 193 files changed, 1331 insertions(+), 1197 deletions(-)

