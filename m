From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.29 released
Date: Fri, 26 Jul 2002 20:01:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200207270301.g6R313g01379@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.29 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.29.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.29.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               326093           1368151
Full source                       34985754         156037120

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/CREDITS                                        |   32 
 b/Documentation/00-INDEX                         |    2 
 b/Documentation/DocBook/Makefile                 |  320 +-
 b/Documentation/DocBook/kernel-api.tmpl          |   13 
 b/Documentation/DocBook/parportbook.tmpl         |    4 
 b/Documentation/cli-sti-removal.txt              |    8 
 b/Documentation/input/input-programming.txt      |   12 
 b/Documentation/input/input.txt                  |    2 
 b/Documentation/input/xpad.txt                   |   86 
 b/Documentation/kernel-doc-nano-HOWTO.txt        |   20 
 b/Documentation/ldm.txt                          |  102 
 b/Documentation/serial/driver                    |    2 
 b/Makefile                                       |   32 
 b/arch/alpha/config.in                           |    5 
 b/arch/arm/config.in                             |    5 
 b/arch/cris/config.in                            |    4 
 b/arch/i386/config.in                            |   42 
 b/arch/i386/kernel/apic.c                        |   18 
 b/arch/i386/kernel/apm.c                         |   39 
 b/arch/i386/kernel/cpu/common.c                  |   32 
 b/arch/i386/kernel/entry.S                       |    2 
 b/arch/i386/kernel/head.S                        |   49 
 b/arch/i386/kernel/i386_ksyms.c                  |    1 
 b/arch/i386/kernel/mtrr.c                        |    6 
 b/arch/i386/kernel/nmi.c                         |    9 
 b/arch/i386/kernel/process.c                     |   66 
 b/arch/i386/kernel/smp.c                         |    3 
 b/arch/i386/kernel/smpboot.c                     |  141 -
 b/arch/i386/kernel/suspend.c                     |   11 
 b/arch/i386/kernel/trampoline.S                  |    7 
 b/arch/i386/kernel/traps.c                       |   38 
 b/arch/i386/mm/Makefile                          |    2 
 b/arch/i386/mm/fault.c                           |    4 
 b/arch/i386/mm/init.c                            |  532 +---
 b/arch/i386/mm/pgtable.c                         |  188 +
 b/arch/ia64/config.in                            |    6 
 b/arch/ia64/kernel/ptrace.c                      |    4 
 b/arch/m68k/config.in                            |    9 
 b/arch/mips/config.in                            |    5 
 b/arch/mips64/config.in                          |    5 
 b/arch/parisc/config.in                          |    1 
 b/arch/ppc/4xx_io/Makefile                       |    1 
 b/arch/ppc/4xx_io/stb_kb.c                       |  289 --
 b/arch/ppc/8xx_io/uart.c                         |   16 
 b/arch/ppc/amiga/config.c                        |   18 
 b/arch/ppc/config.in                             |    4 
 b/arch/ppc/kernel/open_pic.c                     |    2 
 b/arch/ppc/kernel/ppc4xx_setup.c                 |    6 
 b/arch/ppc/kernel/smp.c                          |  172 +
 b/arch/ppc/platforms/apus_setup.c                |   39 
 b/arch/ppc/platforms/chrp_setup.c                |    1 
 b/arch/ppc/platforms/chrp_smp.c                  |   84 
 b/arch/ppc/platforms/gemini_setup.c              |    2 
 b/arch/ppc/platforms/iSeries_smp.c               |    7 
 b/arch/ppc/platforms/pmac_smp.c                  |    4 
 b/arch/ppc/platforms/pplus_setup.c               |    3 
 b/arch/ppc/platforms/prep_setup.c                |    3 
 b/arch/ppc/platforms/redwood.c                   |   19 
 b/arch/ppc/platforms/sandpoint_setup.c           |    1 
 b/arch/ppc/platforms/spruce.h                    |   11 
 b/arch/ppc/platforms/spruce_setup.c              |   44 
 b/arch/ppc/platforms/walnut.c                    |    5 
 b/arch/ppc/platforms/walnut.h                    |    8 
 b/arch/ppc64/config.in                           |    5 
 b/arch/s390/config.in                            |    1 
 b/arch/s390x/config.in                           |    1 
 b/arch/sh/config.in                              |    5 
 b/arch/sparc/config.in                           |    5 
 b/arch/sparc64/config.in                         |    5 
 b/arch/x86_64/config.in                          |    5 
 b/drivers/acpi/ac.c                              |   16 
 b/drivers/acpi/battery.c                         |   16 
 b/drivers/acpi/bus.c                             |   10 
 b/drivers/acpi/button.c                          |   16 
 b/drivers/acpi/debugger/dbcmds.c                 |    5 
 b/drivers/acpi/debugger/dbfileio.c               |   16 
 b/drivers/acpi/debugger/dbxface.c                |    6 
 b/drivers/acpi/dispatcher/dsobject.c             |  394 +--
 b/drivers/acpi/dispatcher/dsutils.c              |   83 
 b/drivers/acpi/dispatcher/dswload.c              |   20 
 b/drivers/acpi/dispatcher/dswstate.c             |    6 
 b/drivers/acpi/ec.c                              |   36 
 b/drivers/acpi/executer/excreate.c               |    4 
 b/drivers/acpi/executer/exdump.c                 |    6 
 b/drivers/acpi/executer/exoparg1.c               |   24 
 b/drivers/acpi/executer/exutils.c                |   61 
 b/drivers/acpi/fan.c                             |   16 
 b/drivers/acpi/include/acconfig.h                |   13 
 b/drivers/acpi/include/acdebug.h                 |   48 
 b/drivers/acpi/include/acdisasm.h                |  362 +++
 b/drivers/acpi/include/acglobal.h                |   14 
 b/drivers/acpi/include/aclocal.h                 |   30 
 b/drivers/acpi/include/acmacros.h                |   15 
 b/drivers/acpi/include/acnamesp.h                |    4 
 b/drivers/acpi/include/acpiosxf.h                |    8 
 b/drivers/acpi/include/acutils.h                 |    5 
 b/drivers/acpi/include/amlcode.h                 |   11 
 b/drivers/acpi/include/amlresrc.h                |   37 
 b/drivers/acpi/include/platform/acenv.h          |   17 
 b/drivers/acpi/namespace/nsdump.c                |   89 
 b/drivers/acpi/namespace/nsdumpdv.c              |  124 +
 b/drivers/acpi/namespace/nsload.c                |  110 
 b/drivers/acpi/namespace/nsxfeval.c              |  719 ++++++
 b/drivers/acpi/namespace/nsxfobj.c               |  765 ------
 b/drivers/acpi/parser/psargs.c                   |   38 
 b/drivers/acpi/parser/psopcode.c                 |    4 
 b/drivers/acpi/parser/psparse.c                  |    4 
 b/drivers/acpi/parser/psutils.c                  |    6 
 b/drivers/acpi/pci_irq.c                         |    2 
 b/drivers/acpi/pci_link.c                        |   16 
 b/drivers/acpi/pci_root.c                        |   16 
 b/drivers/acpi/power.c                           |   16 
 b/drivers/acpi/processor.c                       |   16 
 b/drivers/acpi/resources/rsio.c                  |   23 
 b/drivers/acpi/resources/rsirq.c                 |   19 
 b/drivers/acpi/system.c                          |   36 
 b/drivers/acpi/tables.c                          |   10 
 b/drivers/acpi/tables/tbrsdt.c                   |    8 
 b/drivers/acpi/thermal.c                         |   16 
 b/drivers/acpi/utilities/utglobal.c              |   58 
 b/drivers/base/fs.c                              |    6 
 b/drivers/block/DAC960.c                         |    2 
 b/drivers/block/genhd.c                          |    4 
 b/drivers/block/ll_rw_blk.c                      |   52 
 b/drivers/block/paride/ppc6lnx.c                 |    1 
 b/drivers/block/umem.c                           |    4 
 b/drivers/char/epca.h                            |    2 
 b/drivers/char/specialix_io8.h                   |    2 
 b/drivers/char/tty_io.c                          |    5 
 b/drivers/ide/Config.help                        |   10 
 b/drivers/ide/Config.in                          |   65 
 b/drivers/ide/Makefile                           |    4 
 b/drivers/ide/aec62xx.c                          |    5 
 b/drivers/ide/ali14xx.c                          |    5 
 b/drivers/ide/alim15x3.c                         |   34 
 b/drivers/ide/amd74xx.c                          |    5 
 b/drivers/ide/ata-timing.c                       |    5 
 b/drivers/ide/cmd640.c                           |   60 
 b/drivers/ide/cmd64x.c                           |   34 
 b/drivers/ide/cs5530.c                           |   14 
 b/drivers/ide/cy82c693.c                         |   13 
 b/drivers/ide/dtc2278.c                          |    6 
 b/drivers/ide/hpt34x.c                           |    4 
 b/drivers/ide/hpt366.c                           |    5 
 b/drivers/ide/hptraid.c                          |    4 
 b/drivers/ide/ht6560b.c                          |   20 
 b/drivers/ide/icside.c                           |    2 
 b/drivers/ide/ide-cd.c                           |    4 
 b/drivers/ide/ide-cd.h                           |   26 
 b/drivers/ide/ide-disk.c                         |    3 
 b/drivers/ide/ide-floppy.c                       |    4 
 b/drivers/ide/ide-m8xx.c                         |    9 
 b/drivers/ide/ide-pci.c                          |    3 
 b/drivers/ide/ide-pmac.c                         |   28 
 b/drivers/ide/ide-tape.c                         |    6 
 b/drivers/ide/ide.c                              |  396 +--
 b/drivers/ide/ioctl.c                            |   16 
 b/drivers/ide/it8172.c                           |    5 
 b/drivers/ide/main.c                             |    6 
 b/drivers/ide/ns87415.c                          |    2 
 b/drivers/ide/opti621.c                          |   16 
 b/drivers/ide/pcidma.c                           |    5 
 b/drivers/ide/pdc202xx.c                         |   14 
 b/drivers/ide/pdc4030.c                          |    4 
 b/drivers/ide/pdcraid.c                          |    4 
 b/drivers/ide/piix.c                             |    5 
 b/drivers/ide/probe.c                            |   11 
 b/drivers/ide/qd65xx.c                           |   47 
 b/drivers/ide/qd65xx.h                           |    4 
 b/drivers/ide/quirks.c                           |    7 
 b/drivers/ide/serverworks.c                      |    4 
 b/drivers/ide/sis5513.c                          |   34 
 b/drivers/ide/sl82c105.c                         |   10 
 b/drivers/ide/tcq.c                              |    1 
 b/drivers/ide/timing.h                           |   83 
 b/drivers/ide/trm290.c                           |    2 
 b/drivers/ide/umc8672.c                          |   18 
 b/drivers/ide/via82cxxx.c                        |    5 
 b/drivers/input/evbug.c                          |   10 
 b/drivers/input/evdev.c                          |   89 
 b/drivers/input/gameport/cs461x.c                |   14 
 b/drivers/input/gameport/emu10k1-gp.c            |   14 
 b/drivers/input/gameport/fm801-gp.c              |   14 
 b/drivers/input/gameport/gameport.c              |    5 
 b/drivers/input/gameport/lightning.c             |    2 
 b/drivers/input/gameport/ns558.c                 |   14 
 b/drivers/input/gameport/vortex.c                |   14 
 b/drivers/input/input.c                          |   48 
 b/drivers/input/joydev.c                         |   48 
 b/drivers/input/joystick/Config.help             |    9 
 b/drivers/input/joystick/Config.in               |    1 
 b/drivers/input/joystick/Makefile                |    1 
 b/drivers/input/joystick/a3d.c                   |   24 
 b/drivers/input/joystick/adi.c                   |   14 
 b/drivers/input/joystick/amijoy.c                |   10 
 b/drivers/input/joystick/analog.c                |   24 
 b/drivers/input/joystick/cobra.c                 |   14 
 b/drivers/input/joystick/db9.c                   |   16 
 b/drivers/input/joystick/gamecon.c               |   25 
 b/drivers/input/joystick/gf2k.c                  |   14 
 b/drivers/input/joystick/grip.c                  |   14 
 b/drivers/input/joystick/grip_mp.c               |  676 +++++
 b/drivers/input/joystick/guillemot.c             |   14 
 b/drivers/input/joystick/iforce/iforce-main.c    |   10 
 b/drivers/input/joystick/iforce/iforce-packets.c |    3 
 b/drivers/input/joystick/iforce/iforce-serio.c   |    8 
 b/drivers/input/joystick/iforce/iforce-usb.c     |   10 
 b/drivers/input/joystick/interact.c              |   14 
 b/drivers/input/joystick/joydump.c               |    4 
 b/drivers/input/joystick/magellan.c              |   16 
 b/drivers/input/joystick/sidewinder.c            |   22 
 b/drivers/input/joystick/spaceball.c             |   16 
 b/drivers/input/joystick/spaceorb.c              |   16 
 b/drivers/input/joystick/stinger.c               |   16 
 b/drivers/input/joystick/tmdc.c                  |   14 
 b/drivers/input/joystick/turbografx.c            |   16 
 b/drivers/input/joystick/twidjoy.c               |   16 
 b/drivers/input/joystick/warrior.c               |   21 
 b/drivers/input/keybdev.c                        |   46 
 b/drivers/input/keyboard/Config.help             |   12 
 b/drivers/input/keyboard/Config.in               |    1 
 b/drivers/input/keyboard/Makefile                |    1 
 b/drivers/input/keyboard/amikbd.c                |   10 
 b/drivers/input/keyboard/atkbd.c                 |   56 
 b/drivers/input/keyboard/maple_keyb.c            |   12 
 b/drivers/input/keyboard/newtonkbd.c             |   16 
 b/drivers/input/keyboard/sunkbd.c                |   15 
 b/drivers/input/keyboard/xtkbd.c                 |   15 
 b/drivers/input/mouse/amimouse.c                 |   10 
 b/drivers/input/mouse/inport.c                   |   25 
 b/drivers/input/mouse/logibm.c                   |   37 
 b/drivers/input/mouse/maplemouse.c               |    9 
 b/drivers/input/mouse/pc110pad.c                 |   14 
 b/drivers/input/mouse/psmouse.c                  |   23 
 b/drivers/input/mouse/rpcmouse.c                 |   28 
 b/drivers/input/mouse/sermouse.c                 |   18 
 b/drivers/input/mousedev.c                       |   65 
 b/drivers/input/power.c                          |   26 
 b/drivers/input/serio/Config.in                  |   10 
 b/drivers/input/serio/Makefile                   |    2 
 b/drivers/input/serio/ambakmi.c                  |  158 +
 b/drivers/input/serio/ct82c710.c                 |   12 
 b/drivers/input/serio/i8042-ppcio.h              |    6 
 b/drivers/input/serio/i8042.c                    |  209 -
 b/drivers/input/serio/parkbd.c                   |   10 
 b/drivers/input/serio/q40kbd.c                   |    8 
 b/drivers/input/serio/rpckbd.c                   |   37 
 b/drivers/input/serio/sa1111ps2.c                |  286 ++
 b/drivers/input/serio/serio.c                    |    1 
 b/drivers/input/serio/serport.c                  |   16 
 b/drivers/input/touchscreen/gunze.c              |   15 
 b/drivers/input/touchscreen/h3600_ts_input.c     |   18 
 b/drivers/input/tsdev.c                          |   28 
 b/drivers/input/uinput.c                         |   40 
 b/drivers/macintosh/adbhid.c                     |   16 
 b/drivers/macintosh/mac_hid.c                    |    9 
 b/drivers/md/xor.c                               |    1 
 b/drivers/media/radio/miropcm20-rds-core.c       |    3 
 b/drivers/media/video/Config.in                  |    1 
 b/drivers/media/video/Makefile                   |    8 
 b/drivers/message/i2o/i2o_config.c               |   86 
 b/drivers/message/i2o/i2o_core.c                 |  307 +-
 b/drivers/message/i2o/i2o_pci.c                  |  248 +-
 b/drivers/message/i2o/i2o_proc.c                 |    1 
 b/drivers/net/8139cp.c                           |  126 -
 b/drivers/net/aironet4500_card.c                 |    1 
 b/drivers/net/aironet4500_core.c                 |    1 
 b/drivers/net/aironet4500_proc.c                 |    1 
 b/drivers/net/tlan.c                             |  116 
 b/drivers/net/tlan.h                             |    7 
 b/drivers/net/tulip/de2104x.c                    |    2 
 b/drivers/net/tulip/de4x5.c                      |    4 
 b/drivers/net/tulip/winbond-840.c                |    2 
 b/drivers/net/wireless/Config.in                 |    2 
 b/drivers/parport/parport_pc.c                   |    2 
 b/drivers/parport/share.c                        |   14 
 b/drivers/pci/quirks.c                           |   16 
 b/drivers/scsi/BusLogic.c                        |  267 +-
 b/drivers/scsi/BusLogic.h                        |   32 
 b/drivers/scsi/atp870u.c                         | 1280 ++++------
 b/drivers/scsi/atp870u.h                         |   21 
 b/drivers/scsi/cpqfcTSinit.c                     |   10 
 b/drivers/scsi/scsi_lib.c                        |   51 
 b/drivers/serial/21285.c                         |   88 
 b/drivers/serial/8250.c                          |   65 
 b/drivers/serial/8250.h                          |    1 
 b/drivers/serial/8250_pci.c                      |    8 
 b/drivers/serial/amba.c                          |  108 
 b/drivers/serial/anakin.c                        |  118 -
 b/drivers/serial/clps711x.c                      |   80 
 b/drivers/serial/core.c                          |    7 
 b/drivers/serial/sa1100.c                        |   60 
 b/drivers/serial/uart00.c                        |   74 
 b/drivers/usb/Config.help                        |   13 
 b/drivers/usb/class/Config.help                  |    4 
 b/drivers/usb/class/audio.c                      |    4 
 b/drivers/usb/core/usb.c                         |    4 
 b/drivers/usb/host/Config.help                   |    3 
 b/drivers/usb/host/ehci-hcd.c                    |  128 -
 b/drivers/usb/host/ehci-q.c                      |    8 
 b/drivers/usb/host/ehci-sched.c                  |   43 
 b/drivers/usb/host/ohci-dbg.c                    |   13 
 b/drivers/usb/host/ohci-hcd.c                    |  144 -
 b/drivers/usb/host/ohci-hub.c                    |   10 
 b/drivers/usb/host/ohci-q.c                      |  449 +--
 b/drivers/usb/host/ohci.h                        |   21 
 b/drivers/usb/image/scanner.h                    |    7 
 b/drivers/usb/input/Config.help                  |   23 
 b/drivers/usb/input/Config.in                    |    3 
 b/drivers/usb/input/Makefile                     |    5 
 b/drivers/usb/input/aiptek.c                     |   10 
 b/drivers/usb/input/fixp-arith.h                 |    8 
 b/drivers/usb/input/hid-core.c                   |   11 
 b/drivers/usb/input/hid-ff.c                     |   16 
 b/drivers/usb/input/hid-input.c                  |   13 
 b/drivers/usb/input/hid-lgff.c                   |  493 ++--
 b/drivers/usb/input/hid.h                        |    2 
 b/drivers/usb/input/powermate.c                  |    9 
 b/drivers/usb/input/usbkbd.c                     |   12 
 b/drivers/usb/input/usbmouse.c                   |   12 
 b/drivers/usb/input/wacom.c                      |   27 
 b/drivers/usb/input/xpad.c                       |  164 -
 b/drivers/usb/misc/Config.help                   |    2 
 b/drivers/usb/misc/emi26.c                       |    8 
 b/drivers/usb/net/pegasus.c                      |    4 
 b/drivers/usb/net/usbnet.c                       |   12 
 b/drivers/usb/serial/Config.help                 |   10 
 b/drivers/usb/serial/Config.in                   |    1 
 b/drivers/usb/serial/Makefile                    |    1 
 b/drivers/usb/serial/digi_acceleport.c           |    4 
 b/drivers/usb/serial/io_fw_down3.h               |  799 ++++++
 b/drivers/usb/serial/io_ti.c                     | 2684 +++++++++++++++++++++++
 b/drivers/usb/serial/io_ti.h                     |  180 +
 b/drivers/usb/serial/io_usbvend.h                |  113 
 b/drivers/usb/serial/usbserial.c                 |    7 
 b/drivers/usb/storage/Config.help                |   13 
 b/drivers/usb/storage/Config.in                  |   10 
 b/drivers/usb/storage/usb.c                      |   72 
 b/fs/attr.c                                      |   11 
 b/fs/dnotify.c                                   |    8 
 b/fs/dquot.c                                     |    3 
 b/fs/driverfs/inode.c                            |  111 
 b/fs/fcntl.c                                     |   25 
 b/fs/file_table.c                                |    9 
 b/fs/inode.c                                     |   12 
 b/fs/ioctl.c                                     |    8 
 b/fs/locks.c                                     |   20 
 b/fs/namei.c                                     |  126 -
 b/fs/namespace.c                                 |   27 
 b/fs/ncpfs/Makefile                              |    8 
 b/fs/ncpfs/dir.c                                 |  103 
 b/fs/ncpfs/file.c                                |   71 
 b/fs/ncpfs/inode.c                               |  317 +-
 b/fs/ncpfs/ioctl.c                               |   26 
 b/fs/ncpfs/ncplib_kernel.c                       |  264 ++
 b/fs/ncpfs/ncplib_kernel.h                       |   32 
 b/fs/ncpfs/symlink.c                             |  128 -
 b/fs/nfs/dir.c                                   |   93 
 b/fs/nfs/inode.c                                 |   30 
 b/fs/nfs/nfs3proc.c                              |   17 
 b/fs/open.c                                      |    4 
 b/fs/partitions/Config.help                      |    5 
 b/fs/partitions/Config.in                        |    2 
 b/fs/partitions/ldm.c                            | 2140 +++++++++++-------
 b/fs/partitions/ldm.h                            |  208 +
 b/fs/partitions/msdos.c                          |    1 
 b/fs/proc/array.c                                |    2 
 b/fs/proc/base.c                                 |    2 
 b/fs/quota.c                                     |    4 
 b/fs/read_write.c                                |   65 
 b/fs/readdir.c                                   |    5 
 b/fs/stat.c                                      |   13 
 b/fs/super.c                                     |    9 
 b/fs/xattr.c                                     |   17 
 b/include/asm-generic/sections.h                 |   11 
 b/include/asm-i386/apic.h                        |    3 
 b/include/asm-i386/desc.h                        |  109 
 b/include/asm-i386/mmu_context.h                 |   12 
 b/include/asm-i386/pgtable-3level.h              |    2 
 b/include/asm-i386/processor.h                   |    9 
 b/include/asm-i386/rwsem.h                       |   26 
 b/include/asm-i386/sections.h                    |    7 
 b/include/asm-i386/smp.h                         |   15 
 b/include/asm-ppc/keyboard.h                     |    4 
 b/include/asm-ppc/machdep.h                      |    8 
 b/include/asm-ppc/smp.h                          |    6 
 b/include/linux/blkdev.h                         |   31 
 b/include/linux/fs.h                             |    5 
 b/include/linux/gameport.h                       |    5 
 b/include/linux/hdreg.h                          |  488 ++--
 b/include/linux/i2o.h                            |  107 
 b/include/linux/ide.h                            |   61 
 b/include/linux/input.h                          |   44 
 b/include/linux/nbd.h                            |    2 
 b/include/linux/ncp.h                            |   23 
 b/include/linux/ncp_fs.h                         |    5 
 b/include/linux/ncp_fs_i.h                       |    3 
 b/include/linux/ncp_mount.h                      |    1 
 b/include/linux/nfs_fs.h                         |   12 
 b/include/linux/nfs_xdr.h                        |    2 
 b/include/linux/notifier.h                       |    2 
 b/include/linux/page-flags.h                     |    1 
 b/include/linux/pci_ids.h                        |    3 
 b/include/linux/rwsem.h                          |   10 
 b/include/linux/sched.h                          |    1 
 b/include/linux/security.h                       |  430 +++
 b/include/linux/serio.h                          |    4 
 b/include/linux/smp.h                            |   25 
 b/include/linux/sunrpc/clnt.h                    |    1 
 b/include/linux/sunrpc/xprt.h                    |   11 
 b/include/linux/uinput.h                         |    5 
 b/init/do_mounts.c                               |    1 
 b/init/main.c                                    |   61 
 b/kernel/Makefile                                |    1 
 b/kernel/acct.c                                  |    5 
 b/kernel/cpu.c                                   |   54 
 b/kernel/sched.c                                 |   62 
 b/kernel/softirq.c                               |   37 
 b/kernel/timer.c                                 |    6 
 b/lib/rwsem.c                                    |   37 
 b/mm/filemap.c                                   |    9 
 b/mm/mmap.c                                      |    5 
 b/mm/mprotect.c                                  |    5 
 b/net/core/scm.c                                 |    4 
 b/net/ipx/af_ipx.c                               |   29 
 b/net/sunrpc/clnt.c                              |   14 
 b/net/sunrpc/sunrpc_syms.c                       |    1 
 b/net/sunrpc/xprt.c                              |   67 
 b/scripts/Makefile                               |    9 
 b/scripts/docproc.c                              |  443 +++
 b/scripts/kernel-doc                             |   94 
 b/security/capability.c                          |  428 +++
 b/security/dummy.c                               |  434 +++
 b/sound/isa/ad1848/ad1848_lib.c                  |    1 
 b/sound/oss/i810_audio.c                         |    7 
 b/sound/pci/Config.in                            |    1 
 b/sound/pci/ali5451/ali5451.c                    |    4 
 b/sound/pci/cmipci.c                             |    2 
 b/sound/pci/cs4281.c                             |    5 
 b/sound/pci/ens1370.c                            |    3 
 b/sound/pci/ice1712.c                            |    7 
 b/sound/pci/intel8x0.c                           |    3 
 b/sound/pci/maestro3.c                           |    3 
 b/sound/pci/nm256/nm256.c                        |    3 
 b/sound/pci/via686.c                             |    5 
 b/sound/pci/via8233.c                            |    5 
 drivers/char/serial_21285.c                      |  497 ----
 drivers/char/serial_amba.c                       | 2014 -----------------
 drivers/ide/ata-timing.h                         |   95 
 drivers/input/keyboard/ps2serkbd.c               |  298 --
 drivers/media/video/i2c-old.c                    |  450 ---
 drivers/media/video/i2c-parport.c                |  152 -
 drivers/usb/input/hid-lg3dff.c                   |  444 ---
 include/asm-s390/hdreg.h                         |   13 
 include/asm-s390/ide.h                           |   27 
 include/asm-s390x/hdreg.h                        |   13 
 scripts/docgen                                   |   10 
 scripts/gen-all-syms                             |    7 
 458 files changed, 17416 insertions(+), 12511 deletions(-)

