From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.19 released
Date: Wed, 29 May 2002 11:48:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205291848.g4TIm4j06684@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.19 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.19.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.19.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               464760           2054321
Full source                       34344851         153190400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/CREDITS                                   |   14 
 b/Documentation/DocBook/Makefile            |   15 
 b/Documentation/block/biodoc.txt            | 1190 ++++++++
 b/Documentation/block/request.txt           |    4 
 b/Documentation/fb/tridentfb.txt            |   49 
 b/Documentation/filesystems/Locking         |   19 
 b/Documentation/ide.txt                     |   75 
 b/Documentation/kernel-parameters.txt       |    5 
 b/Documentation/sched-coding.txt            |  126 
 b/Documentation/sched-design.txt            |  165 +
 b/MAINTAINERS                               |    5 
 b/Makefile                                  |  144 -
 b/Rules.make                                |  175 -
 b/arch/alpha/boot/Makefile                  |    4 
 b/arch/alpha/config.in                      |    2 
 b/arch/alpha/kernel/Makefile                |   13 
 b/arch/alpha/kernel/alpha_ksyms.c           |    5 
 b/arch/alpha/kernel/pci.c                   |    7 
 b/arch/arm/Makefile                         |    7 
 b/arch/arm/kernel/Makefile                  |    9 
 b/arch/arm/kernel/signal.c                  |   36 
 b/arch/arm/mach-arc/Makefile                |    9 
 b/arch/cris/Makefile                        |   10 
 b/arch/cris/kernel/Makefile                 |   10 
 b/arch/cris/kernel/signal.c                 |  100 
 b/arch/i386/Makefile                        |    8 
 b/arch/i386/kernel/Makefile                 |   11 
 b/arch/i386/kernel/acpi_wakeup.S            |    1 
 b/arch/i386/kernel/entry.S                  |    5 
 b/arch/i386/kernel/head.S                   |   32 
 b/arch/i386/kernel/i386_ksyms.c             |    2 
 b/arch/i386/kernel/i8259.c                  |    2 
 b/arch/i386/kernel/setup.c                  |    4 
 b/arch/i386/kernel/signal.c                 |  141 -
 b/arch/i386/mm/init.c                       |   76 
 b/arch/ia64/Config.help                     |    2 
 b/arch/ia64/Makefile                        |    9 
 b/arch/ia64/config.in                       |   11 
 b/arch/ia64/dig/Makefile                    |    4 
 b/arch/ia64/hp/common/Makefile              |   14 
 b/arch/ia64/hp/common/sba_iommu.c           |    7 
 b/arch/ia64/hp/sim/simserial.c              |    8 
 b/arch/ia64/hp/zx1/Makefile                 |   13 
 b/arch/ia64/hp/zx1/hpzx1_misc.c             |  401 --
 b/arch/ia64/ia32/Makefile                   |    4 
 b/arch/ia64/ia32/ia32_entry.S               |   24 
 b/arch/ia64/ia32/sys_ia32.c                 |   91 
 b/arch/ia64/kernel/Makefile                 |    5 
 b/arch/ia64/kernel/acpi.c                   |   23 
 b/arch/ia64/kernel/efi.c                    |   14 
 b/arch/ia64/kernel/efi_stub.S               |   10 
 b/arch/ia64/kernel/entry.S                  |   20 
 b/arch/ia64/kernel/gate.S                   |    4 
 b/arch/ia64/kernel/iosapic.c                |    8 
 b/arch/ia64/kernel/irq.c                    |    2 
 b/arch/ia64/kernel/pal.S                    |    2 
 b/arch/ia64/kernel/pci.c                    |    7 
 b/arch/ia64/kernel/perfmon.c                | 1115 +++++---
 b/arch/ia64/kernel/process.c                |   13 
 b/arch/ia64/kernel/setup.c                  |   18 
 b/arch/ia64/kernel/signal.c                 |    7 
 b/arch/ia64/lib/swiotlb.c                   |   12 
 b/arch/ia64/mm/init.c                       |    7 
 b/arch/ia64/sn/io/Makefile                  |    2 
 b/arch/ia64/sn/io/pci_dma.c                 |   38 
 b/arch/ia64/sn/kernel/misctest.c            |    6 
 b/arch/ia64/sn/kernel/sn1/Makefile          |   10 
 b/arch/ia64/sn/kernel/sn2/Makefile          |   11 
 b/arch/ia64/tools/Makefile                  |    4 
 b/arch/ia64/tools/print_offsets.awk         |    2 
 b/arch/ia64/tools/print_offsets.c           |    4 
 b/arch/ia64/vmlinux.lds.S                   |    3 
 b/arch/m68k/fpsp040/Makefile                |   17 
 b/arch/m68k/ifpsp060/Makefile               |   14 
 b/arch/m68k/kernel/Makefile                 |   18 
 b/arch/m68k/kernel/signal.c                 |   35 
 b/arch/mips/au1000/common/Makefile          |   14 
 b/arch/mips/au1000/pb1000/Makefile          |    6 
 b/arch/mips/baget/Makefile                  |   11 
 b/arch/mips/boot/Makefile                   |    2 
 b/arch/mips/dec/Makefile                    |    9 
 b/arch/mips/dec/boot/Makefile               |    6 
 b/arch/mips/dec/prom/Makefile               |   19 
 b/arch/mips/ite-boards/generic/Makefile     |   10 
 b/arch/mips/ite-boards/ivr/Makefile         |   10 
 b/arch/mips/ite-boards/qed-4n-s01b/Makefile |   19 
 b/arch/mips/jazz/Makefile                   |   10 
 b/arch/mips/kernel/Makefile                 |   12 
 b/arch/mips/kernel/signal.c                 |  136 
 b/arch/mips/mips-boards/atlas/Makefile      |    7 
 b/arch/mips/philips/nino/Makefile           |   11 
 b/arch/mips/sgi/kernel/Makefile             |   11 
 b/arch/mips/sni/Makefile                    |   10 
 b/arch/mips64/boot/Makefile                 |    2 
 b/arch/mips64/kernel/Makefile               |   14 
 b/arch/mips64/kernel/signal.c               |  102 
 b/arch/mips64/kernel/signal32.c             |  101 
 b/arch/mips64/mips-boards/atlas/Makefile    |    7 
 b/arch/mips64/mips-boards/generic/Makefile  |   11 
 b/arch/mips64/mips-boards/malta/Makefile    |    7 
 b/arch/mips64/sgi-ip32/Makefile             |   20 
 b/arch/parisc/Makefile                      |    9 
 b/arch/parisc/hpux/Makefile                 |   13 
 b/arch/parisc/kernel/Makefile               |   22 
 b/arch/parisc/kernel/signal.c               |  107 
 b/arch/ppc/8260_io/uart.c                   |    8 
 b/arch/ppc/8xx_io/uart.c                    |    8 
 b/arch/ppc/Config.help                      |    9 
 b/arch/ppc/boot/chrp/main.c                 |    6 
 b/arch/ppc/boot/chrp/start.c                |   10 
 b/arch/ppc/boot/common/crt0.S               |    2 
 b/arch/ppc/boot/common/misc-simple.c        |    4 
 b/arch/ppc/boot/common/relocate.S           |    5 
 b/arch/ppc/boot/pmac/chrpmain.c             |    4 
 b/arch/ppc/boot/pmac/coffmain.c             |    4 
 b/arch/ppc/boot/pmac/start.c                |    6 
 b/arch/ppc/boot/prep/misc.c                 |    4 
 b/arch/ppc/boot/simple/chrpmap.S            |    6 
 b/arch/ppc/boot/simple/direct.S             |    7 
 b/arch/ppc/boot/simple/embed_config.c       |   89 
 b/arch/ppc/boot/simple/legacy.S             |    6 
 b/arch/ppc/boot/simple/misc-embedded.c      |    2 
 b/arch/ppc/boot/utils/Makefile              |    2 
 b/arch/ppc/config.in                        |   35 
 b/arch/ppc/iSeries/Makefile                 |    8 
 b/arch/ppc/kernel/Makefile                  |   19 
 b/arch/ppc/kernel/cputable.c                |   35 
 b/arch/ppc/kernel/head.S                    |    3 
 b/arch/ppc/kernel/i8259.c                   |   87 
 b/arch/ppc/kernel/misc.S                    |   12 
 b/arch/ppc/kernel/open_pic.c                |   22 
 b/arch/ppc/kernel/ppc-stub.c                |    8 
 b/arch/ppc/kernel/signal.c                  |  143 -
 b/arch/ppc/mm/Makefile                      |    2 
 b/arch/ppc/platforms/Makefile               |    9 
 b/arch/ppc/platforms/ep405.c                |  134 
 b/arch/ppc/platforms/ep405.h                |   23 
 b/arch/ppc/platforms/ibm405.h               |   85 
 b/arch/ppc/platforms/ibm405gp.h             |   27 
 b/arch/ppc/platforms/ibm_ocp.h              |    8 
 b/arch/ppc/platforms/lopec_pci.c            |    9 
 b/arch/ppc/platforms/lopec_setup.c          |   29 
 b/arch/ppc/platforms/mcpn765_setup.c        |    5 
 b/arch/ppc/platforms/pplus_setup.c          |    5 
 b/arch/ppc/platforms/prep_setup.c           |   14 
 b/arch/ppc/platforms/residual.c             |   35 
 b/arch/ppc/platforms/sandpoint_setup.c      |    5 
 b/arch/ppc64/kernel/Makefile                |   10 
 b/arch/ppc64/kernel/signal.c                |  143 -
 b/arch/ppc64/kernel/signal32.c              |  109 
 b/arch/s390/Makefile                        |   11 
 b/arch/s390/kernel/Makefile                 |   14 
 b/arch/s390/kernel/signal.c                 |  139 -
 b/arch/s390x/Makefile                       |   13 
 b/arch/s390x/kernel/Makefile                |   15 
 b/arch/s390x/kernel/linux32.c               |   91 
 b/arch/s390x/kernel/signal.c                |  138 -
 b/arch/s390x/kernel/signal32.c              |  101 
 b/arch/s390x/kernel/wrapper32.S             |    2 
 b/arch/sh/kernel/Makefile                   |   11 
 b/arch/sh/kernel/signal.c                   |  136 
 b/arch/sh/stboards/Makefile                 |    8 
 b/arch/sparc/boot/Makefile                  |    2 
 b/arch/sparc/kernel/Makefile                |   18 
 b/arch/sparc64/kernel/Makefile              |   12 
 b/arch/sparc64/kernel/sys_sparc32.c         |   91 
 b/arch/sparc64/kernel/systbls.S             |    2 
 b/arch/x86_64/Makefile                      |   11 
 b/arch/x86_64/ia32/Makefile                 |    7 
 b/arch/x86_64/kernel/Makefile               |   10 
 b/arch/x86_64/kernel/signal.c               |  142 -
 b/arch/x86_64/tools/Makefile                |    4 
 b/drivers/Makefile                          |   74 
 b/drivers/acorn/block/Makefile              |    8 
 b/drivers/acorn/block/fd1772.c              |   35 
 b/drivers/acorn/block/mfmhd.c               |    2 
 b/drivers/acorn/char/Makefile               |   18 
 b/drivers/acpi/Makefile                     |    2 
 b/drivers/acpi/acpi_system.c                |    4 
 b/drivers/atm/Makefile                      |    4 
 b/drivers/base/Makefile                     |    7 
 b/drivers/base/base.h                       |    5 
 b/drivers/base/bus.c                        |  125 
 b/drivers/base/core.c                       |   13 
 b/drivers/base/driver.c                     |   70 
 b/drivers/base/fs.c                         |  100 
 b/drivers/block/Makefile                    |    4 
 b/drivers/block/acsi.c                      |   31 
 b/drivers/block/amiflop.c                   |   19 
 b/drivers/block/ataflop.c                   |   32 
 b/drivers/block/cciss.c                     |   14 
 b/drivers/block/cciss.h                     |    2 
 b/drivers/block/cpqarray.c                  |   14 
 b/drivers/block/cpqarray.h                  |    2 
 b/drivers/block/floppy.c                    |   19 
 b/drivers/block/ll_rw_blk.c                 |  108 
 b/drivers/block/loop.c                      |   62 
 b/drivers/block/nbd.c                       |    2 
 b/drivers/block/paride/pd.c                 |    3 
 b/drivers/block/paride/pf.c                 |    3 
 b/drivers/block/ps2esdi.c                   |   10 
 b/drivers/block/rd.c                        |    1 
 b/drivers/block/smart1,2.h                  |    4 
 b/drivers/block/swim3.c                     |    2 
 b/drivers/block/swim_iop.c                  |    2 
 b/drivers/block/xd.c                        |    5 
 b/drivers/bluetooth/Makefile                |   15 
 b/drivers/cdrom/Makefile                    |    3 
 b/drivers/cdrom/aztcd.c                     |   90 
 b/drivers/cdrom/cdu31a.c                    |    5 
 b/drivers/cdrom/gscd.c                      |    2 
 b/drivers/cdrom/mcd.c                       |   85 
 b/drivers/cdrom/optcd.c                     |   40 
 b/drivers/cdrom/sbpcd.c                     |    2 
 b/drivers/cdrom/sjcd.c                      |   30 
 b/drivers/cdrom/sonycd535.c                 |   45 
 b/drivers/char/Makefile                     |    2 
 b/drivers/char/drm/radeon_cp.c              |    2 
 b/drivers/char/drm/radeon_drv.h             |   31 
 b/drivers/char/drm/radeon_state.c           |   64 
 b/drivers/char/ip2main.c                    |    6 
 b/drivers/char/rio/rio_linux.c              |    2 
 b/drivers/hotplug/Makefile                  |    2 
 b/drivers/i2c/Makefile                      |    2 
 b/drivers/ide/Config.help                   |   25 
 b/drivers/ide/Config.in                     |    7 
 b/drivers/ide/Makefile                      |   13 
 b/drivers/ide/aec62xx.c                     |  661 +---
 b/drivers/ide/alim15x3.c                    |   37 
 b/drivers/ide/amd74xx.c                     |    5 
 b/drivers/ide/ata-timing.h                  |    1 
 b/drivers/ide/atapi.c                       |   70 
 b/drivers/ide/buddha.c                      |    6 
 b/drivers/ide/cmd64x.c                      |    5 
 b/drivers/ide/cs5530.c                      |    6 
 b/drivers/ide/falconide.c                   |    2 
 b/drivers/ide/gayle.c                       |    2 
 b/drivers/ide/hd.c                          |   12 
 b/drivers/ide/hpt34x.c                      |   10 
 b/drivers/ide/hpt366.c                      |    9 
 b/drivers/ide/icside.c                      |    9 
 b/drivers/ide/ide-cd.c                      |   29 
 b/drivers/ide/ide-cs.c                      |    3 
 b/drivers/ide/ide-disk.c                    |    6 
 b/drivers/ide/ide-floppy.c                  |    2 
 b/drivers/ide/ide-pci.c                     |  284 --
 b/drivers/ide/ide-pmac.c                    |    6 
 b/drivers/ide/ide-pnp.c                     |   53 
 b/drivers/ide/ide-tape.c                    |   19 
 b/drivers/ide/ide-taskfile.c                |   60 
 b/drivers/ide/ide.c                         | 1917 --------------
 b/drivers/ide/ioctl.c                       |  285 ++
 b/drivers/ide/ioctl.h                       |   15 
 b/drivers/ide/it8172.c                      |    2 
 b/drivers/ide/macide.c                      |    6 
 b/drivers/ide/main.c                        | 1537 +++++++++++
 b/drivers/ide/pcihost.h                     |   18 
 b/drivers/ide/pdc202xx.c                    |  478 +--
 b/drivers/ide/pdc4030.c                     |    2 
 b/drivers/ide/piix.c                        |    2 
 b/drivers/ide/probe.c                       | 1247 +++++++++
 b/drivers/ide/q40ide.c                      |    6 
 b/drivers/ide/qd65xx.c                      |  203 -
 b/drivers/ide/rapide.c                      |    2 
 b/drivers/ide/serverworks.c                 |   44 
 b/drivers/ide/sis5513.c                     |    6 
 b/drivers/ide/sl82c105.c                    |    7 
 b/drivers/ide/via82cxxx.c                   |    2 
 b/drivers/ieee1394/Makefile                 |    2 
 b/drivers/input/Makefile                    |    4 
 b/drivers/input/gameport/Makefile           |    4 
 b/drivers/input/serio/Makefile              |    4 
 b/drivers/isdn/Makefile                     |    4 
 b/drivers/isdn/capi/Makefile                |    4 
 b/drivers/isdn/capi/kcapi.c                 |  499 ---
 b/drivers/isdn/capi/kcapi.h                 |   46 
 b/drivers/isdn/capi/kcapi_proc.c            |  269 +
 b/drivers/isdn/hardware/avm/avmcard.h       |    6 
 b/drivers/isdn/hardware/avm/b1.c            |   33 
 b/drivers/isdn/hardware/avm/b1dma.c         |   14 
 b/drivers/isdn/hardware/avm/b1isa.c         |   76 
 b/drivers/isdn/hardware/avm/b1pci.c         |  207 -
 b/drivers/isdn/hardware/avm/b1pcmcia.c      |   99 
 b/drivers/isdn/hardware/avm/c4.c            |  174 -
 b/drivers/isdn/hardware/avm/t1isa.c         |  116 
 b/drivers/isdn/hardware/avm/t1pci.c         |  114 
 b/drivers/isdn/hysdn/hycapi.c               |  104 
 b/drivers/isdn/hysdn/hysdn_defs.h           |    2 
 b/drivers/macintosh/Makefile                |   11 
 b/drivers/macintosh/mediabay.c              |   10 
 b/drivers/md/Makefile                       |    2 
 b/drivers/md/md.c                           |    6 
 b/drivers/media/Makefile                    |   11 
 b/drivers/media/radio/Makefile              |    9 
 b/drivers/media/video/Makefile              |    9 
 b/drivers/message/Makefile                  |    2 
 b/drivers/misc/Makefile                     |   11 
 b/drivers/mtd/Makefile                      |   12 
 b/drivers/mtd/chips/Makefile                |    2 
 b/drivers/mtd/devices/Makefile              |    2 
 b/drivers/mtd/maps/Makefile                 |    2 
 b/drivers/mtd/mtdblock.c                    |   11 
 b/drivers/mtd/mtdblock_ro.c                 |    2 
 b/drivers/mtd/nand/Makefile                 |    2 
 b/drivers/net/Makefile                      |    8 
 b/drivers/net/irda/irda-usb.c               |    2 
 b/drivers/net/tulip/Config.in               |    2 
 b/drivers/net/wireless/airo.c               |   10 
 b/drivers/parport/Makefile                  |    9 
 b/drivers/pci/Makefile                      |    9 
 b/drivers/pci/hotplug.c                     |    3 
 b/drivers/pci/pci-driver.c                  |  125 
 b/drivers/pci/probe.c                       |   13 
 b/drivers/pci/setup-bus.c                   |    8 
 b/drivers/pcmcia/Makefile                   |    2 
 b/drivers/pnp/Makefile                      |    2 
 b/drivers/s390/Makefile                     |    9 
 b/drivers/s390/block/Makefile               |    2 
 b/drivers/s390/char/Makefile                |    2 
 b/drivers/s390/misc/Makefile                |    2 
 b/drivers/s390/net/Makefile                 |    2 
 b/drivers/sbus/Makefile                     |   19 
 b/drivers/sbus/audio/Makefile               |    2 
 b/drivers/sbus/char/Makefile                |    2 
 b/drivers/scsi/Makefile                     |    3 
 b/drivers/scsi/ide-scsi.c                   |  211 -
 b/drivers/sgi/Makefile                      |    4 
 b/drivers/sgi/char/Makefile                 |    7 
 b/drivers/telephony/Makefile                |   10 
 b/drivers/usb/Makefile                      |  110 
 b/drivers/usb/class/Makefile                |    2 
 b/drivers/usb/core/Makefile                 |    2 
 b/drivers/usb/core/hcd.c                    |   24 
 b/drivers/usb/core/hcd.h                    |   16 
 b/drivers/usb/core/hub.c                    |    3 
 b/drivers/usb/core/usb.c                    |   16 
 b/drivers/usb/host/Config.help              |   10 
 b/drivers/usb/host/Config.in                |    3 
 b/drivers/usb/host/Makefile                 |    3 
 b/drivers/usb/host/ehci-dbg.c               |   10 
 b/drivers/usb/host/ehci-hcd.c               |    8 
 b/drivers/usb/host/ehci-sched.c             |  152 -
 b/drivers/usb/host/ehci.h                   |    8 
 b/drivers/usb/host/hc_simple.c              | 1074 +++++++
 b/drivers/usb/host/hc_simple.h              |  231 +
 b/drivers/usb/host/hc_sl811.c               | 1358 +++++++++
 b/drivers/usb/host/hc_sl811.h               |  385 ++
 b/drivers/usb/host/hc_sl811_rh.c            |  526 +++
 b/drivers/usb/host/usb-uhci-dbg.c           |    4 
 b/drivers/usb/host/usb-uhci-hcd.c           |   70 
 b/drivers/usb/host/usb-uhci-hub.c           |    6 
 b/drivers/usb/host/usb-uhci-mem.c           |   23 
 b/drivers/usb/host/usb-uhci-q.c             |   81 
 b/drivers/usb/image/Makefile                |    2 
 b/drivers/usb/input/Makefile                |    2 
 b/drivers/usb/media/Makefile                |    2 
 b/drivers/usb/misc/Makefile                 |    2 
 b/drivers/usb/net/Makefile                  |    2 
 b/drivers/usb/serial/Makefile               |    2 
 b/drivers/usb/storage/Makefile              |    1 
 b/drivers/usb/storage/debug.h               |    2 
 b/drivers/usb/storage/isd200.c              |    2 
 b/drivers/usb/storage/scsiglue.c            |    5 
 b/drivers/usb/storage/transport.c           |   85 
 b/drivers/usb/storage/usb.c                 |  248 -
 b/drivers/usb/storage/usb.h                 |   23 
 b/drivers/video/Config.in                   |   92 
 b/drivers/video/Makefile                    |   21 
 b/drivers/video/anakinfb.c                  |  182 -
 b/drivers/video/cfbcopyarea.c               |  222 +
 b/drivers/video/cfbfillrect.c               |  209 +
 b/drivers/video/cfbimgblt.c                 |  133 
 b/drivers/video/chipsfb.c                   |    4 
 b/drivers/video/clps711xfb.c                |  158 -
 b/drivers/video/cyber2000fb.c               |    5 
 b/drivers/video/fbcmap.c                    |    2 
 b/drivers/video/fbcon-accel.c               |    2 
 b/drivers/video/fbmem.c                     |   26 
 b/drivers/video/fm2fb.c                     |  416 ---
 b/drivers/video/g364fb.c                    |  479 +--
 b/drivers/video/hgafb.c                     |   42 
 b/drivers/video/hitfb.c                     |  446 ---
 b/drivers/video/hpfb.c                      |  314 --
 b/drivers/video/matrox/matroxfb_accel.c     |   11 
 b/drivers/video/matrox/matroxfb_accel.h     |    1 
 b/drivers/video/pm2fb.c                     |    3 
 b/drivers/video/pm3fb.c                     | 3832 ++++++++++++++++++++++++++++
 b/drivers/video/pm3fb.h                     | 1284 +++++++++
 b/drivers/video/q40fb.c                     |  351 --
 b/drivers/video/skeletonfb.c                |  668 ++--
 b/drivers/video/tdfxfb.c                    | 3673 +++++++++++++-------------
 b/drivers/video/tridentfb.c                 | 1305 +++++++++
 b/drivers/video/tridentfb.h                 |  169 +
 b/drivers/video/vesafb.c                    |  421 ---
 b/drivers/video/vfb.c                       |  806 ++---
 b/drivers/zorro/Makefile                    |    9 
 b/fs/Config.help                            |   15 
 b/fs/Config.in                              |    7 
 b/fs/Makefile                               |    6 
 b/fs/binfmt_em86.c                          |    2 
 b/fs/block_dev.c                            |    2 
 b/fs/buffer.c                               |   69 
 b/fs/dcache.c                               |    2 
 b/fs/dquot.c                                |   62 
 b/fs/driverfs/inode.c                       |  115 
 b/fs/exec.c                                 |   97 
 b/fs/ext2/dir.c                             |    2 
 b/fs/ext2/ialloc.c                          |    5 
 b/fs/ext2/inode.c                           |   89 
 b/fs/ext2/ioctl.c                           |    3 
 b/fs/ext3/ialloc.c                          |    7 
 b/fs/ext3/inode.c                           |   45 
 b/fs/ext3/ioctl.c                           |    3 
 b/fs/ext3/namei.c                           |   16 
 b/fs/ext3/super.c                           |   12 
 b/fs/fat/inode.c                            |    3 
 b/fs/fs-writeback.c                         |   22 
 b/fs/inode.c                                |    9 
 b/fs/iobuf.c                                |    2 
 b/fs/jbd/checkpoint.c                       |    2 
 b/fs/jbd/journal.c                          |   31 
 b/fs/jbd/transaction.c                      |   10 
 b/fs/mpage.c                                |  547 +++
 b/fs/msdos/namei.c                          |   15 
 b/fs/namespace.c                            |    1 
 b/fs/nfs/dir.c                              |   10 
 b/fs/nfs/nfs2xdr.c                          |  179 -
 b/fs/nfs/nfs3proc.c                         |   51 
 b/fs/nfs/nfs3xdr.c                          |  173 -
 b/fs/nfs/proc.c                             |   50 
 b/fs/nfs/read.c                             |   40 
 b/fs/nfs/symlink.c                          |    6 
 b/fs/nfs/write.c                            |   28 
 b/fs/partitions/check.c                     |    4 
 b/fs/proc/array.c                           |    6 
 b/fs/proc/proc_misc.c                       |    8 
 b/fs/quota.c                                |  395 --
 b/fs/quota_v1.c                             |    6 
 b/fs/quota_v2.c                             |    6 
 b/fs/reiserfs/buffer2.c                     |    2 
 b/fs/reiserfs/journal.c                     |    1 
 b/fs/vfat/namei.c                           |   14 
 b/include/asm-alpha/errno.h                 |   38 
 b/include/asm-alpha/ide.h                   |    2 
 b/include/asm-alpha/siginfo.h               |  212 -
 b/include/asm-alpha/signal.h                |    3 
 b/include/asm-arm/arch-anakin/ide.h         |   10 
 b/include/asm-arm/arch-arc/ide.h            |    2 
 b/include/asm-arm/arch-cl7500/ide.h         |    6 
 b/include/asm-arm/arch-ebsa285/ide.h        |    2 
 b/include/asm-arm/arch-rpc/ide.h            |    2 
 b/include/asm-arm/arch-sa1100/ide.h         |   10 
 b/include/asm-arm/arch-shark/ide.h          |    2 
 b/include/asm-arm/errno.h                   |  128 
 b/include/asm-arm/siginfo.h                 |  230 -
 b/include/asm-arm/signal.h                  |    2 
 b/include/asm-cris/errno.h                  |  130 
 b/include/asm-cris/ide.h                    |    2 
 b/include/asm-cris/siginfo.h                |  229 -
 b/include/asm-generic/errno-base.h          |   39 
 b/include/asm-generic/errno.h               |  100 
 b/include/asm-generic/siginfo.h             |  254 +
 b/include/asm-i386/errno.h                  |  128 
 b/include/asm-i386/hw_irq.h                 |    1 
 b/include/asm-i386/ide.h                    |   15 
 b/include/asm-i386/pgtable-2level.h         |    1 
 b/include/asm-i386/pgtable-3level.h         |    5 
 b/include/asm-i386/pgtable.h                |   27 
 b/include/asm-i386/siginfo.h                |  230 -
 b/include/asm-i386/suspend.h                |    6 
 b/include/asm-ia64/bitops.h                 |    6 
 b/include/asm-ia64/efi.h                    |   11 
 b/include/asm-ia64/elf.h                    |    2 
 b/include/asm-ia64/errno.h                  |  128 
 b/include/asm-ia64/ide.h                    |    2 
 b/include/asm-ia64/kregs.h                  |  121 
 b/include/asm-ia64/machvec.h                |    9 
 b/include/asm-ia64/machvec_hpzx1.h          |   39 
 b/include/asm-ia64/offsets.h                |    1 
 b/include/asm-ia64/page.h                   |   34 
 b/include/asm-ia64/pci.h                    |   12 
 b/include/asm-ia64/perfmon.h                |    3 
 b/include/asm-ia64/pgalloc.h                |    4 
 b/include/asm-ia64/pgtable.h                |   20 
 b/include/asm-ia64/processor.h              |  139 -
 b/include/asm-ia64/siginfo.h                |  145 -
 b/include/asm-ia64/signal.h                 |    2 
 b/include/asm-ia64/system.h                 |   36 
 b/include/asm-ia64/tlb.h                    |    6 
 b/include/asm-ia64/unistd.h                 |    1 
 b/include/asm-m68k/errno.h                  |  128 
 b/include/asm-m68k/siginfo.h                |  176 -
 b/include/asm-m68k/signal.h                 |    2 
 b/include/asm-mips/errno.h                  |   37 
 b/include/asm-mips/ide.h                    |    2 
 b/include/asm-mips/siginfo.h                |  156 -
 b/include/asm-mips64/errno.h                |   37 
 b/include/asm-mips64/ide.h                  |    2 
 b/include/asm-mips64/mmzone.h               |    2 
 b/include/asm-mips64/siginfo.h              |  155 -
 b/include/asm-parisc/errno.h                |   36 
 b/include/asm-parisc/ide.h                  |    2 
 b/include/asm-parisc/siginfo.h              |  225 -
 b/include/asm-ppc/bitops.h                  |   12 
 b/include/asm-ppc/errno.h                   |  127 
 b/include/asm-ppc/hardirq.h                 |    2 
 b/include/asm-ppc/i8259.h                   |    5 
 b/include/asm-ppc/ibm4xx.h                  |    8 
 b/include/asm-ppc/ide.h                     |    2 
 b/include/asm-ppc/io.h                      |   38 
 b/include/asm-ppc/irq.h                     |   40 
 b/include/asm-ppc/pgalloc.h                 |    3 
 b/include/asm-ppc/pgtable.h                 |   12 
 b/include/asm-ppc/serial.h                  |    2 
 b/include/asm-ppc/siginfo.h                 |  227 -
 b/include/asm-ppc/spinlock.h                |    2 
 b/include/asm-ppc/time.h                    |    4 
 b/include/asm-ppc64/errno.h                 |  127 
 b/include/asm-ppc64/siginfo.h               |  228 -
 b/include/asm-s390/errno.h                  |  129 
 b/include/asm-s390/siginfo.h                |  156 -
 b/include/asm-s390x/errno.h                 |  130 
 b/include/asm-s390x/siginfo.h               |  156 -
 b/include/asm-sh/errno.h                    |  128 
 b/include/asm-sh/ide.h                      |    2 
 b/include/asm-sh/siginfo.h                  |  229 -
 b/include/asm-sparc/errno.h                 |   37 
 b/include/asm-sparc/ide.h                   |    2 
 b/include/asm-sparc/siginfo.h               |  164 -
 b/include/asm-sparc/signal.h                |    2 
 b/include/asm-sparc64/errno.h               |   37 
 b/include/asm-sparc64/ide.h                 |    2 
 b/include/asm-sparc64/siginfo.h             |  172 -
 b/include/asm-sparc64/signal.h              |    3 
 b/include/asm-x86_64/errno.h                |  128 
 b/include/asm-x86_64/ide.h                  |   15 
 b/include/asm-x86_64/siginfo.h              |  229 -
 b/include/linux/atapi.h                     |    9 
 b/include/linux/auto_fs.h                   |    2 
 b/include/linux/binfmts.h                   |    1 
 b/include/linux/blk.h                       |   11 
 b/include/linux/blkdev.h                    |    8 
 b/include/linux/buffer_head.h               |    4 
 b/include/linux/device.h                    |   63 
 b/include/linux/driverfs_fs.h               |    5 
 b/include/linux/ext2_fs.h                   |    9 
 b/include/linux/ext3_fs.h                   |    6 
 b/include/linux/fb.h                        |    6 
 b/include/linux/fs.h                        |   15 
 b/include/linux/hdreg.h                     |    9 
 b/include/linux/ide.h                       |   41 
 b/include/linux/irq.h                       |    2 
 b/include/linux/isdn/capilli.h              |   79 
 b/include/linux/jbd.h                       |   13 
 b/include/linux/jiffies.h                   |    1 
 b/include/linux/mm.h                        |    8 
 b/include/linux/mmzone.h                    |    4 
 b/include/linux/mpage.h                     |   18 
 b/include/linux/nfs_xdr.h                   |   54 
 b/include/linux/page-flags.h                |    2 
 b/include/linux/pci.h                       |    3 
 b/include/linux/pci_ids.h                   |    4 
 b/include/linux/quota.h                     |   24 
 b/include/linux/sched.h                     |    1 
 b/include/linux/signal.h                    |    4 
 b/include/linux/sunrpc/xdr.h                |   64 
 b/include/linux/sunrpc/xprt.h               |   29 
 b/include/linux/suspend.h                   |    2 
 b/include/linux/swap.h                      |   10 
 b/include/linux/sysctl.h                    |   14 
 b/include/linux/tqueue.h                    |    2 
 b/include/linux/writeback.h                 |    2 
 b/include/video/tdfx.h                      |  191 +
 b/init/Makefile                             |    8 
 b/init/do_mounts.c                          |    2 
 b/ipc/sem.c                                 |    1 
 b/kernel/exit.c                             |    2 
 b/kernel/ksyms.c                            |    1 
 b/kernel/sched.c                            |   37 
 b/kernel/signal.c                           |  146 +
 b/kernel/suspend.c                          |   75 
 b/kernel/timer.c                            |   12 
 b/mm/filemap.c                              |  210 -
 b/mm/memory.c                               |    2 
 b/mm/mempool.c                              |    2 
 b/mm/mmap.c                                 |    4 
 b/mm/numa.c                                 |    4 
 b/mm/page-writeback.c                       |   31 
 b/mm/page_alloc.c                           |  112 
 b/mm/pdflush.c                              |    5 
 b/mm/readahead.c                            |   40 
 b/mm/swap_state.c                           |    8 
 b/mm/vmscan.c                               |   33 
 b/net/atm/pppoatm.c                         |    2 
 b/net/core/dev.c                            |    6 
 b/net/core/skbuff.c                         |   30 
 b/net/ipv4/ipconfig.c                       |    6 
 b/net/sunrpc/clnt.c                         |   20 
 b/net/sunrpc/sunrpc_syms.c                  |    5 
 b/net/sunrpc/xdr.c                          |  195 +
 b/net/sunrpc/xprt.c                         |  219 -
 b/scripts/Makefile                          |   74 
 b/sound/core/memory.c                       |   16 
 b/sound/oss/Makefile                        |    2 
 b/sound/pci/rme9652/rme9652_mem.c           |    6 
 drivers/acorn/Makefile                      |   15 
 drivers/ide/ide-features.c                  |  363 --
 drivers/ide/ide-geometry.c                  |  145 -
 drivers/ide/ide-probe.c                     |  904 ------
 include/linux/quotacompat.h                 |   86 
 scripts/pathdown.sh                         |   13 
 611 files changed, 27002 insertions(+), 22695 deletions(-)

