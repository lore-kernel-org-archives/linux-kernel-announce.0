From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.30 released
Date: Thu, 1 Aug 2002 14:24:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200208012124.g71LO3t03693@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.30 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.30.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.30.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               266358           1080972
Full source                       34981812         155924480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/ppc/platforms/prep_nvram.c              |  143 --
 b/CREDITS                                    |    6 
 b/Documentation/DocBook/Makefile             |   36 
 b/Documentation/filesystems/devfs/ChangeLog  |   16 
 b/Documentation/ide.txt                      |   63 +
 b/Documentation/serial/driver                |    9 
 b/Documentation/sysctl/vm.txt                |   49 
 b/Documentation/vm/overcommit-accounting     |   68 +
 b/MAINTAINERS                                |   11 
 b/Makefile                                   |    3 
 b/Rules.make                                 |   19 
 b/arch/alpha/kernel/entry.S                  |    4 
 b/arch/alpha/kernel/osf_sys.c                |    4 
 b/arch/arm/kernel/calls.S                    |    6 
 b/arch/arm/kernel/entry-armv.S               |   16 
 b/arch/arm/kernel/entry-common.S             |   41 
 b/arch/arm/kernel/entry-header.S             |  257 ++---
 b/arch/arm/kernel/irq.c                      |   12 
 b/arch/arm/kernel/ptrace.c                   |    4 
 b/arch/arm/lib/kbd.c                         |  278 +++++
 b/arch/arm/mach-integrator/cpu.c             |  108 +-
 b/arch/arm/mach-sa1100/adsbitsy.c            |    1 
 b/arch/arm/mach-sa1100/assabet.c             |    1 
 b/arch/arm/mach-sa1100/badge4.c              |    1 
 b/arch/arm/mach-sa1100/cpu-sa1100.c          |   26 
 b/arch/arm/mach-sa1100/cpu-sa1110.c          |   30 
 b/arch/arm/mach-sa1100/freebird.c            |    1 
 b/arch/arm/mach-sa1100/generic.c             |    2 
 b/arch/arm/mach-sa1100/graphicsmaster.c      |    1 
 b/arch/arm/mach-sa1100/h3600.c               |    1 
 b/arch/arm/mach-sa1100/huw_webpanel.c        |    1 
 b/arch/arm/mach-sa1100/neponset.c            |    1 
 b/arch/arm/mach-sa1100/omnimeter.c           |    1 
 b/arch/arm/mach-sa1100/pfs168.c              |    1 
 b/arch/arm/mach-sa1100/sa1111.c              |    1 
 b/arch/arm/mach-sa1100/system3.c             |    3 
 b/arch/arm/mach-sa1100/yopy.c                |    1 
 b/arch/arm/mm/alignment.c                    |    6 
 b/arch/arm/mm/init.c                         |    1 
 b/arch/arm/mm/mm-armv.c                      |    2 
 b/arch/arm/tools/mach-types                  |   11 
 b/arch/i386/kernel/Makefile                  |    2 
 b/arch/i386/kernel/apic.c                    |    2 
 b/arch/i386/kernel/apm.c                     |   67 -
 b/arch/i386/kernel/entry.S                   |    4 
 b/arch/i386/kernel/i386_ksyms.c              |    1 
 b/arch/i386/kernel/i8259.c                   |    3 
 b/arch/i386/kernel/io_apic.c                 |    4 
 b/arch/i386/kernel/irq.c                     |   12 
 b/arch/i386/kernel/process.c                 |   99 --
 b/arch/i386/mm/init.c                        |    2 
 b/arch/ia64/config.in                        |    8 
 b/arch/ia64/ia32/sys_ia32.c                  |    8 
 b/arch/ia64/kernel/entry.S                   |    4 
 b/arch/ia64/lib/Makefile                     |    2 
 b/arch/ia64/mm/init.c                        |    7 
 b/arch/ia64/sn/io/Makefile                   |    2 
 b/arch/ia64/sn/io/hcl.c                      |   45 
 b/arch/m68k/atari/joystick.c                 |    2 
 b/arch/m68k/kernel/entry.S                   |    4 
 b/arch/mips/baget/Makefile                   |    2 
 b/arch/mips/kernel/Makefile                  |    3 
 b/arch/mips/mm/init.c                        |    1 
 b/arch/mips64/kernel/scall_64.S              |    4 
 b/arch/mips64/mm/init.c                      |    1 
 b/arch/ppc/8260_io/Config.in                 |    2 
 b/arch/ppc/8xx_io/Makefile                   |    2 
 b/arch/ppc/boot/common/misc-common.c         |   16 
 b/arch/ppc/boot/prep/Makefile                |    2 
 b/arch/ppc/boot/prep/misc.c                  |    8 
 b/arch/ppc/boot/simple/Makefile              |    4 
 b/arch/ppc/boot/simple/misc-spruce.c         |    2 
 b/arch/ppc/config.in                         |    4 
 b/arch/ppc/kernel/Makefile                   |    1 
 b/arch/ppc/kernel/irq.c                      |  297 ------
 b/arch/ppc/kernel/misc.S                     |    4 
 b/arch/ppc/kernel/ppc_htab.c                 |   41 
 b/arch/ppc/kernel/ppc_ksyms.c                |    6 
 b/arch/ppc/kernel/prep_nvram.c               |  148 +++
 b/arch/ppc/kernel/process.c                  |    3 
 b/arch/ppc/kernel/temp.c                     |   14 
 b/arch/ppc/kernel/time.c                     |   29 
 b/arch/ppc/mm/fault.c                        |   10 
 b/arch/ppc/mm/mmu_decl.h                     |    4 
 b/arch/ppc/mm/pgtable.c                      |   31 
 b/arch/ppc/mm/ppc_mmu.c                      |    8 
 b/arch/ppc/mm/tlb.c                          |   70 -
 b/arch/ppc/platforms/Makefile                |    4 
 b/arch/ppc/platforms/cpc700.h                |    4 
 b/arch/ppc/platforms/cpc700_pic.c            |    4 
 b/arch/ppc/platforms/iSeries_pic.c           |   13 
 b/arch/ppc/platforms/iSeries_time.c          |   10 
 b/arch/ppc/platforms/lopec_setup.c           |   17 
 b/arch/ppc/platforms/pplus_setup.c           |   23 
 b/arch/ppc/platforms/spruce_setup.c          |    4 
 b/arch/ppc64/kernel/Makefile                 |    2 
 b/arch/ppc64/kernel/misc.S                   |    4 
 b/arch/s390/kernel/entry.S                   |    4 
 b/arch/s390/mm/init.c                        |    2 
 b/arch/s390x/kernel/linux32.c                |    8 
 b/arch/s390x/mm/init.c                       |    2 
 b/arch/sh/kernel/Makefile                    |    3 
 b/arch/sparc/kernel/systbls.S                |    2 
 b/arch/sparc/mm/init.c                       |    1 
 b/arch/sparc64/kernel/sys_sparc32.c          |    8 
 b/arch/sparc64/kernel/systbls.S              |    2 
 b/arch/sparc64/mm/init.c                     |    1 
 b/arch/sparc64/solaris/socksys.c             |    4 
 b/arch/x86_64/ia32/sys_ia32.c                |    8 
 b/arch/x86_64/kernel/Makefile                |    2 
 b/drivers/Makefile                           |    3 
 b/drivers/acorn/block/mfmhd.c                |   25 
 b/drivers/acorn/char/Makefile                |    2 
 b/drivers/base/base.h                        |    1 
 b/drivers/base/bus.c                         |    2 
 b/drivers/base/fs.c                          |  115 +-
 b/drivers/base/interface.c                   |   22 
 b/drivers/block/DAC960.c                     |    8 
 b/drivers/block/DAC960.h                     |    1 
 b/drivers/block/Makefile                     |    3 
 b/drivers/block/acsi.c                       |    9 
 b/drivers/block/acsi_slm.c                   |    6 
 b/drivers/block/blkpg.c                      |    8 
 b/drivers/block/cciss.c                      |   15 
 b/drivers/block/cpqarray.c                   |   27 
 b/drivers/block/elevator.c                   |   31 
 b/drivers/block/floppy.c                     |   10 
 b/drivers/block/genhd.c                      |   30 
 b/drivers/block/ll_rw_blk.c                  |   37 
 b/drivers/block/loop.c                       |    4 
 b/drivers/block/paride/pd.c                  |   54 -
 b/drivers/block/paride/pg.c                  |    4 
 b/drivers/block/paride/pt.c                  |    4 
 b/drivers/block/ps2esdi.c                    |    9 
 b/drivers/block/rd.c                         |    1 
 b/drivers/block/swim3.c                      |    2 
 b/drivers/block/umem.c                       |    9 
 b/drivers/block/xd.c                         |    8 
 b/drivers/bluetooth/Config.help              |   14 
 b/drivers/bluetooth/Config.in                |    2 
 b/drivers/bluetooth/Makefile                 |    1 
 b/drivers/bluetooth/bluecard_cs.c            |   95 -
 b/drivers/bluetooth/bt3c_cs.c                |  944 +++++++++++++++++++
 b/drivers/bluetooth/dtl1_cs.c                | 1331 ++++++++++++---------------
 b/drivers/cdrom/aztcd.c                      |    7 
 b/drivers/cdrom/cdu31a.c                     |    6 
 b/drivers/cdrom/cm206.c                      |    4 
 b/drivers/cdrom/gscd.c                       |    7 
 b/drivers/cdrom/mcd.c                        |    4 
 b/drivers/cdrom/mcdx.c                       |    4 
 b/drivers/cdrom/optcd.c                      |    8 
 b/drivers/cdrom/sbpcd.c                      |    6 
 b/drivers/cdrom/sjcd.c                       |    7 
 b/drivers/cdrom/sonycd535.c                  |   18 
 b/drivers/char/Config.help                   |    6 
 b/drivers/char/Config.in                     |    2 
 b/drivers/char/Makefile                      |    3 
 b/drivers/char/drm/mga_drv.h                 |    2 
 b/drivers/char/dsp56k.c                      |    4 
 b/drivers/char/dtlk.c                        |    4 
 b/drivers/char/ftape/zftape/zftape-init.c    |   18 
 b/drivers/char/ip2main.c                     |   14 
 b/drivers/char/istallion.c                   |    4 
 b/drivers/char/lp.c                          |    4 
 b/drivers/char/mem.c                         |    2 
 b/drivers/char/misc.c                        |    2 
 b/drivers/char/n_r3964.c                     |  143 --
 b/drivers/char/nvram.c                       |  539 +++++-----
 b/drivers/char/ppdev.c                       |    4 
 b/drivers/char/raw.c                         |  333 +++---
 b/drivers/char/rocket.c                      |   21 
 b/drivers/char/stallion.c                    |    4 
 b/drivers/char/tpqic02.c                     |   44 
 b/drivers/char/tty_io.c                      |   12 
 b/drivers/char/vc_screen.c                   |   10 
 b/drivers/i2c/i2c-dev.c                      |    8 
 b/drivers/ide/ali14xx.c                      |    6 
 b/drivers/ide/ataraid.c                      |    3 
 b/drivers/ide/cmd640.c                       |   98 +
 b/drivers/ide/cs5530.c                       |   99 +-
 b/drivers/ide/dtc2278.c                      |    7 
 b/drivers/ide/hd.c                           |  108 +-
 b/drivers/ide/ht6560b.c                      |   15 
 b/drivers/ide/ide-cd.c                       |   24 
 b/drivers/ide/ide-disk.c                     |   12 
 b/drivers/ide/ide-floppy.c                   |   13 
 b/drivers/ide/ide-pci.c                      |    3 
 b/drivers/ide/ide-tape.c                     |  439 --------
 b/drivers/ide/ide.c                          |  186 +--
 b/drivers/ide/ioctl.c                        |    9 
 b/drivers/ide/it8172.c                       |    3 
 b/drivers/ide/main.c                         |  239 ++--
 b/drivers/ide/opti621.c                      |   11 
 b/drivers/ide/pcidma.c                       |   77 -
 b/drivers/ide/probe.c                        |  113 --
 b/drivers/ide/qd65xx.c                       |   82 -
 b/drivers/ide/trm290.c                       |    1 
 b/drivers/ide/umc8672.c                      |    5 
 b/drivers/input/evdev.c                      |   27 
 b/drivers/input/input.c                      |   26 
 b/drivers/input/serio/serio.c                |    2 
 b/drivers/isdn/capi/capi.c                   |    8 
 b/drivers/isdn/hisax/Config.in               |    4 
 b/drivers/isdn/hysdn/boardergo.c             |   15 
 b/drivers/isdn/i4l/isdn_common.c             |    8 
 b/drivers/macintosh/Makefile                 |    2 
 b/drivers/macintosh/adb.c                    |    2 
 b/drivers/md/lvm.c                           |   22 
 b/drivers/md/md.c                            |   12 
 b/drivers/media/video/videodev.c             |    5 
 b/drivers/message/fusion/Makefile            |    2 
 b/drivers/message/i2o/i2o_block.c            |    8 
 b/drivers/mtd/ftl.c                          |    2 
 b/drivers/mtd/mtdblock.c                     |   18 
 b/drivers/mtd/mtdchar.c                      |   17 
 b/drivers/mtd/nftlcore.c                     |    7 
 b/drivers/net/8139cp.c                       |    2 
 b/drivers/net/Config.in                      |    2 
 b/drivers/net/Makefile.lib                   |    2 
 b/drivers/net/au1000_eth.c                   |    2 
 b/drivers/net/e1000/e1000_main.c             |    2 
 b/drivers/net/hamradio/baycom_ser_hdx.c      |   11 
 b/drivers/net/irda/Config.in                 |   12 
 b/drivers/net/ppp_generic.c                  |    4 
 b/drivers/net/wan/Makefile                   |    2 
 b/drivers/net/wan/cosa.c                     |    8 
 b/drivers/net/wan/sdla_chdlc.c               |    2 
 b/drivers/parport/share.c                    |    1 
 b/drivers/pci/access.c                       |    3 
 b/drivers/pci/proc.c                         |   16 
 b/drivers/pcmcia/Makefile                    |    2 
 b/drivers/pnp/pnpbios_core.c                 |   29 
 b/drivers/s390/block/dasd_genhd.c            |   21 
 b/drivers/s390/block/dasd_ioctl.c            |   36 
 b/drivers/s390/block/xpram.c                 |    4 
 b/drivers/s390/char/tapeblock.c              |   12 
 b/drivers/s390/char/tapechar.c               |    8 
 b/drivers/s390/char/tubfs.c                  |   26 
 b/drivers/s390/cio/Makefile                  |    2 
 b/drivers/sbus/audio/audio.c                 |   10 
 b/drivers/sbus/char/bpp.c                    |    4 
 b/drivers/sbus/char/sunkbd.c                 |    2 
 b/drivers/sbus/char/vfc_dev.c                |    4 
 b/drivers/scsi/ide-scsi.c                    |   32 
 b/drivers/scsi/osst.c                        |   16 
 b/drivers/scsi/scsi_error.c                  |    1 
 b/drivers/scsi/scsi_scan.c                   |   10 
 b/drivers/scsi/sd.c                          |  163 +--
 b/drivers/scsi/sg.c                          |   25 
 b/drivers/scsi/sr.c                          |   26 
 b/drivers/scsi/st.c                          |   32 
 b/drivers/serial/21285.c                     |   22 
 b/drivers/serial/8250.c                      |   35 
 b/drivers/serial/8250_pci.c                  |   92 +
 b/drivers/serial/amba.c                      |   27 
 b/drivers/serial/anakin.c                    |   23 
 b/drivers/serial/clps711x.c                  |   21 
 b/drivers/serial/core.c                      |   24 
 b/drivers/serial/sa1100.c                    |   29 
 b/drivers/serial/uart00.c                    |   19 
 b/drivers/sgi/char/Makefile                  |    2 
 b/drivers/sgi/char/shmiq.c                   |    2 
 b/drivers/usb/core/Makefile                  |    2 
 b/drivers/usb/core/file.c                    |    4 
 b/drivers/usb/core/hub.c                     |    2 
 b/drivers/usb/core/usb.c                     |   41 
 b/drivers/usb/host/Makefile                  |    2 
 b/drivers/usb/host/ohci-q.c                  |   29 
 b/drivers/usb/input/hiddev.c                 |    7 
 b/drivers/usb/misc/tiglusb.c                 |    6 
 b/drivers/usb/storage/freecom.c              |   42 
 b/drivers/video/aty/Makefile                 |    3 
 b/drivers/video/fbmem.c                      |    2 
 b/drivers/video/modedb.c                     |    4 
 b/fs/Config.in                               |    2 
 b/fs/Makefile                                |    3 
 b/fs/adfs/file.c                             |    1 
 b/fs/affs/file.c                             |    1 
 b/fs/bfs/file.c                              |    9 
 b/fs/binfmt_elf.c                            |    3 
 b/fs/block_dev.c                             |   49 
 b/fs/buffer.c                                |   12 
 b/fs/coda/psdev.c                            |    6 
 b/fs/coda/sysctl.c                           |    1 
 b/fs/devfs/base.c                            |  105 --
 b/fs/devices.c                               |    5 
 b/fs/direct-io.c                             |  294 ++++-
 b/fs/driverfs/inode.c                        |  181 +--
 b/fs/exec.c                                  |    9 
 b/fs/ext2/file.c                             |    1 
 b/fs/ext2/inode.c                            |   15 
 b/fs/ext3/dir.c                              |    8 
 b/fs/ext3/file.c                             |   21 
 b/fs/ext3/inode.c                            |   38 
 b/fs/ext3/namei.c                            |   18 
 b/fs/ext3/super.c                            |   38 
 b/fs/ext3/symlink.c                          |    4 
 b/fs/freevxfs/vxfs_inode.c                   |    1 
 b/fs/hpfs/inode.c                            |    1 
 b/fs/intermezzo/sysctl.c                     |    1 
 b/fs/jffs/inode-v23.c                        |   15 
 b/fs/jffs2/LICENCE                           |   35 
 b/fs/jffs2/TODO                              |   26 
 b/fs/jffs2/background.c                      |   59 -
 b/fs/jffs2/build.c                           |   32 
 b/fs/jffs2/compr.c                           |   28 
 b/fs/jffs2/compr_rtime.c                     |   28 
 b/fs/jffs2/compr_rubin.c                     |   28 
 b/fs/jffs2/compr_zlib.c                      |   38 
 b/fs/jffs2/dir.c                             |   98 +
 b/fs/jffs2/erase.c                           |   53 -
 b/fs/jffs2/file.c                            |   89 -
 b/fs/jffs2/fs.c                              |  206 +---
 b/fs/jffs2/gc.c                              |   68 -
 b/fs/jffs2/ioctl.c                           |   28 
 b/fs/jffs2/malloc.c                          |   28 
 b/fs/jffs2/nodelist.c                        |   52 -
 b/fs/jffs2/nodelist.h                        |   36 
 b/fs/jffs2/nodemgmt.c                        |  191 +++
 b/fs/jffs2/os-linux.h                        |   32 
 b/fs/jffs2/pushpull.h                        |   28 
 b/fs/jffs2/read.c                            |   28 
 b/fs/jffs2/readinode.c                       |   33 
 b/fs/jffs2/scan.c                            |  178 ++-
 b/fs/jffs2/super.c                           |   76 -
 b/fs/jffs2/symlink.c                         |   34 
 b/fs/jffs2/wbuf.c                            |  112 +-
 b/fs/jffs2/write.c                           |   42 
 b/fs/jffs2/writev.c                          |   28 
 b/fs/jfs/file.c                              |    1 
 b/fs/jfs/inode.c                             |   15 
 b/fs/jfs/namei.c                             |    4 
 b/fs/locks.c                                 |  102 --
 b/fs/minix/file.c                            |    1 
 b/fs/ncpfs/dir.c                             |   38 
 b/fs/ncpfs/file.c                            |   16 
 b/fs/ncpfs/inode.c                           |   20 
 b/fs/nfs/dir.c                               |  161 ++-
 b/fs/nfs/inode.c                             |   19 
 b/fs/nfs/nfs2xdr.c                           |    3 
 b/fs/nfs/nfs3xdr.c                           |   15 
 b/fs/nfs/write.c                             |   11 
 b/fs/ntfs/file.c                             |    1 
 b/fs/partitions/Config.in                    |    2 
 b/fs/partitions/check.c                      |  174 +--
 b/fs/partitions/msdos.c                      |  102 --
 b/fs/proc/proc_misc.c                        |   13 
 b/fs/qnx4/file.c                             |    1 
 b/fs/ramfs/inode.c                           |    1 
 b/fs/read_write.c                            |  125 ++
 b/fs/reiserfs/file.c                         |    1 
 b/fs/smbfs/file.c                            |    8 
 b/fs/smbfs/smbiod.c                          |    1 
 b/fs/sysv/file.c                             |    1 
 b/fs/udf/file.c                              |    1 
 b/fs/ufs/file.c                              |    1 
 b/fs/ufs/super.c                             |    2 
 b/include/asm-alpha/processor.h              |    2 
 b/include/asm-alpha/socket.h                 |    2 
 b/include/asm-alpha/unistd.h                 |    4 
 b/include/asm-arm/arch-ebsa285/keyboard.h    |   61 -
 b/include/asm-arm/arch-integrator/keyboard.h |   11 
 b/include/asm-arm/arch-rpc/keyboard.h        |   11 
 b/include/asm-arm/arch-sa1100/hardware.h     |    2 
 b/include/asm-arm/arch-sa1100/keyboard.h     |   13 
 b/include/asm-arm/atomic.h                   |   14 
 b/include/asm-arm/hardirq.h                  |   73 +
 b/include/asm-arm/hardware/sa1111.h          |  137 --
 b/include/asm-arm/io.h                       |    7 
 b/include/asm-arm/proc-armv/system.h         |   36 
 b/include/asm-arm/processor.h                |    2 
 b/include/asm-arm/rmap.h                     |    2 
 b/include/asm-arm/socket.h                   |    2 
 b/include/asm-arm/softirq.h                  |   24 
 b/include/asm-arm/system.h                   |   12 
 b/include/asm-arm/unistd.h                   |    4 
 b/include/asm-cris/processor.h               |    2 
 b/include/asm-cris/unistd.h                  |    4 
 b/include/asm-i386/desc.h                    |    6 
 b/include/asm-i386/processor.h               |    5 
 b/include/asm-i386/rwsem.h                   |   36 
 b/include/asm-i386/smp.h                     |    5 
 b/include/asm-i386/socket.h                  |    2 
 b/include/asm-i386/spinlock.h                |    2 
 b/include/asm-i386/unistd.h                  |    5 
 b/include/asm-ia64/processor.h               |    2 
 b/include/asm-ia64/socket.h                  |    2 
 b/include/asm-ia64/unistd.h                  |    4 
 b/include/asm-m68k/processor.h               |    2 
 b/include/asm-m68k/socket.h                  |    2 
 b/include/asm-m68k/unistd.h                  |    4 
 b/include/asm-mips/processor.h               |    2 
 b/include/asm-mips/socket.h                  |    2 
 b/include/asm-mips/unistd.h                  |    4 
 b/include/asm-mips64/processor.h             |    2 
 b/include/asm-mips64/socket.h                |    2 
 b/include/asm-mips64/unistd.h                |    4 
 b/include/asm-parisc/processor.h             |    2 
 b/include/asm-parisc/socket.h                |    2 
 b/include/asm-parisc/unistd.h                |    4 
 b/include/asm-ppc/hardirq.h                  |  146 +-
 b/include/asm-ppc/hw_irq.h                   |   20 
 b/include/asm-ppc/pgtable.h                  |   17 
 b/include/asm-ppc/processor.h                |    2 
 b/include/asm-ppc/rwsem.h                    |   16 
 b/include/asm-ppc/smplock.h                  |    2 
 b/include/asm-ppc/socket.h                   |    2 
 b/include/asm-ppc/softirq.h                  |   26 
 b/include/asm-ppc/system.h                   |   21 
 b/include/asm-ppc/thread_info.h              |   20 
 b/include/asm-ppc/tlb.h                      |   59 +
 b/include/asm-ppc/tlbflush.h                 |    5 
 b/include/asm-ppc/unistd.h                   |    4 
 b/include/asm-ppc64/processor.h              |    2 
 b/include/asm-ppc64/unistd.h                 |    4 
 b/include/asm-s390/processor.h               |    2 
 b/include/asm-s390/socket.h                  |    2 
 b/include/asm-s390/unistd.h                  |    4 
 b/include/asm-s390x/processor.h              |    2 
 b/include/asm-s390x/unistd.h                 |    4 
 b/include/asm-sh/processor.h                 |    2 
 b/include/asm-sh/socket.h                    |    2 
 b/include/asm-sh/unistd.h                    |    4 
 b/include/asm-sparc/processor.h              |    2 
 b/include/asm-sparc/socket.h                 |    2 
 b/include/asm-sparc/unistd.h                 |    4 
 b/include/asm-sparc64/processor.h            |    2 
 b/include/asm-sparc64/socket.h               |    2 
 b/include/asm-sparc64/unistd.h               |    4 
 b/include/asm-x86_64/processor.h             |    2 
 b/include/asm-x86_64/unistd.h                |    8 
 b/include/linux/devfs_fs_kernel.h            |   43 
 b/include/linux/device.h                     |   22 
 b/include/linux/dqblk_xfs.h                  |    6 
 b/include/linux/driverfs_fs.h                |   27 
 b/include/linux/elevator.h                   |   16 
 b/include/linux/fs.h                         |   10 
 b/include/linux/genhd.h                      |    2 
 b/include/linux/hdreg.h                      |  522 ----------
 b/include/linux/ide.h                        |  507 ++++++++++
 b/include/linux/input.h                      |   22 
 b/include/linux/jffs2.h                      |   29 
 b/include/linux/jffs2_fs_sb.h                |   15 
 b/include/linux/list.h                       |    4 
 b/include/linux/mm.h                         |   41 
 b/include/linux/mman.h                       |    3 
 b/include/linux/mmzone.h                     |   53 +
 b/include/linux/n_r3964.h                    |   17 
 b/include/linux/nfs_fs.h                     |   11 
 b/include/linux/nfs_fs_sb.h                  |    4 
 b/include/linux/nfs_xdr.h                    |    5 
 b/include/linux/page-flags.h                 |    7 
 b/include/linux/pci.h                        |    4 
 b/include/linux/pci_ids.h                    |   13 
 b/include/linux/rwsem-spinlock.h             |    3 
 b/include/linux/rwsem.h                      |   25 
 b/include/linux/sched.h                      |    2 
 b/include/linux/security.h                   |    3 
 b/include/linux/shmem_fs.h                   |    2 
 b/include/linux/signal.h                     |    1 
 b/include/linux/slab.h                       |    1 
 b/include/linux/smp.h                        |   10 
 b/include/linux/swap.h                       |    3 
 b/include/linux/sysctl.h                     |   29 
 b/include/linux/timer.h                      |    1 
 b/init/do_mounts.c                           |    5 
 b/init/main.c                                |   18 
 b/ipc/shm.c                                  |    2 
 b/kernel/fork.c                              |   86 +
 b/kernel/futex.c                             |    8 
 b/kernel/kmod.c                              |   14 
 b/kernel/ksyms.c                             |    3 
 b/kernel/module.c                            |   34 
 b/kernel/platform.c                          |   14 
 b/kernel/ptrace.c                            |    3 
 b/kernel/sched.c                             |  254 ++++-
 b/kernel/softirq.c                           |    4 
 b/kernel/suspend.c                           |   27 
 b/kernel/sys.c                               |    2 
 b/kernel/sysctl.c                            |   13 
 b/kernel/user.c                              |    6 
 b/lib/rwsem-spinlock.c                       |   89 +
 b/lib/rwsem.c                                |    1 
 b/mm/bootmem.c                               |    8 
 b/mm/filemap.c                               |  151 ---
 b/mm/memory.c                                |   27 
 b/mm/mmap.c                                  |  211 +++-
 b/mm/mprotect.c                              |   28 
 b/mm/mremap.c                                |   44 
 b/mm/numa.c                                  |   24 
 b/mm/oom_kill.c                              |    1 
 b/mm/page_alloc.c                            |  100 --
 b/mm/page_io.c                               |   10 
 b/mm/readahead.c                             |    4 
 b/mm/rmap.c                                  |   82 -
 b/mm/shmem.c                                 |  195 ++-
 b/mm/slab.c                                  |   35 
 b/mm/swap.c                                  |    7 
 b/mm/swap_state.c                            |   31 
 b/mm/swapfile.c                              |    1 
 b/mm/vmscan.c                                |   11 
 b/net/802/Makefile                           |    1 
 b/net/Config.in                              |    3 
 b/net/Makefile                               |    1 
 b/net/core/Makefile                          |    5 
 b/net/ipv4/Makefile                          |    2 
 b/net/ipv4/ipconfig.c                        |    2 
 b/net/ipx/Makefile                           |    2 
 b/net/netlink/Makefile                       |    2 
 b/net/netlink/netlink_dev.c                  |    4 
 b/net/netsyms.c                              |    4 
 b/net/sched/sch_ingress.c                    |    4 
 b/net/sunrpc/clnt.c                          |   12 
 b/net/sunrpc/xprt.c                          |   34 
 b/scripts/fixdep.c                           |    4 
 b/scripts/mkcompile_h                        |   14 
 b/security/capability.c                      |    2 
 b/security/dummy.c                           |    2 
 b/sound/core/Makefile                        |    2 
 b/sound/core/info.c                          |    4 
 b/sound/core/seq/Makefile                    |    2 
 b/sound/core/sound.c                         |   12 
 b/sound/isa/sb/Makefile                      |    2 
 b/sound/oss/Makefile                         |    7 
 b/sound/oss/cs46xx.c                         |    4 
 b/sound/oss/i810_audio.c                     |    1 
 b/sound/oss/soundcard.c                      |   10 
 b/sound/oss/trident.c                        |  679 +++++++------
 b/sound/oss/trident.h                        |   13 
 b/sound/sound_core.c                         |    5 
 include/asm-arm/proc-armv/rmap.h             |   51 -
 include/linux/swapctl.h                      |   13 
 net/khttpd/Config.help                       |   18 
 net/khttpd/Config.in                         |    4 
 net/khttpd/Makefile                          |   22 
 net/khttpd/README                            |  218 ----
 net/khttpd/accept.c                          |  129 --
 net/khttpd/datasending.c                     |  242 ----
 net/khttpd/logging.c                         |   95 -
 net/khttpd/main.c                            |  394 -------
 net/khttpd/make_times_h.c                    |  115 --
 net/khttpd/misc.c                            |  242 ----
 net/khttpd/prototypes.h                      |  121 --
 net/khttpd/rfc.c                             |  374 -------
 net/khttpd/rfc_time.c                        |  227 ----
 net/khttpd/security.c                        |  267 -----
 net/khttpd/security.h                        |   12 
 net/khttpd/sockets.c                         |  101 --
 net/khttpd/structure.h                       |   68 -
 net/khttpd/sysctl.c                          |  320 ------
 net/khttpd/sysctl.h                          |   17 
 net/khttpd/userspace.c                       |  243 ----
 net/khttpd/waitheaders.c                     |  298 ------
 553 files changed, 8973 insertions(+), 11967 deletions(-)

