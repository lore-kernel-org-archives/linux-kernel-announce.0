From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.22 released
Date: Sun, 16 Jun 2002 19:39:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200206170239.g5H2d3830119@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.22 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.22.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.22.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               428436           1798442
Full source                       34499406         153743360

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/mm/proc-arm2,3.S                     |  370 ------
 arch/arm/mm/proc-arm6,7.S                     |  504 --------
 arch/x86_64/kernel/pci-irq.c                  |  833 --------------
 arch/x86_64/kernel/pci-pc.c                   |  447 -------
 arch/x86_64/kernel/pci-x86_64.c               |  385 ------
 arch/x86_64/kernel/pci-x86_64.h               |   76 -
 arch/x86_64/lib/checksum_copy.S               |  142 --
 arch/x86_64/lib/generic-checksum.c            |  124 --
 arch/x86_64/lib/mmx.c                         |  256 ----
 arch/x86_64/lib/rwsem_thunk.S                 |   27 
 b/Documentation/Changes                       |    2 
 b/Documentation/filesystems/porting           |   13 
 b/Documentation/usb/philips.txt               |    8 
 b/MAINTAINERS                                 |    2 
 b/Makefile                                    |  102 -
 b/Rules.make                                  |  293 ++---
 b/arch/alpha/kernel/setup.c                   |    3 
 b/arch/alpha/kernel/smc37c669.c               |   66 -
 b/arch/arm/kernel/setup.c                     |    3 
 b/arch/arm/mach-integrator/pci_v3.c           |   14 
 b/arch/arm/mach-iop310/iop310-pci.c           |  230 ++--
 b/arch/arm/mach-sa1100/Makefile               |    1 
 b/arch/arm/mach-sa1100/leds-badge4.c          |  112 +
 b/arch/arm/mach-sa1100/leds.c                 |    2 
 b/arch/arm/mach-sa1100/leds.h                 |    1 
 b/arch/arm/mm/Makefile                        |    6 
 b/arch/arm/mm/alignment.c                     |   69 -
 b/arch/arm/mm/fault-armv.c                    |   77 -
 b/arch/arm/mm/fault-common.c                  |   47 
 b/arch/arm/mm/fault.h                         |    8 
 b/arch/arm/mm/proc-arm2_3.S                   |  370 ++++++
 b/arch/arm/mm/proc-arm6_7.S                   |  504 ++++++++
 b/arch/cris/drivers/ide.c                     |    8 
 b/arch/i386/Config.help                       |   10 
 b/arch/i386/kernel/apm.c                      |    1 
 b/arch/i386/kernel/dmi_scan.c                 |   28 
 b/arch/i386/kernel/entry.S                    |   42 
 b/arch/i386/kernel/i387.c                     |    8 
 b/arch/i386/kernel/i8259.c                    |   12 
 b/arch/i386/kernel/io_apic.c                  |    4 
 b/arch/i386/kernel/ioport.c                   |   14 
 b/arch/i386/kernel/mpparse.c                  |   52 
 b/arch/i386/kernel/process.c                  |   30 
 b/arch/i386/kernel/setup.c                    |    3 
 b/arch/i386/kernel/smpboot.c                  |    4 
 b/arch/i386/kernel/suspend.c                  |    5 
 b/arch/ia64/dig/setup.c                       |    3 
 b/arch/ia64/hp/sim/hpsim_setup.c              |    3 
 b/arch/ia64/sn/kernel/setup.c                 |    3 
 b/arch/m68k/atari/stram.c                     |   28 
 b/arch/mips/au1000/pb1000/setup.c             |    3 
 b/arch/mips/ddb5xxx/ddb5477/setup.c           |    5 
 b/arch/mips/ite-boards/generic/it8172_setup.c |    3 
 b/arch/mips/kernel/setup.c                    |    3 
 b/arch/parisc/hpux/sys_hpux.c                 |    4 
 b/arch/ppc/kernel/m8xx_setup.c                |    5 
 b/arch/ppc/kernel/ppc_ksyms.c                 |    2 
 b/arch/ppc/kernel/setup.c                     |    3 
 b/arch/ppc/lib/locks.c                        |    2 
 b/arch/ppc/platforms/adir_setup.c             |    7 
 b/arch/ppc/platforms/chrp_setup.c             |    5 
 b/arch/ppc/platforms/ev64260_setup.c          |    7 
 b/arch/ppc/platforms/gemini_setup.c           |    5 
 b/arch/ppc/platforms/iSeries_setup.c          |    5 
 b/arch/ppc/platforms/k2_setup.c               |    7 
 b/arch/ppc/platforms/lopec_setup.c            |    9 
 b/arch/ppc/platforms/mcpn765_setup.c          |    7 
 b/arch/ppc/platforms/menf1_setup.c            |    7 
 b/arch/ppc/platforms/mvme5100_setup.c         |    7 
 b/arch/ppc/platforms/pcore_setup.c            |    7 
 b/arch/ppc/platforms/pmac_setup.c             |    9 
 b/arch/ppc/platforms/powerpmc250.c            |    7 
 b/arch/ppc/platforms/pplus_setup.c            |    7 
 b/arch/ppc/platforms/prep_setup.c             |    9 
 b/arch/ppc/platforms/prpmc750_setup.c         |    7 
 b/arch/ppc/platforms/prpmc800_setup.c         |    7 
 b/arch/ppc/platforms/sandpoint_setup.c        |    7 
 b/arch/ppc/platforms/spruce_setup.c           |    7 
 b/arch/ppc/platforms/zx4500_setup.c           |    7 
 b/arch/ppc64/kernel/chrp_setup.c              |    5 
 b/arch/ppc64/kernel/iSeries_setup.c           |    5 
 b/arch/ppc64/kernel/setup.c                   |    5 
 b/arch/s390/kernel/setup.c                    |    3 
 b/arch/s390x/kernel/setup.c                   |    3 
 b/arch/sh/kernel/setup.c                      |    3 
 b/arch/sparc/kernel/setup.c                   |    3 
 b/arch/sparc64/kernel/dtlb_backend.S          |    1 
 b/arch/sparc64/kernel/dtlb_base.S             |    3 
 b/arch/sparc64/kernel/setup.c                 |    4 
 b/arch/sparc64/kernel/smp.c                   |    1 
 b/arch/sparc64/kernel/sparc64_ksyms.c         |    2 
 b/arch/sparc64/kernel/sys_sparc32.c           |   32 
 b/arch/sparc64/kernel/sys_sunos32.c           |    2 
 b/arch/sparc64/mm/init.c                      |   13 
 b/arch/sparc64/solaris/fs.c                   |    4 
 b/arch/x86_64/Makefile                        |   13 
 b/arch/x86_64/boot/setup.S                    |    2 
 b/arch/x86_64/boot/video.S                    |    1 
 b/arch/x86_64/config.in                       |   52 
 b/arch/x86_64/defconfig                       |  240 +++-
 b/arch/x86_64/ia32/Makefile                   |    9 
 b/arch/x86_64/ia32/ia32_ioctl.c               |   68 -
 b/arch/x86_64/ia32/ia32_signal.c              |    8 
 b/arch/x86_64/ia32/ia32entry.S                |    8 
 b/arch/x86_64/ia32/sys_ia32.c                 |    5 
 b/arch/x86_64/kernel/Makefile                 |    5 
 b/arch/x86_64/kernel/bootflag.c               |    3 
 b/arch/x86_64/kernel/early_printk.c           |   50 
 b/arch/x86_64/kernel/entry.S                  |   16 
 b/arch/x86_64/kernel/head.S                   |   17 
 b/arch/x86_64/kernel/head64.c                 |   10 
 b/arch/x86_64/kernel/i387.c                   |    5 
 b/arch/x86_64/kernel/i8259.c                  |   13 
 b/arch/x86_64/kernel/irq.c                    |    2 
 b/arch/x86_64/kernel/ldt.c                    |  175 ++-
 b/arch/x86_64/kernel/mpparse.c                |   42 
 b/arch/x86_64/kernel/msr.c                    |    5 
 b/arch/x86_64/kernel/mtrr.c                   |   24 
 b/arch/x86_64/kernel/nmi.c                    |   12 
 b/arch/x86_64/kernel/process.c                |   76 -
 b/arch/x86_64/kernel/setup.c                  |   13 
 b/arch/x86_64/kernel/setup64.c                |   55 
 b/arch/x86_64/kernel/signal.c                 |   65 -
 b/arch/x86_64/kernel/smp.c                    |   30 
 b/arch/x86_64/kernel/smpboot.c                |   23 
 b/arch/x86_64/kernel/sys_x86_64.c             |   16 
 b/arch/x86_64/kernel/time.c                   |   19 
 b/arch/x86_64/kernel/traps.c                  |   31 
 b/arch/x86_64/kernel/vsyscall.c               |   27 
 b/arch/x86_64/kernel/x8664_ksyms.c            |    5 
 b/arch/x86_64/lib/Makefile                    |   16 
 b/arch/x86_64/lib/clear_page.S                |   38 
 b/arch/x86_64/lib/copy_page.S                 |   71 +
 b/arch/x86_64/lib/copy_user.S                 |  230 ++++
 b/arch/x86_64/lib/csum-copy.S                 |  271 ++++
 b/arch/x86_64/lib/csum-partial.c              |  126 ++
 b/arch/x86_64/lib/csum-wrappers.c             |  109 +
 b/arch/x86_64/lib/io.c                        |   17 
 b/arch/x86_64/lib/memcpy.S                    |  107 +
 b/arch/x86_64/lib/memmove.c                   |   27 
 b/arch/x86_64/lib/memset.S                    |   85 +
 b/arch/x86_64/lib/usercopy.c                  |  151 +-
 b/arch/x86_64/mm/extable.c                    |   25 
 b/arch/x86_64/mm/fault.c                      |    8 
 b/arch/x86_64/mm/init.c                       |    1 
 b/arch/x86_64/mm/ioremap.c                    |    3 
 b/arch/x86_64/pci/Makefile                    |   17 
 b/arch/x86_64/pci/acpi.c                      |   25 
 b/arch/x86_64/pci/changelog                   |    1 
 b/arch/x86_64/pci/common.c                    |  196 +++
 b/arch/x86_64/pci/direct.c                    |  367 ++++++
 b/arch/x86_64/pci/fixup.c                     |   61 +
 b/arch/x86_64/pci/irq.c                       |  652 +++++++++++
 b/arch/x86_64/pci/legacy.c                    |   57 +
 b/arch/x86_64/pci/pci.h                       |   73 +
 b/arch/x86_64/pci/x86-64.c                    |  324 +++++
 b/arch/x86_64/tools/offset.c                  |   17 
 b/arch/x86_64/vmlinux.lds                     |    2 
 b/drivers/Makefile                            |    7 
 b/drivers/acorn/block/fd1772.c                |   22 
 b/drivers/acorn/block/mfmhd.c                 |   30 
 b/drivers/acorn/scsi/acornscsi.c              |    1 
 b/drivers/acorn/scsi/cumana_1.c               |    1 
 b/drivers/acorn/scsi/ecoscsi.c                |    1 
 b/drivers/acorn/scsi/oak.c                    |    1 
 b/drivers/acpi/Makefile                       |    2 
 b/drivers/acpi/acpi_drivers.h                 |    3 
 b/drivers/acpi/bus.c                          |    5 
 b/drivers/acpi/debugger/dbcmds.c              |    7 
 b/drivers/acpi/debugger/dbdisply.c            |   28 
 b/drivers/acpi/debugger/dbstats.c             |    8 
 b/drivers/acpi/dispatcher/dsmthdat.c          |    6 
 b/drivers/acpi/dispatcher/dsobject.c          |   93 +
 b/drivers/acpi/dispatcher/dsopcode.c          |    8 
 b/drivers/acpi/dispatcher/dsutils.c           |    6 
 b/drivers/acpi/dispatcher/dswexec.c           |   10 
 b/drivers/acpi/dispatcher/dswstate.c          |   16 
 b/drivers/acpi/events/evregion.c              |    4 
 b/drivers/acpi/events/evrgnini.c              |  117 +-
 b/drivers/acpi/events/evxface.c               |    3 
 b/drivers/acpi/executer/exconfig.c            |    9 
 b/drivers/acpi/executer/exconvrt.c            |   22 
 b/drivers/acpi/executer/excreate.c            |   16 
 b/drivers/acpi/executer/exdump.c              |   58 -
 b/drivers/acpi/executer/exfield.c             |   14 
 b/drivers/acpi/executer/exfldio.c             |   12 
 b/drivers/acpi/executer/exmisc.c              |   49 
 b/drivers/acpi/executer/exoparg1.c            |   23 
 b/drivers/acpi/executer/exoparg2.c            |   14 
 b/drivers/acpi/executer/exoparg3.c            |    4 
 b/drivers/acpi/executer/exoparg6.c            |    4 
 b/drivers/acpi/executer/exprep.c              |    4 
 b/drivers/acpi/executer/exresnte.c            |   74 -
 b/drivers/acpi/executer/exresolv.c            |   67 -
 b/drivers/acpi/executer/exresop.c             |   57 -
 b/drivers/acpi/executer/exstore.c             |   65 -
 b/drivers/acpi/executer/exstoren.c            |   22 
 b/drivers/acpi/executer/exutils.c             |   10 
 b/drivers/acpi/hardware/hwregs.c              |   51 
 b/drivers/acpi/include/acconfig.h             |   93 -
 b/drivers/acpi/include/acinterp.h             |    5 
 b/drivers/acpi/include/acmacros.h             |    4 
 b/drivers/acpi/include/acobject.h             |    4 
 b/drivers/acpi/include/acoutput.h             |   24 
 b/drivers/acpi/include/acpixf.h               |    8 
 b/drivers/acpi/include/acutils.h              |   20 
 b/drivers/acpi/include/platform/acenv.h       |   44 
 b/drivers/acpi/include/platform/aclinux.h     |    3 
 b/drivers/acpi/namespace/nsaccess.c           |    4 
 b/drivers/acpi/namespace/nsdump.c             |    4 
 b/drivers/acpi/namespace/nseval.c             |   28 
 b/drivers/acpi/namespace/nsobject.c           |   25 
 b/drivers/acpi/namespace/nssearch.c           |    5 
 b/drivers/acpi/namespace/nsutils.c            |    4 
 b/drivers/acpi/parser/psopcode.c              |   10 
 b/drivers/acpi/pci_root.c                     |  116 +-
 b/drivers/acpi/processor.c                    |    2 
 b/drivers/acpi/resources/rscalc.c             |    8 
 b/drivers/acpi/resources/rscreate.c           |   18 
 b/drivers/acpi/resources/rsutils.c            |   47 
 b/drivers/acpi/system.c                       |    5 
 b/drivers/acpi/tables/tbutils.c               |    9 
 b/drivers/acpi/utilities/utcopy.c             |   71 -
 b/drivers/acpi/utilities/utdelete.c           |   10 
 b/drivers/acpi/utilities/uteval.c             |   34 
 b/drivers/acpi/utilities/utglobal.c           |   84 -
 b/drivers/acpi/utilities/utmisc.c             |  118 --
 b/drivers/acpi/utilities/utobject.c           |   51 
 b/drivers/acpi/utils.c                        |   16 
 b/drivers/block/DAC960.c                      |   26 
 b/drivers/block/acsi.c                        |   35 
 b/drivers/block/amiflop.c                     |   12 
 b/drivers/block/ataflop.c                     |   16 
 b/drivers/block/blkpg.c                       |    2 
 b/drivers/block/cpqarray.c                    |    2 
 b/drivers/block/floppy.c                      |    2 
 b/drivers/block/genhd.c                       |    5 
 b/drivers/block/ll_rw_blk.c                   |  118 +-
 b/drivers/block/loop.c                        |   13 
 b/drivers/block/nbd.c                         |    1 
 b/drivers/block/paride/pcd.c                  |   17 
 b/drivers/block/paride/pd.c                   |   30 
 b/drivers/block/paride/pf.c                   |   25 
 b/drivers/block/ps2esdi.c                     |   16 
 b/drivers/block/rd.c                          |    3 
 b/drivers/block/swim3.c                       |   26 
 b/drivers/block/swim_iop.c                    |   28 
 b/drivers/block/xd.c                          |    7 
 b/drivers/block/z2ram.c                       |   12 
 b/drivers/cdrom/aztcd.c                       |   21 
 b/drivers/cdrom/cdu31a.c                      |   25 
 b/drivers/cdrom/cm206.c                       |   10 
 b/drivers/cdrom/gscd.c                        |   17 
 b/drivers/cdrom/mcd.c                         |   27 
 b/drivers/cdrom/mcdx.c                        |   30 
 b/drivers/cdrom/optcd.c                       |   33 
 b/drivers/cdrom/sbpcd.c                       |   14 
 b/drivers/cdrom/sjcd.c                        |   11 
 b/drivers/cdrom/sonycd535.c                   |   14 
 b/drivers/char/Config.in                      |    2 
 b/drivers/char/Makefile                       |    2 
 b/drivers/char/isicom.c                       |    6 
 b/drivers/char/istallion.c                    |   16 
 b/drivers/char/stallion.c                     |   11 
 b/drivers/char/sysrq.c                        |   36 
 b/drivers/hotplug/pci_hotplug_core.c          |    2 
 b/drivers/hotplug/pci_hotplug_util.c          |    2 
 b/drivers/i2c/i2c-core.c                      |    8 
 b/drivers/ide/Config.help                     |   12 
 b/drivers/ide/Config.in                       |    8 
 b/drivers/ide/aec62xx.c                       |   30 
 b/drivers/ide/alim15x3.c                      |   12 
 b/drivers/ide/amd74xx.c                       |    2 
 b/drivers/ide/ata-timing.c                    |   56 
 b/drivers/ide/ata-timing.h                    |    4 
 b/drivers/ide/cmd64x.c                        |  380 ++----
 b/drivers/ide/cy82c693.c                      |  178 +--
 b/drivers/ide/device.c                        |   75 +
 b/drivers/ide/hd.c                            |   30 
 b/drivers/ide/hpt34x.c                        |  137 --
 b/drivers/ide/hpt366.c                        |  198 ---
 b/drivers/ide/icside.c                        |   22 
 b/drivers/ide/ide-cd.c                        |  161 ++
 b/drivers/ide/ide-cs.c                        |  654 ++++++-----
 b/drivers/ide/ide-disk.c                      |  891 ++++++++-------
 b/drivers/ide/ide-floppy.c                    |  147 +-
 b/drivers/ide/ide-pmac.c                      |   36 
 b/drivers/ide/ide-tape.c                      |  145 +-
 b/drivers/ide/ide-taskfile.c                  |  145 --
 b/drivers/ide/ide.c                           |  462 +++-----
 b/drivers/ide/ioctl.c                         |   12 
 b/drivers/ide/it8172.c                        |   70 -
 b/drivers/ide/main.c                          |   63 -
 b/drivers/ide/ns87415.c                       |    6 
 b/drivers/ide/opti621.c                       |    3 
 b/drivers/ide/pcidma.c                        |   52 
 b/drivers/ide/pdc202xx.c                      |  389 ++----
 b/drivers/ide/pdc4030.c                       |  146 ++
 b/drivers/ide/piix.c                          |    8 
 b/drivers/ide/probe.c                         |   43 
 b/drivers/ide/serverworks.c                   |   96 -
 b/drivers/ide/sis5513.c                       |  102 -
 b/drivers/ide/sl82c105.c                      |    1 
 b/drivers/ide/tcq.c                           |   55 
 b/drivers/ide/trm290.c                        |   19 
 b/drivers/ide/via82cxxx.c                     |    2 
 b/drivers/input/Makefile                      |    1 
 b/drivers/isdn/Makefile                       |    2 
 b/drivers/isdn/eicon/pc.h                     |    5 
 b/drivers/isdn/hardware/Makefile              |    1 
 b/drivers/isdn/hardware/avm/avm_cs.c          |   12 
 b/drivers/isdn/hisax/Config.in                |   12 
 b/drivers/isdn/hisax/amd7930_fn.c             |  106 +
 b/drivers/isdn/hisax/amd7930_fn.h             |   47 
 b/drivers/isdn/icn/icn.c                      |   39 
 b/drivers/isdn/sc/init.c                      |   45 
 b/drivers/md/linear.c                         |    1 
 b/drivers/md/md.c                             |    1 
 b/drivers/md/multipath.c                      |    2 
 b/drivers/md/raid0.c                          |    1 
 b/drivers/md/raid1.c                          |    1 
 b/drivers/media/Makefile                      |    2 
 b/drivers/media/radio/Config.in               |    4 
 b/drivers/media/video/tda9875.c               |    1 
 b/drivers/message/Makefile                    |    2 
 b/drivers/message/i2o/i2o_block.c             |    1 
 b/drivers/mtd/Makefile                        |    3 
 b/drivers/mtd/ftl.c                           |    7 
 b/drivers/mtd/mtdblock.c                      |    5 
 b/drivers/mtd/mtdblock_ro.c                   |    4 
 b/drivers/mtd/nftlcore.c                      |    6 
 b/drivers/net/8139cp.c                        |  180 ++-
 b/drivers/net/Makefile                        |    3 
 b/drivers/net/atarilance.c                    |   14 
 b/drivers/net/e100/e100_proc.c                |    3 
 b/drivers/net/eepro.c                         |    6 
 b/drivers/net/eexpress.c                      |   34 
 b/drivers/net/hamradio/Config.in              |    6 
 b/drivers/net/hamradio/yam.c                  |   18 
 b/drivers/net/irda/Config.help                |    8 
 b/drivers/net/irda/Config.in                  |    4 
 b/drivers/net/irda/Makefile                   |    2 
 b/drivers/net/irda/act200l.c                  |  299 +++++
 b/drivers/net/irda/irda-usb.c                 |  120 --
 b/drivers/net/irda/ma600.c                    |  356 ++++++
 b/drivers/net/ni65.c                          |   20 
 b/drivers/net/ns83820.c                       |  130 +-
 b/drivers/net/pcmcia/ray_cs.c                 |    9 
 b/drivers/net/wan/Config.in                   |    3 
 b/drivers/net/wan/comx-hw-comx.c              |    4 
 b/drivers/net/wan/comx-hw-munich.c            |    4 
 b/drivers/net/wan/dscc4.c                     |   31 
 b/drivers/net/wan/farsync.c                   |   17 
 b/drivers/net/wan/sdla_fr.c                   |    4 
 b/drivers/net/wan/sdlamain.c                  |    8 
 b/drivers/pci/pci.ids                         |    1 
 b/drivers/pcmcia/cardbus.c                    |    6 
 b/drivers/pcmcia/ti113x.h                     |   15 
 b/drivers/pcmcia/yenta.c                      |    2 
 b/drivers/pnp/pnpbios_proc.c                  |    1 
 b/drivers/s390/Makefile                       |    5 
 b/drivers/s390/block/xpram.c                  |   39 
 b/drivers/sbus/Makefile                       |    2 
 b/drivers/sbus/audio/dbri.c                   |    1 
 b/drivers/sbus/char/jsflash.c                 |   17 
 b/drivers/scsi/53c7,8xx.c                     |    1 
 b/drivers/scsi/53c700.c                       |   39 
 b/drivers/scsi/53c7xx.c                       |    1 
 b/drivers/scsi/AM53C974.c                     |    1 
 b/drivers/scsi/Config.in                      |   49 
 b/drivers/scsi/Makefile                       |    2 
 b/drivers/scsi/NCR53C9x.c                     |    2 
 b/drivers/scsi/NCR_D700.c                     |    1 
 b/drivers/scsi/aha152x.c                      |    1 
 b/drivers/scsi/atari_scsi.c                   |    1 
 b/drivers/scsi/constants.c                    | 1467 ++++++++++++++------------
 b/drivers/scsi/dmx3191d.c                     |    1 
 b/drivers/scsi/dtc.c                          |    1 
 b/drivers/scsi/g_NCR5380.c                    |    1 
 b/drivers/scsi/ide-scsi.c                     |   98 +
 b/drivers/scsi/lasi700.c                      |    1 
 b/drivers/scsi/mac_scsi.c                     |    1 
 b/drivers/scsi/ncr53c8xx.c                    |    1 
 b/drivers/scsi/osst.c                         |    3 
 b/drivers/scsi/pas16.c                        |    1 
 b/drivers/scsi/scsi.c                         |    1 
 b/drivers/scsi/scsi.h                         |   39 
 b/drivers/scsi/scsi_error.c                   |   62 -
 b/drivers/scsi/scsi_ioctl.c                   |   25 
 b/drivers/scsi/scsi_lib.c                     |    1 
 b/drivers/scsi/scsi_merge.c                   |    1 
 b/drivers/scsi/scsi_queue.c                   |    1 
 b/drivers/scsi/scsi_scan.c                    |    1 
 b/drivers/scsi/scsi_syms.c                    |    3 
 b/drivers/scsi/sd.c                           |  522 ++++-----
 b/drivers/scsi/sd.h                           |   32 
 b/drivers/scsi/seagate.c                      |    3 
 b/drivers/scsi/sr.c                           |    2 
 b/drivers/scsi/sr.h                           |    2 
 b/drivers/scsi/st.c                           |    3 
 b/drivers/scsi/sun3_scsi.c                    |    1 
 b/drivers/scsi/sym53c8xx.c                    |    1 
 b/drivers/scsi/sym53c8xx_2/sym_glue.h         |    1 
 b/drivers/scsi/t128.c                         |    1 
 b/drivers/scsi/tmscsim.c                      |    7 
 b/drivers/usb/Makefile                        |    2 
 b/drivers/usb/class/Config.help               |   20 
 b/drivers/usb/class/printer.c                 |   21 
 b/drivers/usb/core/devices.c                  |    4 
 b/drivers/usb/core/devio.c                    |   19 
 b/drivers/usb/core/hcd-pci.c                  |    2 
 b/drivers/usb/core/message.c                  |    8 
 b/drivers/usb/host/hc_simple.c                |   25 
 b/drivers/usb/host/ohci-hcd.c                 |  109 +
 b/drivers/usb/host/ohci-q.c                   |   32 
 b/drivers/usb/host/ohci.h                     |   18 
 b/drivers/usb/host/uhci-hcd.c                 |    6 
 b/drivers/usb/host/uhci.c                     |    6 
 b/drivers/usb/image/hpusbscsi.c               |    3 
 b/drivers/usb/image/hpusbscsi.h               |   14 
 b/drivers/usb/input/Config.help               |   11 
 b/drivers/usb/input/Config.in                 |    1 
 b/drivers/usb/input/Makefile                  |    1 
 b/drivers/usb/input/aiptek.c                  |  339 ++++++
 b/drivers/usb/media/dabusb.c                  |    4 
 b/drivers/usb/media/ov511.c                   |    2 
 b/drivers/usb/media/pwc-ctrl.c                |  451 +++++++
 b/drivers/usb/media/pwc-if.c                  |    2 
 b/drivers/usb/media/pwc-ioctl.h               |   65 +
 b/drivers/usb/media/pwc.h                     |    7 
 b/drivers/usb/media/se401.c                   |   24 
 b/drivers/usb/media/stv680.c                  |    4 
 b/drivers/usb/media/stv680.h                  |    2 
 b/drivers/usb/media/vicam.c                   |    2 
 b/drivers/usb/net/cdc-ether.c                 |   18 
 b/drivers/usb/net/cdc-ether.h                 |    8 
 b/drivers/usb/net/kaweth.c                    |   23 
 b/drivers/usb/serial/belkin_sa.c              |    4 
 b/drivers/usb/serial/cyberjack.c              |    4 
 b/drivers/usb/serial/digi_acceleport.c        |    8 
 b/drivers/usb/serial/empeg.c                  |    4 
 b/drivers/usb/serial/ftdi_sio.c               |    8 
 b/drivers/usb/serial/io_tables.h              |   16 
 b/drivers/usb/serial/ipaq.c                   |    7 
 b/drivers/usb/serial/ir-usb.c                 |    4 
 b/drivers/usb/serial/keyspan.h                |   16 
 b/drivers/usb/serial/keyspan_pda.c            |   49 
 b/drivers/usb/serial/kl5kusb105.c             |    4 
 b/drivers/usb/serial/mct_u232.c               |    4 
 b/drivers/usb/serial/omninet.c                |    2 
 b/drivers/usb/serial/pl2303.c                 |    4 
 b/drivers/usb/serial/safe_serial.c            |    4 
 b/drivers/usb/serial/usb-serial.h             |   22 
 b/drivers/usb/serial/usbserial.c              |  110 +
 b/drivers/usb/serial/visor.c                  |   41 
 b/drivers/usb/serial/whiteheat.c              |   34 
 b/drivers/usb/storage/debug.c                 |  157 --
 b/drivers/video/Makefile                      |    2 
 b/drivers/video/cfbimgblt.c                   |   14 
 b/fs/Makefile                                 |    1 
 b/fs/adfs/map.c                               |    2 
 b/fs/bfs/inode.c                              |    2 
 b/fs/bio.c                                    |    5 
 b/fs/block_dev.c                              |   30 
 b/fs/buffer.c                                 |    2 
 b/fs/coda/inode.c                             |    4 
 b/fs/dquot.c                                  |    2 
 b/fs/exportfs/expfs.c                         |    2 
 b/fs/ext2/inode.c                             |    3 
 b/fs/ext3/ialloc.c                            |    5 
 b/fs/ext3/namei.c                             |    8 
 b/fs/ext3/super.c                             |    2 
 b/fs/hfs/inode.c                              |    1 
 b/fs/inode.c                                  |    4 
 b/fs/jffs/inode-v23.c                         |    2 
 b/fs/jffs/intrep.c                            |    4 
 b/fs/jffs/jffs_fm.c                           |    4 
 b/fs/jffs/jffs_fm.h                           |    2 
 b/fs/jffs2/super.c                            |    3 
 b/fs/jfs/jfs_mount.c                          |    2 
 b/fs/jfs/jfs_txnmgr.c                         |    2 
 b/fs/libfs.c                                  |   47 
 b/fs/locks.c                                  |   43 
 b/fs/mpage.c                                  |   12 
 b/fs/nfs/file.c                               |    2 
 b/fs/nfs/inode.c                              |    2 
 b/fs/nfs/nfsroot.c                            |    3 
 b/fs/nfsd/export.c                            |    6 
 b/fs/nfsd/nfs3xdr.c                           |   40 
 b/fs/nfsd/nfsxdr.c                            |   37 
 b/fs/open.c                                   |    3 
 b/fs/partitions/acorn.c                       |    3 
 b/fs/partitions/check.c                       |    9 
 b/fs/pipe.c                                   |   36 
 b/fs/quota.c                                  |    6 
 b/fs/quota_v1.c                               |    4 
 b/fs/quota_v2.c                               |    6 
 b/fs/ramfs/inode.c                            |   10 
 b/fs/reiserfs/bitmap.c                        |   15 
 b/fs/reiserfs/dir.c                           |   14 
 b/fs/reiserfs/file.c                          |   14 
 b/fs/reiserfs/fix_node.c                      |   20 
 b/fs/reiserfs/inode.c                         |   79 -
 b/fs/reiserfs/ioctl.c                         |    4 
 b/fs/reiserfs/journal.c                       |  134 +-
 b/fs/reiserfs/namei.c                         |  257 +---
 b/fs/reiserfs/prints.c                        |    7 
 b/fs/reiserfs/procfs.c                        |   30 
 b/fs/reiserfs/stree.c                         |    4 
 b/fs/reiserfs/super.c                         |  499 ++++----
 b/fs/reiserfs/tail_conversion.c               |    2 
 b/fs/smbfs/smb_debug.h                        |   14 
 b/fs/stat.c                                   |    8 
 b/fs/super.c                                  |  164 +-
 b/include/asm-arm/atomic.h                    |   12 
 b/include/asm-arm/bitops.h                    |   23 
 b/include/asm-arm/system.h                    |   11 
 b/include/asm-generic/tlb.h                   |   12 
 b/include/asm-i386/pci.h                      |    2 
 b/include/asm-i386/processor.h                |    6 
 b/include/asm-i386/spinlock.h                 |   28 
 b/include/asm-i386/system.h                   |    7 
 b/include/asm-ppc/spinlock.h                  |   14 
 b/include/asm-sparc64/mmu_context.h           |    2 
 b/include/asm-sparc64/pgalloc.h               |   16 
 b/include/asm-sparc64/pgtable.h               |    4 
 b/include/asm-sparc64/tlb.h                   |   19 
 b/include/asm-sparc64/tlbflush.h              |   21 
 b/include/asm-x86_64/apic.h                   |   12 
 b/include/asm-x86_64/bitops.h                 |    3 
 b/include/asm-x86_64/bootsetup.h              |    1 
 b/include/asm-x86_64/checksum.h               |  261 ++--
 b/include/asm-x86_64/cpufeature.h             |   32 
 b/include/asm-x86_64/desc.h                   |    8 
 b/include/asm-x86_64/i387.h                   |    1 
 b/include/asm-x86_64/io.h                     |    4 
 b/include/asm-x86_64/ioctls.h                 |    1 
 b/include/asm-x86_64/mmu.h                    |   10 
 b/include/asm-x86_64/mmu_context.h            |   14 
 b/include/asm-x86_64/page.h                   |   31 
 b/include/asm-x86_64/pci.h                    |   11 
 b/include/asm-x86_64/pda.h                    |   34 
 b/include/asm-x86_64/percpu.h                 |   14 
 b/include/asm-x86_64/pgalloc.h                |    2 
 b/include/asm-x86_64/pgtable.h                |   65 -
 b/include/asm-x86_64/processor.h              |   13 
 b/include/asm-x86_64/ptrace.h                 |    1 
 b/include/asm-x86_64/rwsem.h                  |   17 
 b/include/asm-x86_64/signal.h                 |    4 
 b/include/asm-x86_64/softirq.h                |    3 
 b/include/asm-x86_64/spinlock.h               |   26 
 b/include/asm-x86_64/string.h                 |   82 +
 b/include/asm-x86_64/thread_info.h            |    4 
 b/include/asm-x86_64/timex.h                  |    2 
 b/include/asm-x86_64/tlb.h                    |   12 
 b/include/asm-x86_64/types.h                  |    8 
 b/include/asm-x86_64/uaccess.h                |  139 --
 b/include/asm-x86_64/user.h                   |    4 
 b/include/asm-x86_64/xor.h                    |  663 +----------
 b/include/linux/atmdev.h                      |   14 
 b/include/linux/blk.h                         |  191 ---
 b/include/linux/blkdev.h                      |   14 
 b/include/linux/fs.h                          |   16 
 b/include/linux/ide.h                         |   47 
 b/include/linux/irda.h                        |    2 
 b/include/linux/kdev_t.h                      |    3 
 b/include/linux/list.h                        |   59 -
 b/include/linux/namespace.h                   |    3 
 b/include/linux/pci_ids.h                     |    2 
 b/include/linux/reiserfs_fs.h                 |   25 
 b/include/linux/reiserfs_fs_sb.h              |   14 
 b/include/linux/root_dev.h                    |   19 
 b/include/linux/sched.h                       |    6 
 b/include/linux/spinlock.h                    |   87 -
 b/include/linux/suspend.h                     |    3 
 b/include/linux/types.h                       |    3 
 b/include/linux/vmalloc.h                     |    1 
 b/include/net/irda/discovery.h                |    2 
 b/include/scsi/scsi.h                         |   19 
 b/include/sound/ac97_codec.h                  |    2 
 b/include/sound/core.h                        |    2 
 b/include/sound/initval.h                     |    1 
 b/include/sound/pcm_params.h                  |    2 
 b/init/Makefile                               |    2 
 b/init/do_mounts.c                            |   48 
 b/kernel/fork.c                               |    1 
 b/kernel/ksyms.c                              |    9 
 b/kernel/sched.c                              |  165 +-
 b/kernel/suspend.c                            |    4 
 b/lib/vsprintf.c                              |   61 -
 b/mm/filemap.c                                |    4 
 b/mm/memory.c                                 |   20 
 b/mm/mmap.c                                   |    4 
 b/mm/page_io.c                                |    8 
 b/mm/readahead.c                              |    6 
 b/mm/shmem.c                                  |   87 -
 b/mm/swapfile.c                               |    5 
 b/mm/vmalloc.c                                |    1 
 b/net/Makefile                                |    1 
 b/net/atm/clip.c                              |    2 
 b/net/atm/lec.c                               |    2 
 b/net/atm/proc.c                              |    2 
 b/net/atm/resources.c                         |    2 
 b/net/atm/signaling.c                         |    2 
 b/net/ipv4/ipconfig.c                         |    5 
 b/net/irda/af_irda.c                          |  379 +++---
 b/net/irda/ircomm/ircomm_core.c               |    2 
 b/net/irda/ircomm/ircomm_tty.c                |    6 
 b/net/irda/irda_device.c                      |  118 --
 b/net/irda/iriap.c                            |  275 ++--
 b/net/irda/iriap_event.c                      |  198 +--
 b/net/irda/irias_object.c                     |  104 -
 b/net/irda/irlap.c                            |  293 ++---
 b/net/irda/irlap_event.c                      |  641 +++++------
 b/net/irda/irlap_frame.c                      |  385 +++---
 b/net/irda/irlmp.c                            |  384 +++---
 b/net/irda/irlmp_event.c                      |  262 ++--
 b/net/irda/irttp.c                            |  372 +++---
 b/net/irda/parameters.c                       |  151 +-
 b/net/irda/wrapper.c                          |  110 -
 b/net/socket.c                                |   35 
 b/scripts/Makefile                            |    2 
 b/scripts/fixdep.c                            |   58 -
 b/sound/Makefile                              |    2 
 b/sound/core/Makefile                         |    2 
 b/sound/core/rawmidi.c                        |    2 
 b/sound/core/seq/Makefile                     |    2 
 b/sound/core/seq/seq_clientmgr.c              |    2 
 b/sound/core/seq/seq_clientmgr.h              |    4 
 b/sound/core/seq/seq_queue.c                  |    6 
 b/sound/core/seq/seq_queue.h                  |    2 
 b/sound/drivers/Makefile                      |    2 
 b/sound/i2c/Makefile                          |    2 
 b/sound/isa/Makefile                          |    2 
 b/sound/pci/Makefile                          |    2 
 b/sound/pci/emu10k1/emufx.c                   |    1 
 b/sound/pci/emu10k1/emumixer.c                |    1 
 b/sound/pci/emu10k1/emumpu401.c               |    1 
 b/sound/pci/emu10k1/emupcm.c                  |    1 
 b/sound/pci/emu10k1/emuproc.c                 |    1 
 b/sound/synth/Makefile                        |    2 
 drivers/scsi/constants.h                      |    6 
 include/asm-cris/locks.h                      |  133 --
 include/asm-i386/locks.h                      |  135 --
 include/asm-x86_64/locks.h                    |  135 --
 645 files changed, 16384 insertions(+), 15135 deletions(-)

