From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.23 released
Date: Tue, 18 Jun 2002 19:18:05 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200206190218.g5J2I5j19554@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.23 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.23.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.23.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               274766           1254070
Full source                       34556341         154204160

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/alpha/kernel/check_asm.c               |   30 
 arch/arm/tools/constants-hdr                |    5 
 arch/arm/tools/getconstants.c               |   75 
 arch/x86_64/tools/Makefile                  |   29 
 arch/x86_64/tools/offset.c                  |   49 
 arch/x86_64/tools/offset.sed                |    7 
 b/Documentation/DocBook/kernel-hacking.tmpl |    9 
 b/Documentation/filesystems/Locking         |   42 
 b/Documentation/filesystems/porting         |    5 
 b/Documentation/filesystems/proc.txt        |  197 -
 b/Documentation/networking/ip-sysctl.txt    |   68 
 b/Documentation/sysctl/vm.txt               |  133 
 b/MAINTAINERS                               |    5 
 b/Makefile                                  |   68 
 b/Rules.make                                |   49 
 b/arch/alpha/Makefile                       |   20 
 b/arch/alpha/boot/Makefile                  |    2 
 b/arch/alpha/kernel/Makefile                |   14 
 b/arch/alpha/kernel/asm-offsets.c           |   29 
 b/arch/alpha/kernel/time.c                  |    2 
 b/arch/alpha/lib/Makefile                   |    2 
 b/arch/arm/Makefile                         |   31 
 b/arch/arm/boot/Makefile                    |    4 
 b/arch/arm/kernel/asm-offsets.c             |   82 
 b/arch/arm/kernel/time.c                    |    2 
 b/arch/arm/tools/Makefile                   |   35 
 b/arch/cris/Makefile                        |    3 
 b/arch/cris/boot/Makefile                   |    2 
 b/arch/cris/kernel/time.c                   |    2 
 b/arch/i386/Makefile                        |    5 
 b/arch/i386/boot/Makefile                   |    4 
 b/arch/i386/config.in                       |   31 
 b/arch/i386/kernel/Makefile                 |    1 
 b/arch/i386/kernel/apic.c                   |    4 
 b/arch/i386/kernel/apm.c                    |   16 
 b/arch/i386/kernel/bluesmoke.c              |    4 
 b/arch/i386/kernel/i386_ksyms.c             |    1 
 b/arch/i386/kernel/io_apic.c                |    6 
 b/arch/i386/kernel/irq.c                    |   34 
 b/arch/i386/kernel/microcode.c              |   10 
 b/arch/i386/kernel/mtrr.c                   |    6 
 b/arch/i386/kernel/nmi.c                    |    9 
 b/arch/i386/kernel/smp.c                    |   17 
 b/arch/i386/kernel/smpboot.c                |   43 
 b/arch/i386/kernel/time.c                   |    1 
 b/arch/i386/mm/Makefile                     |    3 
 b/arch/i386/mm/ioremap.c                    |   67 
 b/arch/i386/mm/pageattr.c                   |  198 +
 b/arch/ia64/Makefile                        |    9 
 b/arch/ia64/boot/Makefile                   |    2 
 b/arch/ia64/ia32/sys_ia32.c                 |   41 
 b/arch/ia64/kernel/ia64_ksyms.c             |    3 
 b/arch/ia64/kernel/iosapic.c                |    7 
 b/arch/ia64/kernel/irq.c                    |   29 
 b/arch/ia64/kernel/mca.c                    |    5 
 b/arch/ia64/kernel/perfmon.c                |    2 
 b/arch/ia64/kernel/smp.c                    |   16 
 b/arch/ia64/kernel/smpboot.c                |    7 
 b/arch/ia64/kernel/time.c                   |    2 
 b/arch/ia64/sn/io/sgi_io_init.c             |    2 
 b/arch/ia64/sn/io/sn1/ml_SN_intr.c          |    7 
 b/arch/ia64/sn/kernel/llsc4.c               |   15 
 b/arch/ia64/sn/kernel/setup.c               |    6 
 b/arch/ia64/sn/kernel/sn1/sn1_smp.c         |    6 
 b/arch/ia64/tools/Makefile                  |    2 
 b/arch/m68k/Makefile                        |    2 
 b/arch/m68k/kernel/time.c                   |    1 
 b/arch/mips/Makefile                        |    6 
 b/arch/mips/boot/Makefile                   |    3 
 b/arch/mips/kernel/time.c                   |    2 
 b/arch/mips64/Makefile                      |    6 
 b/arch/mips64/boot/Makefile                 |    3 
 b/arch/mips64/kernel/syscall.c              |    2 
 b/arch/parisc/Makefile                      |    2 
 b/arch/parisc/kernel/time.c                 |    2 
 b/arch/ppc/Makefile                         |    3 
 b/arch/ppc/kernel/irq.c                     |   17 
 b/arch/ppc/kernel/open_pic.c                |    5 
 b/arch/ppc/kernel/ppc_ksyms.c               |    1 
 b/arch/ppc/kernel/setup.c                   |    4 
 b/arch/ppc/kernel/smp.c                     |   35 
 b/arch/ppc/kernel/time.c                    |    3 
 b/arch/ppc/platforms/chrp_smp.c             |    5 
 b/arch/ppc/platforms/iSeries_smp.c          |    7 
 b/arch/ppc/platforms/pmac_smp.c             |   10 
 b/arch/ppc64/Makefile                       |    4 
 b/arch/ppc64/boot/Makefile                  |    3 
 b/arch/ppc64/kernel/sys_ppc32.c             |   45 
 b/arch/ppc64/kernel/time.c                  |    2 
 b/arch/s390/Makefile                        |    3 
 b/arch/s390/boot/Makefile                   |    2 
 b/arch/s390/kernel/time.c                   |    2 
 b/arch/s390/math-emu/Makefile               |    1 
 b/arch/s390/mm/ioremap.c                    |    1 
 b/arch/s390x/Makefile                       |    3 
 b/arch/s390x/boot/Makefile                  |    2 
 b/arch/s390x/kernel/time.c                  |    2 
 b/arch/s390x/kernel/wrapper32.S             |    2 
 b/arch/s390x/mm/ioremap.c                   |    1 
 b/arch/sh/Makefile                          |    3 
 b/arch/sh/boot/Makefile                     |    2 
 b/arch/sh/kernel/time.c                     |    2 
 b/arch/sparc/Makefile                       |    4 
 b/arch/sparc/kernel/time.c                  |    2 
 b/arch/sparc64/Makefile                     |    2 
 b/arch/sparc64/boot/Makefile                |    3 
 b/arch/sparc64/defconfig                    |   41 
 b/arch/sparc64/kernel/entry.S               |    3 
 b/arch/sparc64/kernel/power.c               |   23 
 b/arch/sparc64/kernel/process.c             |   15 
 b/arch/sparc64/kernel/time.c                |    2 
 b/arch/sparc64/prom/misc.c                  |   13 
 b/arch/x86_64/Makefile                      |   47 
 b/arch/x86_64/boot/Makefile                 |    8 
 b/arch/x86_64/config.in                     |    4 
 b/arch/x86_64/ia32/Makefile                 |    5 
 b/arch/x86_64/ia32/ipc32.c                  |  645 +++
 b/arch/x86_64/ia32/sys_ia32.c               |  416 --
 b/arch/x86_64/kernel/asm-offsets.c          |   46 
 b/arch/x86_64/kernel/ioport.c               |   23 
 b/arch/x86_64/kernel/mtrr.c                 |  454 +-
 b/arch/x86_64/kernel/process.c              |   33 
 b/arch/x86_64/kernel/setup64.c              |    3 
 b/arch/x86_64/kernel/signal.c               |   56 
 b/arch/x86_64/kernel/smp.c                  |   22 
 b/arch/x86_64/kernel/vsyscall.c             |    2 
 b/arch/x86_64/kernel/x8664_ksyms.c          |    2 
 b/arch/x86_64/lib/Makefile                  |    2 
 b/arch/x86_64/lib/memset.S                  |   76 
 b/drivers/acpi/osl.c                        |    1 
 b/drivers/acpi/processor.c                  |    5 
 b/drivers/block/DAC960.c                    |    1 
 b/drivers/block/cciss.c                     |    1 
 b/drivers/block/cpqarray.c                  |    1 
 b/drivers/block/elevator.c                  |    3 
 b/drivers/block/floppy.c                    |    1 
 b/drivers/block/ll_rw_blk.c                 |    6 
 b/drivers/block/loop.c                      |   84 
 b/drivers/block/nbd.c                       |    1 
 b/drivers/block/rd.c                        |    2 
 b/drivers/block/umem.c                      |   45 
 b/drivers/char/agp/agp.h                    |    4 
 b/drivers/char/agp/agpgart_be.c             |  155 
 b/drivers/char/random.c                     |    1 
 b/drivers/char/rio/func.h                   |    2 
 b/drivers/ide/ioctl.c                       |    5 
 b/drivers/ide/tcq.c                         |   33 
 b/drivers/md/linear.c                       |   52 
 b/drivers/md/lvm-snap.c                     |    2 
 b/drivers/md/lvm.c                          |    1 
 b/drivers/md/md.c                           |  939 ++---
 b/drivers/md/multipath.c                    |   18 
 b/drivers/md/raid0.c                        |   82 
 b/drivers/md/raid1.c                        |  128 
 b/drivers/md/raid5.c                        |  154 
 b/drivers/net/aironet4500_core.c            |    2 
 b/drivers/net/tg3.c                         |  161 
 b/drivers/net/tg3.h                         |    4 
 b/drivers/pci/pci-driver.c                  |    1 
 b/drivers/pcmcia/pci_socket.c               |    1 
 b/drivers/pcmcia/yenta.c                    |    1 
 b/drivers/s390/Config.in                    |    8 
 b/drivers/s390/Makefile                     |    2 
 b/drivers/s390/block/dasd.c                 |    7 
 b/drivers/s390/block/dasd_genhd.c           |   10 
 b/drivers/s390/block/dasd_proc.c            |   14 
 b/drivers/s390/block/xpram.c                | 1317 ++-----
 b/drivers/s390/qdio.c                       |   15 
 b/drivers/scsi/README.st                    |   46 
 b/drivers/scsi/constants.c                  |    3 
 b/drivers/scsi/cpqfcTSinit.c                |    1 
 b/drivers/scsi/scsi.c                       |   14 
 b/drivers/scsi/scsi_lib.c                   |    1 
 b/drivers/scsi/sd.c                         |    1 
 b/drivers/scsi/sr.c                         |    1 
 b/drivers/scsi/st.c                         |  429 --
 b/drivers/scsi/st_options.h                 |   15 
 b/drivers/usb/class/usb-midi.c              |    2 
 b/drivers/usb/core/hub.h                    |    1 
 b/drivers/usb/host/ohci-dbg.c               |   96 
 b/drivers/usb/host/ohci-hcd.c               |    7 
 b/drivers/usb/host/ohci-mem.c               |    1 
 b/drivers/usb/host/ohci-q.c                 |  135 
 b/drivers/usb/host/ohci.h                   |   20 
 b/drivers/usb/net/kaweth.c                  |   33 
 b/drivers/usb/storage/scsiglue.c            |   14 
 b/drivers/usb/storage/usb.c                 |  135 
 b/drivers/usb/storage/usb.h                 |   11 
 b/drivers/video/fbcon.c                     |    2 
 b/fs/bio.c                                  |    9 
 b/fs/buffer.c                               |  138 
 b/fs/coda/dir.c                             |    9 
 b/fs/ext3/balloc.c                          |    4 
 b/fs/ext3/inode.c                           |    2 
 b/fs/file_table.c                           |   45 
 b/fs/inode.c                                |   26 
 b/fs/intermezzo/dir.c                       |   27 
 b/fs/intermezzo/vfs.c                       |   70 
 b/fs/jbd/commit.c                           |   14 
 b/fs/jbd/journal.c                          |    2 
 b/fs/jbd/revoke.c                           |    6 
 b/fs/jbd/transaction.c                      |   66 
 b/fs/jfs/jfs_logmgr.c                       |    1 
 b/fs/locks.c                                |  253 -
 b/fs/namei.c                                |   25 
 b/fs/nfs/dir.c                              |    4 
 b/fs/ntfs/aops.c                            |   16 
 b/fs/ntfs/compress.c                        |   71 
 b/fs/ntfs/super.c                           |    2 
 b/fs/partitions/Makefile                    |    2 
 b/fs/partitions/check.c                     |    6 
 b/fs/partitions/ibm.c                       |  285 -
 b/fs/proc/array.c                           |    8 
 b/fs/proc/proc_misc.c                       |   31 
 b/fs/qnx4/fsync.c                           |    2 
 b/fs/reiserfs/fix_node.c                    |    2 
 b/fs/reiserfs/journal.c                     |    8 
 b/fs/ufs/truncate.c                         |    8 
 b/include/asm-alpha/agp.h                   |   11 
 b/include/asm-generic/tlb.h                 |    2 
 b/include/asm-i386/agp.h                    |   23 
 b/include/asm-i386/cacheflush.h             |    3 
 b/include/asm-i386/hardirq.h                |    2 
 b/include/asm-i386/io.h                     |   26 
 b/include/asm-i386/kmap_types.h             |    9 
 b/include/asm-i386/page.h                   |    3 
 b/include/asm-i386/pgtable-2level.h         |    1 
 b/include/asm-i386/pgtable-3level.h         |    2 
 b/include/asm-i386/pgtable.h                |    3 
 b/include/asm-i386/smp.h                    |   30 
 b/include/asm-i386/xor.h                    |   93 
 b/include/asm-ia64/agp.h                    |   11 
 b/include/asm-ia64/hardirq.h                |    2 
 b/include/asm-ia64/smp.h                    |   24 
 b/include/asm-ppc/hardirq.h                 |    2 
 b/include/asm-ppc/kmap_types.h              |    3 
 b/include/asm-ppc/smp.h                     |   20 
 b/include/asm-s390/system.h                 |    8 
 b/include/asm-s390x/system.h                |    8 
 b/include/asm-sparc/kmap_types.h            |    3 
 b/include/asm-sparc64/agp.h                 |   11 
 b/include/asm-sparc64/oplib.h               |    3 
 b/include/asm-sparc64/system.h              |  119 
 b/include/asm-x86_64/agp.h                  |   23 
 b/include/asm-x86_64/cacheflush.h           |    3 
 b/include/asm-x86_64/i387.h                 |   11 
 b/include/asm-x86_64/ia32.h                 |    2 
 b/include/asm-x86_64/ipc.h                  |   30 
 b/include/asm-x86_64/kmap_types.h           |    3 
 b/include/asm-x86_64/mmu_context.h          |   12 
 b/include/asm-x86_64/msr.h                  |   21 
 b/include/asm-x86_64/mtrr.h                 |   42 
 b/include/asm-x86_64/pda.h                  |    2 
 b/include/asm-x86_64/processor.h            |   11 
 b/include/asm-x86_64/spinlock.h             |    6 
 b/include/asm-x86_64/string.h               |   13 
 b/include/asm-x86_64/suspend.h              |    6 
 b/include/asm-x86_64/system.h               |    7 
 b/include/asm-x86_64/timex.h                |    2 
 b/include/asm-x86_64/tlbflush.h             |    9 
 b/include/linux/auto_fs.h                   |    3 
 b/include/linux/bio.h                       |   50 
 b/include/linux/blkdev.h                    |    9 
 b/include/linux/brlock.h                    |    4 
 b/include/linux/buffer_head.h               |   24 
 b/include/linux/dqblk_xfs.h                 |  159 
 b/include/linux/file.h                      |    1 
 b/include/linux/fs.h                        |    1 
 b/include/linux/highmem.h                   |   44 
 b/include/linux/ide.h                       |    1 
 b/include/linux/intermezzo_psdev.h          |    2 
 b/include/linux/jbd.h                       |    1 
 b/include/linux/kernel_stat.h               |    4 
 b/include/linux/llc.h                       |  102 
 b/include/linux/loop.h                      |    8 
 b/include/linux/namei.h                     |    1 
 b/include/linux/quota.h                     |    2 
 b/include/linux/raid/md.h                   |    9 
 b/include/linux/raid/md_k.h                 |   67 
 b/include/linux/raid/raid1.h                |    3 
 b/include/linux/raid/raid5.h                |    9 
 b/include/linux/reiserfs_fs.h               |    2 
 b/include/linux/sched.h                     |    2 
 b/include/linux/skbuff.h                    |  493 +-
 b/include/linux/smp.h                       |    8 
 b/include/linux/swap.h                      |   32 
 b/include/linux/sysctl.h                    |   19 
 b/include/linux/timer.h                     |    2 
 b/include/linux/tqueue.h                    |    3 
 b/include/linux/vmalloc.h                   |    3 
 b/include/linux/wait.h                      |   34 
 b/include/linux/writeback.h                 |    6 
 b/include/net/datalink.h                    |   27 
 b/include/net/llc_actn.h                    |   48 
 b/include/net/llc_c_ac.h                    |  254 +
 b/include/net/llc_c_ev.h                    |  323 +
 b/include/net/llc_c_st.h                    |   48 
 b/include/net/llc_conn.h                    |  155 
 b/include/net/llc_evnt.h                    |   93 
 b/include/net/llc_if.h                      |  155 
 b/include/net/llc_mac.h                     |   23 
 b/include/net/llc_main.h                    |   68 
 b/include/net/llc_pdu.h                     |  255 +
 b/include/net/llc_s_ac.h                    |   47 
 b/include/net/llc_s_ev.h                    |  101 
 b/include/net/llc_s_st.h                    |   34 
 b/include/net/llc_sap.h                     |   42 
 b/include/net/llc_stat.h                    |   35 
 b/include/net/p8022.h                       |    8 
 b/init/main.c                               |    4 
 b/kernel/context.c                          |    1 
 b/kernel/fork.c                             |    5 
 b/kernel/kmod.c                             |    1 
 b/kernel/ksyms.c                            |   10 
 b/kernel/printk.c                           |    9 
 b/kernel/sched.c                            |  171 
 b/kernel/signal.c                           |   73 
 b/kernel/softirq.c                          |   12 
 b/kernel/suspend.c                          |   40 
 b/kernel/sys.c                              |    1 
 b/kernel/sysctl.c                           |   14 
 b/kernel/timer.c                            |   10 
 b/lib/brlock.c                              |   12 
 b/lib/radix-tree.c                          |    2 
 b/mm/filemap.c                              |   68 
 b/mm/highmem.c                              |    5 
 b/mm/msync.c                                |   10 
 b/mm/page-writeback.c                       |   68 
 b/mm/page_alloc.c                           |    7 
 b/mm/page_io.c                              |  225 -
 b/mm/shmem.c                                |   22 
 b/mm/slab.c                                 |   22 
 b/mm/swap_state.c                           |   74 
 b/mm/swapfile.c                             |  404 +-
 b/mm/vmalloc.c                              |   28 
 b/mm/vmscan.c                               |   23 
 b/net/802/p8022.c                           |  132 
 b/net/Config.in                             |    9 
 b/net/Makefile                              |    2 
 b/net/core/Makefile                         |    6 
 b/net/core/datagram.c                       |  246 -
 b/net/core/dev.c                            |    8 
 b/net/core/ext8022.c                        |   76 
 b/net/core/neighbour.c                      |  929 ++---
 b/net/core/skbuff.c                         |  459 +-
 b/net/ipv4/ip_gre.c                         |    6 
 b/net/ipv4/netfilter/arp_tables.c           |   10 
 b/net/ipv4/netfilter/ip_tables.c            |   13 
 b/net/ipv4/netfilter/ipchains_core.c        |   10 
 b/net/ipv4/proc.c                           |   10 
 b/net/ipv4/route.c                          |   50 
 b/net/ipv6/netfilter/ip6_tables.c           |   13 
 b/net/ipv6/proc.c                           |   10 
 b/net/ipv6/tcp_ipv6.c                       |   12 
 b/net/llc/Makefile                          |   38 
 b/net/llc/llc_actn.c                        |  150 
 b/net/llc/llc_c_ac.c                        | 1648 +++++++++
 b/net/llc/llc_c_ev.c                        |  873 ++++
 b/net/llc/llc_c_st.c                        | 4946 ++++++++++++++++++++++++++++
 b/net/llc/llc_conn.c                        |  531 +++
 b/net/llc/llc_evnt.c                        |  112 
 b/net/llc/llc_if.c                          |  530 +++
 b/net/llc/llc_mac.c                         |  317 +
 b/net/llc/llc_main.c                        |  641 +++
 b/net/llc/llc_pdu.c                         |  654 +++
 b/net/llc/llc_s_ac.c                        |  227 +
 b/net/llc/llc_s_ev.c                        |  101 
 b/net/llc/llc_s_st.c                        |  183 +
 b/net/llc/llc_sap.c                         |  262 +
 b/net/llc/llc_sock.c                        | 1780 ++++++++++
 b/net/llc/llc_stat.c                        |  218 +
 b/net/netsyms.c                             |    2 
 b/net/socket.c                              |    4 
 b/scripts/fixdep.c                          |   13 
 b/sound/pci/cs46xx/cs46xx.c                 |    1 
 drivers/s390/block/xpram.h                  |   70 
 include/linux/xqm.h                         |  159 
 377 files changed, 22089 insertions(+), 7295 deletions(-)

