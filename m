From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.40 released
Date: Tue, 1 Oct 2002 00:20:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200210010720.g917K4610996@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.40 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.40.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.40.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               604462           2717802
Full source                       36403521         162375680

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/lib/kbd.c                           |  279 --
 arch/arm/mach-sa1100/pcipool.h               |    8 
 arch/arm/mach-sa1100/sa1111.h                |   20 
 arch/um/link.ld.in                           |  143 -
 b/CREDITS                                    |    9 
 b/Documentation/Changes                      |    5 
 b/Documentation/DocBook/sis900.tmpl          |    6 
 b/Documentation/cpufreq                      |  361 +++
 b/Documentation/filesystems/isofs.txt        |    7 
 b/Documentation/i810_rng.txt                 |    1 
 b/Documentation/kernel-docs.txt              |    6 
 b/Documentation/networking/00-INDEX          |    4 
 b/Documentation/networking/ip-sysctl.txt     |   10 
 b/Documentation/s390/Debugging390.txt        |    2 
 b/Documentation/scsi-generic.txt             |    4 
 b/Documentation/scsi.txt                     |    2 
 b/Documentation/sound/alsa/serial-u16550.txt |    7 
 b/Documentation/sound/oss/PAS16              |    2 
 b/Documentation/sparc/README-2.5             |   46 
 b/Documentation/vm/hugetlbpage.txt           |   85 
 b/MAINTAINERS                                |   37 
 b/Makefile                                   |    8 
 b/Rules.make                                 |    9 
 b/arch/arm/Config.help                       |  286 --
 b/arch/arm/boot/Makefile                     |   13 
 b/arch/arm/boot/bootp/Makefile               |    3 
 b/arch/arm/boot/bootp/bootp.lds              |    8 
 b/arch/arm/boot/bootp/init.S                 |   21 
 b/arch/arm/boot/compressed/head.S            |   15 
 b/arch/arm/config.in                         |  269 --
 b/arch/arm/kernel/armksyms.c                 |    2 
 b/arch/arm/kernel/compat.c                   |    5 
 b/arch/arm/kernel/entry-armv.S               |   66 
 b/arch/arm/kernel/head.S                     |    4 
 b/arch/arm/kernel/init_task.c                |    2 
 b/arch/arm/kernel/irq.c                      |   35 
 b/arch/arm/kernel/plx90x0.c                  |   81 
 b/arch/arm/kernel/process.c                  |   19 
 b/arch/arm/kernel/ptrace.c                   |    6 
 b/arch/arm/kernel/ptrace.h                   |    2 
 b/arch/arm/kernel/setup.c                    |   43 
 b/arch/arm/kernel/signal.c                   |   31 
 b/arch/arm/kernel/sys_arm.c                  |   15 
 b/arch/arm/kernel/via82c505.c                |   76 
 b/arch/arm/lib/Makefile                      |    2 
 b/arch/arm/lib/findbit.S                     |   11 
 b/arch/arm/lib/strchr.S                      |    7 
 b/arch/arm/mach-arc/Config.help              |   24 
 b/arch/arm/mach-arc/Config.in                |   15 
 b/arch/arm/mach-clps711x/Config.help         |   33 
 b/arch/arm/mach-clps711x/Config.in           |   31 
 b/arch/arm/mach-clps711x/Makefile            |    3 
 b/arch/arm/mach-clps711x/ceiva.c             |   61 
 b/arch/arm/mach-clps711x/p720t-leds.c        |    2 
 b/arch/arm/mach-epxa10db/Config.help         |    8 
 b/arch/arm/mach-epxa10db/Config.in           |   10 
 b/arch/arm/mach-footbridge/Config.help       |   40 
 b/arch/arm/mach-footbridge/Config.in         |    9 
 b/arch/arm/mach-footbridge/dc21285.c         |  115 -
 b/arch/arm/mach-ftvpci/leds.c                |    9 
 b/arch/arm/mach-integrator/Makefile          |    2 
 b/arch/arm/mach-integrator/arch.c            |   28 
 b/arch/arm/mach-integrator/cpu.c             |    2 
 b/arch/arm/mach-integrator/pci_v3.c          |  129 -
 b/arch/arm/mach-iop310/Config.help           |    5 
 b/arch/arm/mach-iop310/Config.in             |   10 
 b/arch/arm/mach-iop310/iop310-pci.c          |  270 --
 b/arch/arm/mach-pxa/Config.in                |    6 
 b/arch/arm/mach-pxa/dma.c                    |    8 
 b/arch/arm/mach-pxa/idp.c                    |   16 
 b/arch/arm/mach-rpc/riscpc.c                 |    6 
 b/arch/arm/mach-sa1100/Config.help           |  189 +
 b/arch/arm/mach-sa1100/Config.in             |   58 
 b/arch/arm/mach-sa1100/Makefile              |    8 
 b/arch/arm/mach-sa1100/adsbitsy.c            |    5 
 b/arch/arm/mach-sa1100/assabet.c             |   20 
 b/arch/arm/mach-sa1100/badge4.c              |   14 
 b/arch/arm/mach-sa1100/cpu-sa1100.c          |   88 
 b/arch/arm/mach-sa1100/cpu-sa1110.c          |   52 
 b/arch/arm/mach-sa1100/dma.c                 |   18 
 b/arch/arm/mach-sa1100/flexanet.c            |    8 
 b/arch/arm/mach-sa1100/freebird.c            |    2 
 b/arch/arm/mach-sa1100/generic.c             |   25 
 b/arch/arm/mach-sa1100/generic.h             |    6 
 b/arch/arm/mach-sa1100/graphicsmaster.c      |    5 
 b/arch/arm/mach-sa1100/h3600.c               |  792 +++++--
 b/arch/arm/mach-sa1100/huw_webpanel.c        |    2 
 b/arch/arm/mach-sa1100/jornada720.c          |    9 
 b/arch/arm/mach-sa1100/leds.c                |    2 
 b/arch/arm/mach-sa1100/neponset.c            |   60 
 b/arch/arm/mach-sa1100/omnimeter.c           |    2 
 b/arch/arm/mach-sa1100/pcipool.c             |   83 
 b/arch/arm/mach-sa1100/pfs168.c              |    5 
 b/arch/arm/mach-sa1100/pm.c                  |   23 
 b/arch/arm/mach-sa1100/sa1111-pcibuf.c       |  468 ++--
 b/arch/arm/mach-sa1100/sa1111.c              |  728 +++++--
 b/arch/arm/mach-sa1100/simpad.c              |    2 
 b/arch/arm/mach-sa1100/stork.c               |   27 
 b/arch/arm/mach-sa1100/system3.c             |    5 
 b/arch/arm/mach-sa1100/xp860.c               |    2 
 b/arch/arm/mach-sa1100/yopy.c                |    2 
 b/arch/arm/mm/abort-lv4t.S                   |    6 
 b/arch/arm/mm/alignment.c                    |    2 
 b/arch/arm/mm/consistent.c                   |    3 
 b/arch/arm/mm/fault-common.c                 |    4 
 b/arch/arm/mm/init.c                         |   26 
 b/arch/arm/mm/minicache.c                    |    2 
 b/arch/arm/nwfpe/entry.S                     |    7 
 b/arch/arm/nwfpe/entry26.S                   |    1 
 b/arch/arm/nwfpe/fpa11.c                     |   18 
 b/arch/arm/nwfpe/fpa11.h                     |    2 
 b/arch/arm/nwfpe/fpmodule.c                  |    9 
 b/arch/arm/nwfpe/fpopcode.h                  |    4 
 b/arch/arm/tools/mach-types                  |   30 
 b/arch/i386/Config.help                      |   79 
 b/arch/i386/config.in                        |   17 
 b/arch/i386/kernel/cpu/Makefile              |    3 
 b/arch/i386/kernel/cpu/cpufreq/Makefile      |    8 
 b/arch/i386/kernel/cpu/cpufreq/elanfreq.c    |  336 +++
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c    |  820 ++++++++
 b/arch/i386/kernel/cpu/cpufreq/longrun.c     |  283 ++
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c |  285 ++
 b/arch/i386/kernel/cpu/cpufreq/powernow-k6.c |  294 ++
 b/arch/i386/kernel/cpu/cpufreq/speedstep.c   |  728 +++++++
 b/arch/i386/kernel/i386_ksyms.c              |    2 
 b/arch/i386/kernel/irq.c                     |    7 
 b/arch/i386/kernel/mpparse.c                 |    2 
 b/arch/i386/kernel/signal.c                  |   20 
 b/arch/i386/kernel/time.c                    |   50 
 b/arch/i386/kernel/vm86.c                    |    4 
 b/arch/i386/mm/fault.c                       |    6 
 b/arch/m68k/atari/stram.c                    |    2 
 b/arch/mips/kernel/time.c                    |    2 
 b/arch/ppc/Makefile                          |    3 
 b/arch/sparc/Makefile                        |   13 
 b/arch/sparc/boot/Makefile                   |   22 
 b/arch/sparc/config.in                       |   11 
 b/arch/sparc/defconfig                       |   82 
 b/arch/sparc/kernel/irq.c                    |    2 
 b/arch/sparc/kernel/signal.c                 |   32 
 b/arch/sparc/kernel/sun4c_irq.c              |    2 
 b/arch/sparc/kernel/sun4m_irq.c              |    2 
 b/arch/sparc/kernel/sys_sunos.c              |    8 
 b/arch/sparc/kernel/time.c                   |    2 
 b/arch/sparc/mm/srmmu.c                      |   12 
 b/arch/sparc64/config.in                     |    1 
 b/arch/sparc64/defconfig                     |   67 
 b/arch/sparc64/kernel/Makefile               |    2 
 b/arch/sparc64/kernel/ebus.c                 |  215 ++
 b/arch/sparc64/kernel/irq.c                  |    4 
 b/arch/sparc64/kernel/pci_schizo.c           |   10 
 b/arch/sparc64/kernel/power.c                |    4 
 b/arch/sparc64/kernel/signal.c               |   24 
 b/arch/sparc64/kernel/signal32.c             |   32 
 b/arch/sparc64/kernel/sys_sparc32.c          |    8 
 b/arch/sparc64/kernel/sys_sunos32.c          |    8 
 b/arch/sparc64/kernel/time.c                 |    5 
 b/arch/sparc64/solaris/signal.c              |   16 
 b/arch/um/Makefile                           |   29 
 b/arch/um/Makefile-os-Linux                  |    3 
 b/arch/um/config.in                          |    1 
 b/arch/um/defconfig                          |    4 
 b/arch/um/drivers/ubd_kern.c                 |  194 -
 b/arch/um/include/mem_user.h                 |    7 
 b/arch/um/include/user_util.h                |    1 
 b/arch/um/kernel/Makefile                    |    1 
 b/arch/um/kernel/mem.c                       |  320 ++-
 b/arch/um/kernel/mem_user.c                  |   19 
 b/arch/um/kernel/process_kern.c              |    6 
 b/arch/um/kernel/reboot.c                    |    2 
 b/arch/um/kernel/sys_call_table.c            |   16 
 b/arch/um/kernel/tlb.c                       |    5 
 b/arch/um/kernel/um_arch.c                   |   29 
 b/arch/um/uml.lds.S                          |  143 +
 b/drivers/acorn/block/fd1772.c               |    4 
 b/drivers/acorn/block/mfmhd.c                |    6 
 b/drivers/atm/ambassador.c                   |    2 
 b/drivers/atm/atmtcp.c                       |    2 
 b/drivers/atm/eni.c                          |    2 
 b/drivers/atm/fore200e.c                     |    3 
 b/drivers/atm/horizon.c                      |    2 
 b/drivers/atm/idt77252.c                     |    8 
 b/drivers/atm/lanai.c                        |    2 
 b/drivers/atm/nicstar.c                      |   10 
 b/drivers/atm/zatm.c                         |    2 
 b/drivers/base/hotplug.c                     |   40 
 b/drivers/block/DAC960.c                     |   14 
 b/drivers/block/acsi.c                       |    4 
 b/drivers/block/amiflop.c                    |    4 
 b/drivers/block/ataflop.c                    |    4 
 b/drivers/block/blkpg.c                      |   15 
 b/drivers/block/cciss.c                      |   18 
 b/drivers/block/cciss.h                      |    1 
 b/drivers/block/cpqarray.c                   |   25 
 b/drivers/block/floppy.c                     |   42 
 b/drivers/block/genhd.c                      |   61 
 b/drivers/block/ll_rw_blk.c                  |   39 
 b/drivers/block/loop.c                       |   57 
 b/drivers/block/nbd.c                        |   12 
 b/drivers/block/paride/pcd.c                 |    2 
 b/drivers/block/paride/pd.c                  |    2 
 b/drivers/block/paride/pf.c                  |    2 
 b/drivers/block/ps2esdi.c                    |    4 
 b/drivers/block/rd.c                         |    6 
 b/drivers/block/swim3.c                      |    4 
 b/drivers/block/swim_iop.c                   |    4 
 b/drivers/block/umem.c                       |    4 
 b/drivers/block/xd.c                         |    4 
 b/drivers/block/z2ram.c                      |    2 
 b/drivers/bluetooth/bt3c_cs.c                |    8 
 b/drivers/bluetooth/hci_usb.c                |    8 
 b/drivers/cdrom/aztcd.c                      |    2 
 b/drivers/cdrom/cdu31a.c                     |    2 
 b/drivers/cdrom/cm206.c                      |    2 
 b/drivers/cdrom/gscd.c                       |    2 
 b/drivers/cdrom/mcd.c                        |    2 
 b/drivers/cdrom/mcdx.c                       |    2 
 b/drivers/cdrom/optcd.c                      |    2 
 b/drivers/cdrom/sbpcd.c                      |    2 
 b/drivers/cdrom/sjcd.c                       |    2 
 b/drivers/cdrom/sonycd535.c                  |    2 
 b/drivers/char/drm/radeon_irq.c              |    3 
 b/drivers/char/ftape/lowlevel/fdc-io.c       |    8 
 b/drivers/char/i810-tco.c                    |  164 -
 b/drivers/char/i810-tco.h                    |   17 
 b/drivers/char/random.c                      |    5 
 b/drivers/char/toshiba.c                     |    9 
 b/drivers/char/tty_io.c                      |    6 
 b/drivers/ide/Config.help                    |    2 
 b/drivers/ide/ide-probe.c                    |   48 
 b/drivers/ide/ide.c                          |   11 
 b/drivers/ide/legacy/hd.c                    |    6 
 b/drivers/ide/setup-pci.c                    |   11 
 b/drivers/input/keyboard/sunkbd.c            |    3 
 b/drivers/input/serio/sa1111ps2.c            |  275 +-
 b/drivers/isdn/i4l/Makefile                  |    3 
 b/drivers/isdn/i4l/isdn_ciscohdlck.c         |  406 +++
 b/drivers/isdn/i4l/isdn_ciscohdlck.h         |   16 
 b/drivers/isdn/i4l/isdn_common.c             |   20 
 b/drivers/isdn/i4l/isdn_common.h             |    4 
 b/drivers/isdn/i4l/isdn_concap.c             |  150 +
 b/drivers/isdn/i4l/isdn_concap.h             |   17 
 b/drivers/isdn/i4l/isdn_net.c                | 2747 +++++++++------------------
 b/drivers/isdn/i4l/isdn_net.h                |   34 
 b/drivers/isdn/i4l/isdn_ppp.c                |  343 +--
 b/drivers/isdn/i4l/isdn_ppp.h                |   23 
 b/drivers/macintosh/adb.c                    |    4 
 b/drivers/md/md.c                            |   16 
 b/drivers/md/raid5.c                         |    2 
 b/drivers/media/video/saa5249.c              |    8 
 b/drivers/message/i2o/i2o_block.c            |    6 
 b/drivers/mtd/devices/blkmtd.c               |    4 
 b/drivers/mtd/ftl.c                          |   10 
 b/drivers/mtd/mtdblock.c                     |    8 
 b/drivers/mtd/mtdblock_ro.c                  |    4 
 b/drivers/mtd/nand/nand_ecc.c                |    2 
 b/drivers/mtd/nftlcore.c                     |   10 
 b/drivers/net/3c505.c                        |    2 
 b/drivers/net/3c509.c                        |    8 
 b/drivers/net/8139cp.c                       |   48 
 b/drivers/net/8139too.c                      |   77 
 b/drivers/net/Makefile                       |    6 
 b/drivers/net/acenic.h                       |    2 
 b/drivers/net/arcnet/arcnet.c                |    4 
 b/drivers/net/at1700.c                       |    2 
 b/drivers/net/eepro100.c                     |    3 
 b/drivers/net/epic100.c                      |   81 
 b/drivers/net/ethertap.c                     |    6 
 b/drivers/net/fealnx.c                       |   35 
 b/drivers/net/hamachi.c                      |  128 -
 b/drivers/net/hamradio/scc.c                 |    2 
 b/drivers/net/mii.c                          |  117 +
 b/drivers/net/ni65.c                         |    2 
 b/drivers/net/pcmcia/aironet4500_cs.c        |    2 
 b/drivers/net/sis900.c                       |   55 
 b/drivers/net/sis900.h                       |    6 
 b/drivers/net/sk98lin/Makefile               |    8 
 b/drivers/net/skfp/Makefile                  |    5 
 b/drivers/net/skfp/skfddi.c                  |    1 
 b/drivers/net/starfire.c                     |  216 --
 b/drivers/net/sundance.c                     |  118 -
 b/drivers/net/tc35815.c                      |    2 
 b/drivers/net/tlan.c                         |    7 
 b/drivers/net/tokenring/olympic.c            |    2 
 b/drivers/net/tulip/winbond-840.c            |    4 
 b/drivers/net/via-rhine.c                    |   57 
 b/drivers/net/wan/lapbether.c                |  303 +-
 b/drivers/net/wan/lmc/Makefile               |    3 
 b/drivers/net/wan/lmc/lmc_var.h              |    2 
 b/drivers/net/wireless/airo.c                |  334 ++-
 b/drivers/net/wireless/airport.c             |    4 
 b/drivers/net/wireless/hermes.h              |   12 
 b/drivers/net/wireless/orinoco.c             |   83 
 b/drivers/net/wireless/orinoco.h             |    5 
 b/drivers/net/wireless/orinoco_cs.c          |    5 
 b/drivers/net/wireless/orinoco_pci.c         |   88 
 b/drivers/net/wireless/orinoco_plx.c         |    4 
 b/drivers/pci/pool.c                         |    6 
 b/drivers/pci/quirks.c                       |    2 
 b/drivers/pcmcia/Config.in                   |    1 
 b/drivers/pcmcia/Makefile                    |   20 
 b/drivers/pcmcia/sa1100_adsbitsy.c           |    1 
 b/drivers/pcmcia/sa1100_badge4.c             |    1 
 b/drivers/pcmcia/sa1100_generic.c            |  119 -
 b/drivers/pcmcia/sa1100_graphicsmaster.c     |    1 
 b/drivers/pcmcia/sa1100_jornada720.c         |    1 
 b/drivers/pcmcia/sa1100_neponset.c           |   68 
 b/drivers/pcmcia/sa1100_pfs168.c             |    3 
 b/drivers/pcmcia/sa1100_system3.c            |    1 
 b/drivers/pcmcia/sa1100_xp860.c              |    1 
 b/drivers/pcmcia/sa1111_generic.c            |  162 +
 b/drivers/pnp/isapnp.c                       |    4 
 b/drivers/s390/block/dasd.c                  |    2 
 b/drivers/s390/block/dasd_genhd.c            |    4 
 b/drivers/s390/block/dasd_proc.c             |    2 
 b/drivers/s390/block/xpram.c                 |    4 
 b/drivers/sbus/char/jsflash.c                |    4 
 b/drivers/scsi/53c700.c                      |    1 
 b/drivers/scsi/hosts.c                       |   42 
 b/drivers/scsi/hosts.h                       |    7 
 b/drivers/scsi/scsi.c                        |   59 
 b/drivers/scsi/scsi.h                        |   24 
 b/drivers/scsi/scsi_error.c                  | 2612 +++++++++++--------------
 b/drivers/scsi/scsi_merge.c                  |    2 
 b/drivers/scsi/sd.c                          |   25 
 b/drivers/scsi/sg.c                          |   26 
 b/drivers/scsi/sr.c                          |    9 
 b/drivers/scsi/st.c                          |  115 -
 b/drivers/scsi/sym53c8xx_2/Makefile          |    2 
 b/drivers/tc/lk201-map.map                   |    4 
 b/drivers/tc/lk201-remap.c                   |    8 
 b/drivers/tc/zs.h                            |    4 
 b/drivers/usb/class/bluetty.c                |    4 
 b/drivers/usb/class/cdc-acm.c                |    3 
 b/drivers/usb/core/Makefile                  |    2 
 b/drivers/usb/core/devio.c                   |   36 
 b/drivers/usb/core/driverfs.c                |  177 +
 b/drivers/usb/core/hcd.c                     |   24 
 b/drivers/usb/core/hub.c                     |    7 
 b/drivers/usb/core/message.c                 |  327 +++
 b/drivers/usb/core/urb.c                     |   31 
 b/drivers/usb/core/usb.c                     |  110 -
 b/drivers/usb/core/usb.h                     |    5 
 b/drivers/usb/host/ehci-hcd.c                |    2 
 b/drivers/usb/host/ehci-q.c                  |   47 
 b/drivers/usb/host/hc_sl811.c                |    3 
 b/drivers/usb/host/ohci-hcd.c                |    6 
 b/drivers/usb/host/ohci-mem.c                |    8 
 b/drivers/usb/host/ohci-q.c                  |    5 
 b/drivers/usb/host/ohci-sa1111.c             |  136 -
 b/drivers/usb/serial/cyberjack.c             |   14 
 b/drivers/usb/serial/empeg.c                 |    6 
 b/drivers/usb/serial/ftdi_sio.c              |    4 
 b/drivers/usb/serial/ipaq.c                  |    6 
 b/drivers/usb/serial/ir-usb.c                |    5 
 b/drivers/usb/serial/keyspan.c               |    6 
 b/drivers/usb/serial/kl5kusb105.c            |    5 
 b/drivers/usb/serial/mct_u232.c              |    3 
 b/drivers/usb/serial/omninet.c               |    5 
 b/drivers/usb/serial/pl2303.c                |    5 
 b/drivers/usb/serial/usbserial.c             |    5 
 b/drivers/usb/serial/visor.c                 |   11 
 b/drivers/usb/serial/visor.h                 |    1 
 b/drivers/usb/serial/whiteheat.c             |    5 
 b/drivers/usb/storage/transport.c            |    2 
 b/drivers/usb/storage/usb.c                  |    4 
 b/drivers/video/matrox/Makefile              |    2 
 b/drivers/video/sa1100fb.c                   | 1083 +++-------
 b/drivers/video/sa1100fb.h                   |    3 
 b/fs/autofs/waitq.c                          |   12 
 b/fs/autofs4/waitq.c                         |   12 
 b/fs/bfs/dir.c                               |   16 
 b/fs/bfs/file.c                              |   22 
 b/fs/bfs/inode.c                             |   26 
 b/fs/block_dev.c                             |   47 
 b/fs/cramfs/inode.c                          |   22 
 b/fs/devfs/base.c                            |    1 
 b/fs/devpts/inode.c                          |   14 
 b/fs/driverfs/inode.c                        |    1 
 b/fs/efs/dir.c                               |    6 
 b/fs/efs/inode.c                             |    6 
 b/fs/efs/super.c                             |   20 
 b/fs/efs/symlink.c                           |    2 
 b/fs/exec.c                                  |   18 
 b/fs/exportfs/expfs.c                        |   10 
 b/fs/file_table.c                            |    3 
 b/fs/isofs/compress.c                        |    2 
 b/fs/isofs/dir.c                             |    6 
 b/fs/isofs/inode.c                           |   42 
 b/fs/isofs/rock.c                            |    2 
 b/fs/jbd/journal.c                           |    4 
 b/fs/jffs/intrep.c                           |    8 
 b/fs/jffs2/background.c                      |   12 
 b/fs/jfs/jfs_logmgr.c                        |    6 
 b/fs/jfs/jfs_txnmgr.c                        |    8 
 b/fs/lockd/clntproc.c                        |   18 
 b/fs/lockd/svc.c                             |   12 
 b/fs/minix/dir.c                             |    6 
 b/fs/minix/file.c                            |   16 
 b/fs/minix/inode.c                           |   44 
 b/fs/minix/namei.c                           |   22 
 b/fs/ncpfs/sock.c                            |    8 
 b/fs/ncpfs/symlink.c                         |    4 
 b/fs/nfsd/nfssvc.c                           |    8 
 b/fs/nls/nls_cp1250.c                        |    2 
 b/fs/openpromfs/inode.c                      |   32 
 b/fs/partitions/check.c                      |   39 
 b/fs/partitions/sun.c                        |   22 
 b/fs/proc/array.c                            |    6 
 b/fs/proc/base.c                             |   56 
 b/fs/proc/generic.c                          |   18 
 b/fs/proc/inode.c                            |   12 
 b/fs/proc/kcore.c                            |    4 
 b/fs/proc/kmsg.c                             |    8 
 b/fs/proc/proc_misc.c                        |   69 
 b/fs/proc/root.c                             |   28 
 b/fs/ramfs/inode.c                           |   52 
 b/fs/reiserfs/journal.c                      |   69 
 b/fs/romfs/inode.c                           |   26 
 b/fs/smbfs/ChangeLog                         |    5 
 b/fs/smbfs/Makefile                          |    5 
 b/fs/smbfs/dir.c                             |   76 
 b/fs/smbfs/inode.c                           |   31 
 b/fs/smbfs/proc.c                            |  471 ++++
 b/fs/smbfs/proto.h                           |   14 
 b/fs/smbfs/request.c                         |    8 
 b/fs/smbfs/smbiod.c                          |   75 
 b/fs/smbfs/symlink.c                         |   68 
 b/fs/ufs/dir.c                               |    6 
 b/fs/ufs/file.c                              |   14 
 b/fs/ufs/inode.c                             |   12 
 b/fs/ufs/namei.c                             |   18 
 b/fs/ufs/super.c                             |   28 
 b/fs/ufs/symlink.c                           |    4 
 b/fs/umsdos/Makefile                         |    3 
 b/fs/vfat/namei.c                            |   10 
 b/fs/xfs/pagebuf/page_buf.c                  |    8 
 b/include/asm-alpha/mmzone.h                 |    9 
 b/include/asm-alpha/topology.h               |   20 
 b/include/asm-arm/arch-adifcc/memory.h       |    2 
 b/include/asm-arm/arch-anakin/memory.h       |    2 
 b/include/asm-arm/arch-arc/memory.h          |    2 
 b/include/asm-arm/arch-cl7500/memory.h       |    2 
 b/include/asm-arm/arch-clps711x/hardware.h   |   63 
 b/include/asm-arm/arch-clps711x/memory.h     |    8 
 b/include/asm-arm/arch-ebsa110/memory.h      |    2 
 b/include/asm-arm/arch-ebsa285/memory.h      |    2 
 b/include/asm-arm/arch-epxa10db/memory.h     |    2 
 b/include/asm-arm/arch-integrator/memory.h   |    2 
 b/include/asm-arm/arch-iop310/memory.h       |    2 
 b/include/asm-arm/arch-l7200/memory.h        |    2 
 b/include/asm-arm/arch-nexuspci/memory.h     |    2 
 b/include/asm-arm/arch-pxa/idp.h             |   71 
 b/include/asm-arm/arch-pxa/memory.h          |    1 
 b/include/asm-arm/arch-rpc/memory.h          |    2 
 b/include/asm-arm/arch-sa1100/h3600.h        |  104 -
 b/include/asm-arm/arch-sa1100/irqs.h         |   26 
 b/include/asm-arm/arch-shark/memory.h        |    2 
 b/include/asm-arm/arch-tbox/memory.h         |    2 
 b/include/asm-arm/elf.h                      |    1 
 b/include/asm-arm/hardware/sa1111.h          |  233 +-
 b/include/asm-arm/ide.h                      |   14 
 b/include/asm-arm/kmap_types.h               |   12 
 b/include/asm-arm/memory.h                   |    2 
 b/include/asm-arm/mmu_context.h              |    8 
 b/include/asm-arm/pci.h                      |   76 
 b/include/asm-arm/percpu.h                   |    6 
 b/include/asm-arm/proc-armv/elf.h            |   12 
 b/include/asm-arm/proc-armv/processor.h      |    4 
 b/include/asm-arm/processor.h                |    1 
 b/include/asm-arm/procinfo.h                 |    2 
 b/include/asm-arm/setup.h                    |    4 
 b/include/asm-arm/stat.h                     |    2 
 b/include/asm-arm/system.h                   |    7 
 b/include/asm-arm/topology.h                 |    6 
 b/include/asm-arm/unistd.h                   |  134 -
 b/include/asm-cris/topology.h                |    6 
 b/include/asm-generic/topology.h             |   51 
 b/include/asm-i386/mmzone.h                  |    7 
 b/include/asm-i386/msr.h                     |    6 
 b/include/asm-i386/numaq.h                   |    3 
 b/include/asm-i386/topology.h                |   96 
 b/include/asm-ia64/topology.h                |    6 
 b/include/asm-m68k/topology.h                |    6 
 b/include/asm-mips/topology.h                |    6 
 b/include/asm-mips64/mmzone.h                |    2 
 b/include/asm-mips64/topology.h              |    8 
 b/include/asm-parisc/topology.h              |    6 
 b/include/asm-ppc/topology.h                 |    6 
 b/include/asm-ppc64/mmzone.h                 |   19 
 b/include/asm-ppc64/topology.h               |   60 
 b/include/asm-s390/qdio.h                    |    2 
 b/include/asm-s390/topology.h                |    6 
 b/include/asm-s390x/qdio.h                   |    2 
 b/include/asm-s390x/topology.h               |    6 
 b/include/asm-sh/topology.h                  |    6 
 b/include/asm-sparc/audioio.h                |  410 ----
 b/include/asm-sparc/bitops.h                 |    2 
 b/include/asm-sparc/irq.h                    |    2 
 b/include/asm-sparc/topology.h               |    6 
 b/include/asm-sparc64/audioio.h              |  410 ----
 b/include/asm-sparc64/bitops.h               |    2 
 b/include/asm-sparc64/ebus.h                 |   56 
 b/include/asm-sparc64/floppy.h               |  138 -
 b/include/asm-sparc64/irq.h                  |    4 
 b/include/asm-sparc64/parport.h              |  102 -
 b/include/asm-sparc64/topology.h             |    6 
 b/include/asm-um/fixmap.h                    |   96 
 b/include/asm-um/highmem.h                   |    6 
 b/include/asm-um/irq.h                       |    1 
 b/include/asm-um/page.h                      |    5 
 b/include/asm-um/percpu.h                    |    4 
 b/include/asm-um/pgalloc.h                   |    3 
 b/include/asm-um/pgtable.h                   |   33 
 b/include/asm-um/system-i386.h               |   31 
 b/include/asm-um/timex.h                     |    2 
 b/include/asm-um/tlbflush.h                  |    1 
 b/include/asm-x86_64/topology.h              |    6 
 b/include/linux/auto_fs.h                    |    2 
 b/include/linux/blkdev.h                     |    3 
 b/include/linux/cpufreq.h                    |  252 ++
 b/include/linux/genhd.h                      |   13 
 b/include/linux/gfp.h                        |    1 
 b/include/linux/init_task.h                  |    1 
 b/include/linux/interrupt.h                  |   36 
 b/include/linux/isdn.h                       |  128 -
 b/include/linux/isdn_ppp.h                   |    4 
 b/include/linux/loop.h                       |    2 
 b/include/linux/mii.h                        |   15 
 b/include/linux/mmzone.h                     |   19 
 b/include/linux/module.h                     |    1 
 b/include/linux/msdos_fs.h                   |    6 
 b/include/linux/page-flags.h                 |    2 
 b/include/linux/pci_ids.h                    |   13 
 b/include/linux/reiserfs_fs.h                |    3 
 b/include/linux/sched.h                      |   58 
 b/include/linux/slab.h                       |    1 
 b/include/linux/smb.h                        |    3 
 b/include/linux/smb_fs.h                     |   27 
 b/include/linux/smbno.h                      |   32 
 b/include/linux/swap.h                       |    1 
 b/include/linux/timer.h                      |   39 
 b/include/linux/tqueue.h                     |   89 
 b/include/linux/tty_flip.h                   |    2 
 b/include/linux/usb.h                        |   77 
 b/include/linux/usbdevice_fs.h               |    2 
 b/include/net/lapb.h                         |   60 
 b/include/net/llc_conn.h                     |    1 
 b/include/net/llc_mac.h                      |    2 
 b/include/net/llc_sap.h                      |    1 
 b/include/net/sock.h                         |    3 
 b/include/net/x25.h                          |   53 
 b/include/scsi/sg.h                          |    7 
 b/include/sound/ac97_codec.h                 |   11 
 b/include/sound/asequencer.h                 |   16 
 b/include/sound/asound.h                     |   41 
 b/include/sound/core.h                       |   15 
 b/include/sound/cs46xx.h                     |  122 +
 b/include/sound/cs46xx_dsp_scb_types.h       |  936 +++++++++
 b/include/sound/cs46xx_dsp_spos.h            |  183 +
 b/include/sound/cs46xx_dsp_task_types.h      |  215 ++
 b/include/sound/driver.h                     |    2 
 b/include/sound/emu10k1.h                    |    3 
 b/include/sound/info.h                       |    4 
 b/include/sound/pcm.h                        |  104 -
 b/include/sound/pcm_params.h                 |   88 
 b/include/sound/pcm_sgbuf.h                  |   60 
 b/include/sound/rawmidi.h                    |    3 
 b/include/sound/sb.h                         |   19 
 b/include/sound/seq_virmidi.h                |    8 
 b/include/sound/sndmagic.h                   |    2 
 b/include/sound/version.h                    |    2 
 b/include/sound/ymfpci.h                     |    2 
 b/kernel/Makefile                            |    3 
 b/kernel/context.c                           |   62 
 b/kernel/cpufreq.c                           | 1104 ++++++++++
 b/kernel/fork.c                              |    2 
 b/kernel/futex.c                             |   10 
 b/kernel/kmod.c                              |   12 
 b/kernel/ksyms.c                             |    9 
 b/kernel/sched.c                             |   15 
 b/kernel/signal.c                            |  224 +-
 b/kernel/softirq.c                           |   98 
 b/kernel/suspend.c                           |    4 
 b/kernel/timer.c                             |  443 ++--
 b/lib/bust_spinlocks.c                       |    2 
 b/mm/memory.c                                |    3 
 b/mm/mmap.c                                  |    4 
 b/mm/mremap.c                                |   28 
 b/mm/page_alloc.c                            |   84 
 b/mm/pdflush.c                               |    4 
 b/mm/slab.c                                  |    9 
 b/mm/swap_state.c                            |    2 
 b/mm/vmscan.c                                |   55 
 b/net/Config.in                              |    4 
 b/net/Makefile                               |    3 
 b/net/bridge/br_input.c                      |    4 
 b/net/core/dev.c                             |   18 
 b/net/ipv4/proc.c                            |    2 
 b/net/ipv6/addrconf.c                        |   35 
 b/net/ipv6/ip6_fib.c                         |   26 
 b/net/ipv6/ndisc.c                           |    1 
 b/net/lapb/lapb_iface.c                      |  308 +--
 b/net/lapb/lapb_in.c                         |  342 ++-
 b/net/lapb/lapb_out.c                        |   69 
 b/net/lapb/lapb_subr.c                       |   85 
 b/net/lapb/lapb_timer.c                      |   14 
 b/net/llc/Makefile                           |    4 
 b/net/llc/af_llc.c                           | 1152 +++++++++++
 b/net/llc/llc_conn.c                         |   13 
 b/net/llc/llc_mac.c                          |   30 
 b/net/llc/llc_main.c                         |   12 
 b/net/llc/llc_s_ac.c                         |   10 
 b/net/llc/llc_sap.c                          |   11 
 b/net/sunrpc/clnt.c                          |    8 
 b/net/sunrpc/sched.c                         |   12 
 b/net/sunrpc/svc.c                           |    4 
 b/net/x25/af_x25.c                           |  273 +-
 b/net/x25/x25_dev.c                          |  121 -
 b/net/x25/x25_facilities.c                   |  175 -
 b/net/x25/x25_in.c                           |   10 
 b/net/x25/x25_link.c                         |  357 +--
 b/net/x25/x25_out.c                          |   32 
 b/net/x25/x25_route.c                        |  187 -
 b/net/x25/x25_subr.c                         |   32 
 b/net/x25/x25_timer.c                        |   30 
 b/scripts/Configure                          |   14 
 b/sound/Config.in                            |    6 
 b/sound/Makefile                             |    2 
 b/sound/core/Makefile                        |    7 
 b/sound/core/control.c                       |    3 
 b/sound/core/device.c                        |    1 
 b/sound/core/ioctl32/Makefile                |    2 
 b/sound/core/ioctl32/ioctl32.c               |  125 -
 b/sound/core/ioctl32/ioctl32.h               |   40 
 b/sound/core/ioctl32/pcm32.c                 |  238 +-
 b/sound/core/ioctl32/rawmidi32.c             |   10 
 b/sound/core/ioctl32/seq32.c                 |   64 
 b/sound/core/ioctl32/timer32.c               |    2 
 b/sound/core/memory.c                        |   75 
 b/sound/core/oss/io.c                        |    1 
 b/sound/core/oss/mixer_oss.c                 |    4 
 b/sound/core/oss/pcm_oss.c                   |   21 
 b/sound/core/oss/pcm_plugin.c                |   26 
 b/sound/core/oss/pcm_plugin.h                |    4 
 b/sound/core/pcm.c                           |   23 
 b/sound/core/pcm_lib.c                       |   53 
 b/sound/core/pcm_memory.c                    |   52 
 b/sound/core/pcm_misc.c                      |  116 +
 b/sound/core/pcm_native.c                    |  147 +
 b/sound/core/pcm_sgbuf.c                     |  321 +++
 b/sound/core/rawmidi.c                       |    2 
 b/sound/core/rtctimer.c                      |    1 
 b/sound/core/seq/Makefile                    |    2 
 b/sound/core/seq/instr/Makefile              |    2 
 b/sound/core/seq/oss/Makefile                |    6 
 b/sound/core/seq/seq.c                       |    2 
 b/sound/core/seq/seq_clientmgr.c             |   48 
 b/sound/core/seq/seq_clientmgr.h             |    1 
 b/sound/core/seq/seq_memory.c                |    8 
 b/sound/core/seq/seq_midi.c                  |    1 
 b/sound/core/seq/seq_midi_emul.c             |    1 
 b/sound/core/seq/seq_midi_event.c            |    1 
 b/sound/core/seq/seq_prioq.c                 |   22 
 b/sound/core/seq/seq_prioq.h                 |    2 
 b/sound/core/seq/seq_queue.c                 |   26 
 b/sound/core/seq/seq_timer.c                 |   36 
 b/sound/core/seq/seq_timer.h                 |    6 
 b/sound/core/seq/seq_virmidi.c               |   34 
 b/sound/core/sound.c                         |    7 
 b/sound/core/timer.c                         |   21 
 b/sound/drivers/mpu401/Makefile              |    2 
 b/sound/drivers/opl3/Makefile                |    4 
 b/sound/drivers/serial-u16550.c              |  114 -
 b/sound/i2c/i2c.c                            |    2 
 b/sound/isa/Config.help                      |    6 
 b/sound/isa/Config.in                        |    2 
 b/sound/isa/Makefile                         |    6 
 b/sound/isa/ad1816a/ad1816a_lib.c            |    2 
 b/sound/isa/ad1848/ad1848_lib.c              |    2 
 b/sound/isa/cs423x/cs4231_lib.c              |    1 
 b/sound/isa/cs423x/cs4236.c                  |    2 
 b/sound/isa/dt019x.c                         |  407 ++++
 b/sound/isa/es18xx.c                         |    1 
 b/sound/isa/gus/gus_mem_proc.c               |    4 
 b/sound/isa/gus/gus_pcm.c                    |    1 
 b/sound/isa/opl3sa2.c                        |    2 
 b/sound/isa/opti9xx/opti92x-ad1848.c         |   51 
 b/sound/isa/sb/Makefile                      |    2 
 b/sound/isa/sb/sb16.c                        |    2 
 b/sound/isa/sb/sb_common.c                   |    3 
 b/sound/isa/sb/sb_mixer.c                    |  136 +
 b/sound/isa/wavefront/wavefront.c            |    4 
 b/sound/oss/audio.c                          |   69 
 b/sound/oss/dmasound/dmasound.h              |    1 
 b/sound/oss/dmasound/dmasound_atari.c        |   14 
 b/sound/oss/dmasound/dmasound_awacs.c        |   43 
 b/sound/oss/dmasound/dmasound_core.c         |    5 
 b/sound/oss/dmasound/dmasound_q40.c          |    8 
 b/sound/oss/gus_midi.c                       |   30 
 b/sound/oss/gus_wave.c                       |  276 --
 b/sound/oss/ics2101.c                        |    7 
 b/sound/oss/v_midi.h                         |    2 
 b/sound/oss/wf_midi.c                        |   29 
 b/sound/pci/Config.help                      |   12 
 b/sound/pci/Config.in                        |    6 
 b/sound/pci/ac97/Makefile                    |    2 
 b/sound/pci/ac97/ac97_codec.c                |  379 ---
 b/sound/pci/ac97/ac97_id.h                   |   44 
 b/sound/pci/ac97/ac97_patch.c                |  324 +++
 b/sound/pci/ac97/ac97_patch.h                |   39 
 b/sound/pci/ali5451/ali5451.c                |    9 
 b/sound/pci/cs4281.c                         |    2 
 b/sound/pci/cs46xx/Makefile                  |    3 
 b/sound/pci/cs46xx/cs46xx.c                  |    8 
 b/sound/pci/cs46xx/cs46xx_image.h            |   11 
 b/sound/pci/cs46xx/cs46xx_lib.c              |  927 +++++++--
 b/sound/pci/cs46xx/cs46xx_lib.h              |  191 +
 b/sound/pci/cs46xx/dsp_spos.c                | 1744 +++++++++++++++++
 b/sound/pci/cs46xx/dsp_spos.h                |  150 +
 b/sound/pci/cs46xx/dsp_spos_scb_lib.c        | 1383 +++++++++++++
 b/sound/pci/cs46xx/imgs/cwc4630.h            |  320 +++
 b/sound/pci/cs46xx/imgs/cwcasync.h           |  176 +
 b/sound/pci/cs46xx/imgs/cwcbinhack.h         |   48 
 b/sound/pci/cs46xx/imgs/cwcemb80.h           | 1607 +++++++++++++++
 b/sound/pci/cs46xx/imgs/cwcsnoop.h           |   46 
 b/sound/pci/emu10k1/emufx.c                  |   22 
 b/sound/pci/emu10k1/emumpu401.c              |    4 
 b/sound/pci/emu10k1/emupcm.c                 |   20 
 b/sound/pci/emu10k1/memory.c                 |   20 
 b/sound/pci/ens1370.c                        |    3 
 b/sound/pci/es1968.c                         |   14 
 b/sound/pci/ice1712.c                        |   14 
 b/sound/pci/intel8x0.c                       |   12 
 b/sound/pci/korg1212/korg1212.c              |    1 
 b/sound/pci/maestro3.c                       |    2 
 b/sound/pci/nm256/nm256.c                    |   32 
 b/sound/pci/rme32.c                          |  212 +-
 b/sound/pci/rme96.c                          |    7 
 b/sound/pci/rme9652/digiface_firmware.dat    |    2 
 b/sound/pci/rme9652/hdsp.c                   |  112 -
 b/sound/pci/rme9652/multiface_firmware.dat   |    2 
 b/sound/pci/rme9652/rme9652.c                |    1 
 b/sound/pci/via686.c                         |  373 +--
 b/sound/pci/via8233.c                        |  226 +-
 b/sound/pci/ymfpci/ymfpci.c                  |    6 
 b/sound/pci/ymfpci/ymfpci_main.c             |   40 
 b/sound/sparc/Config.in                      |   13 
 b/sound/sparc/Makefile                       |   14 
 b/sound/sparc/amd7930.c                      | 1171 +++++++++++
 b/sound/sparc/cs4231.c                       | 2271 ++++++++++++++++++++++
 drivers/sbus/audio/Config.help               |   24 
 drivers/sbus/audio/Config.in                 |   18 
 drivers/sbus/audio/Makefile                  |   16 
 drivers/sbus/audio/amd7930.c                 | 1889 ------------------
 drivers/sbus/audio/amd7930.h                 |  270 --
 drivers/sbus/audio/audio.c                   | 2304 ----------------------
 drivers/sbus/audio/cs4215.h                  |  120 -
 drivers/sbus/audio/cs4231.c                  | 2458 ------------------------
 drivers/sbus/audio/cs4231.h                  |  313 ---
 drivers/sbus/audio/dbri.c                    | 2400 -----------------------
 drivers/sbus/audio/dbri.h                    |  357 ---
 drivers/sbus/audio/dmy.c                     |  805 -------
 drivers/sbus/audio/dummy.h                   |   41 
 include/asm-arm/arch-anakin/keyboard.h       |   15 
 include/asm-arm/arch-ebsa285/keyboard.h      |    9 
 include/asm-arm/arch-integrator/keyboard.h   |   22 
 include/asm-arm/arch-nexuspci/keyboard.h     |   14 
 include/asm-arm/arch-rpc/keyboard.h          |   13 
 include/asm-arm/arch-tbox/keyboard.h         |   14 
 include/asm-arm/mach/amba_kmi.h              |   40 
 net/llc/llc_sock.c                           | 1152 -----------
 sound/isa/dt0197h.c                          |  391 ---
 773 files changed, 35585 insertions(+), 26784 deletions(-)

