From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.34 released
Date: Mon, 9 Sep 2002 10:38:02 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209091738.g89Hc2q25261@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.34 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.34.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.34.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               199996            825965
Full source                       35318659         157276160

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/i386/vmlinux.lds                  |  101 --
 arch/ppc/kernel/galaxy_pci.c           |  121 --
 b/MAINTAINERS                          |   11 
 b/Makefile                             |    4 
 b/arch/alpha/Makefile                  |    3 
 b/arch/alpha/kernel/core_apecs.c       |   39 
 b/arch/alpha/kernel/core_cia.c         |   32 
 b/arch/alpha/kernel/core_irongate.c    |   39 
 b/arch/alpha/kernel/core_lca.c         |   38 
 b/arch/alpha/kernel/core_mcpcia.c      |   97 --
 b/arch/alpha/kernel/core_polaris.c     |   46 -
 b/arch/alpha/kernel/core_t2.c          |  160 ++-
 b/arch/alpha/kernel/core_titan.c       |  115 --
 b/arch/alpha/kernel/core_tsunami.c     |  122 +-
 b/arch/alpha/kernel/core_wildfire.c    |  115 --
 b/arch/alpha/kernel/irq.c              |    2 
 b/arch/alpha/kernel/pci.c              |   19 
 b/arch/alpha/kernel/pci_impl.h         |   13 
 b/arch/alpha/kernel/pci_iommu.c        |   20 
 b/arch/alpha/kernel/process.c          |    8 
 b/arch/alpha/kernel/proto.h            |    2 
 b/arch/alpha/kernel/smp.c              |    2 
 b/arch/alpha/kernel/sys_alcor.c        |    2 
 b/arch/alpha/kernel/sys_rx164.c        |   19 
 b/arch/alpha/kernel/sys_sable.c        |    8 
 b/arch/alpha/kernel/time.c             |    8 
 b/arch/alpha/kernel/traps.c            |    4 
 b/arch/alpha/mm/numa.c                 |    4 
 b/arch/arm/mm/init.c                   |    2 
 b/arch/cris/mm/init.c                  |    2 
 b/arch/i386/Config.help                |    2 
 b/arch/i386/Makefile                   |    4 
 b/arch/i386/config.in                  |   17 
 b/arch/i386/kernel/Makefile            |    3 
 b/arch/i386/kernel/dmi_scan.c          |   23 
 b/arch/i386/kernel/init_task.c         |    2 
 b/arch/i386/kernel/irq.c               |    5 
 b/arch/i386/kernel/numaq.c             |  143 +++
 b/arch/i386/kernel/setup.c             |  275 +++---
 b/arch/i386/mm/Makefile                |    1 
 b/arch/i386/mm/discontig.c             |  301 +++++++
 b/arch/i386/mm/init.c                  |   75 +
 b/arch/i386/mm/pgtable.c               |   18 
 b/arch/i386/pci/fixup.c                |   17 
 b/arch/i386/vmlinux.lds.S              |  101 ++
 b/arch/ia64/config.in                  |    4 
 b/arch/m68k/hp300/Makefile             |    2 
 b/arch/m68k/sun3x/Makefile             |    2 
 b/arch/mips/au1000/common/Makefile     |    2 
 b/arch/mips64/sgi-ip27/ip27-memory.c   |    2 
 b/arch/ppc/4xx_io/serial_sicc.c        |   30 
 b/arch/ppc/8260_io/uart.c              |   12 
 b/arch/ppc/8xx_io/cs4218_tdm.c         |   62 -
 b/arch/ppc/8xx_io/uart.c               |   12 
 b/arch/ppc/amiga/Makefile              |    2 
 b/arch/ppc/amiga/config.c              |   14 
 b/arch/ppc/iSeries/LparData.c          |   42 -
 b/arch/ppc/iSeries/rtc.c               |   12 
 b/arch/ppc/kernel/Makefile             |    2 
 b/arch/ppc/kernel/indirect_pci.c       |  104 +-
 b/arch/ppc/kernel/pci.c                |   63 -
 b/arch/ppc/kernel/ppc4xx_serial.c      |   10 
 b/arch/ppc/kernel/ppc_htab.c           |    6 
 b/arch/ppc/kernel/ppc_ksyms.c          |    5 
 b/arch/ppc/kernel/process.c            |    6 
 b/arch/ppc/kernel/setup.c              |    8 
 b/arch/ppc/kernel/smp.c                |    2 
 b/arch/ppc/mm/fault.c                  |    2 
 b/arch/ppc/platforms/apus_pci.c        |   99 +-
 b/arch/ppc/platforms/apus_setup.c      |   10 
 b/arch/ppc/platforms/chrp_pci.c        |  192 +---
 b/arch/ppc/platforms/gemini_pci.c      |   80 -
 b/arch/ppc/platforms/pmac_pci.c        |  162 ++-
 b/arch/ppc/platforms/proc_rtas.c       |   20 
 b/arch/ppc/xmon/start.c                |    6 
 b/arch/sh/mm/init.c                    |    4 
 b/arch/sparc/kernel/pcic.c             |  105 +-
 b/arch/sparc/kernel/process.c          |   13 
 b/arch/sparc/mm/fault.c                |    2 
 b/arch/sparc/mm/srmmu.c                |    2 
 b/arch/sparc/mm/sun4c.c                |    2 
 b/arch/sparc64/defconfig               |   12 
 b/arch/sparc64/kernel/ioctl32.c        |  140 ++-
 b/arch/sparc64/kernel/pci_psycho.c     |  175 +---
 b/arch/sparc64/kernel/pci_sabre.c      |  402 ++++-----
 b/arch/sparc64/kernel/pci_schizo.c     |  175 +---
 b/arch/sparc64/kernel/process.c        |   28 
 b/arch/sparc64/lib/VIScsum.S           |   95 ++
 b/arch/sparc64/mm/init.c               |    2 
 b/drivers/acorn/block/mfmhd.c          |   68 -
 b/drivers/acpi/Config.in               |    4 
 b/drivers/base/fs/Makefile             |    2 
 b/drivers/block/DAC960.c               |    9 
 b/drivers/block/DAC960.h               |    2 
 b/drivers/block/Makefile               |    4 
 b/drivers/block/acsi.c                 |   29 
 b/drivers/block/blkpg.c                |   27 
 b/drivers/block/cciss.c                |   10 
 b/drivers/block/cciss.h                |    3 
 b/drivers/block/cpqarray.c             |   27 
 b/drivers/block/floppy.c               |   32 
 b/drivers/block/genhd.c                |   53 -
 b/drivers/block/ll_rw_blk.c            |    8 
 b/drivers/block/loop.c                 |    5 
 b/drivers/block/paride/pcd.c           | 1033 ++++++++++++------------
 b/drivers/block/paride/pd.c            |   10 
 b/drivers/block/ps2esdi.c              |   19 
 b/drivers/block/rd.c                   |   19 
 b/drivers/block/umem.c                 |   11 
 b/drivers/block/xd.c                   |   14 
 b/drivers/cdrom/cdrom.c                |    2 
 b/drivers/cdrom/cdu31a.c               |   16 
 b/drivers/cdrom/mcdx.c                 |   47 -
 b/drivers/cdrom/sbpcd.c                | 1316 +++++++++++++++----------------
 b/drivers/cdrom/sbpcd.h                |   58 -
 b/drivers/char/Makefile                |    7 
 b/drivers/char/agp/agp.c               |   72 -
 b/drivers/char/agp/agp.h               |  112 --
 b/drivers/char/ftape/lowlevel/Makefile |    2 
 b/drivers/char/hvc_console.c           |    1 
 b/drivers/char/sonypi.h                |    2 
 b/drivers/char/tty_io.c                |   12 
 b/drivers/hotplug/ibmphp_hpc.c         |    1 
 b/drivers/i2c/Makefile                 |    2 
 b/drivers/i2c/i2c-proc.c               |   46 -
 b/drivers/ide/Makefile                 |    2 
 b/drivers/ide/hd.c                     |   23 
 b/drivers/ide/ide-cd.c                 |   30 
 b/drivers/ide/ide-disk.c               |   22 
 b/drivers/ide/ide-floppy.c             |   29 
 b/drivers/ide/ide-geometry.c           |    2 
 b/drivers/ide/ide-probe.c              |   32 
 b/drivers/ide/ide.c                    |   50 -
 b/drivers/isdn/act2000/act2000_isa.c   |    1 
 b/drivers/isdn/act2000/capi.c          |    1 
 b/drivers/isdn/divert/divert_procfs.c  |    1 
 b/drivers/isdn/eicon/eicon_idi.c       |    1 
 b/drivers/isdn/eicon/linchr.c          |    1 
 b/drivers/isdn/hisax/amd7930.c         |    1 
 b/drivers/isdn/hisax/amd7930_fn.c      |    1 
 b/drivers/isdn/hisax/arcofi.c          |    1 
 b/drivers/isdn/hisax/asuscom.c         |    1 
 b/drivers/isdn/hisax/avm_a1.c          |    1 
 b/drivers/isdn/hisax/avm_a1p.c         |    1 
 b/drivers/isdn/hisax/avm_pci.c         |    1 
 b/drivers/isdn/hisax/bkm_a4t.c         |    2 
 b/drivers/isdn/hisax/bkm_a8.c          |    2 
 b/drivers/isdn/hisax/callc.c           |    1 
 b/drivers/isdn/hisax/diva.c            |    1 
 b/drivers/isdn/hisax/elsa.c            |    1 
 b/drivers/isdn/hisax/enternow_pci.c    |    1 
 b/drivers/isdn/hisax/fsm.c             |    1 
 b/drivers/isdn/hisax/gazel.c           |    1 
 b/drivers/isdn/hisax/hfc_2bds0.c       |    1 
 b/drivers/isdn/hisax/hfc_2bs0.c        |    1 
 b/drivers/isdn/hisax/hfc_pci.c         |    1 
 b/drivers/isdn/hisax/hfc_sx.c          |    1 
 b/drivers/isdn/hisax/hfcscard.c        |    1 
 b/drivers/isdn/hisax/hisax_hfcpci.c    |    2 
 b/drivers/isdn/hisax/hscx.c            |    1 
 b/drivers/isdn/hisax/icc.c             |    1 
 b/drivers/isdn/hisax/ipacx.c           |    1 
 b/drivers/isdn/hisax/isac.c            |    1 
 b/drivers/isdn/hisax/isar.c            |    1 
 b/drivers/isdn/hisax/isdnl1.c          |    1 
 b/drivers/isdn/hisax/isdnl2.c          |    1 
 b/drivers/isdn/hisax/isdnl3.c          |    1 
 b/drivers/isdn/hisax/isurf.c           |    1 
 b/drivers/isdn/hisax/ix1_micro.c       |    1 
 b/drivers/isdn/hisax/jade.c            |    1 
 b/drivers/isdn/hisax/l3_1tr6.c         |    1 
 b/drivers/isdn/hisax/l3dss1.c          |    1 
 b/drivers/isdn/hisax/l3ni1.c           |    1 
 b/drivers/isdn/hisax/lmgr.c            |    1 
 b/drivers/isdn/hisax/mic.c             |    1 
 b/drivers/isdn/hisax/netjet.c          |    1 
 b/drivers/isdn/hisax/niccy.c           |    1 
 b/drivers/isdn/hisax/nj_s.c            |    1 
 b/drivers/isdn/hisax/nj_u.c            |    1 
 b/drivers/isdn/hisax/q931.c            |    1 
 b/drivers/isdn/hisax/s0box.c           |    1 
 b/drivers/isdn/hisax/saphir.c          |    1 
 b/drivers/isdn/hisax/sedlbauer.c       |    1 
 b/drivers/isdn/hisax/sportster.c       |    1 
 b/drivers/isdn/hisax/tei.c             |    1 
 b/drivers/isdn/hisax/teleint.c         |    1 
 b/drivers/isdn/hisax/teles0.c          |    1 
 b/drivers/isdn/hisax/teles3.c          |    1 
 b/drivers/isdn/hisax/telespci.c        |    1 
 b/drivers/isdn/hisax/w6692.c           |    1 
 b/drivers/isdn/hysdn/hysdn_net.c       |    1 
 b/drivers/isdn/hysdn/hysdn_procconf.c  |    1 
 b/drivers/isdn/hysdn/hysdn_proclog.c   |    1 
 b/drivers/isdn/i4l/isdn_ppp.c          |   62 -
 b/drivers/isdn/pcbit/drv.c             |    4 
 b/drivers/isdn/sc/command.c            |    1 
 b/drivers/isdn/sc/event.c              |    1 
 b/drivers/isdn/sc/interrupt.c          |    1 
 b/drivers/isdn/sc/ioctl.c              |    1 
 b/drivers/isdn/sc/message.c            |    1 
 b/drivers/isdn/sc/packet.c             |    1 
 b/drivers/isdn/sc/shmem.c              |    1 
 b/drivers/isdn/sc/timer.c              |    1 
 b/drivers/md/md.c                      |   17 
 b/drivers/message/i2o/Makefile         |    2 
 b/drivers/message/i2o/i2o_block.c      |   29 
 b/drivers/mtd/devices/blkmtd.c         |    1 
 b/drivers/mtd/ftl.c                    |   11 
 b/drivers/mtd/nftlcore.c               |   16 
 b/drivers/net/8139too.c                |    3 
 b/drivers/net/ns83820.c                |    2 
 b/drivers/net/ppp_generic.c            |    2 
 b/drivers/net/tun.c                    |    8 
 b/drivers/pci/probe.c                  |   26 
 b/drivers/pci/quirks.c                 |   12 
 b/drivers/pci/setup-res.c              |    2 
 b/drivers/pcmcia/Makefile              |    2 
 b/drivers/pnp/pnpbios_core.c           |    9 
 b/drivers/s390/block/dasd.c            |    4 
 b/drivers/s390/block/dasd_genhd.c      |   16 
 b/drivers/scsi/qlogicfc.c              |   17 
 b/drivers/scsi/qlogicfc.h              |    2 
 b/drivers/scsi/scsi_error.c            |    1 
 b/drivers/scsi/sd.c                    |  118 +-
 b/drivers/scsi/sd.h                    |    2 
 b/drivers/scsi/sr.c                    |  305 +++----
 b/drivers/scsi/sr.h                    |   11 
 b/drivers/scsi/sr_ioctl.c              |  142 +--
 b/drivers/scsi/sr_vendor.c             |  118 +-
 b/drivers/scsi/st.c                    |   14 
 b/drivers/scsi/sym53c8xx.c             |    2 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c  |    2 
 b/drivers/usb/storage/sddr09.c         |   35 
 b/drivers/usb/storage/usb.c            |    1 
 b/drivers/video/Makefile               |    7 
 b/fs/Makefile                          |    3 
 b/fs/affs/file.c                       |   10 
 b/fs/aio.c                             |    2 
 b/fs/binfmt_elf.c                      |    2 
 b/fs/block_dev.c                       |   62 -
 b/fs/buffer.c                          |   73 -
 b/fs/dnotify.c                         |   24 
 b/fs/driverfs/inode.c                  |   13 
 b/fs/exec.c                            |   49 -
 b/fs/ext2/dir.c                        |   11 
 b/fs/ext3/inode.c                      |   30 
 b/fs/fat/inode.c                       |   17 
 b/fs/fcntl.c                           |  120 ++
 b/fs/file_table.c                      |    1 
 b/fs/intermezzo/kml_utils.c            |    2 
 b/fs/jffs/inode-v23.c                  |   11 
 b/fs/jffs2/background.c                |    1 
 b/fs/jffs2/file.c                      |    4 
 b/fs/jfs/file.c                        |   11 
 b/fs/jfs/inode.c                       |    3 
 b/fs/jfs/jfs_dtree.c                   |    1 
 b/fs/jfs/jfs_extent.c                  |    9 
 b/fs/jfs/jfs_imap.c                    |   28 
 b/fs/jfs/jfs_incore.h                  |    2 
 b/fs/jfs/jfs_logmgr.c                  |   11 
 b/fs/jfs/jfs_metapage.c                |   73 -
 b/fs/jfs/jfs_metapage.h                |    5 
 b/fs/jfs/jfs_mount.c                   |   43 -
 b/fs/jfs/jfs_superblock.h              |    2 
 b/fs/jfs/jfs_txnmgr.c                  |    3 
 b/fs/jfs/jfs_umount.c                  |   21 
 b/fs/jfs/namei.c                       |    3 
 b/fs/jfs/resize.c                      |   36 
 b/fs/jfs/super.c                       |   47 -
 b/fs/jfs/xattr.c                       |   44 -
 b/fs/lockd/clntlock.c                  |    1 
 b/fs/lockd/svc.c                       |    1 
 b/fs/locks.c                           |   12 
 b/fs/minix/dir.c                       |   12 
 b/fs/namei.c                           |    3 
 b/fs/partitions/Makefile               |    2 
 b/fs/partitions/check.c                |  473 +++++------
 b/fs/ramfs/inode.c                     |   14 
 b/fs/reiserfs/bitmap.c                 | 1366 ++++++++++++++++++---------------
 b/fs/reiserfs/fix_node.c               |    4 
 b/fs/reiserfs/hashes.c                 |   10 
 b/fs/reiserfs/inode.c                  |   96 --
 b/fs/reiserfs/journal.c                |   13 
 b/fs/reiserfs/namei.c                  |    4 
 b/fs/reiserfs/procfs.c                 |   46 -
 b/fs/reiserfs/resize.c                 |   48 -
 b/fs/reiserfs/stree.c                  |   30 
 b/fs/reiserfs/super.c                  |  149 ++-
 b/fs/reiserfs/tail_conversion.c        |    5 
 b/fs/sysv/dir.c                        |    3 
 b/include/asm-alpha/core_t2.h          |   40 
 b/include/asm-alpha/dma.h              |   47 -
 b/include/asm-alpha/floppy.h           |   23 
 b/include/asm-alpha/ide.h              |   11 
 b/include/asm-alpha/kmap_types.h       |   31 
 b/include/asm-alpha/mmzone.h           |    8 
 b/include/asm-alpha/pgtable.h          |    6 
 b/include/asm-alpha/user.h             |    1 
 b/include/asm-arm/memory.h             |    4 
 b/include/asm-generic/percpu.h         |    2 
 b/include/asm-i386/highmem.h           |    6 
 b/include/asm-i386/io.h                |    6 
 b/include/asm-i386/max_numnodes.h      |   12 
 b/include/asm-i386/mmzone.h            |  101 ++
 b/include/asm-i386/numaq.h             |  179 ++++
 b/include/asm-i386/page.h              |    2 
 b/include/asm-i386/pci.h               |    6 
 b/include/asm-i386/pgalloc.h           |    2 
 b/include/asm-i386/pgtable.h           |    7 
 b/include/asm-i386/setup.h             |   33 
 b/include/asm-i386/spinlock.h          |    2 
 b/include/asm-i386/tlbflush.h          |   18 
 b/include/asm-mips64/mmzone.h          |    2 
 b/include/asm-mips64/pgtable.h         |    4 
 b/include/asm-ppc/elf.h                |    9 
 b/include/asm-ppc/hardirq.h            |    6 
 b/include/asm-ppc/highmem.h            |    6 
 b/include/asm-ppc/io.h                 |    2 
 b/include/asm-ppc/pci-bridge.h         |    1 
 b/include/asm-ppc/pgalloc.h            |    2 
 b/include/asm-ppc/semaphore.h          |    4 
 b/include/asm-ppc64/mmzone.h           |    4 
 b/include/asm-ppc64/page.h             |    2 
 b/include/asm-sparc/hardirq.h          |    6 
 b/include/asm-sparc/highmem.h          |    6 
 b/include/asm-sparc64/hardirq.h        |    4 
 b/include/linux/blkdev.h               |    3 
 b/include/linux/bootmem.h              |    6 
 b/include/linux/compiler.h             |    6 
 b/include/linux/device.h               |    6 
 b/include/linux/fs.h                   |   11 
 b/include/linux/genhd.h                |   31 
 b/include/linux/highmem.h              |    4 
 b/include/linux/ide.h                  |    5 
 b/include/linux/igmp.h                 |    2 
 b/include/linux/init_task.h            |    5 
 b/include/linux/list.h                 |   49 -
 b/include/linux/mm.h                   |    8 
 b/include/linux/mmzone.h               |    5 
 b/include/linux/page-flags.h           |   30 
 b/include/linux/pci.h                  |   12 
 b/include/linux/pci_ids.h              |   32 
 b/include/linux/preempt.h              |   10 
 b/include/linux/ptrace.h               |    1 
 b/include/linux/raid/md.h              |    1 
 b/include/linux/reiserfs_fs.h          |  108 ++
 b/include/linux/reiserfs_fs_i.h        |    4 
 b/include/linux/reiserfs_fs_sb.h       |   45 -
 b/include/linux/rmap-locking.h         |   33 
 b/include/linux/sched.h                |   57 -
 b/include/linux/sysctl.h               |    1 
 b/include/linux/threads.h              |    3 
 b/include/net/inet_common.h            |    3 
 b/include/net/sctp/structs.h           |   18 
 b/include/net/sock.h                   |    5 
 b/include/net/tcp.h                    |    4 
 b/init/do_mounts.c                     |   27 
 b/init/main.c                          |   20 
 b/kernel/exit.c                        |  157 ++-
 b/kernel/fork.c                        |   58 -
 b/kernel/futex.c                       |   11 
 b/kernel/ksyms.c                       |    5 
 b/kernel/ptrace.c                      |    2 
 b/kernel/sched.c                       |   32 
 b/kernel/signal.c                      |  537 ++++++++++--
 b/kernel/softirq.c                     |    4 
 b/kernel/suspend.c                     |   28 
 b/kernel/sysctl.c                      |    3 
 b/mm/bootmem.c                         |    2 
 b/mm/filemap.c                         |   95 ++
 b/mm/highmem.c                         |    2 
 b/mm/memory.c                          |    4 
 b/mm/numa.c                            |    8 
 b/mm/page_alloc.c                      |   35 
 b/mm/pdflush.c                         |    1 
 b/mm/rmap.c                            |    1 
 b/mm/vmscan.c                          |    5 
 b/net/802/Makefile                     |    2 
 b/net/core/dst.c                       |    3 
 b/net/core/sock.c                      |   36 
 b/net/econet/af_econet.c               |    7 
 b/net/ipv4/af_inet.c                   |    8 
 b/net/ipv4/igmp.c                      |    7 
 b/net/ipv4/netfilter/Makefile          |    2 
 b/net/ipv4/netfilter/ip_nat_helper.c   |    9 
 b/net/ipv4/netfilter/ipchains_core.c   |    2 
 b/net/ipv4/netfilter/ipfwadm_core.c    |    2 
 b/net/ipv4/netfilter/ipt_ULOG.c        |   35 
 b/net/ipv4/tcp_input.c                 |    8 
 b/net/ipv4/tcp_minisocks.c             |    1 
 b/net/ipv4/tcp_output.c                |   59 +
 b/net/ipv6/af_inet6.c                  |   13 
 b/net/ipx/Makefile                     |    2 
 b/net/packet/af_packet.c               |    8 
 b/net/sctp/associola.c                 |   12 
 b/net/sctp/bind_addr.c                 |   10 
 b/net/sctp/endpointola.c               |    2 
 b/net/sctp/outqueue.c                  |    4 
 b/net/sctp/protocol.c                  |    6 
 b/net/sctp/sm_make_chunk.c             |    4 
 b/net/sctp/sm_sideeffect.c             |    4 
 b/net/sctp/sm_statefuns.c              |    2 
 b/net/sctp/socket.c                    |   12 
 b/net/socket.c                         |   18 
 b/net/wanrouter/af_wanpipe.c           |    8 
 b/net/x25/x25_in.c                     |    8 
 fs/jfs/jfs_extendfs.h                  |   36 
 407 files changed, 7567 insertions(+), 6610 deletions(-)

