From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.13 released
Date: Thu, 2 May 2002 17:27:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205030027.g430R4F16773@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.13 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.13.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.13.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               272163           1111864
Full source                       34149001         152320000

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/ppc64/kernel/ppc_asm.tmpl               |  115 
 b/CREDITS                                    |    5 
 b/Documentation/BK-usage/bk-kernel-howto.txt |   10 
 b/Documentation/kbuild/makefiles.txt         |  554 ----
 b/Documentation/networking/3c509.txt         |  210 +
 b/Documentation/networking/bonding.txt       |    2 
 b/Documentation/networking/ifenslave.c       |   21 
 b/Documentation/usb/usb-serial.txt           |    6 
 b/MAINTAINERS                                |    3 
 b/Makefile                                   |    4 
 b/Rules.make                                 |   16 
 b/arch/i386/kernel/microcode.c               |    2 
 b/arch/i386/kernel/msr.c                     |    2 
 b/arch/m68k/atari/stram.c                    |    3 
 b/arch/ppc64/boot/zlib.c                     |    5 
 b/arch/ppc64/config.in                       |    1 
 b/arch/ppc64/kernel/ItLpQueue.c              |    2 
 b/arch/ppc64/kernel/LparData.c               |   18 
 b/arch/ppc64/kernel/Makefile                 |    3 
 b/arch/ppc64/kernel/bitops.c                 |   11 
 b/arch/ppc64/kernel/chrp_setup.c             |   31 
 b/arch/ppc64/kernel/eeh.c                    |  101 
 b/arch/ppc64/kernel/entry.S                  |    4 
 b/arch/ppc64/kernel/head.S                   |  246 -
 b/arch/ppc64/kernel/htab.c                   |    8 
 b/arch/ppc64/kernel/iSeries_VpdInfo.c        |    2 
 b/arch/ppc64/kernel/iSeries_pci.c            |   12 
 b/arch/ppc64/kernel/iSeries_setup.c          |   21 
 b/arch/ppc64/kernel/idle.c                   |   13 
 b/arch/ppc64/kernel/ioctl32.c                |  409 +-
 b/arch/ppc64/kernel/irq.c                    |   92 
 b/arch/ppc64/kernel/mf.c                     |    2 
 b/arch/ppc64/kernel/mf_proc.c                |   20 
 b/arch/ppc64/kernel/mk_defs.c                |   80 
 b/arch/ppc64/kernel/open_pic.c               |   19 
 b/arch/ppc64/kernel/pSeries_lpar.c           |   97 
 b/arch/ppc64/kernel/pSeries_pci.c            |  155 -
 b/arch/ppc64/kernel/pacaData.c               |   13 
 b/arch/ppc64/kernel/pci.c                    |   45 
 b/arch/ppc64/kernel/pci_dma.c                |  494 +--
 b/arch/ppc64/kernel/pci_dn.c                 |    2 
 b/arch/ppc64/kernel/pmc.c                    |    6 
 b/arch/ppc64/kernel/ppc_asm.h                |    4 
 b/arch/ppc64/kernel/ppc_ksyms.c              |   22 
 b/arch/ppc64/kernel/proc_pmc.c               |   17 
 b/arch/ppc64/kernel/process.c                |   11 
 b/arch/ppc64/kernel/prom.c                   |   28 
 b/arch/ppc64/kernel/rtas-proc.c              |    2 
 b/arch/ppc64/kernel/rtas.c                   |    2 
 b/arch/ppc64/kernel/setup.c                  |   66 
 b/arch/ppc64/kernel/signal.c                 |    2 
 b/arch/ppc64/kernel/signal32.c               |   23 
 b/arch/ppc64/kernel/smp.c                    |   69 
 b/arch/ppc64/kernel/stab.c                   |    4 
 b/arch/ppc64/kernel/time.c                   |   20 
 b/arch/ppc64/kernel/traps.c                  |   56 
 b/arch/ppc64/kernel/udbg.c                   |    9 
 b/arch/ppc64/kernel/xics.c                   |   12 
 b/arch/ppc64/lib/checksum.S                  |    2 
 b/arch/ppc64/lib/string.S                    |    2 
 b/arch/ppc64/mm/extable.c                    |   54 
 b/arch/ppc64/mm/fault.c                      |   36 
 b/arch/ppc64/mm/init.c                       |   15 
 b/arch/ppc64/xmon/xmon.c                     |  113 
 b/arch/sparc/Config.help                     |    5 
 b/arch/sparc/config.in                       |    1 
 b/arch/sparc/defconfig                       |    1 
 b/arch/sparc/kernel/Makefile                 |    1 
 b/arch/sparc/kernel/apc.c                    |  171 +
 b/arch/sparc/kernel/pmc.c                    |   99 
 b/arch/sparc/kernel/process.c                |   21 
 b/arch/sparc/kernel/signal.c                 |   40 
 b/arch/sparc/kernel/sparc_ksyms.c            |    4 
 b/arch/sparc/kernel/systbls.S                |    2 
 b/arch/sparc/mm/init.c                       |    6 
 b/arch/sparc64/kernel/binfmt_aout32.c        |   10 
 b/arch/sparc64/kernel/entry.S                |    2 
 b/arch/sparc64/kernel/ioctl32.c              |   41 
 b/arch/sparc64/kernel/process.c              |   14 
 b/arch/sparc64/kernel/ptrace.c               |    3 
 b/arch/sparc64/kernel/rtrap.S                |    4 
 b/arch/sparc64/kernel/signal.c               |   23 
 b/arch/sparc64/kernel/signal32.c             |   23 
 b/arch/sparc64/kernel/smp.c                  |   72 
 b/arch/sparc64/kernel/sparc64_ksyms.c        |    1 
 b/arch/sparc64/kernel/sys_sparc32.c          |   52 
 b/arch/sparc64/kernel/systbls.S              |    4 
 b/arch/sparc64/kernel/traps.c                |   38 
 b/arch/sparc64/math-emu/math.c               |   49 
 b/arch/sparc64/mm/generic.c                  |    1 
 b/arch/sparc64/mm/ultra.S                    |   37 
 b/arch/sparc64/solaris/signal.c              |    1 
 b/drivers/acorn/block/fd1772.c               |    2 
 b/drivers/acorn/block/mfmhd.c                |    7 
 b/drivers/acorn/net/etherh.c                 |    4 
 b/drivers/block/DAC960.c                     |    5 
 b/drivers/block/DAC960.h                     |    1 
 b/drivers/block/acsi.c                       |    4 
 b/drivers/block/amiflop.c                    |    2 
 b/drivers/block/ataflop.c                    |    2 
 b/drivers/block/blkpg.c                      |    8 
 b/drivers/block/cciss.c                      |   12 
 b/drivers/block/cciss.h                      |    1 
 b/drivers/block/cpqarray.c                   |   20 
 b/drivers/block/floppy.c                     |   11 
 b/drivers/block/ll_rw_blk.c                  |  224 +
 b/drivers/block/loop.c                       |   12 
 b/drivers/block/nbd.c                        |    1 
 b/drivers/block/paride/pcd.c                 |    5 
 b/drivers/block/paride/pd.c                  |    4 
 b/drivers/block/paride/pf.c                  |    4 
 b/drivers/block/ps2esdi.c                    |    5 
 b/drivers/block/rd.c                         |    5 
 b/drivers/block/swim3.c                      |    2 
 b/drivers/block/swim_iop.c                   |    2 
 b/drivers/block/xd.c                         |    4 
 b/drivers/block/z2ram.c                      |    3 
 b/drivers/cdrom/aztcd.c                      |    4 
 b/drivers/cdrom/cdu31a.c                     |    5 
 b/drivers/cdrom/cm206.c                      |    4 
 b/drivers/cdrom/gscd.c                       |    3 
 b/drivers/cdrom/mcd.c                        |    4 
 b/drivers/cdrom/mcdx.c                       |    4 
 b/drivers/cdrom/optcd.c                      |    4 
 b/drivers/cdrom/sbpcd.c                      |    7 
 b/drivers/cdrom/sjcd.c                       |    5 
 b/drivers/cdrom/sonycd535.c                  |   20 
 b/drivers/char/rocket_int.h                  |    2 
 b/drivers/char/serial_tx3912.h               |    2 
 b/drivers/ide/ataraid.c                      |    9 
 b/drivers/ide/hd.c                           |    6 
 b/drivers/ide/ide-cd.c                       |    7 
 b/drivers/ide/ide-dma.c                      |   27 
 b/drivers/ide/ide-probe.c                    |    8 
 b/drivers/ide/ide.c                          |  148 -
 b/drivers/ide/pdcadma.c                      |   16 
 b/drivers/ide/piix.c                         |    4 
 b/drivers/ide/trm290.c                       |   10 
 b/drivers/isdn/hardware/avm/avmcard.h        |   40 
 b/drivers/isdn/hardware/avm/b1.c             |   45 
 b/drivers/isdn/hardware/avm/b1dma.c          |  213 -
 b/drivers/isdn/hardware/avm/b1isa.c          |  121 
 b/drivers/isdn/hardware/avm/b1pci.c          |   89 
 b/drivers/isdn/hardware/avm/b1pcmcia.c       |   87 
 b/drivers/isdn/hardware/avm/c4.c             |   67 
 b/drivers/isdn/hardware/avm/t1isa.c          |  133 
 b/drivers/isdn/hardware/avm/t1pci.c          |   32 
 b/drivers/md/md.c                            |   16 
 b/drivers/md/multipath.c                     |   51 
 b/drivers/message/i2o/i2o_block.c            |    3 
 b/drivers/mtd/devices/blkmtd.c               |   21 
 b/drivers/mtd/ftl.c                          |    4 
 b/drivers/mtd/mtdblock.c                     |   13 
 b/drivers/mtd/mtdblock_ro.c                  |    4 
 b/drivers/mtd/nftlcore.c                     |    9 
 b/drivers/net/3c501.c                        |    8 
 b/drivers/net/3c509.c                        |  262 +
 b/drivers/net/8139cp.c                       |    4 
 b/drivers/net/8390.h                         |    6 
 b/drivers/net/Config.in                      |    1 
 b/drivers/net/Makefile                       |   12 
 b/drivers/net/Space.c                        |   14 
 b/drivers/net/apne.c                         |  120 
 b/drivers/net/appletalk/Config.help          |   11 
 b/drivers/net/appletalk/Config.in            |   32 
 b/drivers/net/appletalk/ltpc.c               |    7 
 b/drivers/net/ariadne.c                      |    2 
 b/drivers/net/depca.c                        |    9 
 b/drivers/net/dgrs.c                         |   31 
 b/drivers/net/e100/e100_phy.c                |    2 
 b/drivers/net/eepro.c                        |    8 
 b/drivers/net/ewrk3.c                        |    8 
 b/drivers/net/gt96100eth.c                   |    5 
 b/drivers/net/hamradio/baycom_ser_fdx.c      |   14 
 b/drivers/net/irda/Config.help               |   12 
 b/drivers/net/irda/Config.in                 |    1 
 b/drivers/net/irda/Makefile                  |    1 
 b/drivers/net/irda/irtty.c                   |   34 
 b/drivers/net/irda/mcp2120.c                 |  252 +
 b/drivers/net/isa-skeleton.c                 |    4 
 b/drivers/net/lance.c                        |   16 
 b/drivers/net/ni5010.c                       |    8 
 b/drivers/net/ni52.c                         |   10 
 b/drivers/net/ni65.c                         |   10 
 b/drivers/net/pcmcia/ax8390.h                |    6 
 b/drivers/net/rrunner.c                      |    6 
 b/drivers/net/sgiseeq.c                      |   22 
 b/drivers/net/sis900.c                       |   51 
 b/drivers/net/sis900.h                       |    7 
 b/drivers/net/smc9194.c                      |    6 
 b/drivers/net/sun3lance.c                    |  142 -
 b/drivers/net/sungem.c                       |    4 
 b/drivers/net/tg3.c                          |   14 
 b/drivers/net/tlan.c                         |   14 
 b/drivers/net/wan/Config.help                |   53 
 b/drivers/net/wan/Config.in                  |   11 
 b/drivers/net/wan/Makefile                   |    7 
 b/drivers/net/wan/dscc4.c                    |    2 
 b/drivers/net/wan/hd64572.h                  |  443 +++
 b/drivers/net/wan/pc300-falc-lh.h            | 1238 +++++++++
 b/drivers/net/wan/pc300.h                    |  501 +++
 b/drivers/net/wan/pc300_drv.c                | 3683 +++++++++++++++++++++++++++
 b/drivers/net/wan/pc300_tty.c                | 1146 ++++++++
 b/drivers/net/wan/sbni.c                     |    8 
 b/drivers/net/wan/sdla.c                     |    6 
 b/drivers/net/wan/sdla_chdlc.c               |   30 
 b/drivers/net/wan/sdla_fr.c                  |   58 
 b/drivers/net/wan/sdla_ppp.c                 |   55 
 b/drivers/net/wan/sealevel.c                 |    3 
 b/drivers/net/wd.c                           |    9 
 b/drivers/pci/pci.ids                        |   10 
 b/drivers/s390/block/dasd.c                  |   14 
 b/drivers/s390/block/xpram.c                 |   15 
 b/drivers/s390/char/tape34xx.c               |    4 
 b/drivers/s390/char/tapeblock.c              |    6 
 b/drivers/sbus/char/jsflash.c                |    3 
 b/drivers/scsi/BusLogic.c                    |   23 
 b/drivers/scsi/aha152x.c                     |  126 
 b/drivers/scsi/aha152x.h                     |    4 
 b/drivers/scsi/cpqfcTSinit.c                 |    6 
 b/drivers/scsi/cpqfcTSstructs.h              |    1 
 b/drivers/scsi/megaraid.c                    |    3 
 b/drivers/scsi/scsi_error.c                  |    9 
 b/drivers/scsi/scsi_merge.c                  |    2 
 b/drivers/scsi/scsicam.c                     |    2 
 b/drivers/scsi/sd.c                          | 1130 +++++---
 b/drivers/scsi/sr.c                          |   17 
 b/drivers/scsi/st.c                          |    7 
 b/drivers/scsi/sym53c8xx_2/sym_hipd.c        |    2 
 b/drivers/scsi/ultrastor.c                   |   23 
 b/drivers/usb/class/printer.c                |   13 
 b/drivers/usb/host/ohci-hub.c                |    4 
 b/drivers/usb/host/ohci-q.c                  |   12 
 b/drivers/usb/image/mdc800.c                 |    7 
 b/drivers/usb/image/scanner.c                |    9 
 b/drivers/usb/input/hiddev.c                 |    8 
 b/drivers/usb/media/dabusb.c                 |    6 
 b/drivers/usb/media/ibmcam.c                 |   23 
 b/drivers/usb/media/konicawc.c               |    3 
 b/drivers/usb/media/ultracam.c               |   18 
 b/drivers/usb/media/usbvideo.c               |   54 
 b/drivers/usb/media/usbvideo.h               |    3 
 b/drivers/usb/misc/auerswald.c               |    8 
 b/drivers/usb/misc/brlvger.c                 |    8 
 b/drivers/usb/net/pegasus.c                  |   15 
 b/drivers/usb/serial/Config.help             |    6 
 b/drivers/usb/serial/Config.in               |    2 
 b/drivers/usb/serial/io_tables.h             |   26 
 b/drivers/usb/serial/io_usbvend.h            |   14 
 b/drivers/usb/serial/ipaq.c                  |    7 
 b/drivers/usb/serial/ipaq.h                  |    3 
 b/drivers/usb/serial/pl2303.c                |   12 
 b/drivers/usb/storage/Config.help            |   10 
 b/drivers/usb/storage/Config.in              |    2 
 b/drivers/usb/storage/debug.c                |    1 
 b/drivers/usb/storage/initializers.h         |    5 
 b/drivers/usb/storage/jumpshot.c             |    2 
 b/drivers/usb/storage/sddr09.c               | 1871 +++++++++----
 b/drivers/usb/storage/sddr09.h               |    4 
 b/drivers/usb/storage/unusual_devs.h         |    4 
 b/drivers/usb/usb-skeleton.c                 |   11 
 b/drivers/video/Makefile                     |   16 
 b/drivers/video/aty/atyfb_base.c             |   74 
 b/drivers/video/fbcon-accel.h                |    2 
 b/drivers/video/fbcon-cfb16.c                |   24 
 b/drivers/video/fbcon-cfb2.c                 |   22 
 b/drivers/video/fbcon-cfb24.c                |   24 
 b/drivers/video/fbcon-cfb32.c                |   24 
 b/drivers/video/fbcon-cfb4.c                 |   24 
 b/drivers/video/fbcon-cfb8.c                 |   25 
 b/drivers/video/fbcon-hga.c                  |    6 
 b/drivers/video/fbcon-ilbm.c                 |   20 
 b/drivers/video/fbcon-iplan2p2.c             |   43 
 b/drivers/video/fbcon-iplan2p4.c             |   42 
 b/drivers/video/fbcon-iplan2p8.c             |   42 
 b/drivers/video/fbcon-mac.c                  |   30 
 b/drivers/video/fbcon-mfb.c                  |   22 
 b/drivers/video/fbcon-sti.c                  |   24 
 b/drivers/video/fbcon-vga-planes.c           |   20 
 b/drivers/video/fbcon-vga.c                  |   20 
 b/drivers/video/fm2fb.c                      |    2 
 b/drivers/video/matrox/matroxfb_base.c       |    2 
 b/drivers/video/neofb.c                      |    1 
 b/drivers/video/pm2fb.c                      |    2 
 b/drivers/video/retz3fb.c                    |    1 
 b/drivers/video/sbusfb.c                     |    5 
 b/drivers/video/sis/sis_main.c               |    2 
 b/fs/attr.c                                  |    4 
 b/fs/autofs/inode.c                          |    2 
 b/fs/block_dev.c                             |   59 
 b/fs/buffer.c                                |   56 
 b/fs/exportfs/expfs.c                        |    2 
 b/fs/ext2/inode.c                            |    2 
 b/fs/ext3/super.c                            |    2 
 b/fs/fs-writeback.c                          |    2 
 b/fs/namei.c                                 |    6 
 b/fs/nfs/mount_clnt.c                        |    3 
 b/fs/nfs/nfsroot.c                           |    4 
 b/fs/ntfs/ChangeLog                          |   14 
 b/fs/ntfs/Makefile                           |    2 
 b/fs/ntfs/inode.c                            |    3 
 b/fs/ntfs/mft.c                              |    2 
 b/fs/ntfs/super.c                            |   11 
 b/fs/ntfs/upcase.c                           |    2 
 b/fs/partitions/check.c                      |   17 
 b/fs/partitions/efi.c                        |    7 
 b/fs/partitions/ldm.c                        |    2 
 b/fs/partitions/ldm.h                        |    2 
 b/fs/proc/proc_misc.c                        |    4 
 b/fs/super.c                                 |    4 
 b/fs/udf/ecma_167.h                          |    2 
 b/fs/ufs/super.c                             |   34 
 b/include/asm-arm/arch-pxa/pxa-regs.h        |    2 
 b/include/asm-ppc64/atomic.h                 |    5 
 b/include/asm-ppc64/bitops.h                 |   56 
 b/include/asm-ppc64/eeh.h                    |    8 
 b/include/asm-ppc64/iSeries/HvCall.h         |   15 
 b/include/asm-ppc64/iSeries/HvCallHpt.h      |    8 
 b/include/asm-ppc64/iSeries/HvReleaseData.h  |    2 
 b/include/asm-ppc64/iSeries/LparData.h       |    6 
 b/include/asm-ppc64/iSeries/iSeries_pci.h    |    4 
 b/include/asm-ppc64/io.h                     |   42 
 b/include/asm-ppc64/machdep.h                |    7 
 b/include/asm-ppc64/memory.h                 |   20 
 b/include/asm-ppc64/mmu.h                    |    4 
 b/include/asm-ppc64/naca.h                   |   40 
 b/include/asm-ppc64/paca.h                   |  163 +
 b/include/asm-ppc64/page.h                   |   11 
 b/include/asm-ppc64/pci.h                    |   10 
 b/include/asm-ppc64/pci_dma.h                |    4 
 b/include/asm-ppc64/percpu.h                 |    6 
 b/include/asm-ppc64/pgalloc.h                |    2 
 b/include/asm-ppc64/pgtable.h                |   50 
 b/include/asm-ppc64/posix_types.h            |    6 
 b/include/asm-ppc64/ppc_asm.tmpl             |  115 
 b/include/asm-ppc64/ppcdebug.h               |    2 
 b/include/asm-ppc64/processor.h              |   26 
 b/include/asm-ppc64/semaphore.h              |    8 
 b/include/asm-ppc64/siginfo.h                |    2 
 b/include/asm-ppc64/signal.h                 |    6 
 b/include/asm-ppc64/smp.h                    |    4 
 b/include/asm-ppc64/spinlock.h               |   45 
 b/include/asm-ppc64/system.h                 |    2 
 b/include/asm-ppc64/time.h                   |   32 
 b/include/asm-ppc64/tlbflush.h               |    2 
 b/include/asm-ppc64/uaccess.h                |   12 
 b/include/asm-ppc64/vga.h                    |    4 
 b/include/asm-sparc/apc.h                    |   64 
 b/include/asm-sparc/ioctls.h                 |    4 
 b/include/asm-sparc/percpu.h                 |    6 
 b/include/asm-sparc/unistd.h                 |    4 
 b/include/asm-sparc64/cacheflush.h           |   56 
 b/include/asm-sparc64/elf.h                  |   43 
 b/include/asm-sparc64/ioctls.h               |    4 
 b/include/asm-sparc64/percpu.h               |    6 
 b/include/asm-sparc64/pgalloc.h              |   26 
 b/include/asm-sparc64/pgtable.h              |   99 
 b/include/asm-sparc64/system.h               |    6 
 b/include/asm-sparc64/thread_info.h          |    4 
 b/include/asm-sparc64/timex.h                |    2 
 b/include/asm-sparc64/tlbflush.h             |   93 
 b/include/asm-sparc64/unistd.h               |   28 
 b/include/linux/blkdev.h                     |   47 
 b/include/linux/buffer_head.h                |    4 
 b/include/linux/fs.h                         |    3 
 b/include/linux/ide.h                        |    6 
 b/include/linux/inet.h                       |    1 
 b/include/linux/ioport.h                     |    4 
 b/include/linux/irda.h                       |    1 
 b/include/linux/kernel_stat.h                |    3 
 b/include/linux/page-flags.h                 |   85 
 b/include/linux/pci_ids.h                    |    2 
 b/include/linux/swap.h                       |    1 
 b/include/linux/tcp.h                        |    2 
 b/include/linux/wanrouter.h                  |    1 
 b/include/math-emu/op-common.h               |    9 
 b/include/net/irda/irlap.h                   |   48 
 b/include/net/irda/irlmp.h                   |   10 
 b/include/net/irda/irttp.h                   |   60 
 b/include/net/tcp.h                          |    5 
 b/kernel/acct.c                              |    2 
 b/kernel/ksyms.c                             |    2 
 b/mm/filemap.c                               |    2 
 b/mm/page-writeback.c                        |   27 
 b/mm/page_alloc.c                            |    4 
 b/mm/swapfile.c                              |   17 
 b/net/Config.help                            |   10 
 b/net/Config.in                              |   11 
 b/net/bridge/br_forward.c                    |    6 
 b/net/bridge/br_input.c                      |    2 
 b/net/core/netfilter.c                       |    3 
 b/net/ipv4/af_inet.c                         |    4 
 b/net/ipv4/fib_frontend.c                    |    8 
 b/net/ipv4/fib_semantics.c                   |   31 
 b/net/ipv4/tcp.c                             |   79 
 b/net/ipv4/utils.c                           |   15 
 b/net/ipv6/addrconf.c                        |    2 
 b/net/ipv6/netfilter/ip6_tables.c            |   21 
 b/net/ipv6/netfilter/ip6t_mac.c              |    8 
 b/net/ipv6/raw.c                             |   72 
 b/net/ipv6/sit.c                             |    3 
 b/net/ipv6/udp.c                             |    2 
 b/net/irda/af_irda.c                         |  144 -
 b/net/irda/ircomm/ircomm_tty.c               |   17 
 b/net/irda/irda_device.c                     |   10 
 b/net/irda/irlap_event.c                     |   26 
 b/net/irda/irlmp.c                           |   76 
 b/net/irda/irnet/irnet.h                     |    5 
 b/net/irda/irnet/irnet_irda.c                |   98 
 b/net/irda/irttp.c                           |  721 +++--
 b/net/irda/parameters.c                      |    1 
 b/net/netsyms.c                              |    3 
 b/net/sched/sch_generic.c                    |    2 
 b/net/sched/sch_ingress.c                    |   45 
 b/net/sunrpc/pmap_clnt.c                     |    4 
 b/net/unix/af_unix.c                         |    4 
 b/sound/core/Makefile                        |    2 
 b/sound/oss/ac97_codec.c                     |   24 
 include/asm-ppc64/Naca.h                     |   39 
 include/asm-ppc64/Paca.h                     |  164 -
 420 files changed, 15779 insertions(+), 5936 deletions(-)

