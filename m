From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.39 released
Date: Fri, 27 Sep 2002 15:02:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209272202.g8RM23t18855@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.39 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.39.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.39.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               365060           1662236
Full source                       36347010         162109440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/usb/usb-serial.txt              |   14 
 b/MAINTAINERS                                   |    9 
 b/Makefile                                      |  132 +
 b/arch/alpha/Makefile                           |   12 
 b/arch/alpha/kernel/Makefile                    |    1 
 b/arch/alpha/kernel/entry.S                     |   24 
 b/arch/alpha/kernel/time.c                      |   12 
 b/arch/alpha/lib/Makefile                       |   13 
 b/arch/alpha/math-emu/Makefile                  |    6 
 b/arch/alpha/mm/Makefile                        |    7 
 b/arch/arm/Makefile                             |   26 
 b/arch/arm/kernel/Makefile                      |    2 
 b/arch/arm/mach-adifcc/Makefile                 |    5 
 b/arch/arm/mach-anakin/Makefile                 |    5 
 b/arch/arm/mach-arc/Makefile                    |    2 
 b/arch/arm/mach-clps711x/Makefile               |    5 
 b/arch/arm/mach-clps7500/Makefile               |    5 
 b/arch/arm/mach-ebsa110/Makefile                |    5 
 b/arch/arm/mach-epxa10db/Makefile               |    5 
 b/arch/arm/mach-footbridge/Makefile             |    5 
 b/arch/arm/mach-ftvpci/Makefile                 |    5 
 b/arch/arm/mach-integrator/Makefile             |    5 
 b/arch/arm/mach-iop310/Makefile                 |    5 
 b/arch/arm/mach-l7200/Makefile                  |    5 
 b/arch/arm/mach-pxa/Makefile                    |   10 
 b/arch/arm/mach-rpc/Makefile                    |    5 
 b/arch/arm/mach-sa1100/Makefile                 |    2 
 b/arch/arm/mach-shark/Makefile                  |    5 
 b/arch/arm/mach-tbox/Makefile                   |    5 
 b/arch/arm/mm/Makefile                          |    7 
 b/arch/arm/nwfpe/Makefile                       |    2 
 b/arch/cris/Makefile                            |    8 
 b/arch/cris/drivers/Makefile                    |   10 
 b/arch/cris/drivers/lpslave/Makefile            |    3 
 b/arch/cris/kernel/Makefile                     |    1 
 b/arch/cris/mm/Makefile                         |    6 
 b/arch/i386/Config.help                         |    5 
 b/arch/i386/boot/compressed/misc.c              |    2 
 b/arch/i386/config.in                           |    3 
 b/arch/i386/defconfig                           |  194 +-
 b/arch/i386/kernel/cpu/common.c                 |   35 
 b/arch/i386/kernel/head.S                       |    2 
 b/arch/i386/kernel/i386_ksyms.c                 |    1 
 b/arch/i386/kernel/i8259.c                      |   20 
 b/arch/i386/kernel/mpparse.c                    |   29 
 b/arch/i386/kernel/process.c                    |    5 
 b/arch/i386/kernel/smpboot.c                    |    6 
 b/arch/i386/kernel/sys_i386.c                   |    3 
 b/arch/i386/kernel/time.c                       |   15 
 b/arch/i386/kernel/traps.c                      |   18 
 b/arch/i386/mach-generic/Makefile               |    6 
 b/arch/i386/mach-visws/Makefile                 |   12 
 b/arch/i386/vmlinux.lds.S                       |   10 
 b/arch/ia64/Makefile                            |   56 
 b/arch/ia64/dig/Makefile                        |    2 
 b/arch/ia64/hp/Makefile                         |   11 
 b/arch/ia64/hp/sim/Makefile                     |    2 
 b/arch/ia64/ia32/Makefile                       |    2 
 b/arch/ia64/sn/io/Makefile                      |    4 
 b/arch/ia64/sn/kernel/Makefile                  |   17 
 b/arch/ia64/sn/kernel/sn1/Makefile              |    2 
 b/arch/ia64/sn/kernel/sn2/Makefile              |    2 
 b/arch/m68k/Makefile                            |   88 -
 b/arch/m68k/amiga/Makefile                      |    7 
 b/arch/m68k/apollo/Makefile                     |    7 
 b/arch/m68k/atari/Makefile                      |    7 
 b/arch/m68k/bvme6000/Makefile                   |    7 
 b/arch/m68k/fpsp040/Makefile                    |    2 
 b/arch/m68k/hp300/Makefile                      |    7 
 b/arch/m68k/ifpsp060/Makefile                   |    2 
 b/arch/m68k/kernel/Makefile                     |    2 
 b/arch/m68k/mac/Makefile                        |    7 
 b/arch/m68k/math-emu/Makefile                   |    7 
 b/arch/m68k/mm/Makefile                         |    7 
 b/arch/m68k/mvme147/Makefile                    |    6 
 b/arch/m68k/mvme16x/Makefile                    |    7 
 b/arch/m68k/q40/Makefile                        |    7 
 b/arch/m68k/sun3/Makefile                       |    9 
 b/arch/m68k/sun3/prom/Makefile                  |   15 
 b/arch/m68k/sun3x/Makefile                      |    7 
 b/arch/mips/Makefile                            |  116 -
 b/arch/mips/au1000/common/Makefile              |    2 
 b/arch/mips/au1000/pb1000/Makefile              |    2 
 b/arch/mips/baget/Makefile                      |    2 
 b/arch/mips/ddb5074/Makefile                    |    8 
 b/arch/mips/ddb5476/Makefile                    |    8 
 b/arch/mips/ddb5xxx/common/Makefile             |    6 
 b/arch/mips/ddb5xxx/ddb5477/Makefile            |    6 
 b/arch/mips/dec/Makefile                        |    2 
 b/arch/mips/dec/boot/Makefile                   |    4 
 b/arch/mips/gt64120/common/Makefile             |    6 
 b/arch/mips/gt64120/momenco_ocelot/Makefile     |    6 
 b/arch/mips/ite-boards/generic/Makefile         |    2 
 b/arch/mips/ite-boards/ivr/Makefile             |    2 
 b/arch/mips/ite-boards/qed-4n-s01b/Makefile     |    5 
 b/arch/mips/jazz/Makefile                       |    2 
 b/arch/mips/kernel/Makefile                     |    1 
 b/arch/mips/math-emu/Makefile                   |    6 
 b/arch/mips/mips-boards/atlas/Makefile          |    2 
 b/arch/mips/mips-boards/generic/Makefile        |    7 
 b/arch/mips/mips-boards/malta/Makefile          |    7 
 b/arch/mips/mm/Makefile                         |    7 
 b/arch/mips/philips/nino/Makefile               |    2 
 b/arch/mips/sgi/kernel/Makefile                 |    2 
 b/arch/mips/sni/Makefile                        |    2 
 b/arch/mips64/Makefile                          |   27 
 b/arch/mips64/kernel/Makefile                   |    1 
 b/arch/mips64/math-emu/Makefile                 |    6 
 b/arch/mips64/mips-boards/atlas/Makefile        |    2 
 b/arch/mips64/mips-boards/generic/Makefile      |    2 
 b/arch/mips64/mips-boards/malta/Makefile        |    2 
 b/arch/mips64/mm/Makefile                       |    3 
 b/arch/mips64/sgi-ip27/Makefile                 |    2 
 b/arch/mips64/sgi-ip32/Makefile                 |    1 
 b/arch/parisc/Makefile                          |   26 
 b/arch/parisc/hpux/Makefile                     |    2 
 b/arch/parisc/kernel/Makefile                   |    1 
 b/arch/parisc/mm/Makefile                       |    8 
 b/arch/ppc/4xx_io/Makefile                      |    5 
 b/arch/ppc/8260_io/Makefile                     |    7 
 b/arch/ppc/8xx_io/Makefile                      |    7 
 b/arch/ppc/Makefile                             |   48 
 b/arch/ppc/amiga/Makefile                       |    7 
 b/arch/ppc/boot/openfirmware/Makefile           |    2 
 b/arch/ppc/boot/prep/Makefile                   |    2 
 b/arch/ppc/boot/simple/Makefile                 |    2 
 b/arch/ppc/iSeries/Makefile                     |    1 
 b/arch/ppc/kernel/Makefile                      |    1 
 b/arch/ppc/lib/Makefile                         |    2 
 b/arch/ppc/math-emu/Makefile                    |    1 
 b/arch/ppc/mm/Makefile                          |    6 
 b/arch/ppc/platforms/Makefile                   |    2 
 b/arch/ppc/xmon/Makefile                        |    2 
 b/arch/ppc64/Makefile                           |   11 
 b/arch/ppc64/kernel/Makefile                    |    1 
 b/arch/ppc64/lib/Makefile                       |    2 
 b/arch/ppc64/mm/Makefile                        |    7 
 b/arch/ppc64/xmon/Makefile                      |    2 
 b/arch/s390/Makefile                            |   14 
 b/arch/s390/kernel/Makefile                     |    2 
 b/arch/s390/math-emu/Makefile                   |    1 
 b/arch/s390/mm/Makefile                         |    7 
 b/arch/s390x/Makefile                           |    7 
 b/arch/s390x/boot/Makefile                      |    2 
 b/arch/s390x/kernel/Makefile                    |    2 
 b/arch/s390x/mm/Makefile                        |    7 
 b/arch/sh/Makefile                              |   15 
 b/arch/sh/kernel/Makefile                       |    1 
 b/arch/sh/mm/Makefile                           |    6 
 b/arch/sh/stboards/Makefile                     |    2 
 b/arch/sparc/Makefile                           |   11 
 b/arch/sparc/kernel/Makefile                    |    1 
 b/arch/sparc/math-emu/Makefile                  |    7 
 b/arch/sparc/mm/Makefile                        |    6 
 b/arch/sparc64/Makefile                         |   23 
 b/arch/sparc64/kernel/Makefile                  |    1 
 b/arch/sparc64/kernel/ioctl32.c                 |  322 ++++
 b/arch/sparc64/kernel/sys_sparc32.c             |   72 -
 b/arch/sparc64/math-emu/Makefile                |    6 
 b/arch/sparc64/mm/Makefile                      |    1 
 b/arch/um/Makefile                              |   12 
 b/arch/um/drivers/Makefile                      |   27 
 b/arch/um/kernel/Makefile                       |   30 
 b/arch/um/os-Linux/Makefile                     |    2 
 b/arch/um/os-Linux/drivers/Makefile             |   11 
 b/arch/um/ptproxy/Makefile                      |    2 
 b/arch/um/sys-i386/Makefile                     |    1 
 b/arch/um/sys-ia64/Makefile                     |    2 
 b/arch/um/sys-ppc/Makefile                      |    2 
 b/drivers/acorn/block/fd1772.c                  |    2 
 b/drivers/acpi/Config.in                        |    1 
 b/drivers/acpi/tables.c                         |    5 
 b/drivers/base/Makefile                         |    7 
 b/drivers/base/base.h                           |   10 
 b/drivers/base/core.c                           |   60 
 b/drivers/base/cpu.c                            |   28 
 b/drivers/base/hotplug.c                        |  103 +
 b/drivers/base/platform.c                       |   41 
 b/drivers/base/sys.c                            |  127 +
 b/drivers/block/DAC960.c                        |    5 
 b/drivers/block/Makefile                        |    4 
 b/drivers/block/amiflop.c                       |   53 
 b/drivers/block/ataflop.c                       |   58 
 b/drivers/block/deadline-iosched.c              |  601 ++++++++
 b/drivers/block/elevator.c                      |  143 --
 b/drivers/block/floppy.c                        |  119 -
 b/drivers/block/genhd.c                         |    8 
 b/drivers/block/ll_rw_blk.c                     |  250 ++-
 b/drivers/block/loop.c                          |   14 
 b/drivers/block/paride/pd.c                     | 1050 +++++++-------
 b/drivers/block/ps2esdi.c                       |    2 
 b/drivers/block/rd.c                            |    1 
 b/drivers/block/xd.c                            |    1 
 b/drivers/block/z2ram.c                         |   40 
 b/drivers/cdrom/cdu31a.c                        |    7 
 b/drivers/cdrom/gscd.c                          |    2 
 b/drivers/cdrom/mcd.c                           |    2 
 b/drivers/cdrom/sonycd535.c                     |    6 
 b/drivers/char/agp/Config.in                    |   10 
 b/drivers/char/agp/Makefile                     |    1 
 b/drivers/char/agp/agp.c                        |   28 
 b/drivers/char/agp/agp.h                        |   17 
 b/drivers/char/agp/k8-agp.c                     |  476 ++++++
 b/drivers/char/drm/Makefile                     |    2 
 b/drivers/char/drm/drmP.h                       |    6 
 b/drivers/char/drm/drm_bufs.h                   |    1 
 b/drivers/char/drm/drm_drv.h                    |    4 
 b/drivers/char/drm/drm_lock.h                   |    2 
 b/drivers/char/drm/drm_os_linux.h               |    3 
 b/drivers/char/drm/i830.h                       |   52 
 b/drivers/char/drm/i830_dma.c                   |  409 +----
 b/drivers/char/drm/i830_drv.c                   |    1 
 b/drivers/char/drm/i830_drv.h                   |   21 
 b/drivers/char/drm/radeon.h                     |   84 +
 b/drivers/char/drm/radeon_cp.c                  |    3 
 b/drivers/char/drm/radeon_drm.h                 |   59 
 b/drivers/char/drm/radeon_drv.h                 |   43 
 b/drivers/char/drm/radeon_irq.c                 |  214 +++
 b/drivers/char/drm/radeon_mem.c                 |  334 ++++
 b/drivers/char/drm/radeon_state.c               |   70 
 b/drivers/char/sysrq.c                          |    7 
 b/drivers/char/tty_io.c                         |    5 
 b/drivers/i2c/i2c-core.c                        |   73 -
 b/drivers/i2c/i2c-dev.c                         |  114 -
 b/drivers/i2c/i2c-proc.c                        |   34 
 b/drivers/ide/ide-lib.c                         |    2 
 b/drivers/ide/ide.c                             |    3 
 b/drivers/ide/legacy/pdc4030.c                  |   38 
 b/drivers/ide/pci/cy82c693.c                    |   29 
 b/drivers/ide/pci/cy82c693.h                    |    8 
 b/drivers/ide/pci/sl82c105.c                    |    2 
 b/drivers/ide/pci/trm290.c                      |    4 
 b/drivers/ide/setup-pci.c                       |   26 
 b/drivers/input/mousedev.c                      |   19 
 b/drivers/isdn/i4l/isdn_common.c                |   43 
 b/drivers/isdn/i4l/isdn_net.c                   |  886 +++++-------
 b/drivers/isdn/i4l/isdn_net.h                   |    4 
 b/drivers/isdn/i4l/isdn_ppp.c                   |   36 
 b/drivers/md/md.c                               |    1 
 b/drivers/mtd/ftl.c                             |   16 
 b/drivers/mtd/mtdblock.c                        |   41 
 b/drivers/net/irda/act200l.c                    |    8 
 b/drivers/net/irda/ali-ircc.c                   |  154 +-
 b/drivers/net/irda/irda-usb.c                   |   65 
 b/drivers/net/irda/smc-ircc.c                   |   70 
 b/drivers/net/irda/tekram.c                     |   12 
 b/drivers/net/irda/toshoboe.c                   |   28 
 b/drivers/net/irda/w83977af_ir.c                |   72 -
 b/drivers/net/sb1000.c                          |   16 
 b/drivers/net/sis900.c                          |    4 
 b/drivers/net/wireless/airo.c                   |  133 +
 b/drivers/net/wireless/airport.c                |  175 +-
 b/drivers/net/wireless/hermes.c                 |   35 
 b/drivers/net/wireless/hermes.h                 |   11 
 b/drivers/net/wireless/ieee802_11.h             |    4 
 b/drivers/net/wireless/orinoco.c                | 1267 ++++++++++--------
 b/drivers/net/wireless/orinoco.h                |   75 -
 b/drivers/net/wireless/orinoco_cs.c             |  585 +++-----
 b/drivers/net/wireless/orinoco_plx.c            |   75 -
 b/drivers/net/wireless/wavelan_cs.c             |    9 
 b/drivers/pci/hotplug.c                         |   96 -
 b/drivers/pci/pci-driver.c                      |    6 
 b/drivers/pci/pci.h                             |    5 
 b/drivers/pcmcia/i82092.c                       |    2 
 b/drivers/pnp/isapnp.c                          |   18 
 b/drivers/pnp/pnpbios_proc.c                    |   14 
 b/drivers/s390/block/dasd_genhd.c               |    1 
 b/drivers/s390/block/xpram.c                    |    1 
 b/drivers/s390/char/tapeblock.c                 |   59 
 b/drivers/scsi/3w-xxxx.c                        |   22 
 b/drivers/scsi/3w-xxxx.h                        |   11 
 b/drivers/scsi/sd.c                             |    4 
 b/drivers/scsi/sr.c                             |    1 
 b/drivers/usb/core/usb.c                        |  174 +-
 b/drivers/usb/host/ehci-dbg.c                   |   14 
 b/drivers/usb/host/ehci-hcd.c                   |   68 
 b/drivers/usb/host/ehci-hub.c                   |    3 
 b/drivers/usb/host/ehci-q.c                     |   88 -
 b/drivers/usb/host/ehci-sched.c                 |   71 -
 b/drivers/usb/host/ehci.h                       |   36 
 b/drivers/usb/host/ohci-hcd.c                   |   22 
 b/drivers/usb/host/ohci-q.c                     |  255 +--
 b/drivers/usb/misc/Config.help                  |   10 
 b/drivers/usb/misc/usblcd.c                     |    8 
 b/drivers/usb/serial/usb-serial.h               |    1 
 b/drivers/usb/serial/usbserial.c                |   26 
 b/drivers/usb/serial/whiteheat.c                | 1164 +++++++++++-----
 b/drivers/usb/serial/whiteheat.h                |  274 ++-
 b/drivers/usb/serial/whiteheat_fw.h             | 1685 ++++++++++++------------
 b/drivers/usb/storage/datafab.c                 |   41 
 b/drivers/usb/storage/freecom.c                 |   16 
 b/drivers/usb/storage/jumpshot.c                |   16 
 b/drivers/usb/storage/raw_bulk.c                |   22 
 b/drivers/usb/storage/sddr09.c                  |   42 
 b/drivers/usb/storage/sddr55.c                  |   60 
 b/drivers/usb/storage/shuttle_usbat.c           |   22 
 b/drivers/usb/storage/transport.c               |   67 
 b/drivers/usb/storage/transport.h               |   11 
 b/drivers/usb/storage/unusual_devs.h            |   15 
 b/drivers/usb/usb-skeleton.c                    |   37 
 b/drivers/video/matrox/matroxfb_DAC1064.c       |   19 
 b/drivers/video/matrox/matroxfb_base.h          |    4 
 b/fs/bio.c                                      |   24 
 b/fs/block_dev.c                                |    2 
 b/fs/buffer.c                                   |   30 
 b/fs/dcache.c                                   |   30 
 b/fs/direct-io.c                                |    2 
 b/fs/dquot.c                                    |   19 
 b/fs/exec.c                                     |   26 
 b/fs/ext2/ialloc.c                              |    9 
 b/fs/ext3/inode.c                               |    4 
 b/fs/fs-writeback.c                             |   40 
 b/fs/inode.c                                    |   29 
 b/fs/jfs/jfs_dmap.c                             |   20 
 b/fs/jfs/jfs_dtree.c                            |  221 ++-
 b/fs/jfs/jfs_imap.c                             |   11 
 b/fs/jfs/jfs_logmgr.c                           |    7 
 b/fs/locks.c                                    |   27 
 b/fs/mpage.c                                    |   13 
 b/fs/partitions/check.c                         |    2 
 b/fs/reiserfs/bitmap.c                          |    2 
 b/fs/xfs/linux/xfs_aops.c                       |  193 --
 b/fs/xfs/linux/xfs_file.c                       |  104 -
 b/fs/xfs/linux/xfs_lrw.c                        |  146 +-
 b/fs/xfs/linux/xfs_lrw.h                        |   20 
 b/fs/xfs/linux/xfs_vnode.h                      |   28 
 b/fs/xfs/pagebuf/page_buf.c                     |   13 
 b/fs/xfs/pagebuf/page_buf.h                     |    7 
 b/fs/xfs/pagebuf/page_buf_internal.h            |   12 
 b/fs/xfs/pagebuf/page_buf_locking.c             |   10 
 b/fs/xfs/support/time.h                         |    8 
 b/fs/xfs/xfs_iget.c                             |   20 
 b/fs/xfs/xfs_inode.h                            |    1 
 b/fs/xfs/xfs_mount.c                            |   10 
 b/fs/xfs/xfs_rename.c                           |    7 
 b/fs/xfs/xfs_utils.c                            |   57 
 b/fs/xfs/xfs_utils.h                            |    5 
 b/fs/xfs/xfs_vfsops.c                           |  417 +++--
 b/fs/xfs/xfs_vnodeops.c                         |  196 --
 b/include/asm-alpha/hardirq.h                   |    3 
 b/include/asm-alpha/ide.h                       |   11 
 b/include/asm-alpha/rwsem.h                     |   10 
 b/include/asm-alpha/spinlock.h                  |    1 
 b/include/asm-alpha/unistd.h                    |   12 
 b/include/asm-i386/hardirq.h                    |    2 
 b/include/asm-i386/io.h                         |    1 
 b/include/asm-i386/ptrace.h                     |    1 
 b/include/asm-i386/semaphore.h                  |    4 
 b/include/linux/acpi.h                          |   21 
 b/include/linux/agp_backend.h                   |    5 
 b/include/linux/amifd.h                         |    1 
 b/include/linux/backing-dev.h                   |   14 
 b/include/linux/bio.h                           |    1 
 b/include/linux/blkdev.h                        |    8 
 b/include/linux/brlock.h                        |    5 
 b/include/linux/buffer_head.h                   |    1 
 b/include/linux/cpu.h                           |   28 
 b/include/linux/dcache.h                        |    2 
 b/include/linux/device.h                        |   38 
 b/include/linux/elevator.h                      |   18 
 b/include/linux/elf.h                           |    2 
 b/include/linux/futex.h                         |    2 
 b/include/linux/genhd.h                         |    2 
 b/include/linux/init_task.h                     |    1 
 b/include/linux/isdn.h                          |   20 
 b/include/linux/isdnif.h                        |    3 
 b/include/linux/kallsyms.h                      |  163 ++
 b/include/linux/kernel.h                        |    7 
 b/include/linux/list.h                          |   12 
 b/include/linux/mm.h                            |    2 
 b/include/linux/module.h                        |   27 
 b/include/linux/netdevice.h                     |   12 
 b/include/linux/netfilter_bridge/ebt_arp.h      |   26 
 b/include/linux/netfilter_bridge/ebt_ip.h       |   24 
 b/include/linux/netfilter_bridge/ebt_log.h      |   17 
 b/include/linux/netfilter_bridge/ebt_mark_m.h   |   15 
 b/include/linux/netfilter_bridge/ebt_mark_t.h   |   12 
 b/include/linux/netfilter_bridge/ebt_nat.h      |   13 
 b/include/linux/netfilter_bridge/ebt_redirect.h |   11 
 b/include/linux/netfilter_bridge/ebt_vlan.h     |   20 
 b/include/linux/netfilter_bridge/ebtables.h     |  358 +++++
 b/include/linux/page-flags.h                    |    6 
 b/include/linux/pagemap.h                       |    8 
 b/include/linux/pci_ids.h                       |    1 
 b/include/linux/pid.h                           |   13 
 b/include/linux/rwsem.h                         |    2 
 b/include/linux/sched.h                         |   45 
 b/include/linux/smp.h                           |    3 
 b/include/linux/vcache.h                        |   26 
 b/include/linux/wait.h                          |   26 
 b/include/linux/writeback.h                     |    4 
 b/include/linux/x25.h                           |   16 
 b/include/net/irda/irda-usb.h                   |    2 
 b/include/net/llc_c_ac.h                        |    2 
 b/include/net/llc_c_ev.h                        |   38 
 b/include/net/llc_conn.h                        |   11 
 b/include/net/llc_evnt.h                        |   28 
 b/include/net/llc_if.h                          |   81 -
 b/include/net/llc_main.h                        |    3 
 b/include/net/llc_s_ev.h                        |   37 
 b/include/net/llc_sap.h                         |   31 
 b/include/net/ndisc.h                           |   19 
 b/include/net/p8022.h                           |    9 
 b/include/net/sctp/constants.h                  |    1 
 b/include/net/sctp/sctp.h                       |    3 
 b/include/net/sctp/sm.h                         |    8 
 b/include/net/sctp/structs.h                    |   15 
 b/include/net/x25.h                             |   14 
 b/kernel/Makefile                               |    3 
 b/kernel/exit.c                                 |   81 -
 b/kernel/fork.c                                 |   65 
 b/kernel/futex.c                                |  244 ++-
 b/kernel/kallsyms.c                             |  227 +++
 b/kernel/ksyms.c                                |    9 
 b/kernel/module.c                               |  112 +
 b/kernel/pid.c                                  |   70 
 b/kernel/sched.c                                |   23 
 b/kernel/signal.c                               |   47 
 b/kernel/suspend.c                              |    1 
 b/kernel/timer.c                                |   14 
 b/mm/Makefile                                   |    2 
 b/mm/filemap.c                                  |   73 -
 b/mm/highmem.c                                  |    2 
 b/mm/memory.c                                   |    6 
 b/mm/mempool.c                                  |    4 
 b/mm/mprotect.c                                 |    9 
 b/mm/page-writeback.c                           |   56 
 b/mm/page_alloc.c                               |   14 
 b/mm/pdflush.c                                  |   36 
 b/mm/slab.c                                     |   19 
 b/mm/swapfile.c                                 |   20 
 b/mm/vcache.c                                   |   93 +
 b/mm/vmscan.c                                   |  201 ++
 b/net/802/p8022.c                               |    6 
 b/net/802/psnap.c                               |   20 
 b/net/ipv4/netfilter/ip_conntrack_proto_tcp.c   |    1 
 b/net/ipv4/netfilter/ipchains_core.c            |    2 
 b/net/ipv4/netfilter/ipt_ULOG.c                 |    2 
 b/net/ipv4/netfilter/ipt_unclean.c              |    2 
 b/net/ipv6/ndisc.c                              |  300 ++--
 b/net/ipv6/netfilter/ip6_tables.c               |    3 
 b/net/ipv6/udp.c                                |   28 
 b/net/ipx/af_ipx.c                              |   18 
 b/net/irda/af_irda.c                            |  136 -
 b/net/irda/discovery.c                          |    4 
 b/net/irda/ircomm/ircomm_core.c                 |   44 
 b/net/irda/ircomm/ircomm_event.c                |   12 
 b/net/irda/ircomm/ircomm_lmp.c                  |   28 
 b/net/irda/ircomm/ircomm_param.c                |   32 
 b/net/irda/ircomm/ircomm_ttp.c                  |   20 
 b/net/irda/ircomm/ircomm_tty.c                  |   90 -
 b/net/irda/ircomm/ircomm_tty_attach.c           |   74 -
 b/net/irda/ircomm/ircomm_tty_ioctl.c            |   16 
 b/net/irda/irda_device.c                        |   24 
 b/net/irda/iriap.c                              |   83 -
 b/net/irda/iriap_event.c                        |   38 
 b/net/irda/irias_object.c                       |   13 
 b/net/irda/irlan/irlan_client.c                 |   48 
 b/net/irda/irlan/irlan_client_event.c           |   62 
 b/net/irda/irlan/irlan_common.c                 |   71 -
 b/net/irda/irlan/irlan_eth.c                    |   16 
 b/net/irda/irlan/irlan_event.c                  |    4 
 b/net/irda/irlan/irlan_filter.c                 |    4 
 b/net/irda/irlan/irlan_provider.c               |   30 
 b/net/irda/irlan/irlan_provider_event.c         |   16 
 b/net/irda/irlap.c                              |   52 
 b/net/irda/irlap_event.c                        |  171 +-
 b/net/irda/irlap_frame.c                        |   62 
 b/net/irda/irlmp.c                              |  124 -
 b/net/irda/irlmp_event.c                        |  121 -
 b/net/irda/irlmp_frame.c                        |   48 
 b/net/irda/irnet/irnet.h                        |   22 
 b/net/irda/irnet/irnet_irda.h                   |    2 
 b/net/irda/irqueue.c                            |   10 
 b/net/irda/irsyms.c                             |    6 
 b/net/irda/irttp.c                              |  100 -
 b/net/irda/parameters.c                         |   35 
 b/net/irda/qos.c                                |   42 
 b/net/irda/wrapper.c                            |   26 
 b/net/llc/llc_c_ac.c                            |   81 -
 b/net/llc/llc_c_ev.c                            |   30 
 b/net/llc/llc_conn.c                            |  285 ++--
 b/net/llc/llc_evnt.c                            |    8 
 b/net/llc/llc_if.c                              |  125 -
 b/net/llc/llc_mac.c                             |   32 
 b/net/llc/llc_main.c                            |   68 
 b/net/llc/llc_s_ac.c                            |   24 
 b/net/llc/llc_s_ev.c                            |   16 
 b/net/llc/llc_sap.c                             |   96 -
 b/net/llc/llc_sock.c                            |  429 ------
 b/net/sched/sch_htb.c                           |    6 
 b/net/sctp/adler32.c                            |    2 
 b/net/sctp/associola.c                          |   52 
 b/net/sctp/bind_addr.c                          |   34 
 b/net/sctp/command.c                            |   26 
 b/net/sctp/debug.c                              |    1 
 b/net/sctp/endpointola.c                        |   89 -
 b/net/sctp/input.c                              |   32 
 b/net/sctp/ipv6.c                               |  115 +
 b/net/sctp/output.c                             |   77 -
 b/net/sctp/outqueue.c                           |  151 +-
 b/net/sctp/primitive.c                          |   28 
 b/net/sctp/protocol.c                           |  108 +
 b/net/sctp/sm_make_chunk.c                      |   51 
 b/net/sctp/sm_sideeffect.c                      |   64 
 b/net/sctp/sm_statefuns.c                       |  748 +++++++---
 b/net/sctp/sm_statetable.c                      |  943 +++++++------
 b/net/sctp/socket.c                             |  147 --
 b/net/sctp/transport.c                          |   40 
 b/net/sctp/ulpevent.c                           |   90 -
 b/net/sctp/ulpqueue.c                           |   30 
 b/net/x25/af_x25.c                              |  577 ++++----
 b/net/x25/sysctl_net_x25.c                      |  100 +
 b/net/x25/x25_in.c                              |   15 
 b/net/x25/x25_route.c                           |  167 +-
 include/net/llc_frame.h                         |   98 -
 include/net/llc_name.h                          |    7 
 include/net/llc_state.h                         |    4 
 518 files changed, 15674 insertions(+), 11336 deletions(-)

