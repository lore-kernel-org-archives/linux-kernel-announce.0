From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.51 released
Date: Mon, 9 Dec 2002 19:10:04 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200212100310.gBA3A4X31274@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.51 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.51.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.51.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                              1418122           6966994
Full source                       38794793         174458880

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/fb/README-sstfb.txt                 |  173 
 Documentation/s390/chandev.8                      |  429 -
 arch/parisc/kernel/keyboard.c                     |  101 
 b/CREDITS                                         |   37 
 b/Documentation/DocBook/kernel-api.tmpl           |    4 
 b/Documentation/DocBook/kernel-locking.tmpl       |    6 
 b/Documentation/block/biodoc.txt                  |    2 
 b/Documentation/crypto/api-intro.txt              |   17 
 b/Documentation/fb/internals.txt                  |    5 
 b/Documentation/fb/sstfb.txt                      |  174 
 b/Documentation/filesystems/vfat.txt              |    4 
 b/Documentation/networking/netdevices.txt         |   33 
 b/Documentation/s390/Debugging390.txt             |   68 
 b/Documentation/s390/cds.txt                      |  936 ---
 b/Documentation/s390/driver-model.txt             |  209 
 b/Documentation/scsi/scsi_mid_low_api.txt         |  190 
 b/Documentation/sonypi.txt                        |    1 
 b/MAINTAINERS                                     |   33 
 b/Makefile                                        |   45 
 b/arch/alpha/Kconfig                              |   31 
 b/arch/alpha/kernel/core_cia.c                    |   43 
 b/arch/alpha/kernel/pci.c                         |   56 
 b/arch/alpha/kernel/signal.c                      |   27 
 b/arch/alpha/kernel/systbls.S                     |    1 
 b/arch/alpha/lib/ev6-stxncpy.S                    |   10 
 b/arch/alpha/lib/stxncpy.S                        |   11 
 b/arch/arm/Kconfig                                |   21 
 b/arch/arm/kernel/ptrace.c                        |    3 
 b/arch/i386/Kconfig                               |  119 
 b/arch/i386/Makefile                              |   12 
 b/arch/i386/boot/Makefile                         |   12 
 b/arch/i386/boot/compressed/Makefile              |    1 
 b/arch/i386/kernel/acpi.c                         |   76 
 b/arch/i386/kernel/acpi_wakeup.S                  |   88 
 b/arch/i386/kernel/cpu/cyrix.c                    |    1 
 b/arch/i386/kernel/cpu/intel.c                    |    3 
 b/arch/i386/kernel/cpu/mcheck/mce.c               |    3 
 b/arch/i386/kernel/edd.c                          |   74 
 b/arch/i386/kernel/entry.S                        |    2 
 b/arch/i386/kernel/head.S                         |    2 
 b/arch/i386/kernel/i387.c                         |   24 
 b/arch/i386/kernel/i8259.c                        |   46 
 b/arch/i386/kernel/io_apic.c                      |    3 
 b/arch/i386/kernel/mca.c                          |  978 ---
 b/arch/i386/kernel/microcode.c                    |    1 
 b/arch/i386/kernel/ptrace.c                       |    3 
 b/arch/i386/kernel/signal.c                       |    6 
 b/arch/i386/kernel/suspend.c                      |    7 
 b/arch/i386/kernel/suspend_asm.S                  |   11 
 b/arch/i386/mm/hugetlbpage.c                      |    1 
 b/arch/i386/mm/init.c                             |    2 
 b/arch/i386/oprofile/nmi_int.c                    |    2 
 b/arch/ia64/Kconfig                               |   25 
 b/arch/ia64/kernel/efivars.c                      |   12 
 b/arch/ia64/kernel/palinfo.c                      |   11 
 b/arch/ia64/kernel/ptrace.c                       |    3 
 b/arch/ia64/kernel/salinfo.c                      |    9 
 b/arch/ia64/sn/io/hcl.c                           |   18 
 b/arch/ia64/sn/io/pciba.c                         |   15 
 b/arch/ia64/sn/kernel/sn1/synergy.c               |    2 
 b/arch/m68k/Kconfig                               |    7 
 b/arch/m68knommu/Kconfig                          |   35 
 b/arch/m68knommu/Makefile                         |    9 
 b/arch/m68knommu/kernel/asm-offsets.c             |    3 
 b/arch/m68knommu/kernel/m68k_ksyms.c              |    2 
 b/arch/m68knommu/kernel/syscalltable.S            |   10 
 b/arch/m68knommu/platform/68328/Makefile          |    2 
 b/arch/mips/Kconfig                               |   64 
 b/arch/mips64/Kconfig                             |   23 
 b/arch/parisc/Kconfig                             |   30 
 b/arch/parisc/kernel/Makefile                     |    3 
 b/arch/parisc/kernel/irq.c                        |   36 
 b/arch/ppc/8xx_io/cs4218_tdm.c                    |    7 
 b/arch/ppc/Kconfig                                |   22 
 b/arch/ppc/Makefile                               |    6 
 b/arch/ppc/amiga/amiints.c                        |   12 
 b/arch/ppc/boot/Makefile                          |    2 
 b/arch/ppc/kernel/cputable.c                      |   52 
 b/arch/ppc/kernel/head.S                          |    4 
 b/arch/ppc/kernel/misc.S                          |    2 
 b/arch/ppc/kernel/module.c                        |   14 
 b/arch/ppc/kernel/ppc6xx_idle.c                   |    5 
 b/arch/ppc/kernel/ptrace.c                        |    3 
 b/arch/ppc/kernel/signal.c                        |   23 
 b/arch/ppc/kernel/smp.c                           |    2 
 b/arch/ppc/platforms/residual.c                   |    3 
 b/arch/ppc64/Kconfig                              |   49 
 b/arch/ppc64/Makefile                             |    3 
 b/arch/ppc64/defconfig                            |   37 
 b/arch/ppc64/kernel/Makefile                      |    2 
 b/arch/ppc64/kernel/binfmt_elf32.c                |   18 
 b/arch/ppc64/kernel/chrp_setup.c                  |   13 
 b/arch/ppc64/kernel/eeh.c                         |  253 
 b/arch/ppc64/kernel/entry.S                       |    2 
 b/arch/ppc64/kernel/htab.c                        |    2 
 b/arch/ppc64/kernel/iSeries_pci.c                 |   29 
 b/arch/ppc64/kernel/ioctl32.c                     |   12 
 b/arch/ppc64/kernel/mf.c                          |   10 
 b/arch/ppc64/kernel/misc.S                        |   42 
 b/arch/ppc64/kernel/open_pic.c                    |    7 
 b/arch/ppc64/kernel/pSeries_pci.c                 |  169 
 b/arch/ppc64/kernel/pci.c                         |  276 
 b/arch/ppc64/kernel/pci.h                         |   26 
 b/arch/ppc64/kernel/pci_dma.c                     |    2 
 b/arch/ppc64/kernel/pci_dn.c                      |  156 
 b/arch/ppc64/kernel/ppc_ksyms.c                   |    7 
 b/arch/ppc64/kernel/process.c                     |  217 
 b/arch/ppc64/kernel/profile.c                     |   42 
 b/arch/ppc64/kernel/prom.c                        |    3 
 b/arch/ppc64/kernel/ptrace.c                      |    3 
 b/arch/ppc64/kernel/ptrace32.c                    |    3 
 b/arch/ppc64/kernel/signal.c                      |   26 
 b/arch/ppc64/kernel/signal32.c                    |   37 
 b/arch/ppc64/kernel/smp.c                         |    2 
 b/arch/ppc64/kernel/sys32.S                       |   12 
 b/arch/ppc64/kernel/sys_ppc32.c                   |  673 +-
 b/arch/ppc64/kernel/time.c                        |   33 
 b/arch/ppc64/kernel/traps.c                       |    2 
 b/arch/ppc64/kernel/xics.c                        |   13 
 b/arch/ppc64/mm/init.c                            |   10 
 b/arch/ppc64/oprofile/Kconfig                     |   23 
 b/arch/ppc64/oprofile/Makefile                    |    8 
 b/arch/ppc64/oprofile/init.c                      |   20 
 b/arch/ppc64/oprofile/timer_int.c                 |   56 
 b/arch/s390/Kconfig                               |   32 
 b/arch/s390/defconfig                             |   11 
 b/arch/s390/kernel/debug.c                        |    2 
 b/arch/s390/kernel/head.S                         |   27 
 b/arch/s390/kernel/process.c                      |   15 
 b/arch/s390/kernel/ptrace.c                       |    4 
 b/arch/s390/kernel/setup.c                        |   11 
 b/arch/s390/kernel/smp.c                          |    9 
 b/arch/s390x/Kconfig                              |   32 
 b/arch/s390x/defconfig                            |   11 
 b/arch/s390x/kernel/debug.c                       |    2 
 b/arch/s390x/kernel/head.S                        |   24 
 b/arch/s390x/kernel/process.c                     |   15 
 b/arch/s390x/kernel/ptrace.c                      |    3 
 b/arch/s390x/kernel/setup.c                       |   11 
 b/arch/s390x/kernel/smp.c                         |    9 
 b/arch/sh/Kconfig                                 |   55 
 b/arch/sparc/Kconfig                              |   16 
 b/arch/sparc/defconfig                            |  220 
 b/arch/sparc/kernel/devices.c                     |    2 
 b/arch/sparc/kernel/ioport.c                      |    2 
 b/arch/sparc/kernel/irq.c                         |   16 
 b/arch/sparc/kernel/process.c                     |   36 
 b/arch/sparc/kernel/ptrace.c                      |    3 
 b/arch/sparc/kernel/signal.c                      |   40 
 b/arch/sparc/kernel/sparc_ksyms.c                 |    6 
 b/arch/sparc/kernel/sun4c_irq.c                   |    4 
 b/arch/sparc/kernel/sys_sunos.c                   |    2 
 b/arch/sparc/kernel/systbls.S                     |    2 
 b/arch/sparc/kernel/tick14.c                      |    1 
 b/arch/sparc/mm/highmem.c                         |    6 
 b/arch/sparc/mm/init.c                            |    6 
 b/arch/sparc/mm/iommu.c                           |    4 
 b/arch/sparc/mm/srmmu.c                           |   74 
 b/arch/sparc/mm/sun4c.c                           |    6 
 b/arch/sparc64/Kconfig                            |   17 
 b/arch/sparc64/Makefile                           |    8 
 b/arch/sparc64/defconfig                          |  206 
 b/arch/sparc64/kernel/Makefile                    |    1 
 b/arch/sparc64/kernel/binfmt_elf32.c              |   18 
 b/arch/sparc64/kernel/ioctl32.c                   |   12 
 b/arch/sparc64/kernel/process.c                   |   38 
 b/arch/sparc64/kernel/profile.c                   |   42 
 b/arch/sparc64/kernel/ptrace.c                    |    3 
 b/arch/sparc64/kernel/signal.c                    |   40 
 b/arch/sparc64/kernel/signal32.c                  |   43 
 b/arch/sparc64/kernel/smp.c                       |   84 
 b/arch/sparc64/kernel/sparc64_ksyms.c             |    6 
 b/arch/sparc64/kernel/sys32.S                     |    4 
 b/arch/sparc64/kernel/sys_sparc32.c               |  341 -
 b/arch/sparc64/kernel/sys_sunos32.c               |   20 
 b/arch/sparc64/kernel/systbls.S                   |   18 
 b/arch/sparc64/kernel/time.c                      |   21 
 b/arch/sparc64/oprofile/Kconfig                   |   23 
 b/arch/sparc64/oprofile/Makefile                  |    8 
 b/arch/sparc64/oprofile/init.c                    |   20 
 b/arch/sparc64/oprofile/timer_int.c               |   56 
 b/arch/sparc64/solaris/ioctl.c                    |    2 
 b/arch/sparc64/solaris/misc.c                     |    7 
 b/arch/sparc64/solaris/socket.c                   |    5 
 b/arch/sparc64/solaris/socksys.c                  |   12 
 b/arch/um/kernel/ptrace.c                         |    3 
 b/arch/um/kernel/sys_call_table.c                 |    6 
 b/arch/v850/Kconfig                               |   35 
 b/arch/x86_64/Kconfig                             |   55 
 b/arch/x86_64/kernel/ptrace.c                     |    3 
 b/crypto/Kconfig                                  |   26 
 b/crypto/Makefile                                 |    6 
 b/crypto/api.c                                    |  136 
 b/crypto/cipher.c                                 |   40 
 b/crypto/internal.h                               |    9 
 b/crypto/proc.c                                   |  105 
 b/crypto/serpent.c                                |  506 +
 b/crypto/tcrypt.c                                 |  327 +
 b/crypto/tcrypt.h                                 |  313 +
 b/crypto/twofish.c                                |  899 +++
 b/drivers/Makefile                                |    4 
 b/drivers/acorn/char/i2c.c                        |    7 
 b/drivers/acorn/scsi/acornscsi.c                  |    6 
 b/drivers/acorn/scsi/arxescsi.c                   |    4 
 b/drivers/acorn/scsi/cumana_1.c                   |    2 
 b/drivers/acorn/scsi/cumana_2.c                   |    4 
 b/drivers/acorn/scsi/eesox.c                      |    4 
 b/drivers/acorn/scsi/fas216.c                     |    2 
 b/drivers/acorn/scsi/oak.c                        |    2 
 b/drivers/acorn/scsi/powertec.c                   |    4 
 b/drivers/acpi/Kconfig                            |    3 
 b/drivers/acpi/acpi_drivers.h                     |    2 
 b/drivers/acpi/dispatcher/Makefile                |    3 
 b/drivers/acpi/dispatcher/dsinit.c                |  220 
 b/drivers/acpi/dispatcher/dsmthdat.c              |   20 
 b/drivers/acpi/dispatcher/dsobject.c              |  183 
 b/drivers/acpi/dispatcher/dsopcode.c              |    6 
 b/drivers/acpi/dispatcher/dswload.c               |   58 
 b/drivers/acpi/dispatcher/dswstate.c              |   16 
 b/drivers/acpi/events/Makefile                    |    3 
 b/drivers/acpi/events/evevent.c                   |  677 --
 b/drivers/acpi/events/evgpe.c                     |  706 ++
 b/drivers/acpi/events/evregion.c                  |    4 
 b/drivers/acpi/events/evxfevnt.c                  |   15 
 b/drivers/acpi/executer/exconvrt.c                |    4 
 b/drivers/acpi/executer/exfield.c                 |   10 
 b/drivers/acpi/executer/exmisc.c                  |    6 
 b/drivers/acpi/executer/exregion.c                |    6 
 b/drivers/acpi/executer/exstorob.c                |   19 
 b/drivers/acpi/hardware/hwregs.c                  |    9 
 b/drivers/acpi/hardware/hwsleep.c                 |    4 
 b/drivers/acpi/include/acconfig.h                 |   67 
 b/drivers/acpi/include/acexcep.h                  |    8 
 b/drivers/acpi/include/acglobal.h                 |    5 
 b/drivers/acpi/include/aclocal.h                  |    4 
 b/drivers/acpi/include/acmacros.h                 |   10 
 b/drivers/acpi/include/acnamesp.h                 |   19 
 b/drivers/acpi/include/acoutput.h                 |   46 
 b/drivers/acpi/include/acstruct.h                 |    8 
 b/drivers/acpi/include/actypes.h                  |    7 
 b/drivers/acpi/include/acutils.h                  |   12 
 b/drivers/acpi/include/platform/acgcc.h           |    9 
 b/drivers/acpi/namespace/Makefile                 |    3 
 b/drivers/acpi/namespace/nsdump.c                 |   21 
 b/drivers/acpi/namespace/nsinit.c                 |   23 
 b/drivers/acpi/namespace/nsload.c                 |  120 
 b/drivers/acpi/namespace/nsnames.c                |    6 
 b/drivers/acpi/namespace/nsparse.c                |  153 
 b/drivers/acpi/namespace/nsutils.c                |   97 
 b/drivers/acpi/namespace/nsxfname.c               |    4 
 b/drivers/acpi/namespace/nsxfobj.c                |    2 
 b/drivers/acpi/osl.c                              |    4 
 b/drivers/acpi/parser/psparse.c                   |    8 
 b/drivers/acpi/pci_bind.c                         |    8 
 b/drivers/acpi/pci_irq.c                          |   10 
 b/drivers/acpi/resources/rscalc.c                 |    8 
 b/drivers/acpi/resources/rscreate.c               |    6 
 b/drivers/acpi/resources/rsutils.c                |   75 
 b/drivers/acpi/tables/tbxface.c                   |    4 
 b/drivers/acpi/tables/tbxfroot.c                  |   32 
 b/drivers/acpi/utilities/utalloc.c                |    6 
 b/drivers/acpi/utilities/utcopy.c                 |   25 
 b/drivers/acpi/utilities/utdelete.c               |    4 
 b/drivers/acpi/utilities/uteval.c                 |  332 -
 b/drivers/acpi/utilities/utglobal.c               |   27 
 b/drivers/acpi/utilities/utmisc.c                 |   55 
 b/drivers/atm/ambassador.c                        |    4 
 b/drivers/atm/ambassador.h                        |    2 
 b/drivers/atm/atmtcp.c                            |   12 
 b/drivers/atm/horizon.c                           |    7 
 b/drivers/atm/horizon.h                           |    2 
 b/drivers/base/base.h                             |   12 
 b/drivers/base/bus.c                              |   90 
 b/drivers/base/class.c                            |   12 
 b/drivers/base/core.c                             |   24 
 b/drivers/base/intf.c                             |  275 
 b/drivers/base/node.c                             |    4 
 b/drivers/base/power.c                            |   22 
 b/drivers/block/acsi.c                            |   15 
 b/drivers/block/acsi_slm.c                        |   28 
 b/drivers/block/amiflop.c                         |   27 
 b/drivers/block/ataflop.c                         |   16 
 b/drivers/block/cciss.c                           |   20 
 b/drivers/block/cciss.h                           |    2 
 b/drivers/block/cpqarray.c                        |   33 
 b/drivers/block/floppy.c                          |   68 
 b/drivers/block/genhd.c                           |   10 
 b/drivers/block/loop.c                            |   24 
 b/drivers/block/nbd.c                             |   61 
 b/drivers/block/paride/pcd.c                      |   15 
 b/drivers/block/paride/pd.c                       |   15 
 b/drivers/block/paride/pf.c                       |   17 
 b/drivers/block/paride/pg.c                       |   19 
 b/drivers/block/paride/pt.c                       |   25 
 b/drivers/block/ps2esdi.c                         |   22 
 b/drivers/block/rd.c                              |   41 
 b/drivers/block/swim3.c                           |   16 
 b/drivers/block/swim_iop.c                        |   13 
 b/drivers/block/umem.c                            |   15 
 b/drivers/block/xd.c                              |   23 
 b/drivers/block/z2ram.c                           |   18 
 b/drivers/bluetooth/hci_h4.c                      |    1 
 b/drivers/bluetooth/hci_usb.c                     |   12 
 b/drivers/cdrom/aztcd.c                           |   13 
 b/drivers/cdrom/gscd.c                            |    2 
 b/drivers/cdrom/sbpcd.c                           |    7 
 b/drivers/cdrom/sonycd535.c                       |   11 
 b/drivers/char/Makefile                           |    2 
 b/drivers/char/agp/Kconfig                        |   20 
 b/drivers/char/agp/Makefile                       |   27 
 b/drivers/char/agp/agp.h                          |   29 
 b/drivers/char/agp/ali-agp.c                      |  224 
 b/drivers/char/agp/amd-k7-agp.c                   |  505 +
 b/drivers/char/agp/amd-k8-agp.c                   |  530 +
 b/drivers/char/agp/backend.c                      |  291 +
 b/drivers/char/agp/frontend.c                     |    2 
 b/drivers/char/agp/generic.c                      |  699 ++
 b/drivers/char/agp/hp-agp.c                       |   98 
 b/drivers/char/agp/i460-agp.c                     |   79 
 b/drivers/char/agp/intel-agp.c                    | 1496 +++++
 b/drivers/char/agp/sis-agp.c                      |  198 
 b/drivers/char/agp/sworks-agp.c                   |  124 
 b/drivers/char/agp/via-agp.c                      |  186 
 b/drivers/char/consolemap.c                       |    5 
 b/drivers/char/cyclades.c                         |    4 
 b/drivers/char/dsp56k.c                           |   12 
 b/drivers/char/dtlk.c                             |   12 
 b/drivers/char/epca.c                             |   19 
 b/drivers/char/ftape/zftape/zftape-init.c         |    2 
 b/drivers/char/ip2/i2ellis.h                      |    6 
 b/drivers/char/ip2main.c                          |   24 
 b/drivers/char/isicom.c                           |    9 
 b/drivers/char/istallion.c                        |   25 
 b/drivers/char/keyboard.c                         |    1 
 b/drivers/char/lp.c                               |   13 
 b/drivers/char/mem.c                              |   12 
 b/drivers/char/mxser.c                            |   29 
 b/drivers/char/ppdev.c                            |   21 
 b/drivers/char/qtronix.c                          |    7 
 b/drivers/char/random.c                           |    3 
 b/drivers/char/raw.c                              |    3 
 b/drivers/char/scx200_gpio.c                      |    1 
 b/drivers/char/selection.c                        |    1 
 b/drivers/char/sonypi.h                           |   13 
 b/drivers/char/stallion.c                         |   24 
 b/drivers/char/sx.h                               |    2 
 b/drivers/char/tipar.c                            |   12 
 b/drivers/char/toshiba.c                          |    2 
 b/drivers/char/tty_io.c                           |   58 
 b/drivers/char/vc_screen.c                        |    1 
 b/drivers/char/vt.c                               |  202 
 b/drivers/char/vt_ioctl.c                         |   58 
 b/drivers/char/watchdog/sbc60xxwdt.c              |    2 
 b/drivers/hotplug/Makefile                        |    9 
 b/drivers/hotplug/cpci_hotplug_core.c             |   15 
 b/drivers/hotplug/cpci_hotplug_pci.c              |    8 
 b/drivers/hotplug/ibmphp_ebda.c                   |   16 
 b/drivers/hotplug/pci_hotplug_core.c              |   43 
 b/drivers/i2c/i2c-dev.c                           |   52 
 b/drivers/ide/ide-floppy.c                        |    6 
 b/drivers/ide/ide-geometry.c                      |   77 
 b/drivers/ide/ide-probe.c                         |    6 
 b/drivers/ide/ide.c                               |    6 
 b/drivers/ieee1394/sbp2.c                         |    1 
 b/drivers/input/gameport/ns558.c                  |  128 
 b/drivers/input/misc/Kconfig                      |    9 
 b/drivers/input/misc/Makefile                     |    5 
 b/drivers/input/misc/gsc_ps2.c                    |  699 ++
 b/drivers/input/tsdev.c                           |    7 
 b/drivers/isdn/hardware/eicon/divamnt.c           |   12 
 b/drivers/isdn/hardware/eicon/divasi.c            |   12 
 b/drivers/isdn/hardware/eicon/divasmain.c         |   10 
 b/drivers/isdn/hisax/isurf.c                      |    4 
 b/drivers/isdn/hisax/st5481_usb.c                 |    4 
 b/drivers/isdn/i4l/isdn_common.c                  |   50 
 b/drivers/macintosh/adbhid.c                      |   22 
 b/drivers/macintosh/nvram.c                       |    3 
 b/drivers/mca/Kconfig                             |   17 
 b/drivers/mca/Makefile                            |   10 
 b/drivers/mca/mca-bus.c                           |  167 
 b/drivers/mca/mca-device.c                        |  202 
 b/drivers/mca/mca-driver.c                        |   47 
 b/drivers/mca/mca-legacy.c                        |  408 +
 b/drivers/mca/mca-proc.c                          |  244 
 b/drivers/md/dm-ioctl.c                           |   22 
 b/drivers/md/md.c                                 |   19 
 b/drivers/md/raid0.c                              |    2 
 b/drivers/media/dvb/av7110/av7110_ir.c            |    2 
 b/drivers/media/dvb/av7110/saa7146_core.c         |   28 
 b/drivers/media/dvb/frontends/alps_bsru6.c        |   42 
 b/drivers/media/dvb/frontends/alps_bsrv2.c        |   36 
 b/drivers/media/dvb/frontends/alps_tdlb7.c        |   34 
 b/drivers/media/dvb/frontends/alps_tdmb7.c        |   34 
 b/drivers/media/dvb/frontends/grundig_29504-401.c |   34 
 b/drivers/media/dvb/frontends/grundig_29504-491.c |   38 
 b/drivers/media/dvb/frontends/ves1820.c           |   35 
 b/drivers/media/radio/miropcm20-radio.c           |   27 
 b/drivers/media/radio/miropcm20-rds.c             |   22 
 b/drivers/media/radio/radio-aimslab.c             |   20 
 b/drivers/media/radio/radio-aztech.c              |   20 
 b/drivers/media/radio/radio-cadet.c               |   22 
 b/drivers/media/radio/radio-gemtek-pci.c          |   28 
 b/drivers/media/radio/radio-gemtek.c              |   28 
 b/drivers/media/radio/radio-maestro.c             |   20 
 b/drivers/media/radio/radio-maxiradio.c           |   28 
 b/drivers/media/radio/radio-rtrack2.c             |   20 
 b/drivers/media/radio/radio-sf16fmi.c             |   20 
 b/drivers/media/radio/radio-terratec.c            |   20 
 b/drivers/media/radio/radio-trust.c               |   20 
 b/drivers/media/radio/radio-typhoon.c             |   26 
 b/drivers/media/radio/radio-zoltrix.c             |   20 
 b/drivers/media/video/Makefile                    |    2 
 b/drivers/media/video/adv7175.c                   |   36 
 b/drivers/media/video/bttv-cards.c                | 2142 +++----
 b/drivers/media/video/bttv-driver.c               |  566 +-
 b/drivers/media/video/bttv-if.c                   |   30 
 b/drivers/media/video/bttv-vbi.c                  |    8 
 b/drivers/media/video/bw-qcam.c                   |   22 
 b/drivers/media/video/c-qcam.c                    |   22 
 b/drivers/media/video/cpia.c                      |   24 
 b/drivers/media/video/cpia_usb.c                  |   10 
 b/drivers/media/video/msp3400.c                   |   18 
 b/drivers/media/video/planb.c                     |   20 
 b/drivers/media/video/pms.c                       |   22 
 b/drivers/media/video/saa5249.c                   |   20 
 b/drivers/media/video/saa7134/saa7134-cards.c     |  480 -
 b/drivers/media/video/saa7134/saa7134-core.c      |    8 
 b/drivers/media/video/saa7134/saa7134-i2c.c       |   26 
 b/drivers/media/video/saa7134/saa7134-oss.c       |   26 
 b/drivers/media/video/saa7134/saa7134-ts.c        |   36 
 b/drivers/media/video/saa7134/saa7134-tvaudio.c   |  118 
 b/drivers/media/video/saa7134/saa7134-vbi.c       |    8 
 b/drivers/media/video/saa7134/saa7134-video.c     |  494 -
 b/drivers/media/video/saa7134/saa7134.h           |    2 
 b/drivers/media/video/stradis.c                   |   20 
 b/drivers/media/video/tuner.c                     |   20 
 b/drivers/media/video/tvaudio.c                   |  274 
 b/drivers/media/video/tvmixer.c                   |   20 
 b/drivers/media/video/video-buf.c                 |    6 
 b/drivers/media/video/videodev.c                  |   10 
 b/drivers/media/video/vino.c                      |   16 
 b/drivers/media/video/w9966.c                     |   37 
 b/drivers/media/video/zr36067.c                   |   22 
 b/drivers/media/video/zr36120.c                   |   46 
 b/drivers/message/i2o/i2o_config.c                |    2 
 b/drivers/misc/Makefile                           |    2 
 b/drivers/mtd/mtdblock.c                          |   21 
 b/drivers/mtd/mtdchar.c                           |   22 
 b/drivers/net/3c515.c                             |   13 
 b/drivers/net/3c523.c                             |    3 
 b/drivers/net/8139too.c                           |    7 
 b/drivers/net/Kconfig                             |   11 
 b/drivers/net/Makefile                            |    4 
 b/drivers/net/Makefile.lib                        |    1 
 b/drivers/net/Space.c                             |    8 
 b/drivers/net/appletalk/cops.c                    |    3 
 b/drivers/net/au1000_eth.c                        |   19 
 b/drivers/net/au1000_eth.h                        |    8 
 b/drivers/net/b44.c                               |  145 
 b/drivers/net/de620.c                             |    6 
 b/drivers/net/dgrs.c                              |    4 
 b/drivers/net/dl2k.c                              |   14 
 b/drivers/net/e100/e100_main.c                    |    4 
 b/drivers/net/eepro.c                             |    1 
 b/drivers/net/ewrk3.c                             |   27 
 b/drivers/net/fealnx.c                            |    9 
 b/drivers/net/fec.c                               |   35 
 b/drivers/net/hamradio/dmascc.c                   |   14 
 b/drivers/net/irda/irda-usb.c                     |   12 
 b/drivers/net/irda/w83977af_ir.c                  |   58 
 b/drivers/net/lance.c                             |    2 
 b/drivers/net/ni52.c                              |    3 
 b/drivers/net/ni65.c                              |   41 
 b/drivers/net/ns83820.c                           |    3 
 b/drivers/net/pcmcia/fmvj18x_cs.c                 |    1 
 b/drivers/net/ppp_generic.c                       |   11 
 b/drivers/net/r8169.c                             | 1125 +++
 b/drivers/net/rcpci45.c                           |  576 --
 b/drivers/net/setup.c                             |   15 
 b/drivers/net/shaper.c                            |    5 
 b/drivers/net/sis900.c                            |    7 
 b/drivers/net/sk98lin/h/skgehw.h                  |    1 
 b/drivers/net/skfp/h/skfbi.h                      |    1 
 b/drivers/net/smc-mca.c                           |  298 -
 b/drivers/net/starfire.c                          |    3 
 b/drivers/net/sungem.c                            |    5 
 b/drivers/net/sunhme.c                            |    1 
 b/drivers/net/tc35815.c                           |   18 
 b/drivers/net/tokenring/lanstreamer.c             |   17 
 b/drivers/net/tulip/de2104x.c                     |    4 
 b/drivers/net/tulip/media.c                       |    4 
 b/drivers/net/tulip/tulip_core.c                  |    1 
 b/drivers/net/tulip/winbond-840.c                 |    9 
 b/drivers/net/via-rhine.c                         |  112 
 b/drivers/net/wan/cosa.c                          |   74 
 b/drivers/net/wan/hostess_sv11.c                  |    1 
 b/drivers/net/wan/lapbether.c                     |    3 
 b/drivers/net/wan/lmc/lmc_proto.c                 |    1 
 b/drivers/net/wan/sdla_chdlc.c                    |    2 
 b/drivers/net/wan/sdla_fr.c                       |   14 
 b/drivers/net/wan/sdla_ppp.c                      |    4 
 b/drivers/net/wan/sdlamain.c                      |    2 
 b/drivers/net/wan/sealevel.c                      |    2 
 b/drivers/net/wan/syncppp.c                       |    4 
 b/drivers/net/wan/wanpipe_multppp.c               |    3 
 b/drivers/net/wan/x25_asy.c                       |    4 
 b/drivers/oprofile/buffer_sync.c                  |    2 
 b/drivers/oprofile/cpu_buffer.c                   |    1 
 b/drivers/oprofile/cpu_buffer.h                   |    1 
 b/drivers/parport/daisy.c                         |    3 
 b/drivers/parport/ieee1284_ops.c                  |    1 
 b/drivers/parport/parport_pc.c                    |    3 
 b/drivers/parport/probe.c                         |    1 
 b/drivers/pci/pci.c                               |    2 
 b/drivers/pci/probe.c                             |    1 
 b/drivers/pci/quirks.c                            |    5 
 b/drivers/pnp/Kconfig                             |   15 
 b/drivers/pnp/Makefile                            |    6 
 b/drivers/pnp/base.h                              |    3 
 b/drivers/pnp/card.c                              |  342 +
 b/drivers/pnp/core.c                              |   87 
 b/drivers/pnp/driver.c                            |   86 
 b/drivers/pnp/interface.c                         |    8 
 b/drivers/pnp/isapnp/Makefile                     |    4 
 b/drivers/pnp/isapnp/core.c                       |   39 
 b/drivers/pnp/isapnp/proc.c                       |    2 
 b/drivers/pnp/names.c                             |    2 
 b/drivers/pnp/pnpbios/core.c                      |   49 
 b/drivers/pnp/quirks.c                            |    2 
 b/drivers/pnp/system.c                            |   10 
 b/drivers/s390/Kconfig                            |  115 
 b/drivers/s390/Makefile                           |    6 
 b/drivers/s390/block/dasd.c                       | 1048 +--
 b/drivers/s390/block/dasd_3370_erp.c              |   13 
 b/drivers/s390/block/dasd_3990_erp.c              |   90 
 b/drivers/s390/block/dasd_9336_erp.c              |   11 
 b/drivers/s390/block/dasd_9343_erp.c              |   14 
 b/drivers/s390/block/dasd_devmap.c                |  126 
 b/drivers/s390/block/dasd_diag.c                  |   88 
 b/drivers/s390/block/dasd_diag.h                  |    7 
 b/drivers/s390/block/dasd_eckd.c                  |  315 -
 b/drivers/s390/block/dasd_eckd.h                  |   22 
 b/drivers/s390/block/dasd_erp.c                   |   40 
 b/drivers/s390/block/dasd_fba.c                   |  155 
 b/drivers/s390/block/dasd_fba.h                   |   13 
 b/drivers/s390/block/dasd_genhd.c                 |   40 
 b/drivers/s390/block/dasd_int.h                   |   70 
 b/drivers/s390/block/dasd_ioctl.c                 |  184 
 b/drivers/s390/block/dasd_proc.c                  |  324 -
 b/drivers/s390/block/xpram.c                      |   16 
 b/drivers/s390/char/Makefile                      |    6 
 b/drivers/s390/char/con3215.c                     |  926 +--
 b/drivers/s390/char/ctrlchar.c                    |    5 
 b/drivers/s390/char/ctrlchar.h                    |    2 
 b/drivers/s390/char/sclp.c                        |  182 
 b/drivers/s390/char/sclp.h                        |    5 
 b/drivers/s390/char/sclp_con.c                    |   14 
 b/drivers/s390/char/sclp_cpi.c                    |    3 
 b/drivers/s390/char/sclp_rw.c                     |  179 
 b/drivers/s390/char/sclp_rw.h                     |    8 
 b/drivers/s390/char/sclp_tty.c                    |   21 
 b/drivers/s390/char/sclp_tty.h                    |    4 
 b/drivers/s390/char/tape.c                        |   14 
 b/drivers/s390/char/tape.h                        |  568 --
 b/drivers/s390/char/tape_34xx.c                   | 1068 +++
 b/drivers/s390/char/tape_block.c                  |  355 +
 b/drivers/s390/char/tape_char.c                   |  391 +
 b/drivers/s390/char/tape_core.c                   |  950 +++
 b/drivers/s390/char/tape_proc.c                   |  144 
 b/drivers/s390/char/tape_std.c                    |  657 ++
 b/drivers/s390/char/tape_std.h                    |  144 
 b/drivers/s390/cio/Makefile                       |   15 
 b/drivers/s390/cio/airq.c                         |   32 
 b/drivers/s390/cio/airq.h                         |    5 
 b/drivers/s390/cio/blacklist.c                    |  136 
 b/drivers/s390/cio/ccwgroup.c                     |  305 +
 b/drivers/s390/cio/chsc.c                         |  899 +--
 b/drivers/s390/cio/chsc.h                         |   23 
 b/drivers/s390/cio/cio.c                          | 2191 +------
 b/drivers/s390/cio/cio.h                          |  144 
 b/drivers/s390/cio/cio_debug.h                    |   64 
 b/drivers/s390/cio/css.c                          |  248 
 b/drivers/s390/cio/css.h                          |  119 
 b/drivers/s390/cio/device.c                       |  598 ++
 b/drivers/s390/cio/device.h                       |  100 
 b/drivers/s390/cio/device_fsm.c                   |  732 ++
 b/drivers/s390/cio/device_id.c                    |  341 +
 b/drivers/s390/cio/device_ops.c                   |  365 +
 b/drivers/s390/cio/device_pgid.c                  |  431 +
 b/drivers/s390/cio/device_status.c                |  366 +
 b/drivers/s390/cio/ioasm.h                        |  305 +
 b/drivers/s390/cio/qdio.c                         | 3056 ++++++++++
 b/drivers/s390/cio/qdio.h                         |  701 ++
 b/drivers/s390/cio/requestirq.c                   |  474 -
 b/drivers/s390/misc/Makefile                      |    3 
 b/drivers/s390/net/Makefile                       |    6 
 b/drivers/s390/net/ctcmain.c                      | 2850 +++-------
 b/drivers/s390/net/ctctty.c                       |   50 
 b/drivers/s390/net/ctctty.h                       |   16 
 b/drivers/s390/net/cu3088.c                       |  176 
 b/drivers/s390/net/cu3088.h                       |   41 
 b/drivers/s390/net/fsm.c                          |    2 
 b/drivers/s390/net/fsm.h                          |    2 
 b/drivers/s390/net/iucv.c                         |    9 
 b/drivers/s390/net/lcs.c                          | 5240 +++++-------------
 b/drivers/s390/net/lcs.h                          |  285 +
 b/drivers/s390/net/netiucv.c                      |  547 -
 b/drivers/s390/s390mach.c                         |  645 --
 b/drivers/s390/s390mach.h                         |   83 
 b/drivers/sbus/char/bpp.c                         |   20 
 b/drivers/sbus/char/vfc.h                         |    1 
 b/drivers/sbus/char/vfc_dev.c                     |   14 
 b/drivers/scsi/53c700.c                           |    6 
 b/drivers/scsi/Makefile                           |    3 
 b/drivers/scsi/NCR5380.c                          |    2 
 b/drivers/scsi/NCR_D700.c                         |  267 
 b/drivers/scsi/NCR_D700.h                         |   10 
 b/drivers/scsi/aacraid/aachba.c                   |   23 
 b/drivers/scsi/aacraid/aacraid.h                  |   15 
 b/drivers/scsi/aacraid/linit.c                    |    6 
 b/drivers/scsi/hosts.c                            |  205 
 b/drivers/scsi/hosts.h                            |   39 
 b/drivers/scsi/ide-scsi.c                         |    2 
 b/drivers/scsi/ini9100u.c                         |   11 
 b/drivers/scsi/osst.c                             |  979 +--
 b/drivers/scsi/osst.h                             |   21 
 b/drivers/scsi/pci2000.c                          |   11 
 b/drivers/scsi/pci2220i.c                         |    3 
 b/drivers/scsi/pcmcia/fdomain_stub.c              |    3 
 b/drivers/scsi/pcmcia/qlogic_stub.c               |  550 -
 b/drivers/scsi/scsi.c                             |  229 
 b/drivers/scsi/scsi.h                             |   29 
 b/drivers/scsi/scsi_debug.c                       |   25 
 b/drivers/scsi/scsi_ioctl.c                       |    9 
 b/drivers/scsi/scsi_lib.c                         |  153 
 b/drivers/scsi/scsi_scan.c                        |  171 
 b/drivers/scsi/scsi_syms.c                        |    6 
 b/drivers/scsi/scsi_sysfs.c                       |  286 +
 b/drivers/scsi/sd.c                               |  540 -
 b/drivers/scsi/sg.c                               |   64 
 b/drivers/scsi/sim710.h                           |    2 
 b/drivers/scsi/sr.c                               |  108 
 b/drivers/scsi/st.c                               |   30 
 b/drivers/serial/8250.c                           |   20 
 b/drivers/serial/8250_pci.c                       |   11 
 b/drivers/serial/8250_pnp.c                       |   22 
 b/drivers/serial/Makefile                         |    2 
 b/drivers/serial/core.c                           |  252 
 b/drivers/serial/sunzilog.c                       |    5 
 b/drivers/sgi/char/ds1286.c                       |    4 
 b/drivers/sgi/char/shmiq.c                        |   12 
 b/drivers/usb/class/audio.c                       |    8 
 b/drivers/usb/class/bluetty.c                     |   16 
 b/drivers/usb/class/cdc-acm.c                     |    8 
 b/drivers/usb/class/usb-midi.c                    |    8 
 b/drivers/usb/class/usb-midi.h                    |    4 
 b/drivers/usb/class/usblp.c                       |    4 
 b/drivers/usb/core/devio.c                        |   73 
 b/drivers/usb/core/hcd-pci.c                      |   31 
 b/drivers/usb/core/hcd.c                          |   36 
 b/drivers/usb/core/hcd.h                          |    6 
 b/drivers/usb/core/hub.c                          |    2 
 b/drivers/usb/core/message.c                      |    4 
 b/drivers/usb/core/usb.c                          |   31 
 b/drivers/usb/host/ehci-dbg.c                     |   46 
 b/drivers/usb/host/ehci-hcd.c                     |   82 
 b/drivers/usb/host/ehci-hub.c                     |   19 
 b/drivers/usb/host/ehci-mem.c                     |   45 
 b/drivers/usb/host/ehci-q.c                       |  126 
 b/drivers/usb/host/ehci-sched.c                   |    2 
 b/drivers/usb/host/hc_simple.c                    |    4 
 b/drivers/usb/host/hc_sl811_rh.c                  |    6 
 b/drivers/usb/host/ohci-hcd.c                     |    8 
 b/drivers/usb/host/ohci-pci.c                     |    2 
 b/drivers/usb/host/ohci-q.c                       |   12 
 b/drivers/usb/host/uhci-hcd.c                     |   19 
 b/drivers/usb/host/uhci-hcd.h                     |    2 
 b/drivers/usb/image/hpusbscsi.c                   |   16 
 b/drivers/usb/image/hpusbscsi.h                   |   45 
 b/drivers/usb/image/mdc800.c                      |    6 
 b/drivers/usb/image/microtek.c                    |   12 
 b/drivers/usb/image/microtek.h                    |    1 
 b/drivers/usb/image/scanner.c                     |    2 
 b/drivers/usb/input/aiptek.c                      |    4 
 b/drivers/usb/input/hid-core.c                    |    6 
 b/drivers/usb/input/hiddev.c                      |    2 
 b/drivers/usb/input/pid.c                         |    2 
 b/drivers/usb/input/powermate.c                   |    6 
 b/drivers/usb/input/usbkbd.c                      |    4 
 b/drivers/usb/input/usbmouse.c                    |    2 
 b/drivers/usb/input/wacom.c                       |   10 
 b/drivers/usb/input/xpad.c                        |    2 
 b/drivers/usb/media/dabusb.c                      |    2 
 b/drivers/usb/media/dsbr100.c                     |    3 
 b/drivers/usb/media/konicawc.c                    |    2 
 b/drivers/usb/media/ov511.c                       |    2 
 b/drivers/usb/media/pwc-if.c                      |    2 
 b/drivers/usb/media/se401.c                       |    4 
 b/drivers/usb/media/stv680.c                      |    2 
 b/drivers/usb/media/usbvideo.c                    |    2 
 b/drivers/usb/misc/auerswald.c                    |   38 
 b/drivers/usb/misc/brlvger.c                      |    4 
 b/drivers/usb/misc/speedtouch.c                   |   12 
 b/drivers/usb/misc/tiglusb.c                      |   47 
 b/drivers/usb/misc/tiglusb.h                      |    1 
 b/drivers/usb/misc/usbtest.c                      |    4 
 b/drivers/usb/net/catc.c                          |    8 
 b/drivers/usb/net/cdc-ether.c                     |    4 
 b/drivers/usb/net/kaweth.c                        |   12 
 b/drivers/usb/net/pegasus.c                       |   10 
 b/drivers/usb/net/rtl8150.c                       |    8 
 b/drivers/usb/net/usbnet.c                        |    8 
 b/drivers/usb/serial/Kconfig                      |   19 
 b/drivers/usb/serial/Makefile                     |    1 
 b/drivers/usb/serial/belkin_sa.c                  |    4 
 b/drivers/usb/serial/cyberjack.c                  |   12 
 b/drivers/usb/serial/digi_acceleport.c            |    8 
 b/drivers/usb/serial/empeg.c                      |    8 
 b/drivers/usb/serial/ftdi_sio.c                   |    8 
 b/drivers/usb/serial/generic.c                    |    4 
 b/drivers/usb/serial/io_edgeport.c                |   16 
 b/drivers/usb/serial/io_tables.h                  |  152 
 b/drivers/usb/serial/io_ti.c                      |    6 
 b/drivers/usb/serial/ipaq.c                       |    8 
 b/drivers/usb/serial/ir-usb.c                     |    8 
 b/drivers/usb/serial/keyspan.c                    |   46 
 b/drivers/usb/serial/keyspan.h                    |  364 -
 b/drivers/usb/serial/keyspan_pda.c                |    4 
 b/drivers/usb/serial/kl5kusb105.c                 |    8 
 b/drivers/usb/serial/kobil_sct.c                  |  727 ++
 b/drivers/usb/serial/kobil_sct.h                  |   60 
 b/drivers/usb/serial/mct_u232.c                   |    8 
 b/drivers/usb/serial/omninet.c                    |    8 
 b/drivers/usb/serial/pl2303.c                     |   13 
 b/drivers/usb/serial/pl2303.h                     |    3 
 b/drivers/usb/serial/safe_serial.c                |   14 
 b/drivers/usb/serial/usb-serial.c                 |   45 
 b/drivers/usb/serial/usb-serial.h                 |   10 
 b/drivers/usb/serial/visor.c                      |   71 
 b/drivers/usb/serial/visor.h                      |    1 
 b/drivers/usb/serial/whiteheat.c                  |   16 
 b/drivers/usb/storage/transport.c                 |  167 
 b/drivers/usb/storage/transport.h                 |    5 
 b/drivers/usb/storage/usb.c                       |   76 
 b/drivers/usb/storage/usb.h                       |   11 
 b/drivers/usb/usb-skeleton.c                      |    4 
 b/drivers/video/68328fb.c                         |  967 ---
 b/drivers/video/Kconfig                           |  418 -
 b/drivers/video/Makefile                          |   58 
 b/drivers/video/S3triofb.c                        |    2 
 b/drivers/video/amifb.c                           |    2 
 b/drivers/video/anakinfb.c                        |   62 
 b/drivers/video/atafb.c                           |    2 
 b/drivers/video/aty/atyfb.h                       |   18 
 b/drivers/video/aty/atyfb_base.c                  |   99 
 b/drivers/video/aty/mach64_ct.c                   |    2 
 b/drivers/video/aty/mach64_cursor.c               |  157 
 b/drivers/video/aty/mach64_gx.c                   |    2 
 b/drivers/video/aty128fb.c                        | 3257 +++++------
 b/drivers/video/cfbcopyarea.c                     |  511 +
 b/drivers/video/cfbfillrect.c                     |  536 +
 b/drivers/video/cfbimgblt.c                       |  360 +
 b/drivers/video/chipsfb.c                         |    2 
 b/drivers/video/clps711xfb.c                      |   16 
 b/drivers/video/console/Kconfig                   |  221 
 b/drivers/video/console/Makefile                  |   61 
 b/drivers/video/console/dummycon.c                |   73 
 b/drivers/video/console/fbcon-sti.c               |  289 +
 b/drivers/video/console/fbcon.c                   | 2846 ++++++++++
 b/drivers/video/console/fbcon.h                   |  142 
 b/drivers/video/console/font.h                    |   53 
 b/drivers/video/console/font_6x11.c               | 3351 +++++++++++
 b/drivers/video/console/font_8x16.c               | 4631 ++++++++++++++++
 b/drivers/video/console/font_8x8.c                | 2583 +++++++++
 b/drivers/video/console/font_acorn_8x8.c          |  277 
 b/drivers/video/console/font_mini_4x6.c           | 2158 +++++++
 b/drivers/video/console/font_pearl_8x8.c          | 2587 +++++++++
 b/drivers/video/console/font_sun12x22.c           | 6220 ++++++++++++++++++++++
 b/drivers/video/console/font_sun8x16.c            |  275 
 b/drivers/video/console/fonts.c                   |  142 
 b/drivers/video/console/mdacon.c                  |  631 ++
 b/drivers/video/console/newport_con.c             |  745 ++
 b/drivers/video/console/prom.uni                  |   11 
 b/drivers/video/console/promcon.c                 |  605 ++
 b/drivers/video/console/sti.h                     |  289 +
 b/drivers/video/console/sticon.c                  |  214 
 b/drivers/video/console/sticore.c                 |  601 ++
 b/drivers/video/console/vgacon.c                  | 1066 +++
 b/drivers/video/controlfb.c                       |  499 -
 b/drivers/video/cyberfb.c                         |    2 
 b/drivers/video/dnfb.c                            |   18 
 b/drivers/video/epson1355fb.c                     |    2 
 b/drivers/video/fbcmap.c                          |   92 
 b/drivers/video/fbmem.c                           |  265 
 b/drivers/video/fm2fb.c                           |   17 
 b/drivers/video/g364fb.c                          |   74 
 b/drivers/video/hgafb.c                           |  424 -
 b/drivers/video/hitfb.c                           |   17 
 b/drivers/video/hpfb.c                            |   16 
 b/drivers/video/igafb.c                           |  481 -
 b/drivers/video/imsttfb.c                         |   41 
 b/drivers/video/macfb.c                           |   22 
 b/drivers/video/macmodes.c                        |    3 
 b/drivers/video/macmodes.h                        |   70 
 b/drivers/video/matrox/i2c-matroxfb.c             |    2 
 b/drivers/video/matrox/matroxfb_base.c            |    4 
 b/drivers/video/matrox/matroxfb_crtc2.c           |    4 
 b/drivers/video/maxinefb.c                        |   48 
 b/drivers/video/modedb.c                          |    7 
 b/drivers/video/neofb.c                           |  389 -
 b/drivers/video/offb.c                            |   23 
 b/drivers/video/platinumfb.c                      |  451 -
 b/drivers/video/pm2fb.c                           |    7 
 b/drivers/video/pm3fb.c                           |    7 
 b/drivers/video/pmag-ba-fb.c                      |   59 
 b/drivers/video/pmagb-b-fb.c                      |   53 
 b/drivers/video/pvr2fb.c                          |    4 
 b/drivers/video/q40fb.c                           |   16 
 b/drivers/video/radeonfb.c                        | 2892 ++++++----
 b/drivers/video/retz3fb.c                         |    2 
 b/drivers/video/riva/Makefile                     |    2 
 b/drivers/video/riva/fbdev.c                      | 2251 +++----
 b/drivers/video/riva/riva_hw.h                    |    1 
 b/drivers/video/riva/rivafb.h                     |   52 
 b/drivers/video/sa1100fb.c                        |    2 
 b/drivers/video/sbusfb.c                          |    2 
 b/drivers/video/sgivwfb.c                         |   62 
 b/drivers/video/sis/Makefile                      |    2 
 b/drivers/video/sis/sis_accel.c                   |  495 +
 b/drivers/video/sis/sis_main.c                    |    2 
 b/drivers/video/skeletonfb.c                      |   28 
 b/drivers/video/softcursor.c                      |   62 
 b/drivers/video/sstfb.c                           |    2 
 b/drivers/video/sticore.h                         |  407 +
 b/drivers/video/stifb.c                           | 1403 ++++
 b/drivers/video/sun3fb.c                          |    2 
 b/drivers/video/tdfxfb.c                          |  531 +
 b/drivers/video/tgafb.c                           |    7 
 b/drivers/video/tridentfb.c                       |    2 
 b/drivers/video/tx3912fb.c                        |   19 
 b/drivers/video/valkyriefb.c                      |   27 
 b/drivers/video/vesafb.c                          |   24 
 b/drivers/video/vfb.c                             |   36 
 b/drivers/video/vga16fb.c                         | 1403 +++-
 b/drivers/video/vgastate.c                        |  503 +
 b/drivers/video/virgefb.c                         |    2 
 b/fs/affs/file.c                                  |    3 
 b/fs/attr.c                                       |   22 
 b/fs/autofs/autofs_i.h                            |    3 
 b/fs/autofs4/autofs_i.h                           |    2 
 b/fs/bad_inode.c                                  |    2 
 b/fs/buffer.c                                     |    8 
 b/fs/coda/psdev.c                                 |   26 
 b/fs/devfs/base.c                                 |  517 -
 b/fs/devfs/util.c                                 |   62 
 b/fs/dquot.c                                      |    3 
 b/fs/eventpoll.c                                  |  484 +
 b/fs/exec.c                                       |   62 
 b/fs/ext2/ioctl.c                                 |    2 
 b/fs/ext3/inode.c                                 |    2 
 b/fs/ext3/namei.c                                 |   14 
 b/fs/ext3/super.c                                 |    4 
 b/fs/fat/inode.c                                  |   18 
 b/fs/fcntl.c                                      |   47 
 b/fs/hugetlbfs/inode.c                            |    5 
 b/fs/ioctl.c                                      |    3 
 b/fs/jffs/inode-v23.c                             |    1 
 b/fs/locks.c                                      |   14 
 b/fs/namei.c                                      |   37 
 b/fs/namespace.c                                  |   12 
 b/fs/nfsd/nfscache.c                              |    2 
 b/fs/open.c                                       |   21 
 b/fs/partitions/check.c                           |   10 
 b/fs/proc/generic.c                               |   21 
 b/fs/read_write.c                                 |    8 
 b/fs/readdir.c                                    |   48 
 b/fs/reiserfs/bitmap.c                            |    1 
 b/fs/stat.c                                       |    6 
 b/fs/sysfs/inode.c                                |   60 
 b/fs/umsdos/ioctl.c                               |    4 
 b/fs/xattr.c                                      |   27 
 b/fs/xfs/linux/xfs_aops.c                         |   53 
 b/fs/xfs/linux/xfs_file.c                         |   25 
 b/fs/xfs/linux/xfs_globals.c                      |    1 
 b/fs/xfs/linux/xfs_ioctl.c                        |  112 
 b/fs/xfs/linux/xfs_iomap.c                        |   67 
 b/fs/xfs/linux/xfs_iops.c                         |   22 
 b/fs/xfs/linux/xfs_linux.h                        |    2 
 b/fs/xfs/linux/xfs_lrw.c                          |   75 
 b/fs/xfs/linux/xfs_stats.c                        |   28 
 b/fs/xfs/linux/xfs_stats.h                        |  121 
 b/fs/xfs/linux/xfs_super.c                        |   46 
 b/fs/xfs/linux/xfs_super.h                        |    2 
 b/fs/xfs/linux/xfs_sysctl.c                       |   10 
 b/fs/xfs/linux/xfs_sysctl.h                       |    2 
 b/fs/xfs/linux/xfs_version.h                      |    4 
 b/fs/xfs/linux/xfs_vnode.c                        |   48 
 b/fs/xfs/linux/xfs_vnode.h                        |  251 
 b/fs/xfs/pagebuf/page_buf.c                       |  201 
 b/fs/xfs/pagebuf/page_buf.h                       |   21 
 b/fs/xfs/pagebuf/page_buf_internal.h              |    3 
 b/fs/xfs/pagebuf/page_buf_locking.c               |   11 
 b/fs/xfs/support/move.c                           |    1 
 b/fs/xfs/support/mrlock.c                         |    4 
 b/fs/xfs/support/sv.h                             |    3 
 b/fs/xfs/xfs.h                                    |    1 
 b/fs/xfs/xfs_acl.c                                |   10 
 b/fs/xfs/xfs_ag.h                                 |   36 
 b/fs/xfs/xfs_alloc.c                              |   44 
 b/fs/xfs/xfs_alloc.h                              |   10 
 b/fs/xfs/xfs_alloc_btree.h                        |   10 
 b/fs/xfs/xfs_attr_leaf.c                          |    2 
 b/fs/xfs/xfs_bmap.c                               |  133 
 b/fs/xfs/xfs_bmap_btree.h                         |    2 
 b/fs/xfs/xfs_buf.h                                |   14 
 b/fs/xfs/xfs_buf_item.c                           |    6 
 b/fs/xfs/xfs_cap.c                                |    2 
 b/fs/xfs/xfs_dir2.h                               |    1 
 b/fs/xfs/xfs_dir2_block.h                         |    1 
 b/fs/xfs/xfs_dir2_leaf.h                          |    1 
 b/fs/xfs/xfs_dir2_node.h                          |    1 
 b/fs/xfs/xfs_dir2_sf.h                            |    1 
 b/fs/xfs/xfs_dir_leaf.h                           |    1 
 b/fs/xfs/xfs_error.c                              |    6 
 b/fs/xfs/xfs_error.h                              |    9 
 b/fs/xfs/xfs_fs.h                                 |   31 
 b/fs/xfs/xfs_fsops.c                              |   92 
 b/fs/xfs/xfs_ialloc.c                             |   34 
 b/fs/xfs/xfs_ialloc_btree.c                       |   11 
 b/fs/xfs/xfs_inode.c                              |   10 
 b/fs/xfs/xfs_inode_item.c                         |    3 
 b/fs/xfs/xfs_log.c                                |  106 
 b/fs/xfs/xfs_log_priv.h                           |    4 
 b/fs/xfs/xfs_log_recover.c                        |  156 
 b/fs/xfs/xfs_macros.c                             |    8 
 b/fs/xfs/xfs_mount.c                              |   50 
 b/fs/xfs/xfs_mount.h                              |    3 
 b/fs/xfs/xfs_qm.c                                 |  109 
 b/fs/xfs/xfs_qm_syscalls.c                        |  127 
 b/fs/xfs/xfs_rename.c                             |   16 
 b/fs/xfs/xfs_rtalloc.c                            |    7 
 b/fs/xfs/xfs_rw.c                                 |    6 
 b/fs/xfs/xfs_sb.h                                 |   58 
 b/fs/xfs/xfs_trans.h                              |    5 
 b/fs/xfs/xfs_trans_buf.c                          |    4 
 b/fs/xfs/xfs_types.h                              |  115 
 b/fs/xfs/xfs_utils.c                              |   27 
 b/fs/xfs/xfs_utils.h                              |   74 
 b/fs/xfs/xfs_vfsops.c                             |   38 
 b/fs/xfs/xfs_vnodeops.c                           |  333 -
 b/fs/xfs/xfsidbg.c                                |   15 
 b/include/asm-alpha/core_cia.h                    |    4 
 b/include/asm-alpha/current.h                     |    2 
 b/include/asm-alpha/pci.h                         |    2 
 b/include/asm-alpha/thread_info.h                 |    5 
 b/include/asm-alpha/topology.h                    |   19 
 b/include/asm-alpha/unistd.h                      |    3 
 b/include/asm-arm/signal.h                        |    2 
 b/include/asm-i386/bitops.h                       |    2 
 b/include/asm-i386/current.h                      |    2 
 b/include/asm-i386/desc.h                         |    3 
 b/include/asm-i386/mca.h                          |   46 
 b/include/asm-i386/mmu.h                          |    1 
 b/include/asm-i386/mpspec.h                       |    4 
 b/include/asm-i386/signal.h                       |    2 
 b/include/asm-i386/thread_info.h                  |    7 
 b/include/asm-i386/uaccess.h                      |    2 
 b/include/asm-i386/unistd.h                       |    7 
 b/include/asm-m68k/signal.h                       |    2 
 b/include/asm-ppc/cputable.h                      |    1 
 b/include/asm-ppc/errno.h                         |    8 
 b/include/asm-ppc/hardirq.h                       |    1 
 b/include/asm-ppc/processor.h                     |    2 
 b/include/asm-ppc/thread_info.h                   |    8 
 b/include/asm-ppc/unistd.h                        |    8 
 b/include/asm-ppc64/compat.h                      |   22 
 b/include/asm-ppc64/eeh.h                         |  110 
 b/include/asm-ppc64/errno.h                       |    8 
 b/include/asm-ppc64/hardirq.h                     |    9 
 b/include/asm-ppc64/hvcall.h                      |    1 
 b/include/asm-ppc64/hw_irq.h                      |   22 
 b/include/asm-ppc64/iSeries/HvCall.h              |    6 
 b/include/asm-ppc64/io.h                          |  106 
 b/include/asm-ppc64/page.h                        |    2 
 b/include/asm-ppc64/pci-bridge.h                  |   12 
 b/include/asm-ppc64/pci.h                         |   50 
 b/include/asm-ppc64/ppc32.h                       |   29 
 b/include/asm-ppc64/prom.h                        |    8 
 b/include/asm-ppc64/stat.h                        |   16 
 b/include/asm-ppc64/system.h                      |    1 
 b/include/asm-ppc64/thread_info.h                 |    4 
 b/include/asm-ppc64/unistd.h                      |    8 
 b/include/asm-s390/ccwdev.h                       |  185 
 b/include/asm-s390/ccwgroup.h                     |   44 
 b/include/asm-s390/cio.h                          |  271 
 b/include/asm-s390/dasd.h                         |    4 
 b/include/asm-s390/idals.h                        |  148 
 b/include/asm-s390/irq.h                          |  907 ---
 b/include/asm-s390/lowcore.h                      |   13 
 b/include/asm-s390/qdio.h                         |  662 --
 b/include/asm-s390/setup.h                        |    1 
 b/include/asm-s390x/ccwdev.h                      |  185 
 b/include/asm-s390x/ccwgroup.h                    |   44 
 b/include/asm-s390x/cio.h                         |  271 
 b/include/asm-s390x/dasd.h                        |    4 
 b/include/asm-s390x/idals.h                       |  148 
 b/include/asm-s390x/irq.h                         |  907 ---
 b/include/asm-s390x/lowcore.h                     |   14 
 b/include/asm-s390x/qdio.h                        |  665 --
 b/include/asm-s390x/setup.h                       |    1 
 b/include/asm-sh/signal.h                         |    2 
 b/include/asm-sparc/current.h                     |    9 
 b/include/asm-sparc/elf.h                         |    2 
 b/include/asm-sparc/hardirq.h                     |    1 
 b/include/asm-sparc/highmem.h                     |   16 
 b/include/asm-sparc/io.h                          |    3 
 b/include/asm-sparc/irq.h                         |    2 
 b/include/asm-sparc/page.h                        |    3 
 b/include/asm-sparc/pgtsrmmu.h                    |    3 
 b/include/asm-sparc/processor.h                   |   29 
 b/include/asm-sparc/system.h                      |    4 
 b/include/asm-sparc/thread_info.h                 |   20 
 b/include/asm-sparc/unistd.h                      |    1 
 b/include/asm-sparc/vaddrs.h                      |   23 
 b/include/asm-sparc64/compat.h                    |   22 
 b/include/asm-sparc64/current.h                   |    2 
 b/include/asm-sparc64/irq.h                       |   24 
 b/include/asm-sparc64/posix_types.h               |    3 
 b/include/asm-sparc64/processor.h                 |   31 
 b/include/asm-sparc64/rwsem.h                     |    2 
 b/include/asm-sparc64/signal.h                    |    3 
 b/include/asm-sparc64/stat.h                      |    7 
 b/include/asm-sparc64/system.h                    |   13 
 b/include/asm-sparc64/thread_info.h               |   14 
 b/include/asm-sparc64/ttable.h                    |    5 
 b/include/asm-sparc64/unistd.h                    |    1 
 b/include/asm-x86_64/signal.h                     |    2 
 b/include/linux/ac97_codec.h                      |   35 
 b/include/linux/acct.h                            |    1 
 b/include/linux/agp_backend.h                     |    5 
 b/include/linux/compat.h                          |   24 
 b/include/linux/completion.h                      |    1 
 b/include/linux/console.h                         |    1 
 b/include/linux/console_struct.h                  |    1 
 b/include/linux/crypto.h                          |    3 
 b/include/linux/devfs_fs_kernel.h                 |   93 
 b/include/linux/device.h                          |   26 
 b/include/linux/elf.h                             |   31 
 b/include/linux/errno.h                           |    1 
 b/include/linux/eventpoll.h                       |   15 
 b/include/linux/fb.h                              |  209 
 b/include/linux/hdlcdrv.h                         |    2 
 b/include/linux/i2c-id.h                          |   10 
 b/include/linux/i2c.h                             |    1 
 b/include/linux/if_wanpipe_common.h               |    2 
 b/include/linux/init.h                            |   29 
 b/include/linux/isdn.h                            |    8 
 b/include/linux/kobject.h                         |    9 
 b/include/linux/major.h                           |    8 
 b/include/linux/mca-legacy.h                      |   68 
 b/include/linux/mca.h                             |  183 
 b/include/linux/module.h                          |   37 
 b/include/linux/mroute.h                          |    2 
 b/include/linux/msdos_fs_sb.h                     |    2 
 b/include/linux/nbd.h                             |   32 
 b/include/linux/netdevice.h                       |   11 
 b/include/linux/page-flags.h                      |    6 
 b/include/linux/pci.h                             |   54 
 b/include/linux/pci_ids.h                         |   20 
 b/include/linux/pnp.h                             |  230 
 b/include/linux/pnpbios.h                         |   13 
 b/include/linux/radeonfb.h                        |   15 
 b/include/linux/reboot.h                          |    7 
 b/include/linux/reiserfs_fs.h                     |   36 
 b/include/linux/sched.h                           |    7 
 b/include/linux/serial.h                          |    1 
 b/include/linux/serial_core.h                     |    3 
 b/include/linux/signal.h                          |    4 
 b/include/linux/sisfb.h                           |   58 
 b/include/linux/sonypi.h                          |    3 
 b/include/linux/spinlock.h                        |   12 
 b/include/linux/sunrpc/stats.h                    |   18 
 b/include/linux/swap.h                            |    1 
 b/include/linux/thread_info.h                     |   10 
 b/include/linux/time.h                            |    2 
 b/include/linux/tty.h                             |    1 
 b/include/linux/usb.h                             |   11 
 b/include/linux/videodev2.h                       |    2 
 b/include/linux/vt_kern.h                         |    8 
 b/include/linux/wanpipe.h                         |    2 
 b/include/net/irda/vlsi_ir.h                      |   20 
 b/include/net/route.h                             |    2 
 b/include/video/iga.h                             |   24 
 b/include/video/neomagic.h                        |    1 
 b/include/video/radeon.h                          |  766 ++
 b/include/video/vga.h                             |  480 +
 b/init/do_mounts.c                                |   33 
 b/init/main.c                                     |    4 
 b/ipc/msg.c                                       |    5 
 b/ipc/sem.c                                       |    3 
 b/ipc/shm.c                                       |    3 
 b/ipc/util.c                                      |   56 
 b/kernel/Makefile                                 |    1 
 b/kernel/acct.c                                   |    3 
 b/kernel/compat.c                                 |  163 
 b/kernel/exit.c                                   |   15 
 b/kernel/fork.c                                   |    8 
 b/kernel/kallsyms.c                               |   13 
 b/kernel/ksyms.c                                  |    7 
 b/kernel/module.c                                 |   38 
 b/kernel/printk.c                                 |    1 
 b/kernel/ptrace.c                                 |    3 
 b/kernel/sched.c                                  |   25 
 b/kernel/signal.c                                 |   15 
 b/kernel/suspend.c                                |   67 
 b/kernel/sys.c                                    |   45 
 b/kernel/timer.c                                  |   86 
 b/kernel/uid16.c                                  |    3 
 b/lib/kobject.c                                   |   37 
 b/lib/zlib_deflate/deflate_syms.c                 |    2 
 b/lib/zlib_inflate/inflate_syms.c                 |    2 
 b/mm/Makefile                                     |   15 
 b/mm/filemap.c                                    |   11 
 b/mm/memory.c                                     |    4 
 b/mm/mmap.c                                       |    3 
 b/mm/mprotect.c                                   |    3 
 b/mm/nommu.c                                      |  557 +
 b/mm/page_alloc.c                                 |    6 
 b/mm/pdflush.c                                    |    1 
 b/mm/slab.c                                       |    2 
 b/mm/swap.c                                       |   58 
 b/mm/swap_state.c                                 |   14 
 b/mm/truncate.c                                   |    3 
 b/mm/vmscan.c                                     |   30 
 b/net/802/tr.c                                    |    5 
 b/net/atm/mpc.c                                   |   20 
 b/net/ax25/ax25_route.c                           |    1 
 b/net/bridge/br_if.c                              |    2 
 b/net/bridge/br_netfilter.c                       |   32 
 b/net/bridge/netfilter/Kconfig                    |    2 
 b/net/bridge/netfilter/ebt_vlan.c                 |  229 
 b/net/core/Makefile                               |    2 
 b/net/core/dev.c                                  |  271 
 b/net/core/link_watch.c                           |  134 
 b/net/core/scm.c                                  |    3 
 b/net/core/wireless.c                             |  128 
 b/net/ipv4/af_inet.c                              |    9 
 b/net/ipv4/arp.c                                  |    2 
 b/net/ipv4/inetpeer.c                             |    6 
 b/net/ipv4/raw.c                                  |    1 
 b/net/ipv4/route.c                                |  231 
 b/net/ipv4/tcp_ipv4.c                             |  480 +
 b/net/netlink/af_netlink.c                        |    4 
 b/net/netlink/netlink_dev.c                       |   49 
 b/net/netsyms.c                                   |    2 
 b/net/rxrpc/connection.c                          |    2 
 b/net/sched/sch_atm.c                             |    3 
 b/net/sched/sch_prio.c                            |   26 
 b/net/sctp/output.c                               |    1 
 b/net/sunrpc/svc.c                                |    2 
 b/scripts/Makefile                                |   28 
 b/scripts/Makefile.build                          |   49 
 b/scripts/Makefile.lib                            |   19 
 b/scripts/Makefile.modinst                        |    6 
 b/scripts/kallsyms.c                              |  148 
 b/scripts/lxdialog/Makefile                       |    8 
 b/security/Kconfig                                |   10 
 b/security/Makefile                               |    1 
 b/security/capability.c                           |  530 -
 b/security/dummy.c                                |  169 
 b/security/root_plug.c                            |  189 
 b/security/security.c                             |   50 
 b/sound/arm/sa11xx-uda1341.c                      |   10 
 b/sound/core/ioctl32/ioctl32.c                    |    1 
 b/sound/core/ioctl32/rawmidi32.c                  |    1 
 b/sound/core/ioctl32/seq32.c                      |    1 
 b/sound/core/ioctl32/timer32.c                    |    1 
 b/sound/isa/cs423x/cs4236.c                       |   16 
 b/sound/isa/opl3sa2.c                             |  131 
 b/sound/oss/ac97_codec.c                          |   49 
 b/sound/oss/gus_wave.c                            |    2 
 b/sound/oss/i810_audio.c                          |  461 +
 b/sound/oss/maui.c                                |    1 
 b/sound/oss/mpu401.h                              |    2 
 b/sound/oss/opl3sa2.c                             |    6 
 b/sound/oss/sb_ess.c                              |    1 
 b/sound/oss/wf_midi.c                             |    1 
 b/sound/sound_core.c                              |   14 
 b/sound/sparc/cs4231.c                            |   81 
 b/sound/usb/usbmidi.c                             |    8 
 drivers/acpi/include/acdisasm.h                   |  361 -
 drivers/char/agp/agp.c                            | 1706 ------
 drivers/char/agp/amd-agp.c                        |  408 -
 drivers/char/agp/i810-agp.c                       |  594 --
 drivers/char/agp/i8x0-agp.c                       |  731 --
 drivers/char/agp/k8-agp.c                         |  476 -
 drivers/char/hp_keyb.c                            |  519 -
 drivers/char/hp_psaux.c                           |  551 -
 drivers/s390/block/dasd_3370_erp.h                |   15 
 drivers/s390/block/dasd_3990_erp.h                |   26 
 drivers/s390/block/dasd_9336_erp.h                |   15 
 drivers/s390/block/dasd_9343_erp.h                |   17 
 drivers/s390/char/tape3480.c                      |   96 
 drivers/s390/char/tape3480.h                      |   23 
 drivers/s390/char/tape3490.c                      |   97 
 drivers/s390/char/tape3490.h                      |   23 
 drivers/s390/char/tape34xx.c                      | 1254 ----
 drivers/s390/char/tape34xx.h                      |  133 
 drivers/s390/char/tape_idalbuf.h                  |  213 
 drivers/s390/char/tapeblock.c                     |  441 -
 drivers/s390/char/tapeblock.h                     |   36 
 drivers/s390/char/tapechar.c                      |  627 --
 drivers/s390/char/tapechar.h                      |   40 
 drivers/s390/char/tapedefs.h                      |   77 
 drivers/s390/cio/cio_debug.c                      |   72 
 drivers/s390/cio/ioinfo.c                         |  292 -
 drivers/s390/cio/ioinfo.h                         |   10 
 drivers/s390/cio/misc.c                           |  235 
 drivers/s390/cio/misc.h                           |    4 
 drivers/s390/cio/proc.c                           |  275 
 drivers/s390/cio/proc.h                           |   19 
 drivers/s390/cio/s390io.c                         | 2408 --------
 drivers/s390/cio/s390io.h                         |   20 
 drivers/s390/misc/chandev.c                       | 3304 -----------
 drivers/s390/qdio.c                               | 3526 ------------
 drivers/s390/s390dyn.c                            |  160 
 drivers/video/dummycon.c                          |   74 
 drivers/video/fbcon-accel.c                       |  188 
 drivers/video/fbcon-accel.h                       |   34 
 drivers/video/fbcon-afb.c                         |  448 -
 drivers/video/fbcon-cfb16.c                       |  319 -
 drivers/video/fbcon-cfb2.c                        |  225 
 drivers/video/fbcon-cfb24.c                       |  333 -
 drivers/video/fbcon-cfb32.c                       |  305 -
 drivers/video/fbcon-cfb4.c                        |  229 
 drivers/video/fbcon-cfb8.c                        |  294 -
 drivers/video/fbcon-hga.c                         |  253 
 drivers/video/fbcon-ilbm.c                        |  296 -
 drivers/video/fbcon-iplan2p2.c                    |  476 -
 drivers/video/fbcon-iplan2p4.c                    |  497 -
 drivers/video/fbcon-iplan2p8.c                    |  534 -
 drivers/video/fbcon-mfb.c                         |  217 
 drivers/video/fbcon-sti.c                         |  337 -
 drivers/video/fbcon-vga-planes.c                  |  387 -
 drivers/video/fbcon.c                             | 2509 --------
 drivers/video/fbgen.c                             |  286 -
 drivers/video/font_6x11.c                         | 3351 -----------
 drivers/video/font_8x16.c                         | 4631 ----------------
 drivers/video/font_8x8.c                          | 2583 ---------
 drivers/video/font_acorn_8x8.c                    |  277 
 drivers/video/font_mini_4x6.c                     | 2158 -------
 drivers/video/font_pearl_8x8.c                    | 2587 ---------
 drivers/video/font_sun12x22.c                     | 6220 ----------------------
 drivers/video/font_sun8x16.c                      |  275 
 drivers/video/fonts.c                             |  135 
 drivers/video/iga.h                               |   29 
 drivers/video/mdacon.c                            |  632 --
 drivers/video/newport_con.c                       |  746 --
 drivers/video/prom.uni                            |   11 
 drivers/video/promcon.c                           |  606 --
 drivers/video/radeon.h                            |  766 --
 drivers/video/riva/accel.c                        |  427 -
 drivers/video/sti-bmode.h                         |  287 -
 drivers/video/sti.h                               |  289 -
 drivers/video/sticon-bmode.c                      |  895 ---
 drivers/video/sticon.c                            |  215 
 drivers/video/sticore.c                           |  601 --
 drivers/video/vga.h                               |  457 -
 drivers/video/vgacon.c                            | 1055 ---
 include/asm-s390/chandev.h                        |  237 
 include/asm-s390/s390dyn.h                        |   56 
 include/asm-s390/s390io.h                         |  124 
 include/asm-s390/s390mach.h                       |  119 
 include/asm-s390x/chandev.h                       |  237 
 include/asm-s390x/s390dyn.h                       |   56 
 include/asm-s390x/s390io.h                        |  124 
 include/asm-s390x/s390mach.h                      |  119 
 include/video/fbcon-afb.h                         |   32 
 include/video/fbcon-cfb16.h                       |   34 
 include/video/fbcon-cfb2.h                        |   32 
 include/video/fbcon-cfb24.h                       |   34 
 include/video/fbcon-cfb32.h                       |   34 
 include/video/fbcon-cfb4.h                        |   32 
 include/video/fbcon-cfb8.h                        |   34 
 include/video/fbcon-hga.h                         |   32 
 include/video/fbcon-ilbm.h                        |   32 
 include/video/fbcon-iplan2p2.h                    |   32 
 include/video/fbcon-iplan2p4.h                    |   32 
 include/video/fbcon-iplan2p8.h                    |   32 
 include/video/fbcon-mac.h                         |   32 
 include/video/fbcon-mfb.h                         |   32 
 include/video/fbcon-vga-planes.h                  |   37 
 include/video/fbcon-vga.h                         |   32 
 include/video/fbcon.h                             |  795 --
 include/video/font.h                              |   53 
 include/video/macmodes.h                          |   70 
 scripts/kallsyms                                  |   40 
 1297 files changed, 92608 insertions(+), 102013 deletions(-)

