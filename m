From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.12 released
Date: Tue, 30 Apr 2002 17:13:05 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205010013.g410D5220804@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.12 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.12.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.12.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               238515            988202
Full source                       34073918         152002560

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/filesystems/Locking            |    2 
 b/MAINTAINERS                                  |    6 
 b/Makefile                                     |    2 
 b/arch/alpha/defconfig                         |    1 
 b/arch/alpha/mm/init.c                         |    2 
 b/arch/alpha/mm/numa.c                         |    2 
 b/arch/arm/def-configs/footbridge              |    1 
 b/arch/arm/def-configs/iq80310                 |    1 
 b/arch/arm/mm/init.c                           |   14 
 b/arch/cris/drivers/ide.c                      |    6 
 b/arch/cris/mm/init.c                          |    2 
 b/arch/i386/defconfig                          |   13 
 b/arch/i386/mm/init.c                          |    2 
 b/arch/ia64/defconfig                          |    1 
 b/arch/ia64/hp/sim/simserial.c                 |    1 
 b/arch/ia64/mm/init.c                          |    4 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-mp |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-sp |    1 
 b/arch/m68k/mm/init.c                          |    2 
 b/arch/mips/defconfig-ddb5476                  |    1 
 b/arch/mips/defconfig-it8172                   |    1 
 b/arch/mips/mm/init.c                          |    2 
 b/arch/mips64/mm/init.c                        |    2 
 b/arch/parisc/mm/init.c                        |    2 
 b/arch/ppc/configs/common_defconfig            |    1 
 b/arch/ppc/configs/k2_defconfig                |    1 
 b/arch/ppc/configs/menf1_defconfig             |    1 
 b/arch/ppc/configs/mvme5100_defconfig          |    1 
 b/arch/ppc/configs/pmac_defconfig              |    1 
 b/arch/ppc/configs/pplus_defconfig             |    1 
 b/arch/ppc/configs/sandpoint_defconfig         |    1 
 b/arch/ppc/defconfig                           |    1 
 b/arch/ppc/mm/init.c                           |    2 
 b/arch/ppc64/mm/init.c                         |    2 
 b/arch/s390/mm/init.c                          |    2 
 b/arch/s390x/mm/init.c                         |    2 
 b/arch/sh/mm/init.c                            |    2 
 b/arch/sparc/kernel/sys_sunos.c                |    2 
 b/arch/sparc/mm/init.c                         |    2 
 b/arch/sparc64/defconfig                       |    1 
 b/arch/sparc64/kernel/sys_sunos32.c            |    2 
 b/arch/sparc64/mm/init.c                       |    2 
 b/arch/x86_64/defconfig                        |    1 
 b/arch/x86_64/mm/init.c                        |    2 
 b/drivers/block/blkpg.c                        |   13 
 b/drivers/block/ll_rw_blk.c                    |   62 
 b/drivers/block/loop.c                         |    6 
 b/drivers/block/paride/Makefile                |    2 
 b/drivers/block/paride/paride.c                |   22 
 b/drivers/block/rd.c                           |   10 
 b/drivers/char/Makefile                        |    3 
 b/drivers/char/agp/agpgart_be.c                |    8 
 b/drivers/char/drm/i810_dma.c                  |    4 
 b/drivers/char/ip2main.c                       |    4 
 b/drivers/ide/Config.help                      |   16 
 b/drivers/ide/Config.in                        |   12 
 b/drivers/ide/aec62xx.c                        |   24 
 b/drivers/ide/alim15x3.c                       |   16 
 b/drivers/ide/amd74xx.c                        |   12 
 b/drivers/ide/cmd64x.c                         |   30 
 b/drivers/ide/cs5530.c                         |   14 
 b/drivers/ide/cy82c693.c                       |   10 
 b/drivers/ide/hpt34x.c                         |    1 
 b/drivers/ide/hpt366.c                         |   18 
 b/drivers/ide/icside.c                         |    9 
 b/drivers/ide/ide-cd.c                         |  210 -
 b/drivers/ide/ide-disk.c                       |   10 
 b/drivers/ide/ide-dma.c                        |   54 
 b/drivers/ide/ide-floppy.c                     |  125 -
 b/drivers/ide/ide-pci.c                        |    2 
 b/drivers/ide/ide-pmac.c                       |   47 
 b/drivers/ide/ide-probe.c                      |  271 +-
 b/drivers/ide/ide-tape.c                       |  129 -
 b/drivers/ide/ide-taskfile.c                   |  105 
 b/drivers/ide/ide.c                            |  663 +++---
 b/drivers/ide/ns87415.c                        |   10 
 b/drivers/ide/pdc202xx.c                       |   12 
 b/drivers/ide/pdc4030.c                        |   85 
 b/drivers/ide/piix.c                           |   53 
 b/drivers/ide/serverworks.c                    |   22 
 b/drivers/ide/sis5513.c                        |   12 
 b/drivers/ide/trm290.c                         |    1 
 b/drivers/ide/via82cxxx.c                      |    6 
 b/drivers/isdn/capi/Makefile                   |    4 
 b/drivers/isdn/capi/capidrv.c                  |  138 -
 b/drivers/isdn/capi/capifs.c                   |   10 
 b/drivers/isdn/capi/capiutil.c                 |   76 
 b/drivers/isdn/capi/kcapi.c                    |   84 
 b/drivers/isdn/hardware/avm/avmcard.h          |   14 
 b/drivers/isdn/hardware/avm/b1.c               |   28 
 b/drivers/isdn/hardware/avm/b1dma.c            |   78 
 b/drivers/isdn/hardware/avm/c4.c               |   80 
 b/drivers/isdn/hardware/avm/t1isa.c            |    8 
 b/drivers/md/lvm-snap.c                        |    5 
 b/drivers/md/md.c                              |   16 
 b/drivers/md/raid5.c                           |   38 
 b/drivers/mtd/devices/blkmtd.c                 |   22 
 b/drivers/net/ppp_generic.c                    |    2 
 b/drivers/net/tun.c                            |  136 -
 b/drivers/net/wan/Makefile                     |    3 
 b/drivers/net/wan/dlci.c                       |    2 
 b/drivers/net/wireless/Config.help             |    8 
 b/drivers/net/wireless/Config.in               |    1 
 b/drivers/net/wireless/Makefile                |    1 
 b/drivers/net/wireless/airport.c               |  203 -
 b/drivers/net/wireless/hermes.c                |  138 -
 b/drivers/net/wireless/hermes.h                |  273 +-
 b/drivers/net/wireless/hermes_rid.h            |  153 +
 b/drivers/net/wireless/ieee802_11.h            |   73 
 b/drivers/net/wireless/orinoco.c               | 2728 +++++++++++++------------
 b/drivers/net/wireless/orinoco.h               |  126 -
 b/drivers/net/wireless/orinoco_cs.c            |  315 +-
 b/drivers/net/wireless/orinoco_pci.c           |  391 +++
 b/drivers/net/wireless/orinoco_plx.c           |  278 +-
 b/drivers/pci/pci.ids                          |    2 
 b/drivers/pnp/pnpbios_core.c                   |    4 
 b/drivers/scsi/ide-scsi.c                      |   37 
 b/drivers/scsi/seagate.c                       |    8 
 b/drivers/sgi/char/sgiserial.c                 |    3 
 b/drivers/video/Makefile                       |    2 
 b/fs/Makefile                                  |    3 
 b/fs/adfs/dir.c                                |    3 
 b/fs/affs/dir.c                                |    4 
 b/fs/affs/file.c                               |   14 
 b/fs/affs/symlink.c                            |    4 
 b/fs/autofs/root.c                             |   10 
 b/fs/bad_inode.c                               |    1 
 b/fs/bfs/dir.c                                 |    5 
 b/fs/block_dev.c                               |   34 
 b/fs/buffer.c                                  | 2509 +++++++++-------------
 b/fs/coda/symlink.c                            |    4 
 b/fs/cramfs/inode.c                            |    9 
 b/fs/dcache.c                                  |   24 
 b/fs/devpts/root.c                             |   10 
 b/fs/efs/dir.c                                 |    7 
 b/fs/efs/symlink.c                             |    4 
 b/fs/ext2/dir.c                                |  128 -
 b/fs/ext2/fsync.c                              |    1 
 b/fs/ext2/inode.c                              |    4 
 b/fs/ext3/dir.c                                |    7 
 b/fs/ext3/fsync.c                              |    2 
 b/fs/ext3/inode.c                              |   31 
 b/fs/ext3/super.c                              |    2 
 b/fs/fat/buffer.c                              |    5 
 b/fs/fat/dir.c                                 |   19 
 b/fs/fat/file.c                                |    2 
 b/fs/freevxfs/vxfs_immed.c                     |    2 
 b/fs/freevxfs/vxfs_lookup.c                    |    5 
 b/fs/freevxfs/vxfs_subr.c                      |    4 
 b/fs/fs-writeback.c                            |  522 ++++
 b/fs/hfs/dir_cap.c                             |   20 
 b/fs/hfs/dir_dbl.c                             |   16 
 b/fs/hfs/dir_nat.c                             |   20 
 b/fs/hfs/file.c                                |    4 
 b/fs/hfs/sysdep.c                              |    2 
 b/fs/hpfs/buffer.c                             |    2 
 b/fs/hpfs/dir.c                                |   53 
 b/fs/hpfs/file.c                               |    2 
 b/fs/hpfs/namei.c                              |    4 
 b/fs/inode.c                                   |  373 ---
 b/fs/isofs/compress.c                          |    6 
 b/fs/isofs/dir.c                               |    4 
 b/fs/isofs/rock.c                              |    4 
 b/fs/jbd/checkpoint.c                          |    6 
 b/fs/jbd/commit.c                              |   20 
 b/fs/jbd/journal.c                             |   12 
 b/fs/jbd/recovery.c                            |    4 
 b/fs/jbd/revoke.c                              |    6 
 b/fs/jbd/transaction.c                         |   33 
 b/fs/jffs/inode-v23.c                          |   12 
 b/fs/jffs2/dir.c                               |    4 
 b/fs/jffs2/file.c                              |    4 
 b/fs/jffs2/gc.c                                |    2 
 b/fs/jfs/file.c                                |    2 
 b/fs/jfs/inode.c                               |    4 
 b/fs/jfs/jfs_dmap.c                            |    4 
 b/fs/jfs/jfs_dtree.c                           |   37 
 b/fs/jfs/jfs_imap.c                            |    8 
 b/fs/jfs/jfs_logmgr.c                          |   15 
 b/fs/jfs/jfs_metapage.c                        |   30 
 b/fs/jfs/jfs_txnmgr.c                          |    9 
 b/fs/jfs/namei.c                               |    2 
 b/fs/jfs/super.c                               |    8 
 b/fs/libfs.c                                   |    5 
 b/fs/minix/dir.c                               |   76 
 b/fs/minix/file.c                              |    1 
 b/fs/minix/itree_common.c                      |    4 
 b/fs/namei.c                                   |  278 +-
 b/fs/ncpfs/dir.c                               |   17 
 b/fs/ncpfs/symlink.c                           |    4 
 b/fs/nfs/dir.c                                 |   13 
 b/fs/nfs/file.c                                |   14 
 b/fs/nfs/inode.c                               |    3 
 b/fs/nfs/nfs3proc.c                            |    4 
 b/fs/nfs/proc.c                                |    4 
 b/fs/nfs/read.c                                |    8 
 b/fs/nfs/symlink.c                             |    6 
 b/fs/nfs/write.c                               |    2 
 b/fs/nfsd/vfs.c                                |    3 
 b/fs/ntfs/aops.c                               |   65 
 b/fs/ntfs/compress.c                           |   18 
 b/fs/ntfs/dir.c                                |    3 
 b/fs/ntfs/ntfs.h                               |    4 
 b/fs/ntfs/super.c                              |    8 
 b/fs/open.c                                    |    1 
 b/fs/openpromfs/inode.c                        |   18 
 b/fs/partitions/check.c                        |    4 
 b/fs/proc/base.c                               |   31 
 b/fs/proc/generic.c                            |   25 
 b/fs/proc/proc_misc.c                          |   13 
 b/fs/proc/root.c                               |   11 
 b/fs/qnx4/dir.c                                |    7 
 b/fs/ramfs/inode.c                             |    6 
 b/fs/readdir.c                                 |    2 
 b/fs/reiserfs/dir.c                            |   12 
 b/fs/reiserfs/do_balan.c                       |   22 
 b/fs/reiserfs/file.c                           |    1 
 b/fs/reiserfs/inode.c                          |   58 
 b/fs/reiserfs/ioctl.c                          |    2 
 b/fs/reiserfs/journal.c                        |   30 
 b/fs/reiserfs/prints.c                         |    5 
 b/fs/reiserfs/resize.c                         |    2 
 b/fs/reiserfs/tail_conversion.c                |   10 
 b/fs/romfs/inode.c                             |   17 
 b/fs/smbfs/cache.c                             |    6 
 b/fs/smbfs/dir.c                               |   18 
 b/fs/smbfs/file.c                              |    7 
 b/fs/smbfs/inode.c                             |    3 
 b/fs/smbfs/proc.c                              |    7 
 b/fs/sysv/balloc.c                             |   78 
 b/fs/sysv/dir.c                                |   50 
 b/fs/sysv/file.c                               |    4 
 b/fs/sysv/ialloc.c                             |   70 
 b/fs/sysv/inode.c                              |  116 -
 b/fs/sysv/itree.c                              |   58 
 b/fs/sysv/namei.c                              |    9 
 b/fs/sysv/super.c                              |  327 +-
 b/fs/sysv/symlink.c                            |    3 
 b/fs/sysv/sysv.h                               |  236 ++
 b/fs/udf/dir.c                                 |    8 
 b/fs/udf/file.c                                |    4 
 b/fs/udf/fsync.c                               |    1 
 b/fs/udf/inode.c                               |   10 
 b/fs/udf/namei.c                               |    2 
 b/fs/udf/symlink.c                             |    4 
 b/fs/ufs/balloc.c                              |    4 
 b/fs/ufs/dir.c                                 |    6 
 b/fs/ufs/inode.c                               |    4 
 b/fs/ufs/util.c                                |    9 
 b/fs/umsdos/dir.c                              |    8 
 b/fs/umsdos/emd.c                              |   24 
 b/fs/umsdos/inode.c                            |    2 
 b/fs/umsdos/rdir.c                             |    7 
 b/include/linux/amigaffs.h                     |    4 
 b/include/linux/blkdev.h                       |    7 
 b/include/linux/buffer_head.h                  |  315 ++
 b/include/linux/fs.h                           |  372 ---
 b/include/linux/fs_struct.h                    |    4 
 b/include/linux/hdreg.h                        |    8 
 b/include/linux/ide.h                          |   63 
 b/include/linux/jbd.h                          |    9 
 b/include/linux/linkage.h                      |   12 
 b/include/linux/locks.h                        |   20 
 b/include/linux/mm.h                           |  157 -
 b/include/linux/mmzone.h                       |    2 
 b/include/linux/page-flags.h                   |  218 +
 b/include/linux/pagemap.h                      |   13 
 b/include/linux/pci_ids.h                      |   20 
 b/include/linux/sched.h                        |    3 
 b/include/linux/slab.h                         |    1 
 b/include/linux/swap.h                         |    3 
 b/include/linux/synclink.h                     |   19 
 b/include/linux/sysctl.h                       |    2 
 b/include/linux/sysv_fs.h                      |  228 --
 b/include/linux/writeback.h                    |   53 
 b/include/net/profile.h                        |    2 
 b/include/sound/asound.h                       |    1 
 b/include/sound/core.h                         |   20 
 b/include/sound/version.h                      |    2 
 b/init/main.c                                  |    2 
 b/kernel/ksyms.c                               |    9 
 b/kernel/sched.c                               |   31 
 b/kernel/sysctl.c                              |    4 
 b/mm/Makefile                                  |    5 
 b/mm/filemap.c                                 |  414 +--
 b/mm/memory.c                                  |   12 
 b/mm/mincore.c                                 |    2 
 b/mm/mmap.c                                    |    2 
 b/mm/msync.c                                   |   10 
 b/mm/page-writeback.c                          |  527 ++++
 b/mm/page_alloc.c                              |   86 
 b/mm/page_io.c                                 |   13 
 b/mm/pdflush.c                                 |    6 
 b/mm/readahead.c                               |   42 
 b/mm/shmem.c                                   |   20 
 b/mm/slab.c                                    |    4 
 b/mm/swap_state.c                              |   28 
 b/mm/swapfile.c                                |    9 
 b/mm/vmscan.c                                  |   67 
 b/sound/Makefile                               |   46 
 b/sound/arm/Makefile                           |    2 
 b/sound/core/Makefile                          |   10 
 b/sound/core/memory.c                          |    1 
 b/sound/core/oss/Makefile                      |    2 
 b/sound/core/seq/Makefile                      |   14 
 b/sound/core/seq/instr/Makefile                |    2 
 b/sound/core/seq/oss/Makefile                  |    2 
 b/sound/core/seq/seq_dummy.c                   |    1 
 b/sound/core/seq/seq_midi.c                    |    2 
 b/sound/core/seq/seq_midi_event.c              |    1 
 b/sound/core/seq/seq_queue.h                   |    2 
 b/sound/drivers/Makefile                       |   10 
 b/sound/drivers/mpu401/mpu401_uart.c           |    2 
 b/sound/isa/Makefile                           |   17 
 b/sound/oss/Makefile                           |    9 
 b/sound/oss/cs4281/Makefile                    |   10 
 b/sound/oss/dmasound/Makefile                  |    6 
 b/sound/oss/emu10k1/Makefile                   |   14 
 b/sound/oss/vidc_fill.S                        |   46 
 b/sound/pci/Makefile                           |   18 
 b/sound/ppc/Makefile                           |    2 
 b/sound/synth/Makefile                         |   10 
 include/linux/sysv_fs_i.h                      |   18 
 include/linux/sysv_fs_sb.h                     |   89 
 324 files changed, 9470 insertions(+), 7433 deletions(-)

