From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.38 released
Date: Sat, 21 Sep 2002 21:28:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209220428.g8M4S3730332@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.38 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.38.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.38.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               118436            459053
Full source                       36314081         161966080

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/ia64/kernel/pci.c                |  290 --------
 b/Makefile                            |    2 
 b/arch/i386/kernel/vm86.c             |    4 
 b/arch/ia64/Makefile                  |   27 
 b/arch/ia64/config.in                 |   26 
 b/arch/ia64/hp/Makefile               |    1 
 b/arch/ia64/hp/common/Makefile        |    2 
 b/arch/ia64/hp/common/sba_iommu.c     |  137 ++-
 b/arch/ia64/hp/zx1/Makefile           |    4 
 b/arch/ia64/hp/zx1/hpzx1_misc.c       |  171 ++--
 b/arch/ia64/ia32/sys_ia32.c           |    4 
 b/arch/ia64/kernel/Makefile           |    6 
 b/arch/ia64/kernel/acpi.c             |    4 
 b/arch/ia64/kernel/efi.c              |   28 
 b/arch/ia64/kernel/entry.S            |   35 -
 b/arch/ia64/kernel/gate.S             |   65 +
 b/arch/ia64/kernel/head.S             |  485 +++++++-------
 b/arch/ia64/kernel/ia64_ksyms.c       |    2 
 b/arch/ia64/kernel/init_task.c        |    2 
 b/arch/ia64/kernel/iosapic.c          |  279 ++------
 b/arch/ia64/kernel/irq.c              |    4 
 b/arch/ia64/kernel/ivt.S              |   42 -
 b/arch/ia64/kernel/mca.c              |    2 
 b/arch/ia64/kernel/pal.S              |   45 +
 b/arch/ia64/kernel/perfmon.c          |  667 +++++++++----------
 b/arch/ia64/kernel/process.c          |   29 
 b/arch/ia64/kernel/ptrace.c           |    6 
 b/arch/ia64/kernel/semaphore.c        |   62 +
 b/arch/ia64/kernel/signal.c           |  136 ---
 b/arch/ia64/kernel/smpboot.c          |   27 
 b/arch/ia64/kernel/sys_ia64.c         |  116 ++-
 b/arch/ia64/kernel/time.c             |    5 
 b/arch/ia64/lib/Makefile              |    1 
 b/arch/ia64/lib/carta_random.S        |   54 +
 b/arch/ia64/mm/Makefile               |    3 
 b/arch/ia64/mm/hugetlbpage.c          |  546 +++++++++++++++
 b/arch/ia64/mm/init.c                 |   35 -
 b/arch/ia64/mm/tlb.c                  |    2 
 b/arch/ia64/pci/Makefile              |    3 
 b/arch/ia64/pci/pci.c                 |  278 ++++++++
 b/arch/ia64/tools/print_offsets.awk   |    1 
 b/arch/ia64/tools/print_offsets.c     |    1 
 b/arch/m68k/atari/stram.c             |   45 -
 b/drivers/acorn/block/fd1772.c        |   48 -
 b/drivers/acorn/block/mfmhd.c         |   25 
 b/drivers/acpi/ac.c                   |   14 
 b/drivers/acpi/battery.c              |   16 
 b/drivers/acpi/button.c               |   14 
 b/drivers/acpi/fan.c                  |   14 
 b/drivers/acpi/numa.c                 |    1 
 b/drivers/acpi/pci_bind.c             |    2 
 b/drivers/acpi/processor.c            |   16 
 b/drivers/acpi/thermal.c              |   24 
 b/drivers/block/DAC960.c              |   12 
 b/drivers/block/acsi.c                |    7 
 b/drivers/block/cciss.c               |   22 
 b/drivers/block/cpqarray.c            |   14 
 b/drivers/block/floppy.c              |   42 +
 b/drivers/block/genhd.c               |   74 +-
 b/drivers/block/loop.c                |   66 -
 b/drivers/block/nbd.c                 |   57 -
 b/drivers/block/paride/pcd.c          |   13 
 b/drivers/block/paride/pd.c           |    6 
 b/drivers/block/paride/pf.c           | 1165 ++++++++++++++++------------------
 b/drivers/block/ps2esdi.c             |    6 
 b/drivers/block/rd.c                  |   66 +
 b/drivers/block/swim3.c               |   19 
 b/drivers/block/swim_iop.c            |   15 
 b/drivers/block/umem.c                |    7 
 b/drivers/block/xd.c                  |    7 
 b/drivers/cdrom/aztcd.c               |   67 -
 b/drivers/cdrom/cdrom.c               |   27 
 b/drivers/cdrom/cdu31a.c              |   72 +-
 b/drivers/cdrom/cm206.c               |  130 +--
 b/drivers/cdrom/gscd.c                |   91 --
 b/drivers/cdrom/mcd.c                 |  117 +--
 b/drivers/cdrom/mcdx.c                |   12 
 b/drivers/cdrom/optcd.c               |   30 
 b/drivers/cdrom/sbpcd.c               |   20 
 b/drivers/cdrom/sjcd.c                |   31 
 b/drivers/cdrom/sonycd535.c           |   28 
 b/drivers/ide/ide-cd.c                |   18 
 b/drivers/ide/ide-disk.c              |    6 
 b/drivers/ide/ide-floppy.c            |    5 
 b/drivers/ide/ide-probe.c             |   17 
 b/drivers/ide/ide.c                   |    9 
 b/drivers/ide/legacy/hd.c             |    8 
 b/drivers/ide/pci/cy82c693.c          |    2 
 b/drivers/ide/setup-pci.c             |   11 
 b/drivers/md/md.c                     |   76 --
 b/drivers/message/i2o/i2o_block.c     |   20 
 b/drivers/mtd/ftl.c                   |   12 
 b/drivers/mtd/mtdblock.c              |   21 
 b/drivers/mtd/mtdblock_ro.c           |   97 --
 b/drivers/mtd/nftlcore.c              |    7 
 b/drivers/net/8139cp.c                |   20 
 b/drivers/net/Makefile                |    2 
 b/drivers/net/irda/actisys.c          |    2 
 b/drivers/net/irda/irda-usb.c         |  102 +-
 b/drivers/net/irda/irtty.c            |   24 
 b/drivers/net/irda/ma600.c            |   28 
 b/drivers/net/irda/nsc-ircc.c         |  182 +++--
 b/drivers/net/mii.c                   |   72 ++
 b/drivers/net/wireless/wavelan_cs.c   |   13 
 b/drivers/net/wireless/wavelan_cs.p.h |    1 
 b/drivers/pci/pci-driver.c            |    2 
 b/drivers/s390/block/dasd_genhd.c     |    6 
 b/drivers/s390/block/xpram.c          |   15 
 b/drivers/sbus/char/jsflash.c         |   71 --
 b/drivers/scsi/sd.c                   |    6 
 b/drivers/scsi/sr.c                   |   11 
 b/drivers/scsi/sr_ioctl.c             |   11 
 b/fs/block_dev.c                      |    5 
 b/fs/jfs/file.c                       |   45 +
 b/fs/jfs/jfs_dmap.c                   |  254 +++----
 b/fs/jfs/jfs_dmap.h                   |    1 
 b/fs/jfs/jfs_extent.c                 |   21 
 b/fs/jfs/jfs_imap.c                   |   20 
 b/fs/jfs/jfs_incore.h                 |    2 
 b/fs/jfs/jfs_logmgr.c                 |   18 
 b/fs/jfs/jfs_txnmgr.c                 |   43 -
 b/fs/jfs/super.c                      |    1 
 b/fs/jfs/xattr.c                      |  107 ++-
 b/fs/ncpfs/Makefile                   |    2 
 b/fs/ncpfs/getopt.c                   |   75 ++
 b/fs/ncpfs/getopt.h                   |   16 
 b/fs/ncpfs/inode.c                    |  165 ++++
 b/fs/ncpfs/ioctl.c                    |    2 
 b/fs/ncpfs/ncplib_kernel.c            |    3 
 b/fs/ncpfs/ncpsign_kernel.c           |   36 -
 b/fs/ncpfs/ncpsign_kernel.h           |   15 
 b/fs/ncpfs/sock.c                     |  971 ++++++++++++++++++----------
 b/fs/partitions/check.c               |   95 ++
 b/fs/udf/lowlevel.c                   |    7 
 b/include/asm-ia64/hardirq.h          |    1 
 b/include/asm-ia64/ide.h              |   14 
 b/include/asm-ia64/machvec.h          |    7 
 b/include/asm-ia64/machvec_dig.h      |    2 
 b/include/asm-ia64/machvec_hpsim.h    |    1 
 b/include/asm-ia64/machvec_hpzx1.h    |    2 
 b/include/asm-ia64/machvec_sn1.h      |    2 
 b/include/asm-ia64/machvec_sn2.h      |    2 
 b/include/asm-ia64/mmu_context.h      |    4 
 b/include/asm-ia64/page.h             |   32 
 b/include/asm-ia64/pal.h              |   42 +
 b/include/asm-ia64/perfmon.h          |   41 -
 b/include/asm-ia64/processor.h        |   35 -
 b/include/asm-ia64/rse.h              |    6 
 b/include/asm-ia64/sal.h              |    3 
 b/include/asm-ia64/siginfo.h          |    1 
 b/include/asm-ia64/signal.h           |    1 
 b/include/asm-ia64/spinlock.h         |    3 
 b/include/asm-ia64/suspend.h          |    1 
 b/include/asm-ia64/system.h           |   15 
 b/include/asm-ia64/timex.h            |    6 
 b/include/asm-ia64/tlb.h              |    6 
 b/include/asm-ia64/unistd.h           |    2 
 b/include/linux/blkpg.h               |    2 
 b/include/linux/cdrom.h               |   14 
 b/include/linux/genhd.h               |    7 
 b/include/linux/ide.h                 |    4 
 b/include/linux/mii.h                 |   10 
 b/include/linux/nbd.h                 |    1 
 b/include/linux/ncp.h                 |    1 
 b/include/linux/ncp_fs_sb.h           |   51 +
 b/include/linux/ncp_mount.h           |    7 
 b/include/linux/raid/md.h             |    3 
 b/include/linux/raid/md_k.h           |   10 
 b/kernel/ksyms.c                      |    2 
 b/kernel/sched.c                      |   13 
 b/kernel/sys.c                        |    5 
 b/mm/numa.c                           |    1 
 b/net/irda/af_irda.c                  |   64 -
 b/net/irda/ircomm/ircomm_core.c       |    2 
 b/net/irda/ircomm/ircomm_lmp.c        |    2 
 b/net/irda/ircomm/ircomm_param.c      |    2 
 b/net/irda/ircomm/ircomm_ttp.c        |    6 
 b/net/irda/ircomm/ircomm_tty.c        |   15 
 b/net/irda/ircomm/ircomm_tty_attach.c |    9 
 b/net/irda/ircomm/ircomm_tty_ioctl.c  |    2 
 b/net/irda/irlan/irlan_client.c       |    2 
 b/net/irda/irlan/irlan_client_event.c |    3 
 b/net/irda/irlan/irlan_common.c       |    2 
 183 files changed, 5446 insertions(+), 3885 deletions(-)

