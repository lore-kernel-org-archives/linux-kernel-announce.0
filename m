From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.17 released
Date: Mon, 20 May 2002 22:10:11 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205210510.g4L5ABP14731@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.17 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.17.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.17.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               181066            836434
Full source                       34288220         152934400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/Changes                |    2 
 b/Documentation/DocBook/Makefile       |   30 
 b/Documentation/filesystems/Locking    |    1 
 b/Documentation/filesystems/porting    |   35 
 b/MAINTAINERS                          |    3 
 b/Makefile                             |  426 ++--
 b/Rules.make                           |  236 +-
 b/arch/alpha/boot/Makefile             |    9 
 b/arch/i386/boot/Makefile              |   19 
 b/arch/i386/kernel/process.c           |    2 
 b/arch/i386/kernel/smp.c               |    4 
 b/arch/i386/mm/init.c                  |    2 
 b/arch/ia64/boot/Makefile              |    5 
 b/arch/ia64/dig/Makefile               |    5 
 b/arch/ia64/ia32/Makefile              |    5 
 b/arch/ia64/ia32/sys_ia32.c            |   99 -
 b/arch/ia64/kernel/Makefile            |    5 
 b/arch/ia64/lib/Makefile               |   19 
 b/arch/ia64/sn/fakeprom/Makefile       |    7 
 b/arch/ia64/sn/kernel/Makefile         |    7 
 b/arch/ia64/sn/kernel/sn1/Makefile     |    6 
 b/arch/ia64/sn/kernel/sn2/Makefile     |    6 
 b/arch/s390x/kernel/linux32.c          |   97 -
 b/arch/sparc64/kernel/sys_sparc32.c    |  103 -
 b/arch/sparc64/kernel/systbls.S        |    2 
 b/arch/x86_64/boot/Makefile            |   19 
 b/arch/x86_64/ia32/Makefile            |    5 
 b/arch/x86_64/kernel/Makefile          |   10 
 b/arch/x86_64/lib/Makefile             |    3 
 b/drivers/block/DAC960.c               |  117 -
 b/drivers/block/blkpg.c                |   15 
 b/drivers/block/block_ioctl.c          |    1 
 b/drivers/block/cpqarray.c             |   29 
 b/drivers/block/cpqarray.h             |    1 
 b/drivers/block/floppy.c               |    2 
 b/drivers/block/ll_rw_blk.c            |   15 
 b/drivers/block/paride/pg.c            |   15 
 b/drivers/block/paride/pt.c            |   10 
 b/drivers/block/rd.c                   |    3 
 b/drivers/block/swim3.c                |    7 
 b/drivers/block/swim_iop.c             |    7 
 b/drivers/char/epca.c                  |   49 
 b/drivers/char/istallion.c             |   15 
 b/drivers/char/machzwd.c               |   11 
 b/drivers/char/mxser.c                 |    6 
 b/drivers/char/n_r3964.c               |    2 
 b/drivers/char/nwflash.c               |    3 
 b/drivers/char/raw.c                   |    7 
 b/drivers/char/stallion.c              |   36 
 b/drivers/char/sx.c                    |    7 
 b/drivers/char/tpqic02.c               |   10 
 b/drivers/isdn/act2000/module.c        |   10 
 b/drivers/isdn/capi/capi.c             |  223 --
 b/drivers/isdn/capi/capidrv.c          |  145 -
 b/drivers/isdn/capi/capifs.c           |    1 
 b/drivers/isdn/capi/kcapi.c            |  312 +--
 b/drivers/isdn/divert/divert_procfs.c  |    6 
 b/drivers/isdn/eicon/eicon_mod.c       |   16 
 b/drivers/isdn/hardware/avm/b1.c       |   16 
 b/drivers/isdn/hardware/avm/b1isa.c    |    3 
 b/drivers/isdn/hardware/avm/b1pci.c    |    3 
 b/drivers/isdn/hardware/avm/b1pcmcia.c |    3 
 b/drivers/isdn/hardware/avm/c4.c       |   17 
 b/drivers/isdn/hardware/avm/t1isa.c    |   13 
 b/drivers/isdn/hardware/avm/t1pci.c    |    3 
 b/drivers/isdn/hisax/config.c          |   14 
 b/drivers/isdn/hisax/isar.c            |    4 
 b/drivers/isdn/i4l/isdn_ppp.c          |    6 
 b/drivers/isdn/i4l/isdn_tty.c          |   13 
 b/drivers/isdn/icn/icn.c               |   31 
 b/drivers/isdn/isdnloop/isdnloop.c     |   17 
 b/drivers/isdn/sc/command.c            |    6 
 b/drivers/isdn/sc/ioctl.c              |   39 
 b/drivers/isdn/tpam/tpam_commands.c    |   14 
 b/drivers/md/lvm.c                     |    1 
 b/drivers/md/md.c                      |   92 -
 b/drivers/md/raid5.c                   |  809 ++++-----
 b/drivers/md/xor.c                     |   18 
 b/drivers/media/video/i2c-old.c        |    1 
 b/drivers/pci/power.c                  |    1 
 b/drivers/pcmcia/Makefile              |    2 
 b/drivers/scsi/ChangeLog.ips           |   37 
 b/drivers/scsi/ips.c                   | 2946 +++++++++++++++++----------------
 b/drivers/scsi/ips.h                   |  944 ++++++----
 b/drivers/scsi/sd.c                    |    2 
 b/drivers/usb/class/audio.c            |    8 
 b/drivers/usb/class/bluetty.c          |    5 
 b/drivers/usb/class/cdc-acm.c          |    7 
 b/drivers/usb/host/uhci-debug.c        |    3 
 b/drivers/usb/input/hiddev.c           |   20 
 b/drivers/usb/media/dabusb.c           |    4 
 b/drivers/usb/misc/auerswald.c         |    4 
 b/drivers/usb/serial/ipaq.c            |    3 
 b/drivers/usb/serial/safe_serial.c     |    3 
 b/fs/Config.help                       |   33 
 b/fs/Config.in                         |    8 
 b/fs/Makefile                          |    6 
 b/fs/adfs/inode.c                      |    1 
 b/fs/adfs/super.c                      |    1 
 b/fs/affs/amigaffs.c                   |    1 
 b/fs/affs/bitmap.c                     |    1 
 b/fs/affs/file.c                       |    1 
 b/fs/affs/inode.c                      |    1 
 b/fs/affs/namei.c                      |    1 
 b/fs/affs/super.c                      |    1 
 b/fs/autofs/inode.c                    |    1 
 b/fs/autofs4/inode.c                   |    2 
 b/fs/bfs/dir.c                         |    1 
 b/fs/bfs/file.c                        |    1 
 b/fs/bfs/inode.c                       |    1 
 b/fs/binfmt_em86.c                     |    1 
 b/fs/block_dev.c                       |   18 
 b/fs/buffer.c                          |  346 ++-
 b/fs/coda/cache.c                      |    1 
 b/fs/coda/cnode.c                      |   98 -
 b/fs/coda/coda_linux.c                 |    1 
 b/fs/coda/dir.c                        |    1 
 b/fs/coda/file.c                       |    1 
 b/fs/coda/inode.c                      |   15 
 b/fs/coda/pioctl.c                     |    1 
 b/fs/coda/symlink.c                    |    2 
 b/fs/coda/upcall.c                     |    1 
 b/fs/cramfs/inode.c                    |    1 
 b/fs/devpts/inode.c                    |    1 
 b/fs/dnotify.c                         |    1 
 b/fs/dquot.c                           |  959 +++++-----
 b/fs/efs/super.c                       |    1 
 b/fs/ext2/balloc.c                     |    2 
 b/fs/ext2/fsync.c                      |    3 
 b/fs/ext2/ialloc.c                     |   41 
 b/fs/ext2/inode.c                      |   23 
 b/fs/ext2/super.c                      |    1 
 b/fs/ext3/balloc.c                     |    1 
 b/fs/ext3/file.c                       |    1 
 b/fs/ext3/fsync.c                      |    6 
 b/fs/ext3/ialloc.c                     |    1 
 b/fs/ext3/inode.c                      |   17 
 b/fs/ext3/namei.c                      |    1 
 b/fs/ext3/super.c                      |    1 
 b/fs/fat/file.c                        |    1 
 b/fs/fat/inode.c                       |    2 
 b/fs/fs-writeback.c                    |  438 ++--
 b/fs/hpfs/file.c                       |    1 
 b/fs/hpfs/hpfs_fn.h                    |    1 
 b/fs/hpfs/inode.c                      |    1 
 b/fs/hpfs/namei.c                      |    1 
 b/fs/inode.c                           |  237 +-
 b/fs/intermezzo/cache.c                |    1 
 b/fs/intermezzo/dcache.c               |    1 
 b/fs/intermezzo/dir.c                  |    1 
 b/fs/intermezzo/ext_attr.c             |    6 
 b/fs/intermezzo/file.c                 |    1 
 b/fs/intermezzo/inode.c                |    2 
 b/fs/intermezzo/journal.c              |    1 
 b/fs/intermezzo/journal_ext2.c         |    1 
 b/fs/intermezzo/journal_ext3.c         |    1 
 b/fs/intermezzo/journal_obdfs.c        |    1 
 b/fs/intermezzo/journal_reiserfs.c     |    1 
 b/fs/intermezzo/journal_xfs.c          |    1 
 b/fs/intermezzo/kml.c                  |   40 
 b/fs/intermezzo/methods.c              |    1 
 b/fs/intermezzo/presto.c               |    1 
 b/fs/intermezzo/psdev.c                |  250 +-
 b/fs/intermezzo/super.c                |    1 
 b/fs/intermezzo/upcall.c               |    1 
 b/fs/ioctl.c                           |   10 
 b/fs/isofs/compress.c                  |    1 
 b/fs/isofs/dir.c                       |    1 
 b/fs/isofs/inode.c                     |    1 
 b/fs/jbd/checkpoint.c                  |    1 
 b/fs/jbd/commit.c                      |    1 
 b/fs/jbd/journal.c                     |    2 
 b/fs/jbd/recovery.c                    |    3 
 b/fs/jbd/revoke.c                      |    1 
 b/fs/jbd/transaction.c                 |  159 +
 b/fs/jffs/inode-v23.c                  |    1 
 b/fs/jffs/intrep.c                     |    1 
 b/fs/jfs/file.c                        |    1 
 b/fs/jfs/inode.c                       |    1 
 b/fs/jfs/jfs_dtree.c                   |    1 
 b/fs/jfs/jfs_imap.c                    |    1 
 b/fs/jfs/jfs_logmgr.c                  |    1 
 b/fs/jfs/jfs_txnmgr.c                  |    1 
 b/fs/jfs/jfs_xtree.c                   |    1 
 b/fs/jfs/namei.c                       |    1 
 b/fs/jfs/super.c                       |    1 
 b/fs/minix/file.c                      |    2 
 b/fs/minix/inode.c                     |    1 
 b/fs/minix/itree_v1.c                  |    1 
 b/fs/minix/itree_v2.c                  |    1 
 b/fs/ncpfs/dir.c                       |    1 
 b/fs/ncpfs/file.c                      |    1 
 b/fs/ncpfs/inode.c                     |    1 
 b/fs/nfs/inode.c                       |   45 
 b/fs/nfsd/export.c                     |   18 
 b/fs/nfsd/nfs3proc.c                   |    1 
 b/fs/nfsd/nfsproc.c                    |    1 
 b/fs/nfsd/vfs.c                        |   55 
 b/fs/ntfs/aops.c                       |    1 
 b/fs/ntfs/compress.c                   |    1 
 b/fs/ntfs/mft.c                        |    1 
 b/fs/ntfs/super.c                      |   13 
 b/fs/open.c                            |    3 
 b/fs/openpromfs/inode.c                |    1 
 b/fs/proc/inode.c                      |    1 
 b/fs/qnx4/fsync.c                      |    1 
 b/fs/qnx4/inode.c                      |    2 
 b/fs/qnx4/truncate.c                   |    1 
 b/fs/quota.c                           |  656 +++++++
 b/fs/quota_v1.c                        |  239 ++
 b/fs/quota_v2.c                        |  690 +++++++
 b/fs/ramfs/inode.c                     |    1 
 b/fs/read_write.c                      |  179 --
 b/fs/reiserfs/bitmap.c                 |    1 
 b/fs/reiserfs/buffer2.c                |    1 
 b/fs/reiserfs/file.c                   |    8 
 b/fs/reiserfs/fix_node.c               |    1 
 b/fs/reiserfs/inode.c                  |  249 +-
 b/fs/reiserfs/ioctl.c                  |    2 
 b/fs/reiserfs/journal.c                |    5 
 b/fs/reiserfs/namei.c                  |  158 +
 b/fs/reiserfs/objectid.c               |    1 
 b/fs/reiserfs/procfs.c                 |    1 
 b/fs/reiserfs/resize.c                 |    1 
 b/fs/reiserfs/stree.c                  |    1 
 b/fs/reiserfs/super.c                  |   15 
 b/fs/reiserfs/tail_conversion.c        |    1 
 b/fs/romfs/inode.c                     |    2 
 b/fs/smbfs/inode.c                     |    1 
 b/fs/super.c                           |    8 
 b/fs/sysv/balloc.c                     |    1 
 b/fs/sysv/file.c                       |    2 
 b/fs/sysv/ialloc.c                     |    2 
 b/fs/sysv/inode.c                      |    1 
 b/fs/sysv/itree.c                      |    1 
 b/fs/udf/balloc.c                      |    1 
 b/fs/udf/file.c                        |    2 
 b/fs/udf/fsync.c                       |    3 
 b/fs/udf/ialloc.c                      |    1 
 b/fs/udf/inode.c                       |    2 
 b/fs/udf/namei.c                       |    1 
 b/fs/udf/super.c                       |    1 
 b/fs/ufs/balloc.c                      |    1 
 b/fs/ufs/cylinder.c                    |    1 
 b/fs/ufs/dir.c                         |    1 
 b/fs/ufs/file.c                        |    1 
 b/fs/ufs/ialloc.c                      |    1 
 b/fs/ufs/inode.c                       |    1 
 b/fs/ufs/super.c                       |    1 
 b/fs/ufs/truncate.c                    |    1 
 b/fs/ufs/util.c                        |    1 
 b/include/asm-alpha/ioctls.h           |    1 
 b/include/asm-cris/ioctls.h            |    1 
 b/include/asm-generic/tlb.h            |   24 
 b/include/asm-i386/ioctls.h            |    1 
 b/include/asm-i386/mmu_context.h       |    6 
 b/include/asm-i386/processor.h         |    4 
 b/include/asm-i386/tlb.h               |   19 
 b/include/asm-i386/xor.h               |    4 
 b/include/asm-ia64/ioctls.h            |    1 
 b/include/asm-m68k/ioctls.h            |    1 
 b/include/asm-parisc/ioctls.h          |    1 
 b/include/asm-sh/ioctls.h              |    1 
 b/include/asm-sparc/ioctls.h           |    1 
 b/include/asm-sparc64/ioctls.h         |    1 
 b/include/linux/amigaffs.h             |    1 
 b/include/linux/backing-dev.h          |   30 
 b/include/linux/blk.h                  |    1 
 b/include/linux/blkdev.h               |    9 
 b/include/linux/buffer_head.h          |   29 
 b/include/linux/dqblk_v1.h             |   18 
 b/include/linux/dqblk_v2.h             |   20 
 b/include/linux/fs.h                   |  125 -
 b/include/linux/hfs_sysdep.h           |    2 
 b/include/linux/jbd.h                  |    1 
 b/include/linux/kernelcapi.h           |   57 
 b/include/linux/mm.h                   |    1 
 b/include/linux/module.h               |    2 
 b/include/linux/nbd.h                  |    1 
 b/include/linux/nfs_fs.h               |    2 
 b/include/linux/page-flags.h           |    9 
 b/include/linux/quota.h                |  259 ++
 b/include/linux/quotacompat.h          |   86 
 b/include/linux/quotaio_v1.h           |   33 
 b/include/linux/quotaio_v2.h           |   79 
 b/include/linux/quotaops.h             |   96 -
 b/include/linux/raid/md.h              |    1 
 b/include/linux/raid/md_k.h            |    5 
 b/include/linux/raid/raid5.h           |   48 
 b/include/linux/raid/xor.h             |    2 
 b/include/linux/reiserfs_fs.h          |   14 
 b/include/linux/swap.h                 |    1 
 b/include/linux/ufs_fs.h               |    1 
 b/include/linux/writeback.h            |   27 
 b/include/linux/xqm.h                  |  159 +
 b/init/Makefile                        |   22 
 b/kernel/exit.c                        |   12 
 b/kernel/ksyms.c                       |    6 
 b/mm/filemap.c                         |   12 
 b/mm/memory.c                          |    2 
 b/mm/mmap.c                            |    8 
 b/mm/page-writeback.c                  |  257 +-
 b/mm/page_io.c                         |    2 
 b/mm/pdflush.c                         |    4 
 b/mm/readahead.c                       |   12 
 b/mm/shmem.c                           |    4 
 b/mm/swap_state.c                      |   33 
 b/mm/swapfile.c                        |    5 
 b/mm/vmscan.c                          |   46 
 b/net/ipv4/netfilter/ip_nat_core.c     |    2 
 b/net/irda/Makefile                    |    1 
 b/net/khttpd/datasending.c             |    1 
 b/net/sunrpc/svcsock.c                 |    6 
 b/scripts/mkcompile_h                  |   49 
 b/scripts/mkversion_h                  |   14 
 b/sound/core/Config.in                 |    2 
 b/sound/core/memory.c                  |   16 
 b/sound/oss/cmpci.c                    |    8 
 b/sound/oss/cs4281/cs4281m.c           |    8 
 b/sound/oss/cs46xx.c                   |    8 
 b/sound/oss/emu10k1/cardwi.c           |   10 
 b/sound/oss/emu10k1/cardwo.c           |   12 
 b/sound/oss/emu10k1/passthrough.c      |   13 
 b/sound/oss/es1370.c                   |   12 
 b/sound/oss/es1371.c                   |   13 
 b/sound/oss/esssolo1.c                 |    8 
 b/sound/oss/gus_wave.c                 |    9 
 b/sound/oss/i810_audio.c               |    9 
 b/sound/oss/ite8172.c                  |    8 
 b/sound/oss/maestro.c                  |    8 
 b/sound/oss/maestro3.c                 |    8 
 b/sound/oss/midibuf.c                  |   24 
 b/sound/oss/msnd_pinnacle.c            |    8 
 b/sound/oss/rme96xx.c                  |   14 
 b/sound/oss/sb_audio.c                 |   18 
 b/sound/oss/sequencer.c                |   13 
 b/sound/oss/sonicvibes.c               |    8 
 b/sound/oss/trident.c                  |    3 
 b/sound/oss/via82cxxx_audio.c          |    4 
 b/sound/oss/vwsnd.c                    |   22 
 b/sound/oss/wavfront.c                 |   61 
 b/sound/pci/cmipci.c                   |   10 
 b/sound/pci/korg1212/korg1212.c        |    8 
 b/sound/pci/rme9652/rme9652.c          |    6 
 include/linux/locks.h                  |   28 
 345 files changed, 8951 insertions(+), 5670 deletions(-)

