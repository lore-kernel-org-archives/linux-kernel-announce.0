From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.20 released
Date: Sun, 2 Jun 2002 18:53:05 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200206030153.g531r5818867@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.20 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.20.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.20.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               569919           2568823
Full source                       34364147         153251840

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/def-configs/victor               |  206 -
 arch/arm/mach-sa1100/victor.c             |   80 
 arch/ppc64/kernel/ppc-stub.c              |  739 ------
 b/Documentation/Changes                   |   13 
 b/Documentation/DocBook/Makefile          |    3 
 b/Documentation/DocBook/kernel-api.tmpl   |    3 
 b/Documentation/filesystems/Locking       |   10 
 b/Documentation/networking/e100.txt       |  272 ++
 b/Documentation/networking/e1000.txt      |  121 -
 b/MAINTAINERS                             |    5 
 b/Makefile                                |  286 +-
 b/README                                  |    5 
 b/Rules.make                              |   45 
 b/arch/arm/boot/compressed/misc.c         |    2 
 b/arch/arm/config.in                      |   20 
 b/arch/arm/def-configs/adi_evb            |    4 
 b/arch/arm/def-configs/adsbitsy           |    2 
 b/arch/arm/def-configs/anakin             |  246 +-
 b/arch/arm/def-configs/assabet            |    9 
 b/arch/arm/def-configs/badge4             |    1 
 b/arch/arm/def-configs/brutus             |    2 
 b/arch/arm/def-configs/cerfcube           |    6 
 b/arch/arm/def-configs/cerfpda            |    6 
 b/arch/arm/def-configs/cerfpod            |    6 
 b/arch/arm/def-configs/empeg              |    2 
 b/arch/arm/def-configs/epxa10db           |    2 
 b/arch/arm/def-configs/flexanet           |    4 
 b/arch/arm/def-configs/freebird           |    4 
 b/arch/arm/def-configs/freebird_new       |    2 
 b/arch/arm/def-configs/graphicsclient     |    2 
 b/arch/arm/def-configs/graphicsmaster     |    2 
 b/arch/arm/def-configs/huw_webpanel       |    4 
 b/arch/arm/def-configs/iq80310            |    2 
 b/arch/arm/def-configs/jornada720         |    2 
 b/arch/arm/def-configs/lusl7200           |  381 ++-
 b/arch/arm/def-configs/neponset           |    7 
 b/arch/arm/def-configs/omnimeter          |    2 
 b/arch/arm/def-configs/pangolin           |    4 
 b/arch/arm/def-configs/pfs168_mqtft       |    3 
 b/arch/arm/def-configs/pfs168_mqvga       |    3 
 b/arch/arm/def-configs/pfs168_sastn       |    3 
 b/arch/arm/def-configs/pfs168_satft       |    3 
 b/arch/arm/def-configs/pleb               |    4 
 b/arch/arm/def-configs/sherman            |    2 
 b/arch/arm/kernel/entry-armv.S            |   15 
 b/arch/arm/kernel/process.c               |   20 
 b/arch/arm/kernel/setup.c                 |    4 
 b/arch/arm/mach-adifcc/arch.c             |   17 
 b/arch/arm/mach-anakin/arch.c             |   15 
 b/arch/arm/mach-clps711x/cdb89712.c       |    7 
 b/arch/arm/mach-epxa10db/arch.c           |   20 
 b/arch/arm/mach-integrator/arch.c         |    7 
 b/arch/arm/mach-integrator/cpu.c          |    4 
 b/arch/arm/mach-iop310/arch.c             |   15 
 b/arch/arm/mach-l7200/core.c              |   24 
 b/arch/arm/mach-pxa/idp.c                 |   18 
 b/arch/arm/mach-pxa/lubbock.c             |   14 
 b/arch/arm/mach-rpc/riscpc.c              |   16 
 b/arch/arm/mach-sa1100/Makefile           |    2 
 b/arch/arm/mach-sa1100/adsbitsy.c         |   18 
 b/arch/arm/mach-sa1100/assabet.c          |   48 
 b/arch/arm/mach-sa1100/brutus.c           |   17 
 b/arch/arm/mach-sa1100/cerf.c             |   28 
 b/arch/arm/mach-sa1100/empeg.c            |   15 
 b/arch/arm/mach-sa1100/flexanet.c         |   16 
 b/arch/arm/mach-sa1100/freebird.c         |   14 
 b/arch/arm/mach-sa1100/generic.c          |    5 
 b/arch/arm/mach-sa1100/graphicsclient.c   |   18 
 b/arch/arm/mach-sa1100/graphicsmaster.c   |   19 
 b/arch/arm/mach-sa1100/huw_webpanel.c     |   17 
 b/arch/arm/mach-sa1100/itsy.c             |   13 
 b/arch/arm/mach-sa1100/jornada720.c       |   10 
 b/arch/arm/mach-sa1100/nanoengine.c       |   10 
 b/arch/arm/mach-sa1100/omnimeter.c        |   13 
 b/arch/arm/mach-sa1100/pangolin.c         |   14 
 b/arch/arm/mach-sa1100/pfs168.c           |   16 
 b/arch/arm/mach-sa1100/pleb.c             |   19 
 b/arch/arm/mach-sa1100/sherman.c          |   15 
 b/arch/arm/mach-sa1100/simpad.c           |   27 
 b/arch/arm/mach-sa1100/system3.c          |   22 
 b/arch/arm/mach-sa1100/xp860.c            |   10 
 b/arch/arm/mm/init.c                      |    3 
 b/arch/cris/drivers/ide.c                 |    9 
 b/arch/i386/kernel/acpi.c                 |  379 +--
 b/arch/i386/kernel/acpi_wakeup.S          |    5 
 b/arch/i386/kernel/apm.c                  |    2 
 b/arch/i386/kernel/io_apic.c              |  165 +
 b/arch/i386/kernel/mpparse.c              |  341 ++
 b/arch/i386/kernel/setup.c                |    8 
 b/arch/i386/kernel/smpboot.c              |   11 
 b/arch/i386/lib/mmx.c                     |    8 
 b/arch/i386/pci/acpi.c                    |   64 
 b/arch/i386/pci/common.c                  |   10 
 b/arch/i386/pci/irq.c                     |   18 
 b/arch/i386/pci/legacy.c                  |    7 
 b/arch/i386/pci/numa.c                    |    3 
 b/arch/i386/pci/pci.h                     |    6 
 b/arch/m68k/atari/stram.c                 |    4 
 b/arch/ppc/kernel/syscalls.c              |    2 
 b/arch/ppc64/Makefile                     |    3 
 b/arch/ppc64/boot/main.c                  |    2 
 b/arch/ppc64/config.in                    |   31 
 b/arch/ppc64/defconfig                    |  184 -
 b/arch/ppc64/kernel/Makefile              |    2 
 b/arch/ppc64/kernel/entry.S               |    1 
 b/arch/ppc64/kernel/idle.c                |    8 
 b/arch/ppc64/kernel/ioctl32.c             |    3 
 b/arch/ppc64/kernel/irq.c                 |   87 
 b/arch/ppc64/kernel/misc.S                |   32 
 b/arch/ppc64/kernel/mk_defs.c             |    1 
 b/arch/ppc64/kernel/pSeries_htab.c        |    2 
 b/arch/ppc64/kernel/pci.c                 |    2 
 b/arch/ppc64/kernel/ppc_ksyms.c           |    2 
 b/arch/ppc64/kernel/process.c             |    3 
 b/arch/ppc64/kernel/prom.c                |   19 
 b/arch/ppc64/kernel/setup.c               |   40 
 b/arch/ppc64/kernel/signal.c              |  225 -
 b/arch/ppc64/kernel/signal32.c            | 1195 ++++-----
 b/arch/ppc64/kernel/smp.c                 |   13 
 b/arch/ppc64/kernel/stab.c                |  372 +--
 b/arch/ppc64/kernel/sys_ppc32.c           |  212 -
 b/arch/ppc64/kernel/traps.c               |  294 +-
 b/arch/ppc64/lib/Makefile                 |    3 
 b/arch/ppc64/lib/copypage.S               |  121 +
 b/arch/ppc64/lib/copyuser.S               |  562 ++++
 b/arch/ppc64/lib/memcpy.S                 |  172 +
 b/arch/ppc64/lib/string.S                 |  287 --
 b/arch/ppc64/mm/fault.c                   |   63 
 b/arch/ppc64/mm/init.c                    |   72 
 b/arch/ppc64/xmon/xmon.c                  |    1 
 b/arch/s390/kernel/debug.c                |    7 
 b/arch/s390/kernel/ptrace.c               |    6 
 b/arch/s390/kernel/signal.c               |    3 
 b/arch/s390/math-emu/math.c               |    4 
 b/arch/s390x/kernel/debug.c               |    7 
 b/arch/s390x/kernel/ptrace.c              |    2 
 b/arch/s390x/kernel/signal.c              |    3 
 b/arch/sparc/kernel/sys_sunos.c           |    2 
 b/arch/sparc64/kernel/sys_sparc.c         |    2 
 b/drivers/acorn/block/mfmhd.c             |   16 
 b/drivers/acpi/Config.help                |   83 
 b/drivers/acpi/Config.in                  |   71 
 b/drivers/acpi/Makefile                   |   26 
 b/drivers/acpi/ac.c                       |  351 ++
 b/drivers/acpi/acpi_bus.h                 |    4 
 b/drivers/acpi/acpi_drivers.h             |   55 
 b/drivers/acpi/acpi_ksyms.c               |    8 
 b/drivers/acpi/battery.c                  |  830 ++++++
 b/drivers/acpi/bus.c                      | 2195 ++++++++++++++++++
 b/drivers/acpi/button.c                   |  446 +++
 b/drivers/acpi/debugger/dbcmds.c          |  143 +
 b/drivers/acpi/debugger/dbdisasm.c        |  119 
 b/drivers/acpi/debugger/dbdisply.c        |   54 
 b/drivers/acpi/debugger/dbexec.c          |   29 
 b/drivers/acpi/debugger/dbfileio.c        |   12 
 b/drivers/acpi/debugger/dbhistry.c        |   20 
 b/drivers/acpi/debugger/dbinput.c         |   45 
 b/drivers/acpi/debugger/dbstats.c         |   63 
 b/drivers/acpi/debugger/dbutils.c         |   32 
 b/drivers/acpi/debugger/dbxface.c         |   87 
 b/drivers/acpi/dispatcher/dsfield.c       |  114 
 b/drivers/acpi/dispatcher/dsmethod.c      |   36 
 b/drivers/acpi/dispatcher/dsmthdat.c      |   29 
 b/drivers/acpi/dispatcher/dsobject.c      |  138 -
 b/drivers/acpi/dispatcher/dsopcode.c      |  367 +--
 b/drivers/acpi/dispatcher/dsutils.c       |   77 
 b/drivers/acpi/dispatcher/dswexec.c       |   43 
 b/drivers/acpi/dispatcher/dswload.c       |  124 -
 b/drivers/acpi/dispatcher/dswstate.c      |   30 
 b/drivers/acpi/ec.c                       |  735 ++++++
 b/drivers/acpi/events/evevent.c           |  146 -
 b/drivers/acpi/events/evmisc.c            |   54 
 b/drivers/acpi/events/evregion.c          |   62 
 b/drivers/acpi/events/evrgnini.c          |   28 
 b/drivers/acpi/events/evsci.c             |   20 
 b/drivers/acpi/events/evxface.c           |   25 
 b/drivers/acpi/events/evxfevnt.c          |   67 
 b/drivers/acpi/events/evxfregn.c          |    6 
 b/drivers/acpi/executer/exconfig.c        |   34 
 b/drivers/acpi/executer/exconvrt.c        |  106 
 b/drivers/acpi/executer/excreate.c        |    8 
 b/drivers/acpi/executer/exdump.c          |  142 -
 b/drivers/acpi/executer/exfield.c         |   23 
 b/drivers/acpi/executer/exfldio.c         |   38 
 b/drivers/acpi/executer/exmisc.c          |   44 
 b/drivers/acpi/executer/exmutex.c         |   15 
 b/drivers/acpi/executer/exnames.c         |   23 
 b/drivers/acpi/executer/exoparg1.c        |  227 +
 b/drivers/acpi/executer/exoparg2.c        |    4 
 b/drivers/acpi/executer/exoparg3.c        |   20 
 b/drivers/acpi/executer/exprep.c          |   16 
 b/drivers/acpi/executer/exregion.c        |   66 
 b/drivers/acpi/executer/exresnte.c        |    5 
 b/drivers/acpi/executer/exresolv.c        |   15 
 b/drivers/acpi/executer/exresop.c         |   14 
 b/drivers/acpi/executer/exstore.c         |    6 
 b/drivers/acpi/executer/exstoren.c        |    7 
 b/drivers/acpi/executer/exstorob.c        |    9 
 b/drivers/acpi/executer/exsystem.c        |   10 
 b/drivers/acpi/executer/exutils.c         |  122 -
 b/drivers/acpi/fan.c                      |  299 ++
 b/drivers/acpi/hardware/hwacpi.c          |   58 
 b/drivers/acpi/hardware/hwgpe.c           |  109 
 b/drivers/acpi/hardware/hwregs.c          |  334 +-
 b/drivers/acpi/hardware/hwsleep.c         |  115 
 b/drivers/acpi/hardware/hwtimer.c         |   10 
 b/drivers/acpi/include/acconfig.h         |    4 
 b/drivers/acpi/include/acdebug.h          |  111 
 b/drivers/acpi/include/acdispat.h         |   73 
 b/drivers/acpi/include/acevents.h         |   20 
 b/drivers/acpi/include/acexcep.h          |   18 
 b/drivers/acpi/include/acglobal.h         |   20 
 b/drivers/acpi/include/achware.h          |   52 
 b/drivers/acpi/include/acinterp.h         |   54 
 b/drivers/acpi/include/aclocal.h          |  129 -
 b/drivers/acpi/include/acmacros.h         |  148 -
 b/drivers/acpi/include/acnamesp.h         |   30 
 b/drivers/acpi/include/acobject.h         |   39 
 b/drivers/acpi/include/acparser.h         |    4 
 b/drivers/acpi/include/acpixf.h           |   28 
 b/drivers/acpi/include/acresrc.h          |   63 
 b/drivers/acpi/include/acstruct.h         |   15 
 b/drivers/acpi/include/actables.h         |   20 
 b/drivers/acpi/include/actypes.h          |  122 -
 b/drivers/acpi/include/acutils.h          |   87 
 b/drivers/acpi/include/amlcode.h          |    4 
 b/drivers/acpi/include/platform/acenv.h   |   59 
 b/drivers/acpi/include/platform/acgcc.h   |  168 -
 b/drivers/acpi/include/platform/aclinux.h |   23 
 b/drivers/acpi/namespace/nsaccess.c       |   14 
 b/drivers/acpi/namespace/nsalloc.c        |   17 
 b/drivers/acpi/namespace/nsdump.c         |   81 
 b/drivers/acpi/namespace/nseval.c         |   23 
 b/drivers/acpi/namespace/nsinit.c         |   56 
 b/drivers/acpi/namespace/nsload.c         |   15 
 b/drivers/acpi/namespace/nsnames.c        |    9 
 b/drivers/acpi/namespace/nsobject.c       |   48 
 b/drivers/acpi/namespace/nssearch.c       |    4 
 b/drivers/acpi/namespace/nsutils.c        |   36 
 b/drivers/acpi/namespace/nswalk.c         |    3 
 b/drivers/acpi/namespace/nsxfname.c       |    9 
 b/drivers/acpi/namespace/nsxfobj.c        |  105 
 b/drivers/acpi/osl.c                      |  910 +++++++
 b/drivers/acpi/parser/psargs.c            |  227 -
 b/drivers/acpi/parser/psopcode.c          |  106 
 b/drivers/acpi/parser/psparse.c           |  248 +-
 b/drivers/acpi/parser/pstree.c            |   48 
 b/drivers/acpi/parser/psutils.c           |   34 
 b/drivers/acpi/parser/pswalk.c            |   30 
 b/drivers/acpi/parser/psxface.c           |   12 
 b/drivers/acpi/pci_bind.c                 |  309 ++
 b/drivers/acpi/pci_irq.c                  |  387 +++
 b/drivers/acpi/pci_link.c                 |  581 ++++
 b/drivers/acpi/pci_root.c                 |  246 ++
 b/drivers/acpi/power.c                    |  609 +++++
 b/drivers/acpi/processor.c                | 2314 +++++++++++++++++++
 b/drivers/acpi/resources/rsaddr.c         |   37 
 b/drivers/acpi/resources/rscalc.c         |   50 
 b/drivers/acpi/resources/rscreate.c       |   26 
 b/drivers/acpi/resources/rsdump.c         |   14 
 b/drivers/acpi/resources/rsio.c           |   21 
 b/drivers/acpi/resources/rsirq.c          |   32 
 b/drivers/acpi/resources/rslist.c         |   25 
 b/drivers/acpi/resources/rsmemory.c       |   20 
 b/drivers/acpi/resources/rsmisc.c         |   26 
 b/drivers/acpi/resources/rsutils.c        |    4 
 b/drivers/acpi/resources/rsxface.c        |    4 
 b/drivers/acpi/system.c                   | 1310 ++++++++++
 b/drivers/acpi/tables.c                   |  475 +++
 b/drivers/acpi/tables/tbconvrt.c          |  315 +-
 b/drivers/acpi/tables/tbget.c             |  206 +
 b/drivers/acpi/tables/tbinstal.c          |   27 
 b/drivers/acpi/tables/tbutils.c           |   13 
 b/drivers/acpi/tables/tbxface.c           |   13 
 b/drivers/acpi/tables/tbxfroot.c          |   24 
 b/drivers/acpi/thermal.c                  | 1317 ++++++++++
 b/drivers/acpi/utilities/utalloc.c        |   62 
 b/drivers/acpi/utilities/utcopy.c         |   32 
 b/drivers/acpi/utilities/utdebug.c        |   29 
 b/drivers/acpi/utilities/utdelete.c       |   46 
 b/drivers/acpi/utilities/uteval.c         |   22 
 b/drivers/acpi/utilities/utglobal.c       |   58 
 b/drivers/acpi/utilities/utinit.c         |   13 
 b/drivers/acpi/utilities/utmath.c         |    8 
 b/drivers/acpi/utilities/utmisc.c         |  233 +
 b/drivers/acpi/utilities/utobject.c       |   31 
 b/drivers/acpi/utilities/utxface.c        |   55 
 b/drivers/acpi/utils.c                    |  460 +++
 b/drivers/base/base.h                     |    3 
 b/drivers/base/bus.c                      |   88 
 b/drivers/base/core.c                     |  125 -
 b/drivers/base/driver.c                   |   36 
 b/drivers/base/interface.c                |   70 
 b/drivers/base/power.c                    |    2 
 b/drivers/block/acsi.c                    |    6 
 b/drivers/block/cpqarray.c                |    3 
 b/drivers/block/floppy.c                  |   32 
 b/drivers/block/ll_rw_blk.c               |   86 
 b/drivers/block/nbd.c                     |  125 -
 b/drivers/block/ps2esdi.c                 |   52 
 b/drivers/block/xd.c                      |    2 
 b/drivers/cdrom/Config.help               |   21 
 b/drivers/cdrom/Config.in                 |    9 
 b/drivers/cdrom/Makefile                  |    3 
 b/drivers/cdrom/aztcd.c                   |   97 
 b/drivers/cdrom/gscd.c                    |   43 
 b/drivers/cdrom/gscd.h                    |    5 
 b/drivers/cdrom/sbpcd.c                   |  197 -
 b/drivers/cdrom/sbpcd.h                   |   20 
 b/drivers/cdrom/sonycd535.c               |    8 
 b/drivers/char/Config.help                |   12 
 b/drivers/char/Config.in                  |    4 
 b/drivers/char/Makefile                   |    1 
 b/drivers/char/agp/agp.h                  |   18 
 b/drivers/char/agp/agpgart_be.c           |  992 ++++----
 b/drivers/char/drm/drm_agpsupport.h       |    1 
 b/drivers/char/dtlk.c                     |    6 
 b/drivers/char/efirtc.c                   |    7 
 b/drivers/char/epca.c                     |   11 
 b/drivers/char/esp.c                      |    8 
 b/drivers/char/h8.c                       |    8 
 b/drivers/char/hvc_console.c              |  331 ++
 b/drivers/char/ib700wdt.c                 |   16 
 b/drivers/char/isicom.c                   |   11 
 b/drivers/char/istallion.c                |   38 
 b/drivers/char/ite_gpio.c                 |   22 
 b/drivers/char/mixcomwd.c                 |    6 
 b/drivers/char/pc_keyb.c                  |   15 
 b/drivers/char/raw.c                      |   21 
 b/drivers/char/rio/rioctrl.c              |    4 
 b/drivers/char/rtc.c                      |   49 
 b/drivers/char/tty_io.c                   |    4 
 b/drivers/char/w83877f_wdt.c              |   39 
 b/drivers/ide/Makefile                    |    4 
 b/drivers/ide/aec62xx.c                   |   26 
 b/drivers/ide/alim15x3.c                  |  229 -
 b/drivers/ide/amd74xx.c                   |  119 
 b/drivers/ide/cmd64x.c                    |  146 -
 b/drivers/ide/cs5530.c                    |   58 
 b/drivers/ide/cy82c693.c                  |    4 
 b/drivers/ide/device.c                    |  162 +
 b/drivers/ide/hd.c                        |   19 
 b/drivers/ide/hpt34x.c                    |   95 
 b/drivers/ide/hpt366.c                    |  261 --
 b/drivers/ide/ht6560b.c                   |   56 
 b/drivers/ide/icside.c                    |   20 
 b/drivers/ide/ide-cd.c                    |   52 
 b/drivers/ide/ide-disk.c                  |   46 
 b/drivers/ide/ide-floppy.c                |   53 
 b/drivers/ide/ide-pci.c                   |   30 
 b/drivers/ide/ide-pmac.c                  |   81 
 b/drivers/ide/ide-tape.c                  |   60 
 b/drivers/ide/ide-taskfile.c              |  476 +--
 b/drivers/ide/ide.c                       |  363 ---
 b/drivers/ide/ioctl.c                     |  161 +
 b/drivers/ide/main.c                      |   20 
 b/drivers/ide/ns87415.c                   |   42 
 b/drivers/ide/pcidma.c                    |   64 
 b/drivers/ide/pcihost.h                   |   13 
 b/drivers/ide/pdc202xx.c                  |   18 
 b/drivers/ide/pdc4030.c                   |   66 
 b/drivers/ide/piix.c                      |  140 -
 b/drivers/ide/probe.c                     |  198 -
 b/drivers/ide/qd65xx.c                    |    4 
 b/drivers/ide/serverworks.c               |  152 -
 b/drivers/ide/sis5513.c                   |  224 -
 b/drivers/ide/sl82c105.c                  |   28 
 b/drivers/ide/tcq.c                       |  102 
 b/drivers/ide/trm290.c                    |   33 
 b/drivers/ide/via82cxxx.c                 |  137 -
 b/drivers/ieee1394/pcilynx.c              |    2 
 b/drivers/isdn/hisax/avm_a1.c             |   28 
 b/drivers/isdn/hisax/elsa.c               |   36 
 b/drivers/isdn/hisax/gazel.c              |   35 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c     |    2 
 b/drivers/isdn/hisax/niccy.c              |   19 
 b/drivers/isdn/hisax/teles3.c             |   30 
 b/drivers/media/video/video-buf.c         |    2 
 b/drivers/mtd/nftlcore.c                  |   12 
 b/drivers/net/3c501.c                     |   38 
 b/drivers/net/Config.help                 |  103 
 b/drivers/net/dl2k.c                      |  566 ++--
 b/drivers/net/dl2k.h                      |  125 -
 b/drivers/net/e100/e100.h                 |    9 
 b/drivers/net/e100/e100_config.c          |    2 
 b/drivers/net/e100/e100_main.c            |  105 
 b/drivers/net/e100/e100_proc.c            |    2 
 b/drivers/net/e100/e100_test.c            |    8 
 b/drivers/net/e1000/Makefile              |   73 
 b/drivers/net/e1000/e1000.h               |   22 
 b/drivers/net/e1000/e1000_ethtool.c       |  215 +
 b/drivers/net/e1000/e1000_hw.c            |  169 +
 b/drivers/net/e1000/e1000_hw.h            |   49 
 b/drivers/net/e1000/e1000_main.c          |  229 +
 b/drivers/net/e1000/e1000_osdep.h         |    2 
 b/drivers/net/eepro100.c                  |    2 
 b/drivers/net/pcmcia/com20020_cs.c        |    1 
 b/drivers/net/pcnet32.c                   |    5 
 b/drivers/net/tulip/de4x5.c               |   30 
 b/drivers/net/wan/dscc4.c                 |   10 
 b/drivers/net/wireless/airo.c             | 3593 ++++++++++++++++++++----------
 b/drivers/pci/hotplug.c                   |   34 
 b/drivers/pci/pci-driver.c                |   83 
 b/drivers/s390/block/xpram.c              |  134 -
 b/drivers/s390/misc/chandev.c             |    2 
 b/drivers/sbus/char/openprom.c            |    6 
 b/drivers/scsi/ide-scsi.c                 |  180 -
 b/drivers/scsi/qla1280.c                  |    4 
 b/drivers/scsi/scsi_debug.c               |    1 
 b/drivers/scsi/scsi_scan.c                |   25 
 b/drivers/usb/Config.in                   |    8 
 b/drivers/usb/Makefile                    |    2 
 b/drivers/usb/core/Makefile               |    5 
 b/drivers/usb/core/config.c               |  494 ++++
 b/drivers/usb/core/message.c              |  661 +++++
 b/drivers/usb/core/urb.c                  |  236 +
 b/drivers/usb/core/usb.c                  | 1367 -----------
 b/drivers/usb/host/Config.in              |    1 
 b/drivers/usb/host/Makefile               |    5 
 b/drivers/usb/host/ehci-q.c               |    2 
 b/drivers/usb/host/usb-ohci-pci.c         |  445 +++
 b/drivers/usb/host/usb-ohci-sa1111.c      |  130 +
 b/drivers/usb/host/usb-ohci.c             |  478 ---
 b/drivers/usb/host/usb-ohci.h             |   15 
 b/drivers/usb/image/scanner.c             |   23 
 b/drivers/usb/image/scanner.h             |   10 
 b/drivers/usb/storage/freecom.c           |  133 -
 b/drivers/usb/storage/scsiglue.c          |    6 
 b/drivers/usb/storage/transport.c         |   81 
 b/drivers/video/clps711xfb.c              |   28 
 b/fs/adfs/adfs.h                          |    2 
 b/fs/adfs/dir.c                           |    8 
 b/fs/adfs/file.c                          |    3 
 b/fs/adfs/inode.c                         |   26 
 b/fs/adfs/map.c                           |    2 
 b/fs/adfs/super.c                         |   82 
 b/fs/binfmt_elf.c                         |    8 
 b/fs/binfmt_em86.c                        |    1 
 b/fs/binfmt_script.c                      |    1 
 b/fs/buffer.c                             |   62 
 b/fs/driverfs/inode.c                     |    7 
 b/fs/exportfs/expfs.c                     |    2 
 b/fs/ext2/namei.c                         |    3 
 b/fs/ext3/inode.c                         |   65 
 b/fs/ext3/namei.c                         |   14 
 b/fs/fs-writeback.c                       |   11 
 b/fs/hpfs/super.c                         |    1 
 b/fs/inode.c                              |  175 -
 b/fs/jbd/journal.c                        |    2 
 b/fs/jbd/transaction.c                    |    6 
 b/fs/jfs/inode.c                          |   24 
 b/fs/jfs/jfs_dmap.c                       |   36 
 b/fs/jfs/jfs_incore.h                     |   13 
 b/fs/jfs/jfs_logmgr.c                     |    8 
 b/fs/jfs/jfs_metapage.c                   |   45 
 b/fs/jfs/jfs_txnmgr.c                     |   12 
 b/fs/jfs/jfs_xtree.c                      |    7 
 b/fs/jfs/namei.c                          |   23 
 b/fs/jfs/super.c                          |   28 
 b/fs/minix/dir.c                          |    2 
 b/fs/minix/namei.c                        |    3 
 b/fs/namei.c                              |   40 
 b/fs/nfs/inode.c                          |    8 
 b/fs/pipe.c                               |   75 
 b/fs/ramfs/inode.c                        |    3 
 b/fs/sysv/dir.c                           |    2 
 b/fs/sysv/namei.c                         |    2 
 b/fs/ufs/dir.c                            |    6 
 b/fs/ufs/namei.c                          |    2 
 b/fs/ufs/truncate.c                       |    2 
 b/fs/umsdos/namei.c                       |    2 
 b/include/asm-alpha/pgtable.h             |   13 
 b/include/asm-alpha/siginfo.h             |    1 
 b/include/asm-arm/atomic.h                |   16 
 b/include/asm-arm/mach/arch.h             |    3 
 b/include/asm-arm/pgtable.h               |   10 
 b/include/asm-arm/proc-armo/processor.h   |   18 
 b/include/asm-arm/proc-armv/processor.h   |   19 
 b/include/asm-arm/thread_info.h           |   53 
 b/include/asm-arm/tlb.h                   |   20 
 b/include/asm-cris/pgtable.h              |   12 
 b/include/asm-cris/siginfo.h              |    2 
 b/include/asm-i386/acpi.h                 |  127 -
 b/include/asm-i386/io_apic.h              |    7 
 b/include/asm-i386/mpspec.h               |    9 
 b/include/asm-i386/page.h                 |    4 
 b/include/asm-i386/pgtable.h              |   12 
 b/include/asm-ia64/pgtable.h              |   13 
 b/include/asm-ia64/siginfo.h              |    2 
 b/include/asm-m68k/pgtable.h              |   22 
 b/include/asm-m68k/siginfo.h              |   16 
 b/include/asm-mips/pgtable.h              |   13 
 b/include/asm-mips/siginfo.h              |   17 
 b/include/asm-mips64/pgtable.h            |   12 
 b/include/asm-mips64/siginfo.h            |   17 
 b/include/asm-parisc/pgtable.h            |   13 
 b/include/asm-parisc/siginfo.h            |    2 
 b/include/asm-ppc/pgtable.h               |   10 
 b/include/asm-ppc64/fcntl.h               |    2 
 b/include/asm-ppc64/hardirq.h             |    2 
 b/include/asm-ppc64/memory.h              |    2 
 b/include/asm-ppc64/mmu.h                 |   13 
 b/include/asm-ppc64/paca.h                |    3 
 b/include/asm-ppc64/page.h                |    9 
 b/include/asm-ppc64/pgtable.h             |   38 
 b/include/asm-ppc64/processor.h           |    8 
 b/include/asm-ppc64/system.h              |   24 
 b/include/asm-ppc64/thread_info.h         |    2 
 b/include/asm-ppc64/timex.h               |    1 
 b/include/asm-ppc64/uaccess.h             |    6 
 b/include/asm-ppc64/unistd.h              |    3 
 b/include/asm-s390/pgtable.h              |   12 
 b/include/asm-s390x/pgtable.h             |   12 
 b/include/asm-sh/pgtable.h                |   12 
 b/include/asm-sparc/pgtable.h             |   10 
 b/include/asm-sparc/siginfo.h             |    1 
 b/include/asm-sparc64/pgtable.h           |   10 
 b/include/asm-sparc64/siginfo.h           |    2 
 b/include/asm-x86_64/pgtable.h            |   12 
 b/include/linux/acpi.h                    |   68 
 b/include/linux/adfs_fs.h                 |    6 
 b/include/linux/agp_backend.h             |    2 
 b/include/linux/atapi.h                   |   13 
 b/include/linux/blk.h                     |   40 
 b/include/linux/blkdev.h                  |    2 
 b/include/linux/buffer_head.h             |    3 
 b/include/linux/device.h                  |   16 
 b/include/linux/ethtool.h                 |    4 
 b/include/linux/ext3_fs.h                 |    1 
 b/include/linux/ext3_jbd.h                |    5 
 b/include/linux/fs.h                      |    6 
 b/include/linux/hdreg.h                   |   13 
 b/include/linux/highmem.h                 |    4 
 b/include/linux/ide.h                     |  173 -
 b/include/linux/jbd.h                     |    3 
 b/include/linux/list.h                    |    2 
 b/include/linux/module.h                  |  125 -
 b/include/linux/nbd.h                     |    9 
 b/include/linux/nfs_fs.h                  |    3 
 b/include/linux/pipe_fs_i.h               |    4 
 b/include/linux/raid/md_k.h               |    4 
 b/include/linux/sched.h                   |    2 
 b/include/linux/swap.h                    |   11 
 b/include/linux/swapops.h                 |   68 
 b/include/linux/types.h                   |    8 
 b/include/linux/udf_fs.h                  |    2 
 b/include/linux/usb.h                     |    2 
 b/include/linux/writeback.h               |    1 
 b/init/do_mounts.c                        |    2 
 b/init/main.c                             |    2 
 b/kernel/ksyms.c                          |    2 
 b/kernel/softirq.c                        |    6 
 b/kernel/suspend.c                        |   18 
 b/kernel/time.c                           |    4 
 b/kernel/timer.c                          |    2 
 b/kernel/user.c                           |   54 
 b/mm/filemap.c                            |   38 
 b/mm/memory.c                             |    4 
 b/mm/mmap.c                               |    2 
 b/mm/page-writeback.c                     |    2 
 b/mm/shmem.c                              |   82 
 b/mm/swap_state.c                         |   40 
 b/mm/swapfile.c                           |   43 
 b/mm/vmscan.c                             |    1 
 b/scripts/mkdep.c                         |    2 
 b/scripts/split-include.c                 |    2 
 b/sound/isa/sb/sb16_csp.c                 |    2 
 drivers/acpi/acpi_ac.c                    |  352 --
 drivers/acpi/acpi_battery.c               |  831 ------
 drivers/acpi/acpi_bus.c                   | 2201 ------------------
 drivers/acpi/acpi_button.c                |  411 ---
 drivers/acpi/acpi_ec.c                    |  736 ------
 drivers/acpi/acpi_fan.c                   |  300 --
 drivers/acpi/acpi_osl.c                   |  833 ------
 drivers/acpi/acpi_pci_link.c              |  588 ----
 drivers/acpi/acpi_pci_root.c              |  747 ------
 drivers/acpi/acpi_power.c                 |  610 -----
 drivers/acpi/acpi_processor.c             | 2292 -------------------
 drivers/acpi/acpi_system.c                | 1270 ----------
 drivers/acpi/acpi_tables.c                |  515 ----
 drivers/acpi/acpi_thermal.c               | 1318 -----------
 drivers/acpi/acpi_utils.c                 |  460 ---
 drivers/cdrom/sbpcd2.c                    |    5 
 drivers/cdrom/sbpcd3.c                    |    5 
 drivers/cdrom/sbpcd4.c                    |    5 
 include/asm-arm/proc-armo/uncompress.h    |   11 
 include/asm-arm/proc-armv/uncompress.h    |   26 
 587 files changed, 32640 insertions(+), 29453 deletions(-)

