From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.25 released
Date: Fri, 5 Jul 2002 16:51:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200207052351.g65Np3F04989@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.25 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.25.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.25.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               277641           1182647
Full source                       34918191         155586560

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/DocBook/Makefile                 |    5 
 b/Documentation/DocBook/kernel-api.tmpl          |    1 
 b/Documentation/filesystems/Locking              |    2 
 b/Documentation/filesystems/ntfs.txt             |   12 
 b/Documentation/filesystems/porting              |   39 
 b/Documentation/swsusp.txt                       |   12 
 b/Makefile                                       |   66 +
 b/Rules.make                                     |   74 -
 b/arch/alpha/Makefile                            |    2 
 b/arch/arm/Makefile                              |    3 
 b/arch/arm/boot/Makefile                         |    6 
 b/arch/arm/boot/compressed/Makefile              |    2 
 b/arch/cris/Makefile                             |    6 
 b/arch/cris/boot/compressed/Makefile             |    4 
 b/arch/cris/boot/rescue/Makefile                 |    7 
 b/arch/i386/Makefile                             |    9 
 b/arch/i386/boot/Makefile                        |   98 -
 b/arch/i386/boot/compressed/Makefile             |   49 
 b/arch/i386/boot/compressed/vmlinux.scr          |    9 
 b/arch/i386/kernel/apm.c                         |    6 
 b/arch/i386/mm/fault.c                           |   34 
 b/arch/ia64/Makefile                             |    5 
 b/arch/m68k/Makefile                             |    6 
 b/arch/mips/Makefile                             |    6 
 b/arch/mips/philips/nino/ramdisk/Makefile        |    2 
 b/arch/mips64/Makefile                           |   12 
 b/arch/parisc/Makefile                           |    5 
 b/arch/ppc/8260_io/Config.help                   |    3 
 b/arch/ppc/8260_io/Config.in                     |    5 
 b/arch/ppc/Config.help                           |    4 
 b/arch/ppc/Makefile                              |   25 
 b/arch/ppc/boot/chrp/Makefile                    |    4 
 b/arch/ppc/boot/pmac/Makefile                    |    2 
 b/arch/ppc/boot/prep/Makefile                    |   16 
 b/arch/ppc/boot/simple/Makefile                  |   33 
 b/arch/ppc/config.in                             |    4 
 b/arch/ppc/configs/est8260_defconfig             |    1 
 b/arch/ppc/kernel/cputable.c                     |    6 
 b/arch/ppc/kernel/entry.S                        |   38 
 b/arch/ppc/kernel/head.S                         |   27 
 b/arch/ppc/kernel/head_4xx.S                     |  135 +-
 b/arch/ppc/kernel/l2cr.S                         |    2 
 b/arch/ppc/kernel/misc.S                         |    8 
 b/arch/ppc/kernel/mk_defs.c                      |    2 
 b/arch/ppc/kernel/open_pic.c                     |   62 -
 b/arch/ppc/kernel/pci.c                          |    9 
 b/arch/ppc/kernel/ppc4xx_pic.c                   |  143 ++
 b/arch/ppc/kernel/ppc_ksyms.c                    |    4 
 b/arch/ppc/kernel/process.c                      |    2 
 b/arch/ppc/kernel/prom.c                         |   39 
 b/arch/ppc/kernel/syscalls.c                     |    2 
 b/arch/ppc/kernel/traps.c                        |    2 
 b/arch/ppc/lib/string.S                          |   24 
 b/arch/ppc/mm/4xx_mmu.c                          |    5 
 b/arch/ppc/mm/cachemap.c                         |    8 
 b/arch/ppc/mm/init.c                             |    7 
 b/arch/ppc/platforms/chrp_setup.c                |   33 
 b/arch/ppc/platforms/ep405.c                     |    4 
 b/arch/ppc/platforms/lopec_setup.c               |    2 
 b/arch/ppc/platforms/mbx.h                       |   26 
 b/arch/ppc/platforms/pmac_nvram.c                |    1 
 b/arch/ppc/platforms/pmac_pic.c                  |   24 
 b/arch/ppc/platforms/prep_pci.c                  |   13 
 b/arch/ppc/platforms/prep_setup.c                |    2 
 b/arch/ppc/platforms/rpxclassic.h                |   24 
 b/arch/ppc/platforms/rpxlite.h                   |   21 
 b/arch/ppc/platforms/spd8xx.h                    |   26 
 b/arch/ppc/platforms/tqm8xx.h                    |  100 +
 b/arch/ppc64/Makefile                            |    2 
 b/arch/ppc64/boot/Makefile                       |    4 
 b/arch/s390/Makefile                             |    7 
 b/arch/s390/boot/Makefile                        |    8 
 b/arch/s390x/Makefile                            |    7 
 b/arch/s390x/boot/Makefile                       |    6 
 b/arch/sh/Makefile                               |   11 
 b/arch/sh/boot/Makefile                          |    4 
 b/arch/sh/boot/compressed/Makefile               |    6 
 b/arch/sparc/Makefile                            |    6 
 b/arch/sparc/boot/Makefile                       |    2 
 b/arch/sparc/kernel/signal.c                     |    6 
 b/arch/sparc64/Makefile                          |    4 
 b/arch/sparc64/kernel/signal.c                   |    6 
 b/arch/sparc64/kernel/signal32.c                 |    6 
 b/arch/x86_64/Makefile                           |    5 
 b/arch/x86_64/boot/Makefile                      |    4 
 b/arch/x86_64/boot/compressed/Makefile           |    2 
 b/drivers/acorn/char/Makefile                    |   13 
 b/drivers/acorn/char/defkeymap-acorn.c_shipped   |  262 ++++
 b/drivers/block/ll_rw_blk.c                      |   19 
 b/drivers/cdrom/cdrom.c                          |   55 -
 b/drivers/char/Makefile                          |   20 
 b/drivers/char/defkeymap.c_shipped               |  262 ++++
 b/drivers/char/drm/drm.h                         |  106 -
 b/drivers/char/drm/drm_context.h                 |    2 
 b/drivers/char/drm/gamma_dma.c                   |    2 
 b/drivers/char/drm/gamma_drm.h                   |   10 
 b/drivers/char/drm/gamma_drv.c                   |    2 
 b/drivers/char/drm/i810_dma.c                    |    2 
 b/drivers/char/drm/i810_drm.h                    |   24 
 b/drivers/char/drm/i810_drv.c                    |    2 
 b/drivers/char/drm/i830_dma.c                    |    9 
 b/drivers/char/drm/i830_drm.h                    |   13 
 b/drivers/char/drm/i830_drv.c                    |    2 
 b/drivers/char/drm/mga_dma.c                     |    2 
 b/drivers/char/drm/mga_drm.h                     |   15 
 b/drivers/char/drm/mga_drv.c                     |    2 
 b/drivers/char/drm/mga_state.c                   |    2 
 b/drivers/char/drm/mga_warp.c                    |    2 
 b/drivers/char/drm/r128_cce.c                    |    2 
 b/drivers/char/drm/r128_drm.h                    |   21 
 b/drivers/char/drm/r128_drv.c                    |    2 
 b/drivers/char/drm/r128_drv.h                    |   49 
 b/drivers/char/drm/r128_state.c                  |    2 
 b/drivers/char/drm/radeon_cp.c                   |    8 
 b/drivers/char/drm/radeon_drm.h                  |   23 
 b/drivers/char/drm/radeon_drv.c                  |    6 
 b/drivers/char/drm/radeon_drv.h                  |   69 -
 b/drivers/char/drm/radeon_state.c                |   31 
 b/drivers/char/drm/sis_drm.h                     |   10 
 b/drivers/char/pty.c                             |    2 
 b/drivers/char/qtronixmap.c_shipped              |  265 ++++
 b/drivers/char/tty_io.c                          |    2 
 b/drivers/ide/ide-cd.c                           |    8 
 b/drivers/ide/probe.c                            |   13 
 b/drivers/ieee1394/ieee1394_core.c               |    3 
 b/drivers/input/Config.help                      |   26 
 b/drivers/input/Config.in                        |   14 
 b/drivers/input/Makefile                         |    6 
 b/drivers/input/evbug.c                          |   99 +
 b/drivers/input/evdev.c                          |   18 
 b/drivers/input/gameport/Config.help             |    8 
 b/drivers/input/gameport/Config.in               |    2 
 b/drivers/input/gameport/Makefile                |    3 
 b/drivers/input/gameport/fm801-gp.c              |  162 +++
 b/drivers/input/gameport/gameport.c              |   28 
 b/drivers/input/gameport/vortex.c                |  185 +++
 b/drivers/input/input.c                          |   14 
 b/drivers/input/joydev.c                         |   10 
 b/drivers/input/joystick/Config.help             |   18 
 b/drivers/input/joystick/Config.in               |    2 
 b/drivers/input/joystick/Makefile                |    6 
 b/drivers/input/joystick/adi.c                   |    4 
 b/drivers/input/joystick/db9.c                   |   12 
 b/drivers/input/joystick/gamecon.c               |    6 
 b/drivers/input/joystick/guillemot.c             |  285 +++++
 b/drivers/input/joystick/iforce/Makefile         |   42 
 b/drivers/input/joystick/iforce/iforce-ff.c      |  543 ++++++++++
 b/drivers/input/joystick/iforce/iforce-main.c    |  543 ++++++++++
 b/drivers/input/joystick/iforce/iforce-packets.c |  314 +++++
 b/drivers/input/joystick/iforce/iforce-serio.c   |  166 +++
 b/drivers/input/joystick/iforce/iforce-usb.c     |  214 ++++
 b/drivers/input/joystick/iforce/iforce.h         |  194 +++
 b/drivers/input/joystick/magellan.c              |    2 
 b/drivers/input/joystick/twidjoy.c               |  264 ++++
 b/drivers/input/keybdev.c                        |    4 
 b/drivers/input/keyboard/Config.help             |   66 +
 b/drivers/input/keyboard/Config.in               |   18 
 b/drivers/input/keyboard/Makefile                |   16 
 b/drivers/input/keyboard/amikbd.c                |  144 ++
 b/drivers/input/keyboard/atkbd.c                 |  565 ++++++++++
 b/drivers/input/keyboard/maple_keyb.c            |  190 +++
 b/drivers/input/keyboard/ps2serkbd.c             |  298 +++++
 b/drivers/input/keyboard/sunkbd.c                |  318 +++++
 b/drivers/input/keyboard/xtkbd.c                 |  157 ++
 b/drivers/input/mouse/Config.help                |   87 +
 b/drivers/input/mouse/Config.in                  |   24 
 b/drivers/input/mouse/Makefile                   |   18 
 b/drivers/input/mouse/amimouse.c                 |  147 ++
 b/drivers/input/mouse/inport.c                   |  193 +++
 b/drivers/input/mouse/logibm.c                   |  182 +++
 b/drivers/input/mouse/maplemouse.c               |  137 ++
 b/drivers/input/mouse/pc110pad.c                 |  163 +++
 b/drivers/input/mouse/psmouse.c                  |  652 ++++++++++++
 b/drivers/input/mouse/rpcmouse.c                 |  111 ++
 b/drivers/input/mouse/sermouse.c                 |  299 +++++
 b/drivers/input/mousedev.c                       |   27 
 b/drivers/input/power.c                          |  180 +++
 b/drivers/input/serio/Config.help                |   47 
 b/drivers/input/serio/Config.in                  |   12 
 b/drivers/input/serio/Makefile                   |    4 
 b/drivers/input/serio/ct82c710.c                 |  212 +++
 b/drivers/input/serio/i8042.c                    |  717 +++++++++++++
 b/drivers/input/serio/i8042.h                    |  128 ++
 b/drivers/input/serio/parkbd.c                   |  203 +++
 b/drivers/input/serio/rpckbd.c                   |  117 ++
 b/drivers/input/touchscreen/Config.help          |   16 
 b/drivers/input/touchscreen/Config.in            |    7 
 b/drivers/input/touchscreen/Makefile             |   11 
 b/drivers/input/touchscreen/gunze.c              |  178 +++
 b/drivers/input/tsdev.c                          |  443 ++++++++
 b/drivers/isdn/capi/capifs.c                     |   17 
 b/drivers/md/linear.c                            |    7 
 b/drivers/md/md.c                                |  148 +-
 b/drivers/md/multipath.c                         |  444 ++++----
 b/drivers/md/raid1.c                             |  450 ++++----
 b/drivers/md/raid5.c                             |  506 ++++-----
 b/drivers/message/fusion/Makefile                |    6 
 b/drivers/net/3c59x.c                            |   16 
 b/drivers/net/e100/e100.h                        |    8 
 b/drivers/net/hamradio/soundmodem/Makefile       |    2 
 b/drivers/pci/pool.c                             |    8 
 b/drivers/scsi/53c700.c                          |  242 +---
 b/drivers/scsi/53c700.h                          |    5 
 b/drivers/scsi/aha1542.c                         |    4 
 b/drivers/scsi/constants.c                       |    4 
 b/drivers/scsi/eata.c                            |   16 
 b/drivers/scsi/hosts.c                           |    1 
 b/drivers/scsi/hosts.h                           |   34 
 b/drivers/scsi/i60uscsi.c                        |  109 +-
 b/drivers/scsi/ide-scsi.c                        |    2 
 b/drivers/scsi/inia100.c                         |  411 +++----
 b/drivers/scsi/inia100.h                         |  170 +++
 b/drivers/scsi/osst.c                            |   20 
 b/drivers/scsi/qla1280.c                         |    4 
 b/drivers/scsi/scsi.c                            |  297 ++---
 b/drivers/scsi/scsi.h                            |   93 +
 b/drivers/scsi/scsi_debug.c                      |    2 
 b/drivers/scsi/scsi_error.c                      |    8 
 b/drivers/scsi/scsi_lib.c                        |   80 -
 b/drivers/scsi/scsi_merge.c                      |    6 
 b/drivers/scsi/scsi_scan.c                       |  413 +++++++
 b/drivers/scsi/scsi_syms.c                       |    5 
 b/drivers/scsi/sd.c                              |   60 -
 b/drivers/scsi/sg.c                              |   54 -
 b/drivers/scsi/sr.c                              |   90 +
 b/drivers/scsi/sr_ioctl.c                        |    4 
 b/drivers/scsi/st.c                              |   93 +
 b/drivers/scsi/st.h                              |    2 
 b/drivers/scsi/sun3_NCR5380.c                    |    8 
 b/drivers/scsi/sun3_scsi.c                       |    2 
 b/drivers/scsi/u14-34f.c                         |   16 
 b/drivers/tc/Makefile                            |   13 
 b/drivers/tc/lk201-map.c_shipped                 |  265 ++++
 b/drivers/usb/class/bluetty.c                    |    5 
 b/drivers/usb/class/printer.c                    |   23 
 b/drivers/usb/core/Makefile                      |    6 
 b/drivers/usb/core/file.c                        |  182 +++
 b/drivers/usb/core/inode.c                       |   19 
 b/drivers/usb/core/usb.c                         |  233 ----
 b/drivers/usb/host/Config.help                   |   43 
 b/drivers/usb/host/Config.in                     |   20 
 b/drivers/usb/host/ohci-dbg.c                    |    2 
 b/drivers/usb/host/ohci-hcd.c                    |   12 
 b/drivers/usb/host/uhci-hcd.c                    |   38 
 b/drivers/usb/host/usb-uhci-hcd.c                |   18 
 b/drivers/usb/host/usb-uhci-q.c                  |   58 -
 b/drivers/usb/image/mdc800.c                     |    9 
 b/drivers/usb/image/scanner.c                    |   19 
 b/drivers/usb/input/aiptek.c                     |    5 
 b/drivers/usb/input/hiddev.c                     |   22 
 b/drivers/usb/media/dabusb.c                     |   16 
 b/drivers/usb/misc/auerswald.c                   |   25 
 b/drivers/usb/misc/brlvger.c                     |   22 
 b/drivers/usb/misc/rio500.c                      |   18 
 b/drivers/usb/net/pegasus.c                      |  279 +++--
 b/drivers/usb/net/pegasus.h                      |   17 
 b/drivers/usb/net/rtl8150.c                      |   49 
 b/drivers/usb/storage/transport.c                |  101 -
 b/drivers/usb/storage/usb.c                      |  253 ++--
 b/drivers/usb/storage/usb.h                      |    1 
 b/drivers/usb/usb-skeleton.c                     |   29 
 b/drivers/video/matrox/matroxfb_base.c           |   15 
 b/drivers/video/matrox/matroxfb_crtc2.c          |   19 
 b/fs/Makefile                                    |    2 
 b/fs/binfmt_elf.c                                |   16 
 b/fs/bio.c                                       |   13 
 b/fs/block_dev.c                                 |    3 
 b/fs/buffer.c                                    |  217 +++-
 b/fs/coda/inode.c                                |    4 
 b/fs/devpts/Makefile                             |    2 
 b/fs/devpts/inode.c                              |  218 +---
 b/fs/driverfs/inode.c                            |   26 
 b/fs/ext2/balloc.c                               |  162 ---
 b/fs/ext2/ialloc.c                               |  166 +--
 b/fs/ext2/super.c                                |   14 
 b/fs/ext3/balloc.c                               |  479 ++-------
 b/fs/ext3/ialloc.c                               |  243 +---
 b/fs/ext3/inode.c                                |    6 
 b/fs/ext3/super.c                                |   14 
 b/fs/fcntl.c                                     |    5 
 b/fs/freevxfs/vxfs_super.c                       |    2 
 b/fs/fs-writeback.c                              |   19 
 b/fs/hpfs/super.c                                |    5 
 b/fs/inode.c                                     |    2 
 b/fs/jbd/checkpoint.c                            |    3 
 b/fs/jbd/commit.c                                |   31 
 b/fs/jbd/journal.c                               |    1 
 b/fs/jbd/transaction.c                           |   65 -
 b/fs/jffs/inode-v23.c                            |    9 
 b/fs/jfs/jfs_incore.h                            |    2 
 b/fs/jfs/jfs_logmgr.c                            |    2 
 b/fs/jfs/jfs_mount.c                             |    2 
 b/fs/jfs/jfs_txnmgr.c                            |    5 
 b/fs/libfs.c                                     |    8 
 b/fs/locks.c                                     |    5 
 b/fs/mpage.c                                     |   75 +
 b/fs/nfs/inode.c                                 |   12 
 b/fs/nfs/write.c                                 |    3 
 b/fs/nfsd/export.c                               |   17 
 b/fs/nfsd/nfs3xdr.c                              |    2 
 b/fs/nfsd/nfsfh.c                                |   12 
 b/fs/nfsd/vfs.c                                  |   12 
 b/fs/ntfs/ChangeLog                              |   84 +
 b/fs/ntfs/Makefile                               |    2 
 b/fs/ntfs/aops.c                                 |  412 ++-----
 b/fs/ntfs/attrib.c                               |  849 +++++++++------
 b/fs/ntfs/dir.c                                  |    2 
 b/fs/ntfs/dir.h                                  |    2 
 b/fs/ntfs/inode.c                                |  383 +++++--
 b/fs/ntfs/inode.h                                |  133 ++
 b/fs/ntfs/mft.c                                  |   15 
 b/fs/ntfs/mst.c                                  |    4 
 b/fs/ntfs/namei.c                                |   24 
 b/fs/ntfs/ntfs.h                                 |   35 
 b/fs/ntfs/super.c                                |  127 +-
 b/fs/ntfs/volume.h                               |   17 
 b/fs/open.c                                      |   10 
 b/fs/partitions/check.c                          |  145 ++
 b/fs/proc/array.c                                |   31 
 b/fs/proc/proc_misc.c                            |   20 
 b/fs/qnx4/inode.c                                |    4 
 b/fs/ramfs/inode.c                               |   32 
 b/fs/reiserfs/buffer2.c                          |    7 
 b/fs/smbfs/inode.c                               |   10 
 b/fs/stat.c                                      |    2 
 b/fs/udf/super.c                                 |    4 
 b/fs/ufs/super.c                                 |    5 
 b/include/asm-i386/param.h                       |   10 
 b/include/asm-ppc/commproc.h                     |  207 ---
 b/include/asm-ppc/open_pic.h                     |    3 
 b/include/asm-ppc/page.h                         |    6 
 b/include/asm-ppc/param.h                        |   12 
 b/include/asm-ppc/ppc_asm.h                      |   17 
 b/include/asm-ppc/system.h                       |   13 
 b/include/asm-ppc/tlbflush.h                     |    9 
 b/include/asm-ppc/uaccess.h                      |    8 
 b/include/linux/bio.h                            |    2 
 b/include/linux/buffer_head.h                    |   51 
 b/include/linux/cdrom.h                          |   12 
 b/include/linux/devpts_fs.h                      |   49 
 b/include/linux/ext2_fs_sb.h                     |   14 
 b/include/linux/ext3_fs_sb.h                     |   14 
 b/include/linux/fs.h                             |    6 
 b/include/linux/genhd.h                          |    4 
 b/include/linux/gfp.h                            |   10 
 b/include/linux/input.h                          |  104 -
 b/include/linux/interrupt.h                      |    1 
 b/include/linux/jbd.h                            |   20 
 b/include/linux/kdev_t.h                         |    1 
 b/include/linux/list.h                           |   36 
 b/include/linux/mm.h                             |   10 
 b/include/linux/nfsd/export.h                    |    4 
 b/include/linux/nfsd/nfsfh.h                     |    4 
 b/include/linux/raid/linear.h                    |    1 
 b/include/linux/raid/md.h                        |    4 
 b/include/linux/raid/md_k.h                      |   29 
 b/include/linux/raid/multipath.h                 |    1 
 b/include/linux/raid/raid1.h                     |    1 
 b/include/linux/raid/raid5.h                     |    1 
 b/include/linux/reiserfs_fs.h                    |    3 
 b/include/linux/reiserfs_fs_sb.h                 |    2 
 b/include/linux/sched.h                          |   13 
 b/include/linux/smb.h                            |    2 
 b/include/linux/sysctl.h                         |    6 
 b/include/linux/time.h                           |   42 
 b/include/linux/times.h                          |    4 
 b/include/linux/usb.h                            |   23 
 b/include/linux/writeback.h                      |   23 
 b/kernel/acct.c                                  |    4 
 b/kernel/exit.c                                  |    4 
 b/kernel/fork.c                                  |    4 
 b/kernel/itimer.c                                |   36 
 b/kernel/ksyms.c                                 |   10 
 b/kernel/sched.c                                 |   12 
 b/kernel/signal.c                                |    4 
 b/kernel/softirq.c                               |    1 
 b/kernel/suspend.c                               |    3 
 b/kernel/sys.c                                   |   31 
 b/kernel/sysctl.c                                |   42 
 b/kernel/timer.c                                 |    4 
 b/mm/filemap.c                                   |   61 -
 b/mm/memory.c                                    |   66 -
 b/mm/mmap.c                                      |   83 -
 b/mm/oom_kill.c                                  |    2 
 b/mm/page-writeback.c                            |  116 --
 b/mm/page_alloc.c                                |  133 --
 b/mm/page_io.c                                   |   36 
 b/mm/pdflush.c                                   |    8 
 b/mm/shmem.c                                     |   12 
 b/mm/slab.c                                      |    4 
 b/mm/swap_state.c                                |   28 
 b/mm/swapfile.c                                  |    5 
 b/mm/vmscan.c                                    |    7 
 b/net/khttpd/Makefile                            |    2 
 b/net/socket.c                                   |    2 
 b/sound/oss/maestro.c                            |    9 
 drivers/acorn/char/defkeymap-acorn.c             |  262 ----
 drivers/input/gameport/pcigame.c                 |  199 ---
 drivers/input/joystick/iforce.c                  | 1224 -----------------------
 drivers/scsi/i60uscsi.h                          |  567 ----------
 fs/devpts/devpts_i.h                             |   41 
 fs/devpts/root.c                                 |  142 --
 402 files changed, 17407 insertions(+), 8586 deletions(-)

