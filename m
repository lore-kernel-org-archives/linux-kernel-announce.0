From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.41 released
Date: Mon, 7 Oct 2002 11:55:31 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200210071855.g97ItVY24877@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.41 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.41.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.41.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               935263           4111464
Full source                       36636363         163389440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/s390/kernel/irq.c                    |  360 --
 arch/s390/kernel/s390fpu.c                |  138 
 arch/s390/lib/checksum.c                  |   57 
 arch/s390/lib/misaligned.c                |   29 
 arch/s390/vmlinux-shared.lds              |   93 
 arch/s390/vmlinux.lds                     |   88 
 arch/s390x/kernel/irq.c                   |  361 --
 arch/s390x/kernel/s390fpu.c               |   87 
 arch/s390x/lib/checksum.c                 |   40 
 arch/s390x/lib/misaligned.c               |   34 
 arch/s390x/vmlinux-shared.lds             |   93 
 arch/s390x/vmlinux.lds                    |   89 
 b/CREDITS                                 |   11 
 b/Documentation/Changes                   |    9 
 b/Documentation/DMA-mapping.txt           |    8 
 b/Documentation/DocBook/Makefile          |    2 
 b/Documentation/filesystems/ext3.txt      |  139 
 b/Documentation/filesystems/proc.txt      |   22 
 b/Documentation/filesystems/xfs.txt       |    3 
 b/Documentation/networking/tuntap.txt     |  121 
 b/Documentation/s390/CommonIO             |    3 
 b/Documentation/sound/oss/Maestro3        |   10 
 b/Documentation/swsusp.txt                |   17 
 b/Documentation/vm/hugetlbpage.txt        |   14 
 b/MAINTAINERS                             |   14 
 b/Makefile                                |  269 -
 b/Rules.make                              |  142 
 b/arch/alpha/Makefile                     |    2 
 b/arch/alpha/boot/Makefile                |    2 
 b/arch/alpha/kernel/signal.c              |   24 
 b/arch/alpha/lib/Makefile                 |    1 
 b/arch/alpha/lib/ev6-stxncpy.S            |   80 
 b/arch/alpha/lib/stxncpy.S                |   78 
 b/arch/i386/Config.help                   |    9 
 b/arch/i386/Makefile                      |  112 
 b/arch/i386/boot/Makefile                 |   42 
 b/arch/i386/boot/compressed/Makefile      |   11 
 b/arch/i386/config.in                     |    2 
 b/arch/i386/kernel/Makefile               |    3 
 b/arch/i386/kernel/apic.c                 |   33 
 b/arch/i386/kernel/bluesmoke.c            |    8 
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c |    1 
 b/arch/i386/kernel/i386_ksyms.c           |    3 
 b/arch/i386/kernel/ioport.c               |   15 
 b/arch/i386/kernel/mca.c                  |    2 
 b/arch/i386/kernel/scx200.c               |  128 
 b/arch/i386/kernel/traps.c                |    6 
 b/arch/i386/mm/hugetlbpage.c              |   16 
 b/arch/i386/vmlinux.lds.S                 |    8 
 b/arch/m68k/atari/stram.c                 |   21 
 b/arch/s390/Config.help                   |   14 
 b/arch/s390/config.in                     |   17 
 b/arch/s390/defconfig                     |   44 
 b/arch/s390/kernel/Makefile               |    6 
 b/arch/s390/kernel/debug.c                |   44 
 b/arch/s390/kernel/entry.S                |  181 -
 b/arch/s390/kernel/head.S                 |    2 
 b/arch/s390/kernel/init_task.c            |    2 
 b/arch/s390/kernel/process.c              |  121 
 b/arch/s390/kernel/ptrace.c               |  504 +-
 b/arch/s390/kernel/setup.c                |   54 
 b/arch/s390/kernel/signal.c               |  101 
 b/arch/s390/kernel/smp.c                  |  213 -
 b/arch/s390/kernel/time.c                 |  145 
 b/arch/s390/kernel/traps.c                |   50 
 b/arch/s390/lib/Makefile                  |    3 
 b/arch/s390/mm/extable.c                  |    4 
 b/arch/s390/mm/fault.c                    |   23 
 b/arch/s390/vmlinux.lds.S                 |   95 
 b/arch/s390x/Config.help                  |   14 
 b/arch/s390x/Makefile                     |    2 
 b/arch/s390x/config.in                    |   18 
 b/arch/s390x/defconfig                    |   52 
 b/arch/s390x/kernel/Makefile              |    6 
 b/arch/s390x/kernel/debug.c               |   44 
 b/arch/s390x/kernel/entry.S               |  166 
 b/arch/s390x/kernel/head.S                |   15 
 b/arch/s390x/kernel/init_task.c           |    2 
 b/arch/s390x/kernel/linux32.c             |   65 
 b/arch/s390x/kernel/linux32.h             |   30 
 b/arch/s390x/kernel/process.c             |   99 
 b/arch/s390x/kernel/ptrace.c              |  926 ++---
 b/arch/s390x/kernel/ptrace32.h            |   86 
 b/arch/s390x/kernel/setup.c               |   58 
 b/arch/s390x/kernel/signal.c              |   95 
 b/arch/s390x/kernel/signal32.c            |  130 
 b/arch/s390x/kernel/smp.c                 |  215 -
 b/arch/s390x/kernel/time.c                |  102 
 b/arch/s390x/kernel/traps.c               |   44 
 b/arch/s390x/kernel/wrapper32.S           |   18 
 b/arch/s390x/lib/Makefile                 |    3 
 b/arch/s390x/mm/fault.c                   |   21 
 b/arch/s390x/vmlinux.lds.S                |   96 
 b/arch/sparc/Makefile                     |    3 
 b/arch/sparc/boot/Makefile                |    5 
 b/arch/sparc/kernel/signal.c              |   15 
 b/arch/sparc/kernel/sparc_ksyms.c         |    9 
 b/arch/sparc/kernel/sun4d_irq.c           |    2 
 b/arch/sparc/mm/Makefile                  |    4 
 b/arch/sparc/mm/generic.c                 |    2 
 b/arch/sparc/mm/highmem.c                 |   99 
 b/arch/sparc/mm/srmmu.c                   |    2 
 b/arch/sparc64/defconfig                  |   60 
 b/arch/sparc64/kernel/signal.c            |   15 
 b/arch/sparc64/kernel/signal32.c          |   15 
 b/arch/sparc64/kernel/sys_sparc32.c       |   12 
 b/arch/sparc64/mm/init.c                  |    2 
 b/arch/um/drivers/ubd_kern.c              |   63 
 b/drivers/acorn/block/fd1772.c            |   53 
 b/drivers/acorn/block/mfmhd.c             |  131 
 b/drivers/acpi/Makefile                   |    2 
 b/drivers/acpi/dispatcher/Makefile        |    3 
 b/drivers/acpi/events/Makefile            |    3 
 b/drivers/acpi/executer/Makefile          |    5 
 b/drivers/acpi/hardware/Makefile          |    2 
 b/drivers/acpi/namespace/Makefile         |    4 
 b/drivers/acpi/osl.c                      |   16 
 b/drivers/acpi/parser/Makefile            |    3 
 b/drivers/acpi/resources/Makefile         |    3 
 b/drivers/acpi/tables/Makefile            |    3 
 b/drivers/acpi/utilities/Makefile         |    3 
 b/drivers/atm/ambassador.c                |    8 
 b/drivers/atm/ambassador.h                |    2 
 b/drivers/atm/idt77252.c                  |    6 
 b/drivers/atm/idt77252.h                  |    4 
 b/drivers/base/hotplug.c                  |    1 
 b/drivers/block/DAC960.c                  |   37 
 b/drivers/block/DAC960.h                  |    2 
 b/drivers/block/acsi.c                    |  120 
 b/drivers/block/amiflop.c                 |   47 
 b/drivers/block/ataflop.c                 |   50 
 b/drivers/block/cciss.c                   |   63 
 b/drivers/block/cciss.h                   |    2 
 b/drivers/block/cpqarray.c                |   97 
 b/drivers/block/deadline-iosched.c        |   13 
 b/drivers/block/elevator.c                |   10 
 b/drivers/block/floppy.c                  |   91 
 b/drivers/block/genhd.c                   |    4 
 b/drivers/block/ll_rw_blk.c               |   43 
 b/drivers/block/loop.c                    |   28 
 b/drivers/block/nbd.c                     |   29 
 b/drivers/block/paride/pcd.c              |   21 
 b/drivers/block/paride/pd.c               |   70 
 b/drivers/block/paride/pf.c               |   35 
 b/drivers/block/paride/pseudo.h           |    8 
 b/drivers/block/ps2esdi.c                 |   51 
 b/drivers/block/rd.c                      |   54 
 b/drivers/block/swim3.c                   |   52 
 b/drivers/block/swim_iop.c                |    8 
 b/drivers/block/umem.c                    |   24 
 b/drivers/block/xd.c                      |  128 
 b/drivers/block/z2ram.c                   |   27 
 b/drivers/bluetooth/Config.help           |   22 
 b/drivers/bluetooth/Config.in             |    2 
 b/drivers/bluetooth/Makefile              |    3 
 b/drivers/bluetooth/hci_bcsp.c            |  710 ++++
 b/drivers/bluetooth/hci_bcsp.h            |   70 
 b/drivers/bluetooth/hci_h4.c              |   85 
 b/drivers/bluetooth/hci_h4.h              |    3 
 b/drivers/bluetooth/hci_ldisc.c           |  348 +
 b/drivers/bluetooth/hci_uart.h            |   35 
 b/drivers/bluetooth/hci_usb.c             |  125 
 b/drivers/bluetooth/hci_usb.h             |    4 
 b/drivers/cdrom/aztcd.c                   |   30 
 b/drivers/cdrom/cdu31a.c                  |  188 -
 b/drivers/cdrom/cm206.c                   |   26 
 b/drivers/cdrom/gscd.c                    |   27 
 b/drivers/cdrom/mcd.c                     |   29 
 b/drivers/cdrom/mcdx.c                    |   22 
 b/drivers/cdrom/optcd.c                   |   28 
 b/drivers/cdrom/sbpcd.c                   |    9 
 b/drivers/cdrom/sjcd.c                    |   70 
 b/drivers/cdrom/sonycd535.c               |  270 -
 b/drivers/char/Config.help                |   27 
 b/drivers/char/Config.in                  |    6 
 b/drivers/char/Makefile                   |    3 
 b/drivers/char/amd768_rng.c               |  295 +
 b/drivers/char/cyclades.c                 |   30 
 b/drivers/char/drm/Config.in              |    2 
 b/drivers/char/drm/ati_pcigart.h          |   10 
 b/drivers/char/drm/drm.h                  |   15 
 b/drivers/char/drm/drmP.h                 |   16 
 b/drivers/char/drm/drm_dma.h              |   49 
 b/drivers/char/drm/drm_drv.h              |    4 
 b/drivers/char/drm/drm_os_linux.h         |   55 
 b/drivers/char/drm/gamma_dma.c            |    3 
 b/drivers/char/drm/radeon.h               |   57 
 b/drivers/char/drm/radeon_drm.h           |    2 
 b/drivers/char/drm/radeon_drv.h           |   14 
 b/drivers/char/drm/radeon_irq.c           |  175 -
 b/drivers/char/drm/radeon_mem.c           |    2 
 b/drivers/char/drm/radeon_state.c         |    5 
 b/drivers/char/epca.c                     |    5 
 b/drivers/char/epca.h                     |    2 
 b/drivers/char/genrtc.c                   |   14 
 b/drivers/char/ip2/i2ellis.h              |    2 
 b/drivers/char/ip2/i2lib.c                |    6 
 b/drivers/char/ip2/i2lib.h                |    7 
 b/drivers/char/ip2main.c                  |    6 
 b/drivers/char/moxa.c                     |    7 
 b/drivers/char/mxser.c                    |   13 
 b/drivers/char/pcmcia/synclink_cs.c       |   11 
 b/drivers/char/random.c                   |   15 
 b/drivers/char/raw.c                      |    2 
 b/drivers/char/rocket.c                   |    2 
 b/drivers/char/rocket_int.h               |    1 
 b/drivers/char/scx200_gpio.c              |  154 
 b/drivers/char/scx200_wdt.c               |  277 +
 b/drivers/char/sh-sci.c                   |    6 
 b/drivers/char/sh-sci.h                   |    2 
 b/drivers/char/sx.c                       |    1 
 b/drivers/char/sx.h                       |    4 
 b/drivers/char/synclink.c                 |   11 
 b/drivers/char/synclinkmp.c               |   11 
 b/drivers/char/tty_io.c                   |   27 
 b/drivers/char/vt.c                       |    8 
 b/drivers/hotplug/cpqphp.h                |    2 
 b/drivers/hotplug/cpqphp_core.c           |    2 
 b/drivers/hotplug/cpqphp_ctrl.c           |    3 
 b/drivers/hotplug/cpqphp_nvram.c          |    2 
 b/drivers/hotplug/cpqphp_pci.c            |    2 
 b/drivers/hotplug/cpqphp_proc.c           |    2 
 b/drivers/i2c/Config.help                 |   22 
 b/drivers/i2c/Config.in                   |    6 
 b/drivers/i2c/Makefile                    |    2 
 b/drivers/i2c/scx200_acb.c                |  578 +++
 b/drivers/i2c/scx200_i2c.c                |  156 
 b/drivers/ide/Config.in                   |    2 
 b/drivers/ide/arm/Makefile                |    2 
 b/drivers/ide/ide-cd.c                    |   11 
 b/drivers/ide/ide-disk.c                  |   73 
 b/drivers/ide/ide-iops.c                  |  182 -
 b/drivers/ide/ide-pnp.c                   |    4 
 b/drivers/ide/ide-probe.c                 |    6 
 b/drivers/ide/ide-taskfile.c              |   49 
 b/drivers/ide/ide.c                       |   10 
 b/drivers/ide/legacy/Makefile             |    2 
 b/drivers/ide/legacy/hd.c                 |  114 
 b/drivers/ide/pci/Makefile                |    2 
 b/drivers/ide/pci/adma100.h               |    2 
 b/drivers/ide/pci/aec62xx.c               |    1 
 b/drivers/ide/pci/aec62xx.h               |    2 
 b/drivers/ide/pci/alim15x3.c              |    1 
 b/drivers/ide/pci/alim15x3.h              |    2 
 b/drivers/ide/pci/amd74xx.c               |    1 
 b/drivers/ide/pci/amd74xx.h               |    2 
 b/drivers/ide/pci/cmd64x.c                |   10 
 b/drivers/ide/pci/cmd64x.h                |    2 
 b/drivers/ide/pci/cs5530.c                |    1 
 b/drivers/ide/pci/cs5530.h                |    2 
 b/drivers/ide/pci/cy82c693.c              |    1 
 b/drivers/ide/pci/cy82c693.h              |    2 
 b/drivers/ide/pci/generic.c               |   33 
 b/drivers/ide/pci/generic.h               |   15 
 b/drivers/ide/pci/hpt34x.c                |    1 
 b/drivers/ide/pci/hpt34x.h                |    2 
 b/drivers/ide/pci/hpt366.c                |    3 
 b/drivers/ide/pci/hpt366.h                |    2 
 b/drivers/ide/pci/it8172.c                |    3 
 b/drivers/ide/pci/it8172.h                |    2 
 b/drivers/ide/pci/ns87415.c               |    1 
 b/drivers/ide/pci/ns87415.h               |    2 
 b/drivers/ide/pci/nvidia.c                |    1 
 b/drivers/ide/pci/nvidia.h                |    2 
 b/drivers/ide/pci/opti621.c               |    1 
 b/drivers/ide/pci/opti621.h               |    2 
 b/drivers/ide/pci/pdc202xx_new.c          |    1 
 b/drivers/ide/pci/pdc202xx_new.h          |    2 
 b/drivers/ide/pci/pdc202xx_old.c          |   22 
 b/drivers/ide/pci/pdc202xx_old.h          |    2 
 b/drivers/ide/pci/pdcadma.c               |    1 
 b/drivers/ide/pci/pdcadma.h               |    2 
 b/drivers/ide/pci/piix.c                  |    3 
 b/drivers/ide/pci/piix.h                  |    6 
 b/drivers/ide/pci/rz1000.c                |    1 
 b/drivers/ide/pci/rz1000.h                |    2 
 b/drivers/ide/pci/serverworks.c           |    1 
 b/drivers/ide/pci/serverworks.h           |    2 
 b/drivers/ide/pci/siimage.c               |    1 
 b/drivers/ide/pci/siimage.h               |    2 
 b/drivers/ide/pci/sis5513.c               |    1 
 b/drivers/ide/pci/sis5513.h               |    2 
 b/drivers/ide/pci/sl82c105.c              |    1 
 b/drivers/ide/pci/sl82c105.h              |    2 
 b/drivers/ide/pci/slc90e66.c              |    1 
 b/drivers/ide/pci/slc90e66.h              |    2 
 b/drivers/ide/pci/trm290.c                |    1 
 b/drivers/ide/pci/trm290.h                |    2 
 b/drivers/ide/pci/via82cxxx.c             |    1 
 b/drivers/ide/pci/via82cxxx.h             |    2 
 b/drivers/ide/ppc/Makefile                |    2 
 b/drivers/ieee1394/amdtp.c                |   13 
 b/drivers/ieee1394/dv1394-private.h       |    3 
 b/drivers/ieee1394/dv1394.c               |   32 
 b/drivers/ieee1394/eth1394.h              |    2 
 b/drivers/ieee1394/ieee1394_core.c        |   49 
 b/drivers/ieee1394/ieee1394_core.h        |    5 
 b/drivers/ieee1394/nodemgr.c              |    9 
 b/drivers/ieee1394/ohci1394.c             |   17 
 b/drivers/ieee1394/pcilynx.c              |    3 
 b/drivers/ieee1394/raw1394.c              |    4 
 b/drivers/ieee1394/sbp2.c                 |   88 
 b/drivers/input/joystick/iforce/Makefile  |    6 
 b/drivers/input/keyboard/atkbd.c          |    2 
 b/drivers/input/keyboard/sunkbd.c         |    9 
 b/drivers/input/mouse/Config.help         |    2 
 b/drivers/input/mouse/psmouse.c           |    2 
 b/drivers/input/power.c                   |    6 
 b/drivers/isdn/act2000/act2000.h          |   17 
 b/drivers/isdn/act2000/module.c           |    9 
 b/drivers/isdn/capi/kcapi.c               |   18 
 b/drivers/isdn/eicon/Divas_mod.c          |    6 
 b/drivers/isdn/eicon/adapter.h            |    3 
 b/drivers/isdn/eicon/common.c             |    7 
 b/drivers/isdn/eicon/eicon.h              |   19 
 b/drivers/isdn/eicon/eicon_dsp.h          |    2 
 b/drivers/isdn/eicon/eicon_idi.c          |    4 
 b/drivers/isdn/eicon/eicon_idi.h          |    2 
 b/drivers/isdn/eicon/eicon_io.c           |    2 
 b/drivers/isdn/eicon/eicon_isa.c          |    4 
 b/drivers/isdn/eicon/eicon_isa.h          |    2 
 b/drivers/isdn/eicon/eicon_mod.c          |   27 
 b/drivers/isdn/eicon/eicon_pci.c          |    4 
 b/drivers/isdn/eicon/eicon_pci.h          |    2 
 b/drivers/isdn/eicon/linio.c              |   16 
 b/drivers/isdn/eicon/linsys.c             |   25 
 b/drivers/isdn/hisax/Makefile             |    2 
 b/drivers/isdn/hisax/amd7930.c            |   51 
 b/drivers/isdn/hisax/amd7930_fn.c         |    5 
 b/drivers/isdn/hisax/avm_pci.c            |    3 
 b/drivers/isdn/hisax/config.c             |   10 
 b/drivers/isdn/hisax/hfc_2bds0.c          |    8 
 b/drivers/isdn/hisax/hfc_2bs0.c           |    3 
 b/drivers/isdn/hisax/hfc_pci.c            |    8 
 b/drivers/isdn/hisax/hfc_sx.c             |    8 
 b/drivers/isdn/hisax/hisax.h              |    8 
 b/drivers/isdn/hisax/hscx.c               |    3 
 b/drivers/isdn/hisax/icc.c                |    5 
 b/drivers/isdn/hisax/ipacx.c              |    8 
 b/drivers/isdn/hisax/isac.c               |    5 
 b/drivers/isdn/hisax/isar.c               |    5 
 b/drivers/isdn/hisax/isdnl1.c             |    4 
 b/drivers/isdn/hisax/jade.c               |    3 
 b/drivers/isdn/hisax/netjet.c             |    6 
 b/drivers/isdn/hisax/w6692.c              |    8 
 b/drivers/isdn/hysdn/boardergo.c          |   13 
 b/drivers/isdn/hysdn/hycapi.c             |    3 
 b/drivers/isdn/hysdn/hysdn_defs.h         |    4 
 b/drivers/isdn/hysdn/hysdn_net.c          |    3 
 b/drivers/isdn/hysdn/hysdn_sched.c        |    3 
 b/drivers/isdn/i4l/Makefile               |    8 
 b/drivers/isdn/i4l/isdn_ciscohdlck.c      |  171 
 b/drivers/isdn/i4l/isdn_common.c          |  199 -
 b/drivers/isdn/i4l/isdn_common.h          |   20 
 b/drivers/isdn/i4l/isdn_concap.c          |   21 
 b/drivers/isdn/i4l/isdn_concap.h          |   14 
 b/drivers/isdn/i4l/isdn_fsm.c             |  169 
 b/drivers/isdn/i4l/isdn_fsm.h             |   61 
 b/drivers/isdn/i4l/isdn_net.c             | 2043 +----------
 b/drivers/isdn/i4l/isdn_net.h             |  146 
 b/drivers/isdn/i4l/isdn_net_lib.c         | 1665 +++++++++
 b/drivers/isdn/i4l/isdn_ppp.c             |  331 -
 b/drivers/isdn/i4l/isdn_ppp.h             |   14 
 b/drivers/isdn/i4l/isdn_tty.c             |    6 
 b/drivers/isdn/pcbit/drv.c                |    4 
 b/drivers/isdn/pcbit/layer2.c             |    5 
 b/drivers/isdn/pcbit/pcbit.h              |    4 
 b/drivers/isdn/tpam/tpam.h                |    6 
 b/drivers/isdn/tpam/tpam_main.c           |    6 
 b/drivers/isdn/tpam/tpam_queues.c         |   14 
 b/drivers/md/md.c                         |    7 
 b/drivers/media/radio/radio-sf16fmi.c     |   11 
 b/drivers/media/video/cpia_pp.c           |    7 
 b/drivers/message/fusion/Makefile         |    2 
 b/drivers/message/fusion/mptlan.c         |   12 
 b/drivers/message/fusion/mptlan.h         |    2 
 b/drivers/message/fusion/mptscsih.c       |   18 
 b/drivers/message/fusion/mptscsih.h       |    5 
 b/drivers/message/i2o/i2o_block.c         |   60 
 b/drivers/message/i2o/i2o_lan.c           |   20 
 b/drivers/message/i2o/i2o_lan.h           |    2 
 b/drivers/mtd/ftl.c                       |    9 
 b/drivers/mtd/maps/Config.help            |    8 
 b/drivers/mtd/maps/Config.in              |    1 
 b/drivers/mtd/maps/Makefile               |    1 
 b/drivers/mtd/maps/scx200_docflash.c      |  268 +
 b/drivers/mtd/mtdblock.c                  |   45 
 b/drivers/mtd/mtdblock_ro.c               |   36 
 b/drivers/mtd/nftlcore.c                  |    9 
 b/drivers/net/Config.in                   |    6 
 b/drivers/net/aironet4500.h               |    8 
 b/drivers/net/aironet4500_card.c          |   43 
 b/drivers/net/aironet4500_core.c          |   36 
 b/drivers/net/atp.c                       |   23 
 b/drivers/net/cs89x0.c                    |    6 
 b/drivers/net/e1000/e1000.h               |    4 
 b/drivers/net/e1000/e1000_main.c          |    4 
 b/drivers/net/eql.c                       | 1003 +----
 b/drivers/net/hamachi.c                   |   63 
 b/drivers/net/hamradio/baycom_epp.c       |   24 
 b/drivers/net/hamradio/dmascc.c           |   11 
 b/drivers/net/hp100.c                     |    4 
 b/drivers/net/natsemi.c                   |  760 ++--
 b/drivers/net/ns83820.c                   |    8 
 b/drivers/net/plip.c                      |   56 
 b/drivers/net/sk98lin/Makefile            |    2 
 b/drivers/net/skfp/Makefile               |    2 
 b/drivers/net/sungem.c                    |   26 
 b/drivers/net/sungem.h                    |    4 
 b/drivers/net/tlan.c                      |    9 
 b/drivers/net/tlan.h                      |    2 
 b/drivers/net/tulip/de4x5.c               |    4 
 b/drivers/net/wan/lmc/lmc_main.c          |   18 
 b/drivers/net/wan/lmc/lmc_proto.c         |    2 
 b/drivers/net/wan/pc300_tty.c             |   35 
 b/drivers/net/wan/sdla_chdlc.c            |   65 
 b/drivers/net/wan/sdla_ppp.c              |   21 
 b/drivers/net/wireless/airo.c             |   36 
 b/drivers/net/wireless/orinoco.c          |   12 
 b/drivers/net/wireless/orinoco.h          |    4 
 b/drivers/pci/Makefile                    |    2 
 b/drivers/pci/compat.c                    |   42 
 b/drivers/pci/pci.ids                     |    7 
 b/drivers/pci/pool.c                      |   53 
 b/drivers/pci/syscall.c                   |    2 
 b/drivers/pcmcia/cistpl.c                 |    4 
 b/drivers/pcmcia/cs.c                     |    8 
 b/drivers/pcmcia/cs_internal.h            |    6 
 b/drivers/pcmcia/ds.c                     |    2 
 b/drivers/pcmcia/hd64465_ss.c             |   10 
 b/drivers/pcmcia/i82092.c                 |    8 
 b/drivers/pcmcia/i82365.c                 |    8 
 b/drivers/pcmcia/pci_socket.c             |    2 
 b/drivers/pcmcia/pci_socket.h             |    2 
 b/drivers/pcmcia/rsrc_mgr.c               |  119 
 b/drivers/pcmcia/sa1100_generic.c         |   14 
 b/drivers/pcmcia/tcic.c                   |    8 
 b/drivers/pcmcia/yenta.c                  |   11 
 b/drivers/pnp/isapnp.c                    |    2 
 b/drivers/s390/Makefile                   |    5 
 b/drivers/s390/block/dasd.c               |  111 
 b/drivers/s390/block/dasd_devmap.c        |    9 
 b/drivers/s390/block/dasd_diag.c          |   41 
 b/drivers/s390/block/dasd_eckd.c          |   36 
 b/drivers/s390/block/dasd_fba.c           |    7 
 b/drivers/s390/block/dasd_genhd.c         |  197 -
 b/drivers/s390/block/dasd_int.h           |   22 
 b/drivers/s390/block/dasd_ioctl.c         |  125 
 b/drivers/s390/block/dasd_proc.c          |   13 
 b/drivers/s390/block/xpram.c              |   54 
 b/drivers/s390/char/con3215.c             |   64 
 b/drivers/s390/char/ctrlchar.c            |  101 
 b/drivers/s390/char/ctrlchar.h            |   13 
 b/drivers/s390/char/hwc.h                 |    5 
 b/drivers/s390/char/hwc_rw.c              |   71 
 b/drivers/s390/char/hwc_tty.c             |   19 
 b/drivers/s390/char/tubfs.c               |   10 
 b/drivers/s390/char/tubio.h               |    2 
 b/drivers/s390/char/tubtty.c              |   16 
 b/drivers/s390/cio/Makefile               |    3 
 b/drivers/s390/cio/airq.c                 |    6 
 b/drivers/s390/cio/blacklist.c            |    8 
 b/drivers/s390/cio/chsc.c                 |  126 
 b/drivers/s390/cio/chsc.h                 |    2 
 b/drivers/s390/cio/cio.c                  |  280 -
 b/drivers/s390/cio/cio_debug.c            |    4 
 b/drivers/s390/cio/cio_debug.h            |    8 
 b/drivers/s390/cio/ioinfo.c               |   24 
 b/drivers/s390/cio/misc.c                 |    4 
 b/drivers/s390/cio/proc.c                 |    8 
 b/drivers/s390/cio/requestirq.c           |   59 
 b/drivers/s390/cio/s390io.c               |  572 +--
 b/drivers/s390/misc/chandev.c             |    5 
 b/drivers/s390/net/ctcmain.c              |    7 
 b/drivers/s390/net/ctctty.c               |   78 
 b/drivers/s390/net/iucv.c                 |   41 
 b/drivers/s390/net/lcs.c                  |    1 
 b/drivers/s390/net/netiucv.c              |    2 
 b/drivers/s390/qdio.c                     |    5 
 b/drivers/s390/s390mach.c                 |   39 
 b/drivers/sbus/Makefile                   |    1 
 b/drivers/sbus/char/jsflash.c             |   23 
 b/drivers/sbus/sbus.c                     |    2 
 b/drivers/scsi/53c7,8xx.c                 |   13 
 b/drivers/scsi/Config.help                |   10 
 b/drivers/scsi/Config.in                  |    4 
 b/drivers/scsi/Makefile                   |    2 
 b/drivers/scsi/NCR5380.c                  |  196 -
 b/drivers/scsi/NCR5380.h                  |   12 
 b/drivers/scsi/NCR53c406a.c               |   41 
 b/drivers/scsi/aacraid/Makefile           |   10 
 b/drivers/scsi/aacraid/README             |   42 
 b/drivers/scsi/aacraid/TODO               |    4 
 b/drivers/scsi/aacraid/aachba.c           | 1661 +++++++++
 b/drivers/scsi/aacraid/aacraid.h          | 1400 ++++++++
 b/drivers/scsi/aacraid/commctrl.c         |  432 ++
 b/drivers/scsi/aacraid/comminit.c         |  341 +
 b/drivers/scsi/aacraid/commsup.c          |  948 +++++
 b/drivers/scsi/aacraid/dpcsup.c           |  201 +
 b/drivers/scsi/aacraid/linit.c            |  743 ++++
 b/drivers/scsi/aacraid/rx.c               |  409 ++
 b/drivers/scsi/aacraid/sa.c               |  396 ++
 b/drivers/scsi/aha152x.c                  |    7 
 b/drivers/scsi/aic7xxx_old.c              |    1 
 b/drivers/scsi/atari_NCR5380.c            |    9 
 b/drivers/scsi/g_NCR5380.c                |    6 
 b/drivers/scsi/g_NCR5380.h                |   14 
 b/drivers/scsi/hosts.c                    |    3 
 b/drivers/scsi/hosts.h                    |   28 
 b/drivers/scsi/imm.c                      |   14 
 b/drivers/scsi/inia100.c                  |    2 
 b/drivers/scsi/mac_NCR5380.c              |    9 
 b/drivers/scsi/megaraid.c                 |    2 
 b/drivers/scsi/nsp32.c                    | 3526 ++++++++++++++++++++
 b/drivers/scsi/nsp32.h                    |  429 ++
 b/drivers/scsi/nsp32_debug.c              |  262 +
 b/drivers/scsi/nsp32_io.h                 |  269 +
 b/drivers/scsi/oktagon_esp.c              |   10 
 b/drivers/scsi/ppa.c                      |    7 
 b/drivers/scsi/qla1280.c                  |   12 
 b/drivers/scsi/qla1280.h                  |    2 
 b/drivers/scsi/scsi.c                     |   30 
 b/drivers/scsi/scsi.h                     |    8 
 b/drivers/scsi/scsi_error.c               |    9 
 b/drivers/scsi/scsi_lib.c                 |   18 
 b/drivers/scsi/scsi_scan.c                |    4 
 b/drivers/scsi/sd.c                       |  175 -
 b/drivers/scsi/sd.h                       |    2 
 b/drivers/scsi/sg.c                       |   83 
 b/drivers/scsi/st.c                       |    8 
 b/drivers/scsi/sun3_NCR5380.c             |   12 
 b/drivers/scsi/sym53c8xx_2/Makefile       |    2 
 b/drivers/scsi/wd7000.c                   |  256 -
 b/drivers/scsi/wd7000.h                   |   22 
 b/drivers/serial/21285.c                  |    2 
 b/drivers/serial/8250.c                   |   56 
 b/drivers/serial/8250.h                   |    5 
 b/drivers/serial/8250_cs.c                |   10 
 b/drivers/serial/amba.c                   |    2 
 b/drivers/serial/sunsab.c                 |    2 
 b/drivers/serial/sunsu.c                  |    2 
 b/drivers/serial/sunzilog.c               |    2 
 b/drivers/telephony/ixj.c                 |   20 
 b/drivers/telephony/ixj.h                 |    2 
 b/drivers/telephony/ixj_pcmcia.c          |   10 
 b/drivers/usb/Makefile                    |    1 
 b/drivers/usb/class/bluetty.c             |    7 
 b/drivers/usb/class/cdc-acm.c             |    7 
 b/drivers/usb/core/buffer.c               |    4 
 b/drivers/usb/core/hub.c                  |    6 
 b/drivers/usb/core/hub.h                  |    4 
 b/drivers/usb/core/message.c              |   13 
 b/drivers/usb/core/usb.c                  |    2 
 b/drivers/usb/host/ehci-mem.c             |   12 
 b/drivers/usb/host/ohci-mem.c             |   13 
 b/drivers/usb/host/uhci-hcd.c             |    4 
 b/drivers/usb/input/usbkbd.c              |    4 
 b/drivers/usb/misc/Config.help            |    6 
 b/drivers/usb/misc/Config.in              |    1 
 b/drivers/usb/misc/Makefile               |    1 
 b/drivers/usb/misc/speedtouch.c           |   15 
 b/drivers/usb/misc/usbtest.c              |  570 +++
 b/drivers/usb/net/pegasus.h               |    2 
 b/drivers/usb/net/rtl8150.c               |   61 
 b/drivers/usb/net/usbnet.c                |   12 
 b/drivers/usb/serial/Makefile             |    9 
 b/drivers/usb/serial/console.c            |  266 +
 b/drivers/usb/serial/cyberjack.c          |    2 
 b/drivers/usb/serial/digi_acceleport.c    |   12 
 b/drivers/usb/serial/empeg.c              |    2 
 b/drivers/usb/serial/ftdi_sio.c           |    2 
 b/drivers/usb/serial/ipaq.c               |    2 
 b/drivers/usb/serial/ir-usb.c             |    2 
 b/drivers/usb/serial/keyspan.c            |    2 
 b/drivers/usb/serial/keyspan_pda.c        |   25 
 b/drivers/usb/serial/kl5kusb105.c         |    2 
 b/drivers/usb/serial/mct_u232.c           |    2 
 b/drivers/usb/serial/omninet.c            |    2 
 b/drivers/usb/serial/pl2303.c             |    2 
 b/drivers/usb/serial/usb-serial.c         | 1683 +++++++++
 b/drivers/usb/serial/usb-serial.h         |   17 
 b/drivers/usb/serial/visor.c              |    2 
 b/drivers/usb/serial/whiteheat.c          |    2 
 b/drivers/usb/storage/Makefile            |    2 
 b/drivers/usb/storage/transport.c         |    2 
 b/drivers/usb/usb-skeleton.c              |    2 
 b/drivers/video/Config.in                 |    1 
 b/drivers/video/Makefile                  |    1 
 b/drivers/video/font_mini_4x6.c           | 2158 ++++++++++++
 b/drivers/video/fonts.c                   |    4 
 b/drivers/video/sa1100fb.c                |   12 
 b/drivers/video/sa1100fb.h                |    2 
 b/drivers/zorro/Makefile                  |    2 
 b/drivers/zorro/zorro.c                   |    2 
 b/fs/Config.help                          |   21 
 b/fs/aio.c                                |   21 
 b/fs/block_dev.c                          |    4 
 b/fs/buffer.c                             |  157 
 b/fs/direct-io.c                          |  124 
 b/fs/ext2/inode.c                         |   13 
 b/fs/ext3/inode.c                         |   12 
 b/fs/fat/inode.c                          |    4 
 b/fs/fcntl.c                              |   46 
 b/fs/hpfs/alloc.c                         |   54 
 b/fs/hpfs/anode.c                         |   18 
 b/fs/hpfs/buffer.c                        |   12 
 b/fs/hpfs/dentry.c                        |    2 
 b/fs/hpfs/dir.c                           |   12 
 b/fs/hpfs/dnode.c                         |   34 
 b/fs/hpfs/hpfs_fn.h                       |   39 
 b/fs/hpfs/inode.c                         |   38 
 b/fs/hpfs/map.c                           |   24 
 b/fs/hpfs/name.c                          |    8 
 b/fs/hpfs/namei.c                         |    6 
 b/fs/hpfs/super.c                         |  148 
 b/fs/inode.c                              |    6 
 b/fs/jffs/inode-v23.c                     |    4 
 b/fs/jffs/intrep.c                        |    7 
 b/fs/jffs2/background.c                   |    7 
 b/fs/jffs2/fs.c                           |    2 
 b/fs/jffs2/wbuf.c                         |    2 
 b/fs/jfs/inode.c                          |    4 
 b/fs/jfs/jfs_txnmgr.c                     |    9 
 b/fs/mpage.c                              |   23 
 b/fs/ncpfs/inode.c                        |   10 
 b/fs/ncpfs/sock.c                         |    8 
 b/fs/nfs/Makefile                         |    1 
 b/fs/nfs/dir.c                            |    4 
 b/fs/nfs/direct.c                         |  259 +
 b/fs/nfs/file.c                           |    7 
 b/fs/nfs/inode.c                          |    4 
 b/fs/nfs/nfs2xdr.c                        |    2 
 b/fs/nfs/nfs3xdr.c                        |    2 
 b/fs/nfs/pagelist.c                       |   67 
 b/fs/nfs/read.c                           |    6 
 b/fs/nfs/write.c                          |   28 
 b/fs/partitions/ibm.c                     |   17 
 b/fs/pipe.c                               |  311 -
 b/fs/proc/proc_misc.c                     |   67 
 b/fs/reiserfs/journal.c                   |   29 
 b/fs/smbfs/inode.c                        |    4 
 b/fs/smbfs/sock.c                         |    2 
 b/fs/smbfs/symlink.c                      |    4 
 b/fs/vfat/namei.c                         |    6 
 b/fs/xfs/Makefile                         |   33 
 b/fs/xfs/linux/xfs_aops.c                 |    4 
 b/fs/xfs/pagebuf/page_buf.c               |  115 
 b/fs/xfs/pagebuf/page_buf.h               |    9 
 b/fs/xfs/xfs_log.c                        |    7 
 b/fs/xfs/xfs_log_priv.h                   |    4 
 b/fs/xfs/xfsidbg.c                        | 5230 ++++++++++++++++++++++++++++++
 b/include/asm-alpha/unistd.h              |   23 
 b/include/asm-arm/unistd.h                |   29 
 b/include/asm-cris/unistd.h               |   14 
 b/include/asm-i386/unistd.h               |    8 
 b/include/asm-ia64/unistd.h               |    8 
 b/include/asm-m68k/unistd.h               |    8 
 b/include/asm-mips/unistd.h               |    7 
 b/include/asm-mips64/unistd.h             |    7 
 b/include/asm-parisc/unistd.h             |   30 
 b/include/asm-ppc/unistd.h                |    4 
 b/include/asm-ppc64/unistd.h              |    8 
 b/include/asm-s390/bitops.h               |   10 
 b/include/asm-s390/checksum.h             |   40 
 b/include/asm-s390/dasd.h                 |    4 
 b/include/asm-s390/debug.h                |    6 
 b/include/asm-s390/hardirq.h              |  129 
 b/include/asm-s390/irq.h                  |   89 
 b/include/asm-s390/kmap_types.h           |   21 
 b/include/asm-s390/lowcore.h              |   48 
 b/include/asm-s390/param.h                |   10 
 b/include/asm-s390/pgalloc.h              |    2 
 b/include/asm-s390/pgtable.h              |    2 
 b/include/asm-s390/processor.h            |   22 
 b/include/asm-s390/ptrace.h               |   35 
 b/include/asm-s390/rwsem.h                |   68 
 b/include/asm-s390/s390io.h               |   33 
 b/include/asm-s390/smp.h                  |   17 
 b/include/asm-s390/softirq.h              |   31 
 b/include/asm-s390/spinlock.h             |    2 
 b/include/asm-s390/system.h               |  294 +
 b/include/asm-s390/thread_info.h          |    6 
 b/include/asm-s390/tlbflush.h             |    3 
 b/include/asm-s390/unistd.h               |   19 
 b/include/asm-s390x/bitops.h              |   21 
 b/include/asm-s390x/checksum.h            |   38 
 b/include/asm-s390x/dasd.h                |    4 
 b/include/asm-s390x/debug.h               |    6 
 b/include/asm-s390x/hardirq.h             |  118 
 b/include/asm-s390x/irq.h                 |   89 
 b/include/asm-s390x/kmap_types.h          |   21 
 b/include/asm-s390x/lowcore.h             |   47 
 b/include/asm-s390x/param.h               |   13 
 b/include/asm-s390x/pgalloc.h             |    2 
 b/include/asm-s390x/pgtable.h             |    2 
 b/include/asm-s390x/processor.h           |   22 
 b/include/asm-s390x/ptrace.h              |   33 
 b/include/asm-s390x/rwsem.h               |   68 
 b/include/asm-s390x/s390io.h              |   33 
 b/include/asm-s390x/setup.h               |    9 
 b/include/asm-s390x/smp.h                 |   17 
 b/include/asm-s390x/softirq.h             |   31 
 b/include/asm-s390x/spinlock.h            |   41 
 b/include/asm-s390x/system.h              |  306 +
 b/include/asm-s390x/thread_info.h         |    6 
 b/include/asm-s390x/tlbflush.h            |    3 
 b/include/asm-s390x/unistd.h              |   19 
 b/include/asm-sh/unistd.h                 |    7 
 b/include/asm-sparc/highmem.h             |   82 
 b/include/asm-sparc/unistd.h              |    8 
 b/include/asm-sparc64/checksum.h          |   14 
 b/include/asm-sparc64/delay.h             |    4 
 b/include/asm-sparc64/fpumacro.h          |    4 
 b/include/asm-sparc64/irq.h               |    6 
 b/include/asm-sparc64/page.h              |    2 
 b/include/asm-sparc64/pci.h               |    4 
 b/include/asm-sparc64/pgtable.h           |   10 
 b/include/asm-sparc64/psrcompat.h         |    4 
 b/include/asm-sparc64/pstate.h            |   28 
 b/include/asm-sparc64/sbus.h              |    4 
 b/include/asm-sparc64/siginfo.h           |    2 
 b/include/asm-sparc64/smp.h               |    4 
 b/include/asm-sparc64/spinlock.h          |    6 
 b/include/asm-sparc64/spitfire.h          |   86 
 b/include/asm-sparc64/system.h            |    8 
 b/include/asm-sparc64/uaccess.h           |    4 
 b/include/asm-sparc64/unistd.h            |    8 
 b/include/asm-sparc64/upa.h               |   16 
 b/include/asm-sparc64/visasm.h            |    2 
 b/include/asm-um/unistd.h                 |    5 
 b/include/asm-x86_64/unistd.h             |   23 
 b/include/linux/amifd.h                   |    2 
 b/include/linux/atalk.h                   |   14 
 b/include/linux/blkdev.h                  |    5 
 b/include/linux/buffer_head.h             |    4 
 b/include/linux/compatmac.h               |    2 
 b/include/linux/cyclades.h                |    2 
 b/include/linux/elevator.h                |    4 
 b/include/linux/ext3_fs.h                 |    1 
 b/include/linux/fs.h                      |   12 
 b/include/linux/hayesesp.h                |    4 
 b/include/linux/hpfs_fs_sb.h              |   27 
 b/include/linux/ide.h                     |  101 
 b/include/linux/if_eql.h                  |   55 
 b/include/linux/if_wanpipe_common.h       |    2 
 b/include/linux/isapnp.h                  |   12 
 b/include/linux/isdn.h                    |   90 
 b/include/linux/isdn_ppp.h                |   13 
 b/include/linux/isicom.h                  |    4 
 b/include/linux/istallion.h               |    2 
 b/include/linux/jffs2_fs_sb.h             |    4 
 b/include/linux/kbd_kern.h                |    2 
 b/include/linux/kernel_stat.h             |   11 
 b/include/linux/list.h                    |    5 
 b/include/linux/mm.h                      |   48 
 b/include/linux/mmzone.h                  |    4 
 b/include/linux/nbd.h                     |    2 
 b/include/linux/ncp_fs_sb.h               |    8 
 b/include/linux/netdevice.h               |    1 
 b/include/linux/nfs_fs.h                  |   15 
 b/include/linux/nfs_page.h                |    5 
 b/include/linux/nfs_xdr.h                 |   22 
 b/include/linux/page-flags.h              |   26 
 b/include/linux/pagemap.h                 |    3 
 b/include/linux/pagevec.h                 |    3 
 b/include/linux/pci.h                     |   29 
 b/include/linux/pci_ids.h                 |    6 
 b/include/linux/pipe_fs_i.h               |    2 
 b/include/linux/radix-tree.h              |    3 
 b/include/linux/reiserfs_fs.h             |    2 
 b/include/linux/reiserfs_fs_sb.h          |    2 
 b/include/linux/sched.h                   |    8 
 b/include/linux/sctp.h                    |   17 
 b/include/linux/scx200.h                  |   56 
 b/include/linux/scx200_gpio.h             |   98 
 b/include/linux/serial167.h               |    2 
 b/include/linux/serialP.h                 |    4 
 b/include/linux/serial_core.h             |    2 
 b/include/linux/shmem_fs.h                |    6 
 b/include/linux/stallion.h                |    2 
 b/include/linux/sunrpc/debug.h            |    2 
 b/include/linux/sunrpc/sched.h            |    1 
 b/include/linux/sunrpc/types.h            |    2 
 b/include/linux/suspend.h                 |    2 
 b/include/linux/swap.h                    |    2 
 b/include/linux/timer.h                   |   89 
 b/include/linux/tty.h                     |    8 
 b/include/linux/tty_flip.h                |    2 
 b/include/linux/types.h                   |    2 
 b/include/linux/wanpipe.h                 |    8 
 b/include/linux/workqueue.h               |   65 
 b/include/linux/zorro.h                   |    2 
 b/include/net/bluetooth/bluetooth.h       |   11 
 b/include/net/bluetooth/hci.h             |   36 
 b/include/net/bluetooth/hci_core.h        |   13 
 b/include/net/bluetooth/rfcomm.h          |  346 +
 b/include/net/ipx.h                       |   21 
 b/include/net/irda/ircomm_tty.h           |    2 
 b/include/net/llc_conn.h                  |    1 
 b/include/net/llc_mac.h                   |    2 
 b/include/net/llc_main.h                  |    3 
 b/include/net/llc_proc.h                  |   18 
 b/include/net/sctp/sctp.h                 |    8 
 b/include/net/sctp/sm.h                   |   11 
 b/include/net/sctp/structs.h              |   18 
 b/include/net/x25.h                       |   11 
 b/include/sound/ac97_codec.h              |  120 
 b/include/sound/ad1848.h                  |   16 
 b/include/sound/asound.h                  |    3 
 b/include/sound/cs4231.h                  |   23 
 b/include/sound/cs46xx.h                  |   16 
 b/include/sound/cs46xx_dsp_spos.h         |   25 
 b/include/sound/emu10k1.h                 |   16 
 b/include/sound/mixer_oss.h               |    8 
 b/include/sound/mpu401.h                  |    1 
 b/include/sound/opl3.h                    |    2 
 b/include/sound/pcm.h                     |    3 
 b/include/sound/pcm_sgbuf.h               |    7 
 b/include/sound/snd_wavefront.h           |    3 
 b/include/sound/sndmagic.h                |   10 
 b/include/sound/sscape_ioctl.h            |   19 
 b/include/sound/version.h                 |    4 
 b/include/video/font.h                    |    4 
 b/init/do_mounts.c                        |   60 
 b/init/main.c                             |   15 
 b/kernel/Makefile                         |    4 
 b/kernel/fork.c                           |    7 
 b/kernel/futex.c                          |  274 -
 b/kernel/kallsyms.c                       |    6 
 b/kernel/kmod.c                           |   15 
 b/kernel/ksyms.c                          |    9 
 b/kernel/sched.c                          |   11 
 b/kernel/signal.c                         |   53 
 b/kernel/suspend.c                        |   19 
 b/kernel/sys.c                            |    8 
 b/kernel/timer.c                          |  191 -
 b/kernel/workqueue.c                      |  389 ++
 b/lib/radix-tree.c                        |  109 
 b/mm/Makefile                             |    3 
 b/mm/filemap.c                            |  384 --
 b/mm/highmem.c                            |  134 
 b/mm/memory.c                             |    4 
 b/mm/mempool.c                            |   20 
 b/mm/mmap.c                               |    2 
 b/mm/mprotect.c                           |    4 
 b/mm/page-writeback.c                     |   55 
 b/mm/page_alloc.c                         |  143 
 b/mm/page_io.c                            |    4 
 b/mm/rmap.c                               |    4 
 b/mm/shmem.c                              | 1188 +++---
 b/mm/swap.c                               |   25 
 b/mm/swap_state.c                         |   92 
 b/mm/swapfile.c                           |   23 
 b/mm/truncate.c                           |  223 +
 b/mm/vmscan.c                             |  247 -
 b/net/8021q/vlan.c                        |    2 
 b/net/8021q/vlan_dev.c                    |    1 
 b/net/appletalk/Makefile                  |    2 
 b/net/appletalk/aarp.c                    |   22 
 b/net/appletalk/atalk_proc.c              |  319 +
 b/net/appletalk/ddp.c                     |  244 -
 b/net/appletalk/sysctl_net_atalk.c        |    7 
 b/net/bluetooth/Config.help               |    2 
 b/net/bluetooth/Config.in                 |    6 
 b/net/bluetooth/Makefile                  |   14 
 b/net/bluetooth/af_bluetooth.c            |   15 
 b/net/bluetooth/bnep/Config.help          |   21 
 b/net/bluetooth/bnep/Config.in            |    8 
 b/net/bluetooth/bnep/Makefile             |    9 
 b/net/bluetooth/bnep/bnep.h               |  185 +
 b/net/bluetooth/bnep/core.c               |  705 ++++
 b/net/bluetooth/bnep/crc32.c              |   59 
 b/net/bluetooth/bnep/crc32.h              |   10 
 b/net/bluetooth/bnep/netdev.c             |  250 +
 b/net/bluetooth/bnep/sock.c               |  231 +
 b/net/bluetooth/hci_conn.c                |    9 
 b/net/bluetooth/hci_core.c                |  111 
 b/net/bluetooth/hci_event.c               |   13 
 b/net/bluetooth/hci_sock.c                |   61 
 b/net/bluetooth/l2cap.c                   |  320 +
 b/net/bluetooth/lib.c                     |    2 
 b/net/bluetooth/rfcomm/Config.help        |   12 
 b/net/bluetooth/rfcomm/Config.in          |    7 
 b/net/bluetooth/rfcomm/Makefile           |   11 
 b/net/bluetooth/rfcomm/core.c             | 1717 +++++++++
 b/net/bluetooth/rfcomm/crc.c              |   71 
 b/net/bluetooth/rfcomm/sock.c             |  869 ++++
 b/net/bluetooth/rfcomm/tty.c              |  884 +++++
 b/net/bluetooth/sco.c                     |  130 
 b/net/bridge/br.c                         |   12 
 b/net/bridge/br_if.c                      |   15 
 b/net/bridge/br_stp.c                     |   15 
 b/net/core/dev.c                          |   22 
 b/net/core/profile.c                      |    4 
 b/net/econet/af_econet.c                  |   36 
 b/net/ethernet/eth.c                      |    8 
 b/net/ipv4/af_inet.c                      |   24 
 b/net/ipv4/devinet.c                      |   18 
 b/net/ipv4/igmp.c                         |    2 
 b/net/ipv4/inetpeer.c                     |    2 
 b/net/ipv4/ip_gre.c                       |   34 
 b/net/ipv4/ip_output.c                    |   18 
 b/net/ipv4/ipconfig.c                     |   24 
 b/net/ipv4/ipip.c                         |   14 
 b/net/ipv4/ipmr.c                         |    4 
 b/net/ipv4/netfilter/ip_nat_core.c        |    2 
 b/net/ipv4/netfilter/ip_nat_snmp_basic.c  |    4 
 b/net/ipv4/netfilter/ip_nat_standalone.c  |    4 
 b/net/ipv4/route.c                        |    8 
 b/net/ipv4/tcp_diag.c                     |    2 
 b/net/ipv4/tcp_input.c                    |    8 
 b/net/ipv4/tcp_ipv4.c                     |    4 
 b/net/ipv4/tcp_minisocks.c                |    4 
 b/net/ipv6/addrconf.c                     |   36 
 b/net/ipv6/af_inet6.c                     |   13 
 b/net/ipv6/datagram.c                     |    4 
 b/net/ipv6/icmp.c                         |   38 
 b/net/ipv6/ip6_fib.c                      |    2 
 b/net/ipv6/ip6_output.c                   |    6 
 b/net/ipv6/ipv6_sockglue.c                |    9 
 b/net/ipv6/mcast.c                        |    4 
 b/net/ipv6/netfilter/ip6_queue.c          |   10 
 b/net/ipv6/netfilter/ip6t_LOG.c           |    2 
 b/net/ipv6/reassembly.c                   |    4 
 b/net/ipv6/route.c                        |  127 
 b/net/ipv6/sit.c                          |   10 
 b/net/ipv6/udp.c                          |    4 
 b/net/ipx/ChangeLog                       |  101 
 b/net/ipx/Makefile                        |    2 
 b/net/ipx/af_ipx.c                        |  294 -
 b/net/ipx/ipx_proc.c                      |  388 ++
 b/net/irda/ircomm/ircomm_param.c          |    5 
 b/net/irda/ircomm/ircomm_tty.c            |   15 
 b/net/irda/ircomm/ircomm_tty_attach.c     |    3 
 b/net/llc/Makefile                        |    2 
 b/net/llc/af_llc.c                        |  112 
 b/net/llc/llc_c_ac.c                      |    2 
 b/net/llc/llc_conn.c                      |   81 
 b/net/llc/llc_if.c                        |    3 
 b/net/llc/llc_mac.c                       |   27 
 b/net/llc/llc_main.c                      |  118 
 b/net/llc/llc_pdu.c                       |    1 
 b/net/llc/llc_proc.c                      |  287 +
 b/net/llc/llc_sap.c                       |  154 
 b/net/netsyms.c                           |    1 
 b/net/packet/af_packet.c                  |   18 
 b/net/sched/sch_htb.c                     |   36 
 b/net/sctp/debug.c                        |    2 
 b/net/sctp/inqueue.c                      |   10 
 b/net/sctp/outqueue.c                     |    9 
 b/net/sctp/protocol.c                     |    6 
 b/net/sctp/sm_make_chunk.c                |  219 +
 b/net/sctp/sm_sideeffect.c                |   18 
 b/net/sctp/sm_statefuns.c                 |  418 +-
 b/net/sctp/socket.c                       |  155 
 b/net/socket.c                            |   35 
 b/net/wanrouter/af_wanpipe.c              |   18 
 b/net/wanrouter/wanproc.c                 |   26 
 b/net/x25/Makefile                        |    2 
 b/net/x25/af_x25.c                        |  146 
 b/net/x25/x25_proc.c                      |  252 +
 b/net/x25/x25_route.c                     |   65 
 b/scripts/Makefile                        |   22 
 b/scripts/fixdep.c                        |    2 
 b/scripts/lxdialog/Makefile               |    8 
 b/scripts/mkcompile_h                     |   10 
 b/sound/Config.in                         |   12 
 b/sound/Makefile                          |    2 
 b/sound/arm/sa11xx-uda1341.c              |    2 
 b/sound/core/Makefile                     |   21 
 b/sound/core/control.c                    |   26 
 b/sound/core/device.c                     |    1 
 b/sound/core/hwdep.c                      |   36 
 b/sound/core/info.c                       |   31 
 b/sound/core/info_oss.c                   |    1 
 b/sound/core/init.c                       |    1 
 b/sound/core/ioctl32/hwdep32.c            |    3 
 b/sound/core/ioctl32/ioctl32.c            |  120 
 b/sound/core/ioctl32/ioctl32.h            |   22 
 b/sound/core/ioctl32/pcm32.c              |  105 
 b/sound/core/ioctl32/rawmidi32.c          |    1 
 b/sound/core/ioctl32/seq32.c              |    1 
 b/sound/core/ioctl32/timer32.c            |    1 
 b/sound/core/isadma.c                     |    5 
 b/sound/core/memory.c                     |   40 
 b/sound/core/misc.c                       |    1 
 b/sound/core/oss/copy.c                   |    1 
 b/sound/core/oss/io.c                     |    1 
 b/sound/core/oss/linear.c                 |    1 
 b/sound/core/oss/mixer_oss.c              |  252 +
 b/sound/core/oss/mulaw.c                  |    1 
 b/sound/core/oss/pcm_oss.c                |   28 
 b/sound/core/oss/pcm_plugin.c             |    1 
 b/sound/core/oss/rate.c                   |    1 
 b/sound/core/oss/route.c                  |    1 
 b/sound/core/pcm.c                        |   17 
 b/sound/core/pcm_lib.c                    |    1 
 b/sound/core/pcm_memory.c                 |    1 
 b/sound/core/pcm_misc.c                   |   31 
 b/sound/core/pcm_native.c                 |   94 
 b/sound/core/pcm_sgbuf.c                  |   10 
 b/sound/core/pcm_timer.c                  |   13 
 b/sound/core/rawmidi.c                    |   36 
 b/sound/core/rtctimer.c                   |   12 
 b/sound/core/seq/Makefile                 |    3 
 b/sound/core/seq/oss/seq_oss.c            |   18 
 b/sound/core/seq/oss/seq_oss_event.c      |    1 
 b/sound/core/seq/oss/seq_oss_init.c       |    1 
 b/sound/core/seq/oss/seq_oss_ioctl.c      |    1 
 b/sound/core/seq/oss/seq_oss_midi.c       |    1 
 b/sound/core/seq/oss/seq_oss_readq.c      |    1 
 b/sound/core/seq/oss/seq_oss_rw.c         |    1 
 b/sound/core/seq/oss/seq_oss_synth.c      |    5 
 b/sound/core/seq/oss/seq_oss_timer.c      |    1 
 b/sound/core/seq/oss/seq_oss_writeq.c     |    1 
 b/sound/core/seq/seq_clientmgr.c          |   19 
 b/sound/core/seq/seq_clientmgr.h          |    3 
 b/sound/core/seq/seq_device.c             |    6 
 b/sound/core/seq/seq_fifo.c               |    1 
 b/sound/core/seq/seq_info.c               |    1 
 b/sound/core/seq/seq_lock.c               |    1 
 b/sound/core/seq/seq_memory.c             |    1 
 b/sound/core/seq/seq_ports.c              |    1 
 b/sound/core/seq/seq_prioq.c              |    1 
 b/sound/core/seq/seq_queue.c              |    1 
 b/sound/core/seq/seq_queue.h              |    3 
 b/sound/core/seq/seq_system.c             |    1 
 b/sound/core/seq/seq_timer.c              |    1 
 b/sound/core/seq/seq_virmidi.c            |   16 
 b/sound/core/sound.c                      |   12 
 b/sound/core/sound_oss.c                  |    1 
 b/sound/core/timer.c                      |   32 
 b/sound/core/wrappers.c                   |   58 
 b/sound/drivers/dummy.c                   |   94 
 b/sound/drivers/mpu401/Makefile           |    2 
 b/sound/drivers/mpu401/mpu401_uart.c      |   12 
 b/sound/drivers/mtpav.c                   |   12 
 b/sound/drivers/opl3/opl3_drums.c         |    1 
 b/sound/drivers/opl3/opl3_lib.c           |   24 
 b/sound/drivers/opl3/opl3_midi.c          |    1 
 b/sound/drivers/opl3/opl3_oss.c           |   13 
 b/sound/drivers/opl3/opl3_seq.c           |   14 
 b/sound/drivers/opl3/opl3_synth.c         |    1 
 b/sound/drivers/serial-u16550.c           |   14 
 b/sound/i2c/cs8427.c                      |   60 
 b/sound/i2c/i2c.c                         |   31 
 b/sound/i2c/l3/uda1341.c                  |   36 
 b/sound/i2c/tea6330t.c                    |   24 
 b/sound/isa/ad1816a/ad1816a_lib.c         |  125 
 b/sound/isa/ad1848/ad1848_lib.c           |  103 
 b/sound/isa/cmi8330.c                     |    5 
 b/sound/isa/cs423x/cs4231_lib.c           |  128 
 b/sound/isa/cs423x/cs4236_lib.c           |   76 
 b/sound/isa/dt019x.c                      |    2 
 b/sound/isa/es1688/es1688_lib.c           |  132 
 b/sound/isa/es18xx.c                      |  178 -
 b/sound/isa/gus/gus_dma.c                 |    1 
 b/sound/isa/gus/gus_dram.c                |    1 
 b/sound/isa/gus/gus_instr.c               |    1 
 b/sound/isa/gus/gus_io.c                  |    1 
 b/sound/isa/gus/gus_irq.c                 |    1 
 b/sound/isa/gus/gus_lfo.c                 |    1 
 b/sound/isa/gus/gus_main.c                |   12 
 b/sound/isa/gus/gus_mem.c                 |    1 
 b/sound/isa/gus/gus_mem_proc.c            |    5 
 b/sound/isa/gus/gus_mixer.c               |   17 
 b/sound/isa/gus/gus_pcm.c                 |  109 
 b/sound/isa/gus/gus_reset.c               |    1 
 b/sound/isa/gus/gus_sample.c              |    1 
 b/sound/isa/gus/gus_simple.c              |    1 
 b/sound/isa/gus/gus_timer.c               |   21 
 b/sound/isa/gus/gus_uart.c                |   15 
 b/sound/isa/gus/gus_volume.c              |    1 
 b/sound/isa/gus/interwave.c               |    6 
 b/sound/isa/opl3sa2.c                     |   18 
 b/sound/isa/opti9xx/opti92x-ad1848.c      |  120 
 b/sound/isa/sb/emu8000.c                  |   75 
 b/sound/isa/sb/emu8000_callback.c         |   29 
 b/sound/isa/sb/emu8000_patch.c            |    1 
 b/sound/isa/sb/emu8000_pcm.c              |   48 
 b/sound/isa/sb/es968.c                    |    2 
 b/sound/isa/sb/sb16_csp.c                 |   20 
 b/sound/isa/sb/sb16_main.c                |   94 
 b/sound/isa/sb/sb8_main.c                 |  112 
 b/sound/isa/sb/sb8_midi.c                 |   13 
 b/sound/isa/sb/sb_common.c                |    2 
 b/sound/isa/sb/sb_mixer.c                 |   51 
 b/sound/isa/sgalaxy.c                     |   21 
 b/sound/isa/wavefront/wavefront.c         |    5 
 b/sound/isa/wavefront/wavefront_fx.c      |    1 
 b/sound/isa/wavefront/wavefront_midi.c    |   13 
 b/sound/isa/wavefront/wavefront_synth.c   |   21 
 b/sound/oss/maestro3.c                    |   29 
 b/sound/pci/Config.help                   |    7 
 b/sound/pci/Config.in                     |    9 
 b/sound/pci/Makefile                      |   10 
 b/sound/pci/ac97/Makefile                 |    3 
 b/sound/pci/ac97/ac97_codec.c             |  410 +-
 b/sound/pci/ac97/ac97_id.h                |    1 
 b/sound/pci/ac97/ac97_patch.c             |   14 
 b/sound/pci/ac97/ac97_patch.h             |    1 
 b/sound/pci/ac97/ak4531_codec.c           |   26 
 b/sound/pci/ali5451/ali5451.c             |  114 
 b/sound/pci/als4000.c                     |   92 
 b/sound/pci/cmipci.c                      |  388 +-
 b/sound/pci/cs4281.c                      |  511 ++
 b/sound/pci/cs46xx/cs46xx_lib.c           |  783 +++-
 b/sound/pci/cs46xx/cs46xx_lib.h           |   22 
 b/sound/pci/cs46xx/dsp_spos.c             |  375 +-
 b/sound/pci/cs46xx/dsp_spos.h             |   85 
 b/sound/pci/cs46xx/dsp_spos_scb_lib.c     |  347 +
 b/sound/pci/emu10k1/emu10k1.c             |    8 
 b/sound/pci/emu10k1/emu10k1_callback.c    |   21 
 b/sound/pci/emu10k1/emu10k1_main.c        |   33 
 b/sound/pci/emu10k1/emu10k1_patch.c       |    1 
 b/sound/pci/emu10k1/emufx.c               |  128 
 b/sound/pci/emu10k1/emumixer.c            |   77 
 b/sound/pci/emu10k1/emumpu401.c           |   13 
 b/sound/pci/emu10k1/emupcm.c              |  151 
 b/sound/pci/emu10k1/emuproc.c             |    1 
 b/sound/pci/emu10k1/io.c                  |    1 
 b/sound/pci/emu10k1/irq.c                 |    1 
 b/sound/pci/emu10k1/memory.c              |    1 
 b/sound/pci/emu10k1/voice.c               |    1 
 b/sound/pci/ens1370.c                     |  242 -
 b/sound/pci/es1938.c                      |  170 
 b/sound/pci/es1968.c                      |  114 
 b/sound/pci/fm801.c                       |   80 
 b/sound/pci/ice1712/Makefile              |   13 
 b/sound/pci/ice1712/ak4524.c              |  324 +
 b/sound/pci/ice1712/delta.c               |  498 ++
 b/sound/pci/ice1712/delta.h               |  120 
 b/sound/pci/ice1712/ews.c                 |  929 +++++
 b/sound/pci/ice1712/ews.h                 |   81 
 b/sound/pci/ice1712/hoontech.c            |  223 +
 b/sound/pci/ice1712/hoontech.h            |   64 
 b/sound/pci/ice1712/ice1712.c             | 2477 ++++++++++++++
 b/sound/pci/ice1712/ice1712.h             |  388 ++
 b/sound/pci/intel8x0.c                    | 1964 ++++++++---
 b/sound/pci/korg1212/korg1212.c           |  166 
 b/sound/pci/maestro3.c                    |  193 -
 b/sound/pci/nm256/nm256.c                 |  102 
 b/sound/pci/rme32.c                       |  186 -
 b/sound/pci/rme96.c                       |  300 -
 b/sound/pci/rme9652/hammerfall_mem.c      |    7 
 b/sound/pci/rme9652/hdsp.c                |  244 -
 b/sound/pci/rme9652/rme9652.c             |  222 -
 b/sound/pci/sonicvibes.c                  |  116 
 b/sound/pci/trident/trident.c             |   12 
 b/sound/pci/trident/trident_main.c        |  315 -
 b/sound/pci/trident/trident_memory.c      |    1 
 b/sound/pci/via82xx.c                     | 1379 +++++++
 b/sound/pci/ymfpci/ymfpci.c               |   12 
 b/sound/pci/ymfpci/ymfpci_main.c          |  225 -
 b/sound/ppc/awacs.c                       |   77 
 b/sound/ppc/burgundy.c                    |   14 
 b/sound/ppc/daca.c                        |    8 
 b/sound/ppc/keywest.c                     |   12 
 b/sound/ppc/pmac.c                        |  117 
 b/sound/ppc/pmac.h                        |    3 
 b/sound/ppc/powermac.c                    |    6 
 b/sound/ppc/tumbler.c                     |  309 +
 b/sound/ppc/tumbler_volume.h              |   66 
 b/sound/sound_core.c                      |   19 
 b/sound/synth/emux/emux_effect.c          |    1 
 b/sound/synth/emux/emux_nrpn.c            |    1 
 b/sound/synth/emux/emux_oss.c             |   13 
 b/sound/synth/emux/emux_proc.c            |    1 
 b/sound/synth/emux/emux_seq.c             |    1 
 b/sound/synth/emux/emux_synth.c           |    1 
 b/sound/synth/emux/soundfont.c            |    1 
 b/sound/usb/Config.help                   |    4 
 b/sound/usb/Config.in                     |    8 
 b/sound/usb/Makefile                      |   16 
 b/sound/usb/usbaudio.c                    | 2265 ++++++++++++
 b/sound/usb/usbaudio.h                    |  218 +
 b/sound/usb/usbmidi.c                     | 1197 ++++++
 b/sound/usb/usbmixer.c                    | 1314 +++++++
 b/sound/usb/usbquirks.h                   |  492 ++
 drivers/usb/serial/usbserial.c            | 1951 -----------
 include/linux/tqueue.h                    |   55 
 kernel/context.c                          |  221 -
 sound/pci/ice1712.c                       | 4375 -------------------------
 sound/pci/via686.c                        | 1239 -------
 sound/pci/via8233.c                       | 1041 -----
 1185 files changed, 67807 insertions(+), 31349 deletions(-)

