From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.21 released
Date: Sat, 8 Jun 2002 22:38:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200206090538.g595c3m00670@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.21 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.21.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.21.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               901497           3991047
Full source                       34514833         153712640

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/mach-sa1100/sleep.h               |   30 
 arch/s390/kernel/ieee.h                    |   90 
 b/CREDITS                                  |    4 
 b/Documentation/DocBook/Makefile           |   24 
 b/Documentation/filesystems/Locking        |    2 
 b/Documentation/filesystems/ntfs.txt       |   92 
 b/Documentation/filesystems/vfs.txt        |   14 
 b/Documentation/isdn/README.HiSax          |   35 
 b/Documentation/s390/CommonIO              |   76 
 b/Documentation/s390/Debugging390.txt      |   19 
 b/Documentation/s390/cds.txt               |  430 +
 b/MAINTAINERS                              |    8 
 b/Makefile                                 |  360 -
 b/Rules.make                               |  272 -
 b/arch/alpha/kernel/osf_sys.c              |   26 
 b/arch/alpha/kernel/signal.c               |    3 
 b/arch/arm/Makefile                        |   50 
 b/arch/arm/boot/Makefile                   |    8 
 b/arch/arm/mach-adifcc/mm.c                |    7 
 b/arch/arm/mach-anakin/mm.c                |   12 
 b/arch/arm/mach-clps711x/autcpu12.c        |    9 
 b/arch/arm/mach-clps711x/cdb89712.c        |    6 
 b/arch/arm/mach-clps711x/edb7211-mm.c      |   19 
 b/arch/arm/mach-clps711x/mm.c              |   31 
 b/arch/arm/mach-clps711x/p720t.c           |    8 
 b/arch/arm/mach-clps7500/core.c            |   14 
 b/arch/arm/mach-ebsa110/core.c             |   16 
 b/arch/arm/mach-epxa10db/mm.c              |   20 
 b/arch/arm/mach-footbridge/mm.c            |   35 
 b/arch/arm/mach-ftvpci/core.c              |   14 
 b/arch/arm/mach-integrator/mm.c            |   40 
 b/arch/arm/mach-iop310/mm.c                |   17 
 b/arch/arm/mach-l7200/core.c               |   14 
 b/arch/arm/mach-pxa/generic.c              |   15 
 b/arch/arm/mach-pxa/idp.c                  |   22 
 b/arch/arm/mach-pxa/lubbock.c              |   14 
 b/arch/arm/mach-rpc/riscpc.c               |   10 
 b/arch/arm/mach-sa1100/adsbitsy.c          |    9 
 b/arch/arm/mach-sa1100/assabet.c           |   17 
 b/arch/arm/mach-sa1100/badge4.c            |   11 
 b/arch/arm/mach-sa1100/cerf.c              |   13 
 b/arch/arm/mach-sa1100/empeg.c             |    7 
 b/arch/arm/mach-sa1100/flexanet.c          |   13 
 b/arch/arm/mach-sa1100/freebird.c          |   11 
 b/arch/arm/mach-sa1100/generic.c           |   16 
 b/arch/arm/mach-sa1100/graphicsclient.c    |   11 
 b/arch/arm/mach-sa1100/graphicsmaster.c    |   13 
 b/arch/arm/mach-sa1100/h3600.c             |   11 
 b/arch/arm/mach-sa1100/huw_webpanel.c      |    9 
 b/arch/arm/mach-sa1100/itsy.c              |    8 
 b/arch/arm/mach-sa1100/jornada720.c        |   11 
 b/arch/arm/mach-sa1100/lart.c              |    9 
 b/arch/arm/mach-sa1100/nanoengine.c        |   10 
 b/arch/arm/mach-sa1100/neponset.c          |   13 
 b/arch/arm/mach-sa1100/omnimeter.c         |    7 
 b/arch/arm/mach-sa1100/pangolin.c          |    7 
 b/arch/arm/mach-sa1100/pfs168.c            |   32 
 b/arch/arm/mach-sa1100/pleb.c              |    8 
 b/arch/arm/mach-sa1100/pm.c                |   42 
 b/arch/arm/mach-sa1100/simpad.c            |   10 
 b/arch/arm/mach-sa1100/sleep.S             |  160 
 b/arch/arm/mach-sa1100/stork.c             |   12 
 b/arch/arm/mach-sa1100/system3.c           |    9 
 b/arch/arm/mach-sa1100/xp860.c             |   11 
 b/arch/arm/mach-sa1100/yopy.c              |   11 
 b/arch/arm/mach-shark/core.c               |   14 
 b/arch/arm/mach-tbox/core.c                |    6 
 b/arch/arm/mm/mm-armv.c                    |   92 
 b/arch/cris/drivers/sync_serial.c          |    9 
 b/arch/i386/Makefile                       |    1 
 b/arch/i386/boot/Makefile                  |   15 
 b/arch/i386/boot/compressed/Makefile       |    2 
 b/arch/i386/config.in                      |   37 
 b/arch/i386/kernel/Makefile                |    7 
 b/arch/i386/kernel/bluesmoke.c             |  107 
 b/arch/i386/kernel/cpu/Makefile            |   16 
 b/arch/i386/kernel/cpu/amd.c               |  217 
 b/arch/i386/kernel/cpu/centaur.c           |  426 +
 b/arch/i386/kernel/cpu/changelog           |   63 
 b/arch/i386/kernel/cpu/common.c            |  486 +
 b/arch/i386/kernel/cpu/cpu.h               |   28 
 b/arch/i386/kernel/cpu/cyrix.c             |  352 +
 b/arch/i386/kernel/cpu/intel.c             |  378 +
 b/arch/i386/kernel/cpu/nexgen.c            |   60 
 b/arch/i386/kernel/cpu/proc.c              |  126 
 b/arch/i386/kernel/cpu/rise.c              |   53 
 b/arch/i386/kernel/cpu/transmeta.c         |   95 
 b/arch/i386/kernel/cpu/umc.c               |   33 
 b/arch/i386/kernel/entry.S                 |    5 
 b/arch/i386/kernel/microcode.c             |    1 
 b/arch/i386/kernel/setup-visws.c           |    2 
 b/arch/i386/kernel/setup.c                 | 2101 --------
 b/arch/i386/kernel/smp.c                   |   29 
 b/arch/i386/kernel/suspend.c               |  302 +
 b/arch/i386/mm/ioremap.c                   |    1 
 b/arch/i386/pci/acpi.c                     |    1 
 b/arch/i386/pci/common.c                   |    1 
 b/arch/i386/pci/direct.c                   |    1 
 b/arch/i386/pci/fixup.c                    |    4 
 b/arch/i386/pci/legacy.c                   |    1 
 b/arch/i386/pci/numa.c                     |    1 
 b/arch/i386/pci/pcbios.c                   |    1 
 b/arch/ia64/ia32/sys_ia32.c                |    3 
 b/arch/ia64/sn/io/ifconfig_net.c           |   30 
 b/arch/mips/boot/Makefile                  |    2 
 b/arch/mips/kernel/sysirix.c               |    5 
 b/arch/mips64/boot/Makefile                |    2 
 b/arch/ppc/iSeries/mf.c                    |    7 
 b/arch/ppc/kernel/ppc_htab.c               |    3 
 b/arch/ppc64/kernel/rtasd.c                |    4 
 b/arch/s390/Config.help                    |   54 
 b/arch/s390/Makefile                       |   23 
 b/arch/s390/boot/Makefile                  |   12 
 b/arch/s390/boot/install.sh                |   38 
 b/arch/s390/config.in                      |   30 
 b/arch/s390/defconfig                      |  138 
 b/arch/s390/kernel/Makefile                |   28 
 b/arch/s390/kernel/asm-offsets.c           |   31 
 b/arch/s390/kernel/bitmap.S                |   19 
 b/arch/s390/kernel/debug.c                 |   87 
 b/arch/s390/kernel/entry.S                 |  483 -
 b/arch/s390/kernel/head.S                  |    2 
 b/arch/s390/kernel/init_task.c             |   21 
 b/arch/s390/kernel/irq.c                   |   38 
 b/arch/s390/kernel/process.c               |  251 
 b/arch/s390/kernel/ptrace.c                |   57 
 b/arch/s390/kernel/reipl.S                 |    6 
 b/arch/s390/kernel/s390_ext.c              |   62 
 b/arch/s390/kernel/s390_ksyms.c            |   12 
 b/arch/s390/kernel/semaphore.c             |  152 
 b/arch/s390/kernel/setup.c                 |   71 
 b/arch/s390/kernel/signal.c                |   18 
 b/arch/s390/kernel/smp.c                   |  334 -
 b/arch/s390/kernel/time.c                  |  114 
 b/arch/s390/kernel/traps.c                 |  370 +
 b/arch/s390/lib/uaccess.S                  |   95 
 b/arch/s390/math-emu/math.c                |  435 -
 b/arch/s390/mm/extable.c                   |    2 
 b/arch/s390/mm/fault.c                     |  226 
 b/arch/s390/mm/init.c                      |   24 
 b/arch/s390/mm/ioremap.c                   |    4 
 b/arch/s390/vmlinux-shared.lds             |   17 
 b/arch/s390/vmlinux.lds                    |   18 
 b/arch/s390x/Config.help                   |   53 
 b/arch/s390x/Makefile                      |   14 
 b/arch/s390x/boot/Makefile                 |   13 
 b/arch/s390x/boot/install.sh               |   38 
 b/arch/s390x/config.in                     |   30 
 b/arch/s390x/defconfig                     |  146 
 b/arch/s390x/kernel/Makefile               |   33 
 b/arch/s390x/kernel/asm-offsets.c          |   31 
 b/arch/s390x/kernel/binfmt_elf32.c         |    9 
 b/arch/s390x/kernel/bitmap.S               |   19 
 b/arch/s390x/kernel/debug.c                |   92 
 b/arch/s390x/kernel/entry.S                |  413 -
 b/arch/s390x/kernel/exec32.c               |    1 
 b/arch/s390x/kernel/exec_domain32.c        |   30 
 b/arch/s390x/kernel/head.S                 |    4 
 b/arch/s390x/kernel/init_task.c            |   23 
 b/arch/s390x/kernel/ioctl32.c              |  462 +
 b/arch/s390x/kernel/irq.c                  |   39 
 b/arch/s390x/kernel/linux32.c              |  375 +
 b/arch/s390x/kernel/process.c              |  249 
 b/arch/s390x/kernel/ptrace.c               |  518 +
 b/arch/s390x/kernel/reipl.S                |    6 
 b/arch/s390x/kernel/s390_ext.c             |   62 
 b/arch/s390x/kernel/s390_ksyms.c           |   11 
 b/arch/s390x/kernel/semaphore.c            |  152 
 b/arch/s390x/kernel/setup.c                |   70 
 b/arch/s390x/kernel/signal.c               |   19 
 b/arch/s390x/kernel/signal32.c             |   32 
 b/arch/s390x/kernel/smp.c                  |  348 -
 b/arch/s390x/kernel/sys_s390.c             |   28 
 b/arch/s390x/kernel/time.c                 |  153 
 b/arch/s390x/kernel/traps.c                |  347 +
 b/arch/s390x/kernel/wrapper32.S            |  135 
 b/arch/s390x/lib/uaccess.S                 |   79 
 b/arch/s390x/mm/extable.c                  |    2 
 b/arch/s390x/mm/fault.c                    |  218 
 b/arch/s390x/mm/init.c                     |   28 
 b/arch/s390x/mm/ioremap.c                  |    4 
 b/arch/s390x/vmlinux-shared.lds            |   17 
 b/arch/s390x/vmlinux.lds                   |   17 
 b/arch/sh/boot/Makefile                    |    8 
 b/arch/sparc/kernel/devices.c              |   59 
 b/arch/sparc/mm/sun4c.c                    |  527 --
 b/arch/sparc64/kernel/Makefile             |    5 
 b/arch/sparc64/kernel/sys_sparc32.c        |   41 
 b/arch/sparc64/mm/generic.c                |   16 
 b/arch/sparc64/solaris/Makefile            |    4 
 b/arch/sparc64/solaris/timod.c             |   14 
 b/arch/x86_64/boot/Makefile                |    8 
 b/drivers/acpi/Config.in                   |    2 
 b/drivers/acpi/system.c                    |   23 
 b/drivers/atm/Makefile                     |    5 
 b/drivers/base/base.h                      |    4 
 b/drivers/base/bus.c                       |    5 
 b/drivers/base/core.c                      |   92 
 b/drivers/base/driver.c                    |   46 
 b/drivers/base/sys.c                       |    2 
 b/drivers/block/ll_rw_blk.c                |   58 
 b/drivers/block/rd.c                       |    7 
 b/drivers/bluetooth/hci_vhci.c             |    8 
 b/drivers/cdrom/cdu31a.c                   |   23 
 b/drivers/cdrom/optcd.c                    |   68 
 b/drivers/cdrom/sbpcd.c                    |   13 
 b/drivers/cdrom/sjcd.c                     |   47 
 b/drivers/cdrom/sonycd535.c                |   42 
 b/drivers/char/Makefile                    |   11 
 b/drivers/char/drm/i810_dma.c              |    3 
 b/drivers/hotplug/ibmphp_core.c            |    6 
 b/drivers/hotplug/ibmphp_ebda.c            |   17 
 b/drivers/hotplug/ibmphp_hpc.c             |  131 
 b/drivers/hotplug/ibmphp_res.c             |   15 
 b/drivers/hotplug/pci_hotplug_core.c       |    3 
 b/drivers/ide/Config.help                  |   13 
 b/drivers/ide/Config.in                    |    2 
 b/drivers/ide/ali14xx.c                    |  132 
 b/drivers/ide/device.c                     |   14 
 b/drivers/ide/hpt34x.c                     |    2 
 b/drivers/ide/icside.c                     |   48 
 b/drivers/ide/ide-cd.c                     |   10 
 b/drivers/ide/ide-disk.c                   |  337 +
 b/drivers/ide/ide-floppy.c                 |   12 
 b/drivers/ide/ide-pci.c                    |    2 
 b/drivers/ide/ide-pmac.c                   |    7 
 b/drivers/ide/ide-taskfile.c               |  659 --
 b/drivers/ide/ide.c                        |  133 
 b/drivers/ide/ioctl.c                      |   76 
 b/drivers/ide/pcidma.c                     |   26 
 b/drivers/ide/piix.c                       |  140 
 b/drivers/ide/probe.c                      |    5 
 b/drivers/ide/tcq.c                        |   31 
 b/drivers/ide/trm290.c                     |    2 
 b/drivers/isdn/capi/capi.c                 |  109 
 b/drivers/isdn/capi/kcapi_proc.c           |    2 
 b/drivers/isdn/hisax/Config.in             |    1 
 b/drivers/isdn/hisax/Makefile              |    5 
 b/drivers/isdn/hisax/amd7930_fn.c          |  761 ++
 b/drivers/isdn/hisax/amd7930_fn.h          |   69 
 b/drivers/isdn/hisax/asuscom.c             |   62 
 b/drivers/isdn/hisax/avm_pci.c             |   43 
 b/drivers/isdn/hisax/config.c              |   21 
 b/drivers/isdn/hisax/diva.c                |  227 
 b/drivers/isdn/hisax/elsa.c                |   77 
 b/drivers/isdn/hisax/enternow.h            |   51 
 b/drivers/isdn/hisax/enternow_pci.c        |  447 +
 b/drivers/isdn/hisax/fsm.c                 |    8 
 b/drivers/isdn/hisax/hfc_pci.c             |    4 
 b/drivers/isdn/hisax/hfc_sx.c              |   54 
 b/drivers/isdn/hisax/hfcscard.c            |   71 
 b/drivers/isdn/hisax/hisax.h               |   22 
 b/drivers/isdn/hisax/ipacx.c               | 1029 +++
 b/drivers/isdn/hisax/ipacx.h               |  161 
 b/drivers/isdn/hisax/isurf.c               |   44 
 b/drivers/isdn/hisax/ix1_micro.c           |   55 
 b/drivers/isdn/hisax/netjet.c              |   26 
 b/drivers/isdn/hisax/niccy.c               |   38 
 b/drivers/isdn/hisax/nj_s.c                |    8 
 b/drivers/isdn/hisax/sedlbauer.c           |   69 
 b/drivers/isdn/hisax/teles3.c              |   60 
 b/drivers/isdn/hisax/w6692.c               |   65 
 b/drivers/isdn/hysdn/hycapi.c              |    8 
 b/drivers/isdn/hysdn/hysdn_defs.h          |    1 
 b/drivers/isdn/i4l/isdn_net.c              |   88 
 b/drivers/isdn/i4l/isdn_net.h              |    7 
 b/drivers/isdn/i4l/isdn_ppp.c              |  139 
 b/drivers/net/bonding.c                    |  295 +
 b/drivers/net/hamradio/soundmodem/Makefile |   22 
 b/drivers/net/irda/irda-usb.c              |    2 
 b/drivers/net/wan/pc300_drv.c              |    2 
 b/drivers/net/wireless/airo.c              |   12 
 b/drivers/pci/Makefile                     |    7 
 b/drivers/pci/pci-driver.c                 |   36 
 b/drivers/pci/quirks.c                     |    2 
 b/drivers/s390/Config.help                 |   21 
 b/drivers/s390/Config.in                   |    8 
 b/drivers/s390/Makefile                    |   11 
 b/drivers/s390/block/Makefile              |    5 
 b/drivers/s390/block/dasd.c                | 5624 +++++++--------------
 b/drivers/s390/block/dasd_3370_erp.c       |   22 
 b/drivers/s390/block/dasd_3370_erp.h       |    2 
 b/drivers/s390/block/dasd_3990_erp.c       | 3369 +++++-------
 b/drivers/s390/block/dasd_3990_erp.h       |   10 
 b/drivers/s390/block/dasd_9336_erp.c       |   21 
 b/drivers/s390/block/dasd_9336_erp.h       |    2 
 b/drivers/s390/block/dasd_9343_erp.c       |   13 
 b/drivers/s390/block/dasd_9343_erp.h       |    4 
 b/drivers/s390/block/dasd_devmap.c         |  531 ++
 b/drivers/s390/block/dasd_diag.c           |  734 +-
 b/drivers/s390/block/dasd_diag.h           |   25 
 b/drivers/s390/block/dasd_eckd.c           | 2114 ++++----
 b/drivers/s390/block/dasd_eckd.h           |  142 
 b/drivers/s390/block/dasd_erp.c            |  271 +
 b/drivers/s390/block/dasd_fba.c            |  596 +-
 b/drivers/s390/block/dasd_fba.h            |    4 
 b/drivers/s390/block/dasd_genhd.c          |  397 +
 b/drivers/s390/block/dasd_int.h            |  716 +-
 b/drivers/s390/block/dasd_ioctl.c          |  596 ++
 b/drivers/s390/block/dasd_proc.c           |  469 +
 b/drivers/s390/block/xpram.c               |   17 
 b/drivers/s390/char/Makefile               |   17 
 b/drivers/s390/char/con3215.c              |   19 
 b/drivers/s390/char/hwc.h                  |    5 
 b/drivers/s390/char/hwc_con.c              |   21 
 b/drivers/s390/char/hwc_cpi.c              |    1 
 b/drivers/s390/char/hwc_rw.c               |    6 
 b/drivers/s390/char/hwc_rw.h               |    2 
 b/drivers/s390/char/hwc_tty.c              |    4 
 b/drivers/s390/char/tape.c                 | 2333 ++++++--
 b/drivers/s390/char/tape.h                 |  490 +
 b/drivers/s390/char/tape3480.c             |  156 
 b/drivers/s390/char/tape3480.h             |    2 
 b/drivers/s390/char/tape3490.c             |  157 
 b/drivers/s390/char/tape3490.h             |    3 
 b/drivers/s390/char/tape34xx.c             | 2571 ++-------
 b/drivers/s390/char/tape34xx.h             |   88 
 b/drivers/s390/char/tape_idalbuf.h         |  213 
 b/drivers/s390/char/tapeblock.c            |  738 +-
 b/drivers/s390/char/tapeblock.h            |   14 
 b/drivers/s390/char/tapechar.c             | 1035 +--
 b/drivers/s390/char/tapechar.h             |   24 
 b/drivers/s390/char/tapedefs.h             |    1 
 b/drivers/s390/char/tuball.c               |   48 
 b/drivers/s390/char/tubfs.c                |   14 
 b/drivers/s390/char/tubio.h                |   40 
 b/drivers/s390/char/tubtty.c               |   66 
 b/drivers/s390/char/tubttyaid.c            |    2 
 b/drivers/s390/char/tubttyrcl.c            |    7 
 b/drivers/s390/char/tubttysiz.c            |    2 
 b/drivers/s390/cio/Makefile                |   13 
 b/drivers/s390/cio/airq.c                  |  107 
 b/drivers/s390/cio/airq.h                  |    5 
 b/drivers/s390/cio/blacklist.c             |  273 +
 b/drivers/s390/cio/blacklist.h             |    6 
 b/drivers/s390/cio/chsc.c                  |  832 +++
 b/drivers/s390/cio/chsc.h                  |    6 
 b/drivers/s390/cio/cio.c                   | 2024 +++++++
 b/drivers/s390/cio/cio.h                   |   18 
 b/drivers/s390/cio/cio_debug.c             |   72 
 b/drivers/s390/cio/cio_debug.h             |   70 
 b/drivers/s390/cio/ioinfo.c                |  292 +
 b/drivers/s390/cio/ioinfo.h                |   10 
 b/drivers/s390/cio/misc.c                  |  237 
 b/drivers/s390/cio/misc.h                  |    4 
 b/drivers/s390/cio/proc.c                  |  269 +
 b/drivers/s390/cio/proc.h                  |   19 
 b/drivers/s390/cio/requestirq.c            |  434 +
 b/drivers/s390/cio/s390io.c                | 2437 +++++++++
 b/drivers/s390/cio/s390io.h                |   20 
 b/drivers/s390/misc/chandev.c              |  196 
 b/drivers/s390/net/Makefile                |    6 
 b/drivers/s390/net/ctcmain.c               |   97 
 b/drivers/s390/net/ctctty.c                |   10 
 b/drivers/s390/net/fsm.c                   |    1 
 b/drivers/s390/net/fsm.h                   |    2 
 b/drivers/s390/net/iucv.c                  |  499 +
 b/drivers/s390/net/lcs.c                   | 4146 +++++++++++++++
 b/drivers/s390/net/netiucv.c               |   60 
 b/drivers/s390/qdio.c                      | 3542 +++++++++++++
 b/drivers/s390/s390dyn.c                   |  126 
 b/drivers/s390/s390mach.c                  |  665 +-
 b/drivers/s390/sysinfo.c                   |  347 +
 b/drivers/scsi/dpt_i2o.c                   |    8 
 b/drivers/scsi/ide-scsi.c                  |   25 
 b/drivers/scsi/script_asm.pl               |    3 
 b/drivers/usb/class/Config.in              |    1 
 b/drivers/usb/class/Makefile               |    1 
 b/drivers/usb/class/usb-midi.c             | 2228 ++++++++
 b/drivers/usb/class/usb-midi.h             |  143 
 b/drivers/usb/core/Makefile                |    6 
 b/drivers/usb/core/drivers.c               |    2 
 b/drivers/usb/core/hcd-pci.c               |  347 +
 b/drivers/usb/core/hcd.c                   |  661 --
 b/drivers/usb/core/hcd.h                   |    9 
 b/drivers/usb/core/inode.c                 |    2 
 b/drivers/usb/core/message.c               |    2 
 b/drivers/usb/core/urb.c                   |  165 
 b/drivers/usb/host/ohci-hcd.c              |  411 -
 b/drivers/usb/host/ohci-mem.c              |    6 
 b/drivers/usb/host/ohci-pci.c              |  380 +
 b/drivers/usb/host/ohci-q.c                |  165 
 b/drivers/usb/host/ohci-sa1111.c           |  358 +
 b/drivers/usb/host/ohci.h                  |   36 
 b/drivers/usb/host/uhci-hcd.c              |    6 
 b/drivers/usb/host/uhci-hub.c              |    2 
 b/drivers/usb/host/usb-ohci-pci.c          |   13 
 b/drivers/usb/host/usb-ohci-sa1111.c       |  103 
 b/drivers/usb/host/usb-ohci.c              |   14 
 b/drivers/usb/media/konicawc.c             |   41 
 b/drivers/usb/media/ov511.c                |   10 
 b/drivers/usb/media/pwc-if.c               |   13 
 b/drivers/usb/media/usbvideo.c             |   16 
 b/drivers/usb/misc/emi26.c                 |    1 
 b/drivers/usb/storage/unusual_devs.h       |   96 
 b/drivers/video/Config.in                  |   40 
 b/drivers/video/Makefile                   |   33 
 b/drivers/video/anakinfb.c                 |    4 
 b/drivers/video/aty128fb.c                 |    5 
 b/drivers/video/cfbcopyarea.c              |    4 
 b/drivers/video/cfbimgblt.c                |   10 
 b/drivers/video/clps711xfb.c               |    3 
 b/drivers/video/cyber2000fb.c              |    5 
 b/drivers/video/dnfb.c                     |  535 --
 b/drivers/video/fbcmap.c                   |    2 
 b/drivers/video/fbmem.c                    |    3 
 b/drivers/video/matrox/matroxfb_crtc2.c    |    2 
 b/drivers/video/maxinefb.c                 |  290 -
 b/drivers/video/neofb.c                    | 3639 ++++++--------
 b/drivers/video/pm2fb.c                    |  745 +-
 b/drivers/video/pmag-ba-fb.c               |  343 -
 b/drivers/video/pmagb-b-fb.c               |  344 -
 b/drivers/video/skeletonfb.c               |    2 
 b/drivers/video/tdfxfb.c                   | 2434 ++-------
 b/drivers/video/tx3912fb.c                 |  566 --
 b/drivers/video/vfb.c                      |    4 
 b/drivers/zorro/Makefile                   |    7 
 b/fs/binfmt_misc.c                         |    2 
 b/fs/dcache.c                              |    3 
 b/fs/devfs/base.c                          |    2 
 b/fs/driverfs/inode.c                      |    2 
 b/fs/fcntl.c                               |   12 
 b/fs/inode.c                               |  161 
 b/fs/jfs/file.c                            |    1 
 b/fs/jfs/inode.c                           |    1 
 b/fs/jfs/jfs_debug.c                       |    1 
 b/fs/jfs/jfs_debug.h                       |    1 
 b/fs/jfs/jfs_imap.h                        |    1 
 b/fs/jfs/jfs_incore.h                      |    1 
 b/fs/jfs/jfs_lock.h                        |    1 
 b/fs/jfs/jfs_logmgr.c                      |    1 
 b/fs/jfs/jfs_logmgr.h                      |    1 
 b/fs/jfs/jfs_metapage.c                    |    1 
 b/fs/jfs/jfs_metapage.h                    |    1 
 b/fs/jfs/jfs_txnmgr.c                      |    1 
 b/fs/jfs/jfs_txnmgr.h                      |   11 
 b/fs/jfs/jfs_unicode.h                     |    1 
 b/fs/jfs/namei.c                           |    1 
 b/fs/jfs/super.c                           |    1 
 b/fs/jfs/symlink.c                         |    2 
 b/fs/locks.c                               |  356 -
 b/fs/ncpfs/inode.c                         |    2 
 b/fs/nfs/dir.c                             |    3 
 b/fs/nfs/inode.c                           |    4 
 b/fs/ntfs/ChangeLog                        |   34 
 b/fs/ntfs/Makefile                         |    2 
 b/fs/ntfs/attrib.c                         |    1 
 b/fs/ntfs/dir.c                            |  579 ++
 b/fs/ntfs/dir.h                            |   47 
 b/fs/ntfs/inode.c                          |   26 
 b/fs/ntfs/layout.h                         |    4 
 b/fs/ntfs/namei.c                          |  192 
 b/fs/ntfs/ntfs.h                           |    7 
 b/fs/ntfs/super.c                          |   90 
 b/fs/ntfs/unistr.c                         |    4 
 b/fs/ntfs/volume.h                         |   36 
 b/fs/open.c                                |    9 
 b/fs/proc/inode.c                          |    2 
 b/fs/ramfs/inode.c                         |    2 
 b/fs/smbfs/inode.c                         |    2 
 b/include/asm-arm/mach/map.h               |   18 
 b/include/asm-arm/page.h                   |    4 
 b/include/asm-arm/thread_info.h            |    6 
 b/include/asm-generic/siginfo.h            |    2 
 b/include/asm-i386/bugs.h                  |    1 
 b/include/asm-i386/desc.h                  |    3 
 b/include/asm-i386/highmem.h               |    3 
 b/include/asm-i386/hw_irq.h                |    4 
 b/include/asm-i386/kmap_types.h            |    2 
 b/include/asm-i386/msr.h                   |   17 
 b/include/asm-i386/pci.h                   |    1 
 b/include/asm-i386/pgalloc.h               |    1 
 b/include/asm-i386/processor.h             |    1 
 b/include/asm-i386/rwlock.h                |    2 
 b/include/asm-i386/suspend.h               |  274 -
 b/include/asm-i386/system.h                |    1 
 b/include/asm-ppc/kmap_types.h             |    2 
 b/include/asm-s390/atomic.h                |   44 
 b/include/asm-s390/bitops.h                | 1064 ++--
 b/include/asm-s390/byteorder.h             |   75 
 b/include/asm-s390/cacheflush.h            |   18 
 b/include/asm-s390/current.h               |   10 
 b/include/asm-s390/dasd.h                  |  186 
 b/include/asm-s390/debug.h                 |    2 
 b/include/asm-s390/ebcdic.h                |    4 
 b/include/asm-s390/fsf.h                   |  326 +
 b/include/asm-s390/hardirq.h               |    1 
 b/include/asm-s390/idals.h                 |  123 
 b/include/asm-s390/init.h                  |   24 
 b/include/asm-s390/io.h                    |    5 
 b/include/asm-s390/irq.h                   |  170 
 b/include/asm-s390/lowcore.h               |   13 
 b/include/asm-s390/mman.h                  |    1 
 b/include/asm-s390/page.h                  |   14 
 b/include/asm-s390/pci.h                   |    1 
 b/include/asm-s390/percpu.h                |    6 
 b/include/asm-s390/pgalloc.h               |  255 
 b/include/asm-s390/pgtable.h               |  123 
 b/include/asm-s390/processor.h             |   83 
 b/include/asm-s390/ptrace.h                |   45 
 b/include/asm-s390/qdio.h                  |  933 +++
 b/include/asm-s390/rwsem.h                 |  209 
 b/include/asm-s390/s390_ext.h              |    4 
 b/include/asm-s390/s390io.h                |   13 
 b/include/asm-s390/s390mach.h              |   21 
 b/include/asm-s390/scatterlist.h           |    4 
 b/include/asm-s390/semaphore.h             |   45 
 b/include/asm-s390/setup.h                 |    2 
 b/include/asm-s390/siginfo.h               |   77 
 b/include/asm-s390/signal.h                |    1 
 b/include/asm-s390/sigp.h                  |    5 
 b/include/asm-s390/smp.h                   |    8 
 b/include/asm-s390/spinlock.h              |   62 
 b/include/asm-s390/suspend.h               |    5 
 b/include/asm-s390/system.h                |   46 
 b/include/asm-s390/tape390.h               |   39 
 b/include/asm-s390/thread_info.h           |   87 
 b/include/asm-s390/timex.h                 |   15 
 b/include/asm-s390/tlb.h                   |   19 
 b/include/asm-s390/tlbflush.h              |  138 
 b/include/asm-s390/uaccess.h               |  254 
 b/include/asm-s390/unistd.h                |   30 
 b/include/asm-s390/vtoc.h                  |    1 
 b/include/asm-s390x/atomic.h               |   44 
 b/include/asm-s390x/bitops.h               | 1085 ++--
 b/include/asm-s390x/byteorder.h            |   90 
 b/include/asm-s390x/cacheflush.h           |   18 
 b/include/asm-s390x/current.h              |   10 
 b/include/asm-s390x/dasd.h                 |  186 
 b/include/asm-s390x/debug.h                |    2 
 b/include/asm-s390x/ebcdic.h               |    4 
 b/include/asm-s390x/elf.h                  |    8 
 b/include/asm-s390x/fsf.h                  |  326 +
 b/include/asm-s390x/hardirq.h              |    1 
 b/include/asm-s390x/idals.h                |  121 
 b/include/asm-s390x/init.h                 |   28 
 b/include/asm-s390x/io.h                   |    5 
 b/include/asm-s390x/irq.h                  |  170 
 b/include/asm-s390x/lowcore.h              |   14 
 b/include/asm-s390x/mman.h                 |    1 
 b/include/asm-s390x/page.h                 |   14 
 b/include/asm-s390x/pci.h                  |    1 
 b/include/asm-s390x/percpu.h               |    6 
 b/include/asm-s390x/pgalloc.h              |  272 -
 b/include/asm-s390x/pgtable.h              |  139 
 b/include/asm-s390x/processor.h            |   73 
 b/include/asm-s390x/ptrace.h               |   43 
 b/include/asm-s390x/qdio.h                 |  934 +++
 b/include/asm-s390x/rwsem.h                |  209 
 b/include/asm-s390x/s390_ext.h             |    4 
 b/include/asm-s390x/s390io.h               |   13 
 b/include/asm-s390x/s390mach.h             |   21 
 b/include/asm-s390x/semaphore.h            |   40 
 b/include/asm-s390x/setup.h                |    2 
 b/include/asm-s390x/siginfo.h              |   77 
 b/include/asm-s390x/signal.h               |    1 
 b/include/asm-s390x/sigp.h                 |    5 
 b/include/asm-s390x/smp.h                  |    8 
 b/include/asm-s390x/spinlock.h             |   62 
 b/include/asm-s390x/suspend.h              |    5 
 b/include/asm-s390x/system.h               |   46 
 b/include/asm-s390x/tape390.h              |   39 
 b/include/asm-s390x/thread_info.h          |   87 
 b/include/asm-s390x/timex.h                |   15 
 b/include/asm-s390x/tlb.h                  |   19 
 b/include/asm-s390x/tlbflush.h             |  135 
 b/include/asm-s390x/uaccess.h              |  227 
 b/include/asm-s390x/unistd.h               |   29 
 b/include/asm-s390x/vtoc.h                 |    1 
 b/include/asm-sparc/btfixup.h              |   43 
 b/include/asm-sparc/kmap_types.h           |    2 
 b/include/asm-sparc/page.h                 |    4 
 b/include/asm-sparc/vac-ops.h              |    2 
 b/include/asm-sparc64/page.h               |    5 
 b/include/asm-x86_64/kmap_types.h          |    2 
 b/include/linux/bio.h                      |    1 
 b/include/linux/blkdev.h                   |    5 
 b/include/linux/byteorder/generic.h        |   14 
 b/include/linux/capability.h               |    4 
 b/include/linux/compatmac.h                |    2 
 b/include/linux/device.h                   |    3 
 b/include/linux/fs.h                       |   11 
 b/include/linux/ide.h                      |   37 
 b/include/linux/if_bonding.h               |    5 
 b/include/linux/init.h                     |    4 
 b/include/linux/mmzone.h                   |   10 
 b/include/linux/pci_ids.h                  |    1 
 b/include/linux/sched.h                    |   48 
 b/include/linux/spinlock.h                 |    2 
 b/include/linux/sunrpc/xdr.h               |    7 
 b/include/linux/suspend.h                  |    7 
 b/include/linux/swapops.h                  |    4 
 b/include/linux/vmalloc.h                  |   29 
 b/include/linux/wait.h                     |   40 
 b/include/linux/zlib.h                     |    2 
 b/include/net/pkt_sched.h                  |    3 
 b/include/video/neomagic.h                 |  264 +
 b/include/video/pm2fb.h                    |  222 
 b/include/video/tx3912.h                   |   62 
 b/init/Makefile                            |    4 
 b/init/main.c                              |    2 
 b/kernel/Makefile                          |    2 
 b/kernel/capability.c                      |  162 
 b/kernel/fork.c                            |   12 
 b/kernel/futex.c                           |   35 
 b/kernel/ksyms.c                           |    1 
 b/kernel/sched.c                           |   43 
 b/kernel/suspend.c                         |   41 
 b/kernel/sysctl.c                          |   12 
 b/kernel/timer.c                           |   82 
 b/mm/bootmem.c                             |    1 
 b/mm/highmem.c                             |    1 
 b/mm/page_alloc.c                          |   50 
 b/mm/shmem.c                               |    2 
 b/mm/vmalloc.c                             |   27 
 b/net/core/dev.c                           |  817 +--
 b/net/ipv4/af_inet.c                       |  354 -
 b/net/ipv4/devinet.c                       |  840 +--
 b/net/ipv4/icmp.c                          |  749 +-
 b/net/ipv4/netfilter/ipchains_core.c       |    3 
 b/net/ipv4/tcp_ipv4.c                      |  702 +-
 b/net/ipv6/raw.c                           |   21 
 b/net/khttpd/Makefile                      |    5 
 b/net/sched/sch_api.c                      |    2 
 b/net/sunrpc/xdr.c                         |    8 
 b/scripts/Configure                        |  158 
 b/scripts/Makefile                         |   38 
 b/scripts/fixdep.c                         |  388 +
 b/scripts/lxdialog/Makefile                |   25 
 b/scripts/makelst                          |   27 
 b/scripts/mkcompile_h                      |   25 
 b/scripts/tkparse.c                        |   16 
 b/scripts/tkparse.h                        |    2 
 b/sound/last.c                             |    2 
 b/sound/oss/Makefile                       |   11 
 drivers/s390/ccwcache.c                    |  305 -
 drivers/s390/char/tape3590.c               |    1 
 drivers/s390/char/tape3590.h               |    1 
 drivers/s390/idals.c                       |   43 
 drivers/s390/s390io.c                      | 7526 -----------------------------
 drivers/video/dn_accel.h                   |    9 
 drivers/video/dn_cfb4.c                    |  492 -
 drivers/video/dn_cfb8.c                    |  540 --
 drivers/video/neofb.h                      |  291 -
 drivers/video/tx3912fb.h                   |  128 
 fs/ntfs/attraops.c                         |   47 
 include/asm-s390/ccwcache.h                |   85 
 include/asm-s390/s390-gdbregs.h            |   85 
 include/asm-s390x/ccwcache.h               |   85 
 include/asm-s390x/s390-gdbregs.h           |   89 
 include/asm-sparc/ultra.h                  |   52 
 kernel/info.c                              |   79 
 scripts/mkdep.c                            |  628 --
 scripts/mkversion_h                        |   24 
 654 files changed, 60645 insertions(+), 43790 deletions(-)

