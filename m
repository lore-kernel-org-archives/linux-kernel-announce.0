From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0-test10 released
Date: Mon, 24 Nov 2003 02:37:32 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200311240237.hAO2bWuh003082@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0-test10 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0-test10.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0-test10.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                96428                 0
408107                                   0          33240118
/pub/linux/kernel/v2.6/linux-2.6.0-test10.tar.bz2         187330560                 0
                                         0                 0

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/filesystems/ntfs.txt     |    4 
 b/Documentation/networking/irda.txt      |   10 
 b/Documentation/video4linux/meye.txt     |    5 
 b/MAINTAINERS                            |   13 
 b/Makefile                               |    2 
 b/arch/alpha/kernel/setup.c              |   15 
 b/arch/arm/kernel/signal.c               |   29 -
 b/arch/h8300/kernel/time.c               |    6 
 b/arch/i386/kernel/acpi/boot.c           |    9 
 b/arch/i386/kernel/cpu/intel.c           |   25 
 b/arch/i386/kernel/entry.S               |    4 
 b/arch/i386/kernel/mpparse.c             |    9 
 b/arch/i386/kernel/signal.c              |    4 
 b/arch/i386/kernel/time.c                |   13 
 b/arch/i386/kernel/timers/timer_tsc.c    |    2 
 b/arch/i386/kernel/vm86.c                |    7 
 b/arch/i386/mach-visws/visws_apic.c      |    6 
 b/arch/i386/mach-voyager/voyager_smp.c   |    4 
 b/arch/i386/mm/hugetlbpage.c             |   15 
 b/arch/i386/mm/ioremap.c                 |   21 
 b/arch/i386/pci/irq.c                    |  415 ++++++++++------
 b/arch/ia64/ia32/ia32_entry.S            |    2 
 b/arch/ia64/ia32/ia32_signal.c           |    3 
 b/arch/ia64/kernel/fsys.S                |   10 
 b/arch/ia64/kernel/irq.c                 |    2 
 b/arch/ia64/kernel/patch.c               |    2 
 b/arch/ia64/kernel/perfmon.c             |    4 
 b/arch/ia64/kernel/perfmon_mckinley.h    |    2 
 b/arch/ia64/kernel/signal.c              |    4 
 b/arch/ia64/kernel/traps.c               |    6 
 b/arch/ia64/mm/tlb.c                     |    2 
 b/arch/ia64/sn/io/machvec/pci_dma.c      |    3 
 b/arch/ppc/kernel/entry.S                |   10 
 b/arch/ppc/kernel/signal.c               |   10 
 b/arch/ppc/kernel/vmlinux.lds.S          |   16 
 b/arch/ppc64/kernel/signal.c             |    5 
 b/arch/ppc64/kernel/signal32.c           |    6 
 b/arch/sparc/kernel/entry.S              |    2 
 b/arch/sparc/kernel/pcic.c               |   19 
 b/arch/sparc/kernel/signal.c             |    6 
 b/arch/sparc/kernel/sparc_ksyms.c        |    4 
 b/arch/sparc/kernel/systbls.S            |    6 
 b/arch/sparc/kernel/time.c               |   19 
 b/arch/sparc64/Kconfig                   |    2 
 b/arch/sparc64/kernel/ebus.c             |   48 +
 b/arch/sparc64/kernel/entry.S            |    2 
 b/arch/sparc64/kernel/rtrap.S            |    7 
 b/arch/sparc64/kernel/signal.c           |    6 
 b/arch/sparc64/kernel/signal32.c         |    9 
 b/arch/sparc64/kernel/sparc64_ksyms.c    |    1 
 b/arch/sparc64/kernel/systbls.S          |   13 
 b/arch/sparc64/kernel/time.c             |   19 
 b/arch/sparc64/lib/dec_and_lock.S        |    3 
 b/arch/sparc64/lib/rwlock.S              |   22 
 b/arch/x86_64/kernel/acpi/boot.c         |   27 +
 b/arch/x86_64/kernel/entry.S             |   14 
 b/arch/x86_64/kernel/io_apic.c           |    4 
 b/arch/x86_64/kernel/pci-gart.c          |    3 
 b/arch/x86_64/kernel/setup64.c           |   17 
 b/arch/x86_64/kernel/smp.c               |   22 
 b/arch/x86_64/kernel/time.c              |   20 
 b/arch/x86_64/kernel/x8664_ksyms.c       |    4 
 b/arch/x86_64/mm/extable.c               |    4 
 b/arch/x86_64/mm/fault.c                 |   15 
 b/arch/x86_64/mm/k8topology.c            |    3 
 b/arch/x86_64/mm/numa.c                  |    1 
 b/crypto/api.c                           |    3 
 b/drivers/acpi/dispatcher/dsopcode.c     |    8 
 b/drivers/acpi/ec.c                      |   16 
 b/drivers/acpi/pci_root.c                |    4 
 b/drivers/base/class.c                   |    2 
 b/drivers/block/as-iosched.c             |    6 
 b/drivers/block/ll_rw_blk.c              |   20 
 b/drivers/char/agp/sis-agp.c             |   12 
 b/drivers/char/sonypi.h                  |    6 
 b/drivers/ide/Kconfig                    |   13 
 b/drivers/ide/ide-tape.c                 |  206 +++-----
 b/drivers/ide/pci/alim15x3.c             |   30 -
 b/drivers/ide/pci/amd74xx.c              |   99 ++-
 b/drivers/ide/pci/amd74xx.h              |   66 ++
 b/drivers/ieee1394/sbp2.c                |    9 
 b/drivers/input/keyboard/atkbd.c         |   21 
 b/drivers/input/mouse/psmouse-base.c     |   31 -
 b/drivers/md/dm-table.c                  |   12 
 b/drivers/md/raid1.c                     |    2 
 b/drivers/media/video/bt832.c            |    2 
 b/drivers/media/video/bttv-cards.c       |    4 
 b/drivers/media/video/bttv-if.c          |    2 
 b/drivers/media/video/meye.h             |    2 
 b/drivers/media/video/saa5249.c          |    2 
 b/drivers/media/video/tuner-3036.c       |    2 
 b/drivers/media/video/video-buf.c        |   10 
 b/drivers/net/3c509.c                    |    2 
 b/drivers/net/3c527.c                    |    2 
 b/drivers/net/8139cp.c                   |    2 
 b/drivers/net/8139too.c                  |    1 
 b/drivers/net/Space.c                    |    6 
 b/drivers/net/arm/ether1.c               |   13 
 b/drivers/net/arm/ether3.c               |    8 
 b/drivers/net/arm/etherh.c               |   12 
 b/drivers/net/b44.c                      |   56 ++
 b/drivers/net/bonding/bond_main.c        |  200 ++++---
 b/drivers/net/ethertap.c                 |    7 
 b/drivers/net/pcmcia/fmvj18x_cs.c        |    2 
 b/drivers/net/pcmcia/ibmtr_cs.c          |   16 
 b/drivers/net/pcnet32.c                  |    4 
 b/drivers/net/r8169.c                    |    1 
 b/drivers/net/sis190.c                   |    3 
 b/drivers/net/sis900.c                   |    2 
 b/drivers/net/starfire.c                 |   13 
 b/drivers/net/tg3.c                      |   16 
 b/drivers/net/tlan.c                     |    2 
 b/drivers/net/tokenring/ibmtr.c          |    7 
 b/drivers/net/tulip/de4x5.c              |    2 
 b/drivers/net/tulip/tulip_core.c         |   13 
 b/drivers/net/wireless/airo.c            |   45 +
 b/drivers/pci/quirks.c                   |   28 -
 b/drivers/pci/setup-bus.c                |   30 -
 b/drivers/pci/setup-res.c                |    2 
 b/drivers/pcmcia/yenta_socket.c          |    6 
 b/drivers/pnp/system.c                   |    2 
 b/drivers/scsi/53c700.c                  |    4 
 b/drivers/scsi/Kconfig                   |    2 
 b/drivers/scsi/NCR53C9x.c                |   28 -
 b/drivers/scsi/arm/acornscsi.c           |    6 
 b/drivers/scsi/ata_piix.c                |    6 
 b/drivers/scsi/constants.c               |   20 
 b/drivers/scsi/esp.c                     |   33 -
 b/drivers/scsi/fcal.c                    |    2 
 b/drivers/scsi/hosts.c                   |   37 -
 b/drivers/scsi/hosts.h                   |   49 -
 b/drivers/scsi/ide-scsi.c                |    6 
 b/drivers/scsi/lasi700.c                 |    3 
 b/drivers/scsi/libata-core.c             |   64 +-
 b/drivers/scsi/libata.h                  |    2 
 b/drivers/scsi/megaraid.c                |    1 
 b/drivers/scsi/megaraid.h                |    1 
 b/drivers/scsi/osst_options.h            |    2 
 b/drivers/scsi/sata_promise.c            |  782 ++++++++++++++++++++++++++-----
 b/drivers/scsi/sata_sil.c                |    2 
 b/drivers/scsi/sata_svw.c                |    2 
 b/drivers/scsi/sata_via.c                |    3 
 b/drivers/scsi/scsi.c                    |  131 ++++-
 b/drivers/scsi/scsi_lib.c                |   42 -
 b/drivers/scsi/scsi_proc.c               |   16 
 b/drivers/scsi/scsi_scan.c               |   56 +-
 b/drivers/scsi/scsi_syms.c               |    9 
 b/drivers/scsi/scsi_sysfs.c              |   31 -
 b/drivers/scsi/sg.c                      |    7 
 b/drivers/scsi/sim710.c                  |    1 
 b/drivers/scsi/st.c                      |    2 
 b/drivers/serial/serial_core.c           |    3 
 b/drivers/usb/host/ehci-hcd.c            |    3 
 b/drivers/usb/net/kaweth.c               |    3 
 b/drivers/usb/net/usbnet.c               |    3 
 b/drivers/usb/serial/Kconfig             |    2 
 b/drivers/usb/serial/digi_acceleport.c   |    6 
 b/drivers/usb/storage/scsiglue.c         |    3 
 b/drivers/usb/storage/usb.c              |   19 
 b/drivers/video/console/Kconfig          |    2 
 b/drivers/video/radeonfb.c               |    2 
 b/fs/Kconfig.binfmt                      |    2 
 b/fs/aio.c                               |   15 
 b/fs/binfmt_misc.c                       |    2 
 b/fs/char_dev.c                          |    2 
 b/fs/compat.c                            |   11 
 b/fs/cramfs/inode.c                      |   39 -
 b/fs/direct-io.c                         |    2 
 b/fs/dquot.c                             |   11 
 b/fs/ext2/balloc.c                       |   29 -
 b/fs/ext2/ialloc.c                       |   87 +--
 b/fs/ext2/xattr.c                        |    8 
 b/fs/ext3/ialloc.c                       |   10 
 b/fs/ext3/xattr.c                        |    7 
 b/fs/fat/inode.c                         |   12 
 b/fs/jbd/journal.c                       |   14 
 b/fs/jbd/transaction.c                   |    9 
 b/fs/jfs/jfs_metapage.c                  |    3 
 b/fs/jfs/namei.c                         |   11 
 b/fs/lockd/clntlock.c                    |    2 
 b/fs/minix/inode.c                       |    2 
 b/fs/nfsd/vfs.c                          |    1 
 b/fs/ntfs/ChangeLog                      |    8 
 b/fs/ntfs/Makefile                       |    2 
 b/fs/ntfs/attrib.c                       |   33 -
 b/fs/ntfs/attrib.h                       |    2 
 b/fs/partitions/msdos.c                  |    4 
 b/fs/reiserfs/super.c                    |    4 
 b/include/asm-i386/bitops.h              |    4 
 b/include/asm-i386/checksum.h            |    3 
 b/include/asm-ia64/pgtable.h             |    5 
 b/include/asm-ia64/sn/nodepda.h          |    2 
 b/include/asm-sparc/bitext.h             |    2 
 b/include/asm-sparc/ioctl.h              |    4 
 b/include/asm-sparc/namei.h              |    4 
 b/include/asm-sparc/pcic.h               |    1 
 b/include/asm-sparc/unistd.h             |   11 
 b/include/asm-sparc64/ebus.h             |    1 
 b/include/asm-sparc64/floppy.h           |   54 --
 b/include/asm-sparc64/hardirq.h          |    3 
 b/include/asm-sparc64/ioctl.h            |    4 
 b/include/asm-sparc64/namei.h            |    4 
 b/include/asm-sparc64/pgtable.h          |   14 
 b/include/asm-sparc64/spinlock.h         |    2 
 b/include/asm-sparc64/unistd.h           |   11 
 b/include/asm-x86_64/checksum.h          |    3 
 b/include/asm-x86_64/desc.h              |    2 
 b/include/asm-x86_64/hw_irq.h            |    4 
 b/include/asm-x86_64/irq.h               |    1 
 b/include/asm-x86_64/pci.h               |    2 
 b/include/asm-x86_64/processor.h         |    4 
 b/include/asm-x86_64/smp.h               |   10 
 b/include/asm-x86_64/topology.h          |    4 
 b/include/linux/blkdev.h                 |   10 
 b/include/linux/compiler.h               |    2 
 b/include/linux/in.h                     |   24 
 b/include/linux/init.h                   |    1 
 b/include/linux/ip.h                     |    2 
 b/include/linux/ipv6.h                   |    1 
 b/include/linux/libata.h                 |   13 
 b/include/linux/llc.h                    |   11 
 b/include/linux/netdevice.h              |    3 
 b/include/linux/pci_ids.h                |   10 
 b/include/linux/preempt.h                |    2 
 b/include/linux/sched.h                  |    7 
 b/include/linux/serial.h                 |    1 
 b/include/linux/signal.h                 |    2 
 b/include/linux/socket.h                 |   30 -
 b/include/linux/sysctl.h                 |    3 
 b/include/linux/times.h                  |    1 
 b/include/linux/udp.h                    |    6 
 b/include/net/if_inet6.h                 |    2 
 b/include/net/tcp.h                      |   33 +
 b/include/scsi/scsi_device.h             |   49 +
 b/include/scsi/scsi_driver.h             |    1 
 b/include/scsi/scsi_host.h               |   25 
 b/kernel/exit.c                          |   17 
 b/kernel/module.c                        |    4 
 b/kernel/posix-timers.c                  |   46 -
 b/kernel/resource.c                      |   10 
 b/kernel/sched.c                         |   68 +-
 b/kernel/signal.c                        |    8 
 b/kernel/timer.c                         |    2 
 b/lib/Makefile                           |    1 
 b/lib/div64.c                            |   41 -
 b/mm/bootmem.c                           |   20 
 b/mm/filemap.c                           |    3 
 b/mm/memory.c                            |   30 -
 b/mm/swap.c                              |   21 
 b/net/Kconfig                            |   24 
 b/net/appletalk/ddp.c                    |   11 
 b/net/bridge/netfilter/ebt_limit.c       |   13 
 b/net/compat.c                           |   15 
 b/net/core/dev.c                         |   28 +
 b/net/core/flow.c                        |   15 
 b/net/core/link_watch.c                  |    7 
 b/net/core/skbuff.c                      |   14 
 b/net/core/sock.c                        |   10 
 b/net/core/sysctl_net_core.c             |    9 
 b/net/decnet/dn_route.c                  |    5 
 b/net/ipv4/ah4.c                         |    3 
 b/net/ipv4/arp.c                         |    5 
 b/net/ipv4/igmp.c                        |    3 
 b/net/ipv4/ip_gre.c                      |    2 
 b/net/ipv4/ipcomp.c                      |    7 
 b/net/ipv4/ipmr.c                        |   68 +-
 b/net/ipv4/ipvs/ip_vs_conn.c             |    4 
 b/net/ipv4/ipvs/ip_vs_xmit.c             |    2 
 b/net/ipv4/netfilter/Kconfig             |    2 
 b/net/ipv4/netfilter/arpt_mangle.c       |    4 
 b/net/ipv4/netfilter/ip_fw_compat_masq.c |    3 
 b/net/ipv4/netfilter/ip_nat_core.c       |    3 
 b/net/ipv4/netfilter/ip_queue.c          |    5 
 b/net/ipv4/netfilter/ipt_REDIRECT.c      |    2 
 b/net/ipv4/route.c                       |   10 
 b/net/ipv4/tcp.c                         |   17 
 b/net/ipv4/tcp_input.c                   |    5 
 b/net/ipv4/tcp_ipv4.c                    |   16 
 b/net/ipv4/tcp_minisocks.c               |    5 
 b/net/ipv4/udp.c                         |   29 -
 b/net/ipv6/addrconf.c                    |   72 +-
 b/net/ipv6/ah6.c                         |    3 
 b/net/ipv6/icmp.c                        |   46 +
 b/net/ipv6/ip6_output.c                  |   13 
 b/net/ipv6/ip6_tunnel.c                  |    7 
 b/net/ipv6/ipcomp6.c                     |    7 
 b/net/ipv6/mcast.c                       |   24 
 b/net/ipv6/netfilter/ip6_queue.c         |    5 
 b/net/ipv6/route.c                       |   15 
 b/net/ipv6/sysctl_net_ipv6.c             |    2 
 b/net/ipv6/tcp_ipv6.c                    |    8 
 b/net/ipv6/udp.c                         |  143 +++--
 b/net/ipv6/xfrm6_policy.c                |    2 
 b/net/ipx/af_ipx.c                       |   25 
 b/net/irda/af_irda.c                     |    8 
 b/net/irda/discovery.c                   |   32 -
 b/net/irda/ircomm/ircomm_core.c          |   30 -
 b/net/irda/ircomm/ircomm_tty.c           |   38 +
 b/net/irda/iriap.c                       |   33 -
 b/net/irda/irlap.c                       |    6 
 b/net/irda/irlmp.c                       |   17 
 b/net/irda/irnet/irnet_ppp.c             |    8 
 b/net/irda/irttp.c                       |   12 
 b/net/llc/af_llc.c                       |  218 +++-----
 b/net/llc/llc_conn.c                     |    3 
 b/net/llc/llc_input.c                    |    4 
 b/net/llc/llc_proc.c                     |   21 
 b/net/llc/llc_sap.c                      |    6 
 b/net/netlink/af_netlink.c               |    2 
 b/net/sched/sch_cbq.c                    |    1 
 b/net/sched/sch_dsmark.c                 |    1 
 b/net/sched/sch_fifo.c                   |    4 
 b/net/sched/sch_generic.c                |    2 
 b/net/sched/sch_gred.c                   |    4 
 b/net/sched/sch_prio.c                   |    1 
 b/net/sched/sch_red.c                    |    2 
 b/net/sched/sch_tbf.c                    |    4 
 b/net/socket.c                           |    6 
 b/net/xfrm/xfrm_policy.c                 |   62 +-
 b/net/xfrm/xfrm_state.c                  |    1 
 b/sound/oss/ali5455.c                    |   14 
 include/asm-h8300/smplock.h              |   51 --
 lib/percpu_counter.c                     |   21 
 323 files changed, 3646 insertions(+), 2201 deletions(-)

