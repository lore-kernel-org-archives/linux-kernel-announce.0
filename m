From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.26 released
Date: Tue, 16 Jul 2002 16:58:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200207162358.g6GNw4l01502@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.26 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.26.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.26.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               519319           2083106
Full source                       34877152         155473920

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/mm/abort-ev5ej.S                        |   35 
 arch/arm/mm/copypage-v5te.S                      |   85 
 b/CREDITS                                        |   26 
 b/Documentation/DocBook/kernel-api.tmpl          |    8 
 b/Documentation/SubmittingPatches                |    2 
 b/Documentation/devices.txt                      |    1 
 b/Documentation/filesystems/ntfs.txt             |   27 
 b/Documentation/input/amijoy.txt                 |  184 +
 b/Documentation/input/atarikbd.txt               |  708 +++++
 b/Documentation/input/cd32.txt                   |   19 
 b/Documentation/input/ff.txt                     |   61 
 b/Documentation/input/iforce-protocol.txt        |  254 +
 b/Documentation/input/input.txt                  |  186 -
 b/Documentation/input/interactive.fig            |   42 
 b/Documentation/input/joystick-parport.txt       |    4 
 b/Documentation/input/joystick.txt               |   20 
 b/Documentation/input/shape.fig                  |   65 
 b/Documentation/input/xpad.txt                   |   84 
 b/Documentation/usb/URB.txt                      |  221 -
 b/Documentation/usb/error-codes.txt              |    9 
 b/Documentation/usb/hiddev.txt                   |   15 
 b/Documentation/video4linux/bttv/CARDLIST        |   64 
 b/Documentation/video4linux/bttv/Cards           |  336 ++
 b/Documentation/video4linux/bttv/Insmod-options  |    2 
 b/Documentation/video4linux/bttv/README          |    3 
 b/Documentation/video4linux/bttv/README.freeze   |    6 
 b/Documentation/video4linux/bttv/Tuners          |   41 
 b/Documentation/video4linux/meye.txt             |    4 
 b/MAINTAINERS                                    |    6 
 b/Makefile                                       |    2 
 b/arch/alpha/config.in                           |    4 
 b/arch/alpha/kernel/signal.c                     |   30 
 b/arch/arm/Makefile                              |   20 
 b/arch/arm/config.in                             |   21 
 b/arch/arm/def-configs/neponset                  |  499 ++-
 b/arch/arm/kernel/entry-armv.S                   |   10 
 b/arch/arm/kernel/irq.c                          |    5 
 b/arch/arm/kernel/process.c                      |    4 
 b/arch/arm/kernel/ptrace.c                       |  243 +
 b/arch/arm/kernel/ptrace.h                       |    3 
 b/arch/arm/kernel/signal.c                       |   18 
 b/arch/arm/kernel/traps.c                        |   77 
 b/arch/arm/lib/backtrace.S                       |   30 
 b/arch/arm/mach-arc/small_page.c                 |   89 
 b/arch/arm/mach-footbridge/personal-pci.c        |    2 
 b/arch/arm/mach-integrator/arch.c                |    1 
 b/arch/arm/mach-integrator/cpu.c                 |   14 
 b/arch/arm/mach-iop310/iq80310-pci.c             |   13 
 b/arch/arm/mach-sa1100/adsbitsy.c                |    2 
 b/arch/arm/mach-sa1100/assabet.c                 |   48 
 b/arch/arm/mach-sa1100/cpu-sa1100.c              |   24 
 b/arch/arm/mach-sa1100/cpu-sa1110.c              |   26 
 b/arch/arm/mach-sa1100/generic.c                 |    9 
 b/arch/arm/mach-sa1100/graphicsmaster.c          |    2 
 b/arch/arm/mach-sa1100/irq.c                     |    6 
 b/arch/arm/mach-sa1100/pm.c                      |    4 
 b/arch/arm/mach-sa1100/sa1111.c                  |   60 
 b/arch/arm/mach-sa1100/shannon.c                 |    8 
 b/arch/arm/mach-sa1100/sleep.S                   |    3 
 b/arch/arm/mach-sa1100/system3.c                 |    4 
 b/arch/arm/mach-sa1100/xp860.c                   |    2 
 b/arch/arm/mm/Makefile                           |    2 
 b/arch/arm/mm/abort-ev4.S                        |    5 
 b/arch/arm/mm/abort-ev4t.S                       |    6 
 b/arch/arm/mm/abort-ev5tej.S                     |   36 
 b/arch/arm/mm/abort-lv4t.S                       |    5 
 b/arch/arm/mm/abort-xscale.S                     |   34 
 b/arch/arm/mm/copypage-xscale.S                  |   85 
 b/arch/arm/mm/fault-armv.c                       |   31 
 b/arch/arm/mm/fault-common.c                     |   18 
 b/arch/arm/mm/proc-arm1020.S                     |    4 
 b/arch/arm/mm/proc-arm6_7.S                      |    2 
 b/arch/arm/mm/proc-arm720.S                      |    4 
 b/arch/arm/mm/proc-arm920.S                      |    2 
 b/arch/arm/mm/proc-arm922.S                      |    4 
 b/arch/arm/mm/proc-arm926.S                      |   15 
 b/arch/arm/mm/proc-xscale.S                      |   13 
 b/arch/arm/nwfpe/fpa11.c                         |    5 
 b/arch/arm/tools/mach-types                      |   17 
 b/arch/arm/vmlinux-armo.lds.in                   |   28 
 b/arch/cris/drivers/ide.c                        |    4 
 b/arch/cris/kernel/signal.c                      |   36 
 b/arch/i386/boot/compressed/misc.c               |    8 
 b/arch/i386/config.in                            |    2 
 b/arch/i386/kernel/apic.c                        |    2 
 b/arch/i386/kernel/apm.c                         |    2 
 b/arch/i386/kernel/bluesmoke.c                   |   38 
 b/arch/i386/kernel/cpu/common.c                  |    4 
 b/arch/i386/kernel/cpu/intel.c                   |  134 
 b/arch/i386/kernel/io_apic.c                     |   15 
 b/arch/i386/kernel/mpparse.c                     |    6 
 b/arch/i386/kernel/semaphore.c                   |   64 
 b/arch/i386/kernel/smp.c                         |    2 
 b/arch/i386/kernel/suspend.c                     |   15 
 b/arch/i386/mm/init.c                            |    2 
 b/arch/i386/mm/ioremap.c                         |    4 
 b/arch/ia64/sn/fakeprom/README                   |    2 
 b/arch/m68k/config.in                            |    2 
 b/arch/mips/config.in                            |   10 
 b/arch/mips/dec/wbflush.c                        |    2 
 b/arch/mips64/math-emu/ieee754.c                 |    2 
 b/arch/parisc/config.in                          |   10 
 b/arch/ppc/4xx_io/stb_kb.c                       |    4 
 b/arch/ppc/Config.help                           |   61 
 b/arch/ppc/config.in                             |    7 
 b/arch/ppc/kernel/m8260_setup.c                  |    8 
 b/arch/ppc/kernel/m8xx_setup.c                   |    8 
 b/arch/ppc/kernel/ppc4xx_setup.c                 |   16 
 b/arch/ppc/kernel/setup.c                        |    2 
 b/arch/ppc/platforms/apus_setup.c                |    7 
 b/arch/ppc/platforms/chrp_setup.c                |   30 
 b/arch/ppc/platforms/gemini_setup.c              |    8 
 b/arch/ppc/platforms/iSeries_setup.c             |   10 
 b/arch/ppc/platforms/oak_setup.c                 |    8 
 b/arch/ppc/platforms/pmac_setup.c                |   49 
 b/arch/ppc/platforms/pplus_setup.c               |   22 
 b/arch/ppc/platforms/prep_setup.c                |   22 
 b/arch/ppc/platforms/sandpoint_setup.c           |   22 
 b/arch/ppc/platforms/spruce_setup.c              |   21 
 b/arch/ppc/xmon/start.c                          |    2 
 b/arch/ppc64/kernel/pSeries_pci.c                |    2 
 b/arch/ppc64/xmon/start.c                        |    2 
 b/arch/sh/config.in                              |    2 
 b/arch/sparc64/defconfig                         |   42 
 b/arch/sparc64/kernel/binfmt_elf32.c             |   10 
 b/arch/sparc64/kernel/time.c                     |    2 
 b/drivers/acorn/scsi/Config.in                   |    6 
 b/drivers/acpi/Config.help                       |   22 
 b/drivers/acpi/Config.in                         |    1 
 b/drivers/acpi/Makefile                          |    1 
 b/drivers/acpi/acpi_bus.h                        |    3 
 b/drivers/acpi/acpi_drivers.h                    |    3 
 b/drivers/acpi/acpi_ksyms.c                      |    3 
 b/drivers/acpi/battery.c                         |    4 
 b/drivers/acpi/bus.c                             |  142 -
 b/drivers/acpi/debugger/dbdisasm.c               |    5 
 b/drivers/acpi/debugger/dbdisply.c               |   88 
 b/drivers/acpi/debugger/dbexec.c                 |    9 
 b/drivers/acpi/debugger/dbfileio.c               |   10 
 b/drivers/acpi/dispatcher/dsmethod.c             |    4 
 b/drivers/acpi/dispatcher/dsobject.c             |    4 
 b/drivers/acpi/dispatcher/dswload.c              |    8 
 b/drivers/acpi/ec.c                              |  159 -
 b/drivers/acpi/executer/exconfig.c               |    4 
 b/drivers/acpi/executer/exdump.c                 |   11 
 b/drivers/acpi/executer/exmisc.c                 |   61 
 b/drivers/acpi/executer/exoparg1.c               |   14 
 b/drivers/acpi/executer/exoparg2.c               |   11 
 b/drivers/acpi/executer/exresnte.c               |    4 
 b/drivers/acpi/executer/exresolv.c               |    4 
 b/drivers/acpi/executer/exresop.c                |    3 
 b/drivers/acpi/executer/exstore.c                |    3 
 b/drivers/acpi/include/acconfig.h                |    4 
 b/drivers/acpi/include/acdebug.h                 |    6 
 b/drivers/acpi/include/acglobal.h                |    3 
 b/drivers/acpi/include/aclocal.h                 |    6 
 b/drivers/acpi/include/acparser.h                |    6 
 b/drivers/acpi/include/acpixf.h                  |    4 
 b/drivers/acpi/include/actables.h                |   69 
 b/drivers/acpi/include/actbl.h                   |   14 
 b/drivers/acpi/include/actypes.h                 |   16 
 b/drivers/acpi/include/amlresrc.h                |  512 +++
 b/drivers/acpi/include/platform/aclinux.h        |    2 
 b/drivers/acpi/namespace/nseval.c                |    5 
 b/drivers/acpi/namespace/nsload.c                |    5 
 b/drivers/acpi/namespace/nsnames.c               |    4 
 b/drivers/acpi/osl.c                             |   62 
 b/drivers/acpi/parser/psparse.c                  |    6 
 b/drivers/acpi/parser/psutils.c                  |   33 
 b/drivers/acpi/parser/psxface.c                  |    6 
 b/drivers/acpi/pci_irq.c                         |   30 
 b/drivers/acpi/pci_link.c                        |   18 
 b/drivers/acpi/pci_root.c                        |    4 
 b/drivers/acpi/power.c                           |    6 
 b/drivers/acpi/processor.c                       |   24 
 b/drivers/acpi/resources/rscreate.c              |    6 
 b/drivers/acpi/resources/rsio.c                  |    4 
 b/drivers/acpi/resources/rsirq.c                 |    4 
 b/drivers/acpi/resources/rslist.c                |    4 
 b/drivers/acpi/system.c                          |   31 
 b/drivers/acpi/tables/tbconvrt.c                 |   14 
 b/drivers/acpi/tables/tbget.c                    |  805 +----
 b/drivers/acpi/tables/tbgetall.c                 |  290 ++
 b/drivers/acpi/tables/tbinstal.c                 |   56 
 b/drivers/acpi/tables/tbrsdt.c                   |  304 ++
 b/drivers/acpi/tables/tbutils.c                  |   93 
 b/drivers/acpi/tables/tbxface.c                  |   15 
 b/drivers/acpi/tables/tbxfroot.c                 |   69 
 b/drivers/acpi/thermal.c                         |    4 
 b/drivers/acpi/toshiba_acpi.c                    |  465 +++
 b/drivers/acpi/utilities/utcopy.c                |   19 
 b/drivers/acpi/utilities/utglobal.c              |   18 
 b/drivers/acpi/utilities/utxface.c               |   27 
 b/drivers/acpi/utils.c                           |  109 
 b/drivers/block/Config.in                        |    2 
 b/drivers/block/ll_rw_blk.c                      |   30 
 b/drivers/bluetooth/hci_usb.c                    |    3 
 b/drivers/cdrom/aztcd.c                          |    8 
 b/drivers/cdrom/sonycd535.c                      |    9 
 b/drivers/char/Config.help                       |   89 
 b/drivers/char/Config.in                         |   22 
 b/drivers/char/Makefile                          |    9 
 b/drivers/char/console.c                         |   82 
 b/drivers/char/ftape/Config.in                   |    2 
 b/drivers/char/keyboard.c                        |  781 ++---
 b/drivers/char/pc_keyb.c                         |    5 
 b/drivers/char/raw.c                             |  136 
 b/drivers/char/serial.c                          |    2 
 b/drivers/char/sysrq.c                           |   46 
 b/drivers/char/tty_io.c                          |   15 
 b/drivers/fc4/Config.in                          |    4 
 b/drivers/fc4/fc.c                               |    2 
 b/drivers/ide/Config.in                          |    2 
 b/drivers/ide/aec62xx.c                          |   33 
 b/drivers/ide/alim15x3.c                         |  155 -
 b/drivers/ide/amd74xx.c                          |   36 
 b/drivers/ide/ata-timing.c                       |    8 
 b/drivers/ide/ata-timing.h                       |   25 
 b/drivers/ide/cmd64x.c                           |  120 
 b/drivers/ide/cs5530.c                           |   17 
 b/drivers/ide/cy82c693.c                         |    5 
 b/drivers/ide/device.c                           |   66 
 b/drivers/ide/hpt34x.c                           |  105 
 b/drivers/ide/hpt366.c                           |  153 -
 b/drivers/ide/icside.c                           |   10 
 b/drivers/ide/ide-cd.c                           |  178 -
 b/drivers/ide/ide-disk.c                         |  610 ++--
 b/drivers/ide/ide-floppy.c                       |  434 ---
 b/drivers/ide/ide-pci.c                          |   22 
 b/drivers/ide/ide-pmac.c                         |   26 
 b/drivers/ide/ide-tape.c                         |  360 --
 b/drivers/ide/ide-taskfile.c                     |   48 
 b/drivers/ide/ide.c                              |  371 +-
 b/drivers/ide/ioctl.c                            |   32 
 b/drivers/ide/it8172.c                           |   16 
 b/drivers/ide/main.c                             |    5 
 b/drivers/ide/ns87415.c                          |    8 
 b/drivers/ide/pcidma.c                           |  107 
 b/drivers/ide/pcihost.h                          |    1 
 b/drivers/ide/pdc202xx.c                         |  194 -
 b/drivers/ide/pdc4030.c                          |  114 
 b/drivers/ide/piix.c                             |   50 
 b/drivers/ide/probe.c                            |   30 
 b/drivers/ide/serverworks.c                      |   93 
 b/drivers/ide/sis5513.c                          |  118 
 b/drivers/ide/sl82c105.c                         |    3 
 b/drivers/ide/tcq.c                              |   75 
 b/drivers/ide/trm290.c                           |   11 
 b/drivers/ide/via82cxxx.c                        |   36 
 b/drivers/ieee1394/Config.in                     |   21 
 b/drivers/ieee1394/Makefile                      |    6 
 b/drivers/ieee1394/amdtp.c                       |    6 
 b/drivers/ieee1394/dv1394-private.h              |    2 
 b/drivers/ieee1394/dv1394.c                      |  199 -
 b/drivers/ieee1394/dv1394.h                      |   73 
 b/drivers/ieee1394/hosts.c                       |    2 
 b/drivers/ieee1394/hosts.h                       |    1 
 b/drivers/ieee1394/ieee1394_core.c               |   20 
 b/drivers/ieee1394/ieee1394_core.h               |    1 
 b/drivers/ieee1394/ieee1394_transactions.c       |   22 
 b/drivers/ieee1394/ieee1394_types.h              |    1 
 b/drivers/ieee1394/nodemgr.c                     |   43 
 b/drivers/ieee1394/ohci1394.c                    |  291 +-
 b/drivers/ieee1394/ohci1394.h                    |   13 
 b/drivers/ieee1394/pcilynx.c                     |  177 +
 b/drivers/ieee1394/pcilynx.h                     |    8 
 b/drivers/ieee1394/raw1394.c                     |    4 
 b/drivers/ieee1394/sbp2.c                        |  427 ++-
 b/drivers/ieee1394/sbp2.h                        |   16 
 b/drivers/ieee1394/video1394.c                   |  201 -
 b/drivers/input/Config.help                      |    9 
 b/drivers/input/Config.in                        |    1 
 b/drivers/input/Makefile                         |    1 
 b/drivers/input/evbug.c                          |    3 
 b/drivers/input/gameport/Config.in               |    2 
 b/drivers/input/joystick/Config.help             |   29 
 b/drivers/input/joystick/Config.in               |    8 
 b/drivers/input/joystick/Makefile                |   18 
 b/drivers/input/joystick/iforce/Config.help      |   21 
 b/drivers/input/joystick/iforce/Config.in        |   14 
 b/drivers/input/joystick/iforce/Makefile         |   38 
 b/drivers/input/joystick/iforce/iforce-main.c    |   18 
 b/drivers/input/joystick/iforce/iforce-packets.c |   12 
 b/drivers/input/joystick/iforce/iforce.h         |   13 
 b/drivers/input/joystick/joydump.c               |  152 +
 b/drivers/input/keyboard/Config.help             |    8 
 b/drivers/input/keyboard/Config.in               |    1 
 b/drivers/input/keyboard/Makefile                |    1 
 b/drivers/input/keyboard/atkbd.c                 |   31 
 b/drivers/input/keyboard/newtonkbd.c             |  149 +
 b/drivers/input/mouse/amimouse.c                 |   38 
 b/drivers/input/mouse/psmouse.c                  |   21 
 b/drivers/input/mouse/rpcmouse.c                 |   61 
 b/drivers/input/serio/Config.in                  |    5 
 b/drivers/input/serio/Makefile                   |    1 
 b/drivers/input/serio/ct82c710.c                 |    3 
 b/drivers/input/serio/i8042-io.h                 |   75 
 b/drivers/input/serio/i8042-ppcio.h              |  130 
 b/drivers/input/serio/i8042.c                    |  158 -
 b/drivers/input/serio/i8042.h                    |   57 
 b/drivers/input/serio/parkbd.c                   |    6 
 b/drivers/input/serio/q40kbd.c                   |   99 
 b/drivers/input/serio/rpckbd.c                   |    3 
 b/drivers/input/serio/serio.c                    |   85 
 b/drivers/input/serio/serport.c                  |    3 
 b/drivers/input/touchscreen/Config.help          |   10 
 b/drivers/input/touchscreen/Config.in            |    3 
 b/drivers/input/touchscreen/Makefile             |    1 
 b/drivers/input/touchscreen/h3600_ts_input.c     |  485 +++
 b/drivers/input/uinput.c                         |  395 ++
 b/drivers/isdn/hisax/Config.in                   |   22 
 b/drivers/macintosh/adbhid.c                     |   85 
 b/drivers/macintosh/mac_hid.c                    |  401 --
 b/drivers/media/video/bttv-cards.c               |  406 +-
 b/drivers/media/video/bttv-driver.c              |  525 +--
 b/drivers/media/video/bttv-vbi.c                 |  380 --
 b/drivers/media/video/bttvp.h                    |   39 
 b/drivers/media/video/msp3400.c                  |    2 
 b/drivers/media/video/pms.c                      |    2 
 b/drivers/media/video/tuner.c                    |   57 
 b/drivers/media/video/tuner.h                    |    1 
 b/drivers/media/video/tvaudio.c                  |   63 
 b/drivers/media/video/tvmixer.c                  |    8 
 b/drivers/media/video/video-buf.c                |  595 ++++
 b/drivers/media/video/video-buf.h                |   78 
 b/drivers/mtd/devices/blkmtd.c                   |    6 
 b/drivers/mtd/maps/Config.in                     |    2 
 b/drivers/net/3c509.c                            |    2 
 b/drivers/net/aironet4500_rid.c                  |    2 
 b/drivers/net/bonding.c                          |  123 
 b/drivers/net/bsd_comp.c                         |    1 
 b/drivers/net/eepro100.c                         |    2 
 b/drivers/net/irda/irda-usb.c                    |    5 
 b/drivers/net/ppp_deflate.c                      |    1 
 b/drivers/net/sunhme.c                           |    2 
 b/drivers/net/tg3.c                              |  617 ----
 b/drivers/net/tg3.h                              |   43 
 b/drivers/net/wan/syncppp.c                      |    2 
 b/drivers/net/wireless/airo.c                    |    5 
 b/drivers/pci/probe.c                            |    2 
 b/drivers/sbus/char/Config.in                    |    4 
 b/drivers/scsi/aic7xxx_old.c                     |    4 
 b/drivers/scsi/ide-scsi.c                        |   94 
 b/drivers/scsi/ips.c                             |    4 
 b/drivers/scsi/ncr53c8xx.c                       |    2 
 b/drivers/scsi/pluto.c                           |    6 
 b/drivers/scsi/seagate.c                         |    2 
 b/drivers/scsi/sg.c                              |  148 -
 b/drivers/sgi/Config.in                          |    2 
 b/drivers/usb/class/bluetty.c                    |    1 
 b/drivers/usb/class/cdc-acm.c                    |    2 
 b/drivers/usb/core/devio.c                       |    2 
 b/drivers/usb/core/hcd.c                         |    2 
 b/drivers/usb/core/hub.c                         |   24 
 b/drivers/usb/core/inode.c                       |   17 
 b/drivers/usb/core/message.c                     |    2 
 b/drivers/usb/core/urb.c                         |   36 
 b/drivers/usb/core/usb.c                         |  203 +
 b/drivers/usb/host/Makefile                      |    3 
 b/drivers/usb/host/ehci-q.c                      |    6 
 b/drivers/usb/host/ohci-dbg.c                    |   29 
 b/drivers/usb/host/ohci-hcd.c                    |   10 
 b/drivers/usb/host/ohci-q.c                      |   78 
 b/drivers/usb/host/ohci-sa1111.c                 |    2 
 b/drivers/usb/host/ohci.h                        |   17 
 b/drivers/usb/host/uhci-hcd.c                    |   29 
 b/drivers/usb/input/Config.help                  |   45 
 b/drivers/usb/input/Config.in                    |    9 
 b/drivers/usb/input/Makefile                     |   16 
 b/drivers/usb/input/fixp-arith.h                 |   84 
 b/drivers/usb/input/hid-core.c                   |  227 +
 b/drivers/usb/input/hid-debug.h                  |   10 
 b/drivers/usb/input/hid-ff.c                     |   90 
 b/drivers/usb/input/hid-input.c                  |   66 
 b/drivers/usb/input/hid-lg3dff.c                 |  444 +++
 b/drivers/usb/input/hid-lgff.c                   |  495 +++
 b/drivers/usb/input/hid.h                        |   38 
 b/drivers/usb/input/hiddev.c                     |  184 -
 b/drivers/usb/input/pid.c                        |  311 ++
 b/drivers/usb/input/pid.h                        |   62 
 b/drivers/usb/input/powermate.c                  |  360 ++
 b/drivers/usb/input/xpad.c                       |  330 ++
 b/drivers/usb/media/se401.c                      |    1 
 b/drivers/usb/media/stv680.c                     |    1 
 b/drivers/usb/misc/emi26.c                       |   28 
 b/drivers/usb/misc/tiglusb.c                     |   30 
 b/drivers/usb/net/usbnet.c                       |    6 
 b/drivers/usb/serial/empeg.c                     |    6 
 b/drivers/usb/serial/io_edgeport.c               |    6 
 b/drivers/usb/serial/ir-usb.c                    |   11 
 b/drivers/usb/serial/kl5kusb105.c                |    3 
 b/drivers/usb/serial/visor.c                     |    1 
 b/drivers/usb/storage/scsiglue.c                 |   80 
 b/drivers/usb/storage/transport.c                |  144 -
 b/drivers/usb/storage/usb.c                      |  109 
 b/drivers/usb/storage/usb.h                      |   28 
 b/drivers/video/Config.in                        |   18 
 b/fs/Config.in                                   |    2 
 b/fs/Makefile                                    |    2 
 b/fs/affs/namei.c                                |   11 
 b/fs/block_dev.c                                 |    7 
 b/fs/buffer.c                                    |   16 
 b/fs/dcache.c                                    |    2 
 b/fs/direct-io.c                                 |  491 +++
 b/fs/driverfs/inode.c                            |    7 
 b/fs/ext2/inode.c                                |    9 
 b/fs/hpfs/dir.c                                  |    5 
 b/fs/jfs/jfs_debug.c                             |   18 
 b/fs/jfs/jfs_debug.h                             |    8 
 b/fs/jfs/jfs_logmgr.c                            |    6 
 b/fs/jfs/jfs_txnmgr.c                            |    2 
 b/fs/jfs/super.c                                 |   13 
 b/fs/lockd/xdr.c                                 |    9 
 b/fs/lockd/xdr4.c                                |   11 
 b/fs/nfs/inode.c                                 |    9 
 b/fs/nfs/nfs2xdr.c                               |   49 
 b/fs/nfs/nfs3xdr.c                               |   56 
 b/fs/ntfs/ChangeLog                              |  123 
 b/fs/ntfs/Makefile                               |    6 
 b/fs/ntfs/aops.c                                 |  423 ---
 b/fs/ntfs/attrib.c                               |   57 
 b/fs/ntfs/compress.c                             |   62 
 b/fs/ntfs/dir.c                                  |  239 +
 b/fs/ntfs/file.c                                 |   35 
 b/fs/ntfs/inode.c                                |  597 +++-
 b/fs/ntfs/inode.h                                |   13 
 b/fs/ntfs/mft.c                                  |   18 
 b/fs/ntfs/ntfs.h                                 |   20 
 b/fs/ntfs/super.c                                |  319 --
 b/fs/ntfs/volume.h                               |   66 
 b/fs/partitions/Config.in                        |    4 
 b/fs/partitions/check.c                          |    4 
 b/fs/partitions/msdos.c                          |    4 
 b/fs/pipe.c                                      |    2 
 b/fs/quota_v2.c                                  |    2 
 b/fs/ramfs/inode.c                               |    7 
 b/fs/reiserfs/Makefile                           |    2 
 b/fs/reiserfs/do_balan.c                         |    8 
 b/fs/reiserfs/fix_node.c                         |   33 
 b/fs/reiserfs/ibalance.c                         |    7 
 b/fs/reiserfs/stree.c                            |    2 
 b/fs/reiserfs/super.c                            |    4 
 b/fs/smbfs/Makefile                              |    7 
 b/fs/smbfs/file.c                                |    4 
 b/fs/smbfs/inode.c                               |   52 
 b/fs/smbfs/ioctl.c                               |    8 
 b/fs/smbfs/proc.c                                | 1379 +++++-----
 b/fs/smbfs/proto.h                               |   37 
 b/fs/smbfs/request.c                             |  796 +++++
 b/fs/smbfs/request.h                             |   69 
 b/fs/smbfs/smbiod.c                              |  325 ++
 b/fs/smbfs/sock.c                                |  947 +-----
 b/include/asm-alpha/siginfo.h                    |    1 
 b/include/asm-arm/arch-adifcc/param.h            |    2 
 b/include/asm-arm/arch-anakin/param.h            |    5 
 b/include/asm-arm/arch-arc/param.h               |    2 
 b/include/asm-arm/arch-cl7500/param.h            |    4 
 b/include/asm-arm/arch-clps711x/param.h          |    2 
 b/include/asm-arm/arch-ebsa110/param.h           |    2 
 b/include/asm-arm/arch-ebsa285/param.h           |    2 
 b/include/asm-arm/arch-epxa10db/param.h          |    2 
 b/include/asm-arm/arch-integrator/param.h        |    2 
 b/include/asm-arm/arch-iop310/param.h            |    2 
 b/include/asm-arm/arch-l7200/param.h             |   17 
 b/include/asm-arm/arch-nexuspci/param.h          |    2 
 b/include/asm-arm/arch-rpc/param.h               |    2 
 b/include/asm-arm/arch-sa1100/assabet.h          |   75 
 b/include/asm-arm/arch-sa1100/neponset.h         |   74 
 b/include/asm-arm/arch-sa1100/param.h            |    2 
 b/include/asm-arm/arch-sa1100/pfs168.h           |    2 
 b/include/asm-arm/arch-sa1100/serial.h           |   34 
 b/include/asm-arm/arch-shark/param.h             |    5 
 b/include/asm-arm/arch-shark/system.h            |    2 
 b/include/asm-arm/arch-tbox/param.h              |    5 
 b/include/asm-arm/cacheflush.h                   |    2 
 b/include/asm-arm/glue.h                         |   19 
 b/include/asm-arm/hardware/sa1111.h              |    9 
 b/include/asm-arm/irq.h                          |    1 
 b/include/asm-arm/mach/serial_sa1100.h           |    3 
 b/include/asm-arm/mmu_context.h                  |   17 
 b/include/asm-arm/param.h                        |   17 
 b/include/asm-arm/proc-armv/pgtable.h            |    4 
 b/include/asm-arm/proc-armv/ptrace.h             |   11 
 b/include/asm-arm/proc-armv/system.h             |    4 
 b/include/asm-arm/procinfo.h                     |   17 
 b/include/asm-arm/suspend.h                      |    4 
 b/include/asm-arm/system.h                       |    7 
 b/include/asm-cris/pgtable.h                     |    2 
 b/include/asm-cris/siginfo.h                     |    2 
 b/include/asm-i386/suspend.h                     |    1 
 b/include/asm-m68k/mac_via.h                     |    2 
 b/include/asm-parisc/semaphore.h                 |    2 
 b/include/asm-ppc/keyboard.h                     |   28 
 b/include/asm-ppc/machdep.h                      |    6 
 b/include/asm-sh/pgtable-2level.h                |    2 
 b/include/asm-sparc/cache.h                      |    1 
 b/include/asm-sparc/param.h                      |   10 
 b/include/asm-sparc64/cache.h                    |    3 
 b/include/asm-sparc64/param.h                    |   10 
 b/include/linux/atapi.h                          |  281 ++
 b/include/linux/blkdev.h                         |    2 
 b/include/linux/brlock.h                         |    2 
 b/include/linux/buffer_head.h                    |    2 
 b/include/linux/console_struct.h                 |    1 
 b/include/linux/fs.h                             |   12 
 b/include/linux/gameport.h                       |    1 
 b/include/linux/hiddev.h                         |   27 
 b/include/linux/ide.h                            |   70 
 b/include/linux/if_vlan.h                        |   22 
 b/include/linux/input.h                          |   68 
 b/include/linux/namespace.h                      |    2 
 b/include/linux/netlink.h                        |    8 
 b/include/linux/nfs_xdr.h                        |    4 
 b/include/linux/notifier.h                       |    2 
 b/include/linux/raid/md_k.h                      |    2 
 b/include/linux/reiserfs_fs.h                    |    8 
 b/include/linux/sched.h                          |   21 
 b/include/linux/serio.h                          |    5 
 b/include/linux/smb_fs_sb.h                      |   46 
 b/include/linux/sunrpc/clnt.h                    |    5 
 b/include/linux/sunrpc/sched.h                   |    8 
 b/include/linux/sunrpc/timer.h                   |   41 
 b/include/linux/sunrpc/xprt.h                    |   29 
 b/include/linux/suspend.h                        |   13 
 b/include/linux/sysrq.h                          |   13 
 b/include/linux/uinput.h                         |   78 
 b/include/linux/usb.h                            |   34 
 b/include/linux/usbdevice_fs.h                   |    3 
 b/include/linux/vt_kern.h                        |    1 
 b/include/net/dsfield.h                          |   25 
 b/include/net/tcp.h                              |    1 
 b/include/scsi/sg.h                              |   23 
 b/ipc/msg.c                                      |    4 
 b/ipc/sem.c                                      |    6 
 b/kernel/futex.c                                 |   41 
 b/kernel/panic.c                                 |    2 
 b/kernel/platform.c                              |    7 
 b/kernel/pm.c                                    |    2 
 b/kernel/printk.c                                |    2 
 b/kernel/sched.c                                 |   14 
 b/kernel/softirq.c                               |    2 
 b/kernel/suspend.c                               |  347 +-
 b/lib/vsprintf.c                                 |    4 
 b/mm/filemap.c                                   |   86 
 b/mm/mmap.c                                      |    2 
 b/mm/mprotect.c                                  |    4 
 b/mm/msync.c                                     |    7 
 b/mm/slab.c                                      |    2 
 b/net/core/dst.c                                 |    6 
 b/net/ipv4/netfilter/ip_tables.c                 |    3 
 b/net/ipv4/tcp.c                                 |    2 
 b/net/netlink/af_netlink.c                       |   19 
 b/net/netsyms.c                                  |    2 
 b/net/sunrpc/Makefile                            |    3 
 b/net/sunrpc/clnt.c                              |    9 
 b/net/sunrpc/sched.c                             |   62 
 b/net/sunrpc/timer.c                             |   74 
 b/net/sunrpc/xdr.c                               |    2 
 b/net/sunrpc/xprt.c                              |  312 +-
 b/net/unix/af_unix.c                             |    2 
 b/sound/oss/Config.in                            |    4 
 b/sound/oss/ad1848.c                             |    9 
 b/sound/oss/btaudio.c                            |   71 
 b/sound/oss/es1370.c                             |   27 
 b/sound/oss/es1371.c                             |   55 
 b/sound/oss/mad16.c                              |    2 
 b/sound/oss/sb_audio.c                           |    6 
 b/sound/oss/trident.c                            |   72 
 b/sound/oss/trident.h                            |    4 
 b/sound/pci/cs46xx/cs46xx.c                      |    1 
 drivers/char/adbmouse.c                          |  209 -
 drivers/char/amigamouse.c                        |  213 -
 drivers/char/atixlmouse.c                        |  151 -
 drivers/char/logibusmouse.c                      |  165 -
 drivers/char/msbusmouse.c                        |  175 -
 drivers/char/pc110pad.c                          |  851 ------
 drivers/char/pc110pad.h                          |   31 
 drivers/char/qpmouse.c                           |  381 --
 drivers/usb/host/uhci-debug.h                    |  577 ----
 drivers/usb/host/uhci.c                          | 3132 -----------------------
 drivers/usb/host/uhci.h                          |  441 ---
 drivers/usb/host/usb-uhci-dbg.c                  |  151 -
 drivers/usb/host/usb-uhci-debug.h                |  141 -
 drivers/usb/host/usb-uhci-hcd.c                  |  649 ----
 drivers/usb/host/usb-uhci-hcd.h                  |  247 -
 drivers/usb/host/usb-uhci-hub.c                  |  213 -
 drivers/usb/host/usb-uhci-mem.c                  |  717 -----
 drivers/usb/host/usb-uhci-q.c                    | 1227 ---------
 drivers/usb/host/usb-uhci.c                      | 3095 ----------------------
 drivers/usb/host/usb-uhci.h                      |  307 --
 fs/reiserfs/buffer2.c                            |   69 
 591 files changed, 20850 insertions(+), 25971 deletions(-)

