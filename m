From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.32 released
Date: Tue, 27 Aug 2002 12:34:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200208271934.g7RJY3x10755@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.32 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.32.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.32.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                              1265683           5312931
Full source                       35088021         156375040

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/alpha/vmlinux.lds.in                          |  123 
 arch/i386/kernel/mtrr.c                            | 2303 ---------
 arch/ia64/hp/Config.in                             |    9 
 arch/mips64/ld.script.elf32.S                      |  132 
 b/Documentation/DocBook/kernel-api.tmpl            |    2 
 b/Documentation/filesystems/driverfs.txt           |    8 
 b/Documentation/filesystems/ntfs.txt               |    2 
 b/Documentation/i2c/dev-interface                  |    7 
 b/Documentation/i2c/i2c-old-porting                |  499 +
 b/Documentation/i2c/i2c-pport                      |   44 
 b/Documentation/i2c/i2c-velleman                   |   27 
 b/Documentation/i2c/smbus-protocol                 |   95 
 b/Documentation/i2c/summary                        |    6 
 b/Documentation/i2c/writing-clients                |    2 
 b/MAINTAINERS                                      |    6 
 b/Makefile                                         |   53 
 b/arch/alpha/Config.help                           |   21 
 b/arch/alpha/Makefile                              |    8 
 b/arch/alpha/boot/Makefile                         |    2 
 b/arch/alpha/config.in                             |    6 
 b/arch/alpha/kernel/alpha_ksyms.c                  |    2 
 b/arch/alpha/kernel/smp.c                          |    2 
 b/arch/alpha/kernel/srm_env.c                      |   50 
 b/arch/alpha/vmlinux.lds.S                         |  123 
 b/arch/arm/kernel/armksyms.c                       |    4 
 b/arch/arm/kernel/setup.c                          |    4 
 b/arch/cris/config.in                              |   10 
 b/arch/i386/boot/setup.S                           |   12 
 b/arch/i386/config.in                              |   10 
 b/arch/i386/defconfig                              |  380 -
 b/arch/i386/kernel/Makefile                        |    3 
 b/arch/i386/kernel/acpi.c                          |    5 
 b/arch/i386/kernel/apm.c                           |   46 
 b/arch/i386/kernel/bluesmoke.c                     |    2 
 b/arch/i386/kernel/cpu/Makefile                    |    2 
 b/arch/i386/kernel/cpu/amd.c                       |   10 
 b/arch/i386/kernel/cpu/centaur.c                   |    8 
 b/arch/i386/kernel/cpu/common.c                    |   13 
 b/arch/i386/kernel/cpu/cyrix.c                     |   16 
 b/arch/i386/kernel/cpu/intel.c                     |   10 
 b/arch/i386/kernel/cpu/mtrr/Makefile               |    8 
 b/arch/i386/kernel/cpu/mtrr/amd.c                  |  121 
 b/arch/i386/kernel/cpu/mtrr/centaur.c              |  219 
 b/arch/i386/kernel/cpu/mtrr/changelog              |  229 
 b/arch/i386/kernel/cpu/mtrr/cyrix.c                |  378 +
 b/arch/i386/kernel/cpu/mtrr/generic.c              |  187 
 b/arch/i386/kernel/cpu/mtrr/if.c                   |  396 +
 b/arch/i386/kernel/cpu/mtrr/main.c                 |  628 ++
 b/arch/i386/kernel/cpu/mtrr/mtrr.h                 |   98 
 b/arch/i386/kernel/cpu/mtrr/state.c                |  338 +
 b/arch/i386/kernel/cpu/nexgen.c                    |    8 
 b/arch/i386/kernel/cpu/proc.c                      |    8 
 b/arch/i386/kernel/cpu/rise.c                      |    6 
 b/arch/i386/kernel/cpu/transmeta.c                 |    8 
 b/arch/i386/kernel/cpu/umc.c                       |    6 
 b/arch/i386/kernel/cpuid.c                         |    8 
 b/arch/i386/kernel/dmi_scan.c                      |   15 
 b/arch/i386/kernel/entry.S                         |    6 
 b/arch/i386/kernel/head.S                          |   55 
 b/arch/i386/kernel/i386_ksyms.c                    |    1 
 b/arch/i386/kernel/i8259.c                         |    9 
 b/arch/i386/kernel/io_apic.c                       |   16 
 b/arch/i386/kernel/irq.c                           |    1 
 b/arch/i386/kernel/ldt.c                           |   27 
 b/arch/i386/kernel/microcode.c                     |   16 
 b/arch/i386/kernel/mpparse.c                       |    4 
 b/arch/i386/kernel/msr.c                           |   10 
 b/arch/i386/kernel/process.c                       |  155 
 b/arch/i386/kernel/setup.c                         |   17 
 b/arch/i386/kernel/signal.c                        |    1 
 b/arch/i386/kernel/smp.c                           |    4 
 b/arch/i386/kernel/smpboot.c                       |   24 
 b/arch/i386/kernel/suspend.c                       |    2 
 b/arch/i386/kernel/time.c                          |    4 
 b/arch/i386/kernel/traps.c                         |    1 
 b/arch/i386/kernel/vm86.c                          |    1 
 b/arch/i386/lib/checksum.S                         |    2 
 b/arch/i386/mm/fault.c                             |    2 
 b/arch/i386/mm/ioremap.c                           |    6 
 b/arch/ia64/Makefile                               |   13 
 b/arch/ia64/boot/Makefile                          |    6 
 b/arch/ia64/config.in                              |  197 
 b/arch/ia64/hp/common/sba_iommu.c                  |  501 -
 b/arch/ia64/hp/sim/Config.in                       |    9 
 b/arch/ia64/hp/sim/hpsim_console.c                 |   12 
 b/arch/ia64/hp/sim/hpsim_irq.c                     |   16 
 b/arch/ia64/hp/sim/hpsim_setup.c                   |   13 
 b/arch/ia64/hp/sim/simscsi.c                       |   50 
 b/arch/ia64/hp/sim/simserial.c                     |  127 
 b/arch/ia64/hp/zx1/hpzx1_machvec.c                 |    2 
 b/arch/ia64/hp/zx1/hpzx1_misc.c                    |  340 -
 b/arch/ia64/ia32/binfmt_elf32.c                    |    2 
 b/arch/ia64/ia32/ia32_ioctl.c                      |    2 
 b/arch/ia64/kernel/acpi.c                          |  243 
 b/arch/ia64/kernel/efi.c                           |  150 
 b/arch/ia64/kernel/entry.S                         |    1 
 b/arch/ia64/kernel/ia64_ksyms.c                    |   10 
 b/arch/ia64/kernel/init_task.c                     |    4 
 b/arch/ia64/kernel/iosapic.c                       |   59 
 b/arch/ia64/kernel/irq.c                           |  311 -
 b/arch/ia64/kernel/irq_ia64.c                      |   18 
 b/arch/ia64/kernel/irq_lsapic.c                    |   16 
 b/arch/ia64/kernel/machvec.c                       |    9 
 b/arch/ia64/kernel/mca.c                           |   33 
 b/arch/ia64/kernel/mca_asm.S                       |    4 
 b/arch/ia64/kernel/pci.c                           |   33 
 b/arch/ia64/kernel/perfmon.c                       |  139 
 b/arch/ia64/kernel/perfmon_itanium.h               |   99 
 b/arch/ia64/kernel/perfmon_mckinley.h              |  134 
 b/arch/ia64/kernel/process.c                       |    9 
 b/arch/ia64/kernel/setup.c                         |   33 
 b/arch/ia64/kernel/signal.c                        |    1 
 b/arch/ia64/kernel/smp.c                           |   12 
 b/arch/ia64/kernel/smpboot.c                       |  196 
 b/arch/ia64/kernel/sys_ia64.c                      |    5 
 b/arch/ia64/kernel/time.c                          |   29 
 b/arch/ia64/kernel/traps.c                         |   86 
 b/arch/ia64/kernel/unwind.c                        |   19 
 b/arch/ia64/lib/Makefile                           |   46 
 b/arch/ia64/lib/copy_user.S                        |    8 
 b/arch/ia64/lib/io.c                               |    9 
 b/arch/ia64/lib/memcpy_mck.S                       |  674 ++
 b/arch/ia64/lib/swiotlb.c                          |   31 
 b/arch/ia64/mm/init.c                              |   27 
 b/arch/ia64/mm/tlb.c                               |   17 
 b/arch/ia64/sn/fakeprom/Makefile                   |    1 
 b/arch/ia64/sn/io/ifconfig_net.c                   |    6 
 b/arch/ia64/sn/io/pciba.c                          |   28 
 b/arch/ia64/sn/io/sn1/hubcounters.c                |    2 
 b/arch/ia64/sn/io/sn1/pcibr.c                      |   32 
 b/arch/ia64/sn/io/sn2/pcibr/pcibr_dvr.c            |   32 
 b/arch/ia64/sn/kernel/setup.c                      |   22 
 b/arch/ia64/tools/Makefile                         |    4 
 b/arch/ia64/vmlinux.lds.S                          |    6 
 b/arch/m68k/config.in                              |    5 
 b/arch/mips/config.in                              |   19 
 b/arch/mips/kernel/smp.c                           |    1 
 b/arch/mips64/Makefile                             |   12 
 b/arch/mips64/config.in                            |   10 
 b/arch/mips64/kernel/smp.c                         |    1 
 b/arch/mips64/vmlinux.lds.S                        |  132 
 b/arch/parisc/Makefile                             |    1 
 b/arch/parisc/config.in                            |   15 
 b/arch/parisc/kernel/parisc_ksyms.c                |    3 
 b/arch/ppc/amiga/config.c                          |    4 
 b/arch/ppc/config.in                               |   11 
 b/arch/ppc/kernel/misc.S                           |    6 
 b/arch/ppc/kernel/ppc_ksyms.c                      |    5 
 b/arch/ppc/kernel/setup.c                          |   97 
 b/arch/ppc/kernel/smp.c                            |    1 
 b/arch/ppc/platforms/chrp_setup.c                  |   17 
 b/arch/ppc/platforms/pmac_setup.c                  |   26 
 b/arch/ppc64/Makefile                              |    4 
 b/arch/ppc64/boot/Makefile                         |    2 
 b/arch/ppc64/config.in                             |    6 
 b/arch/ppc64/defconfig                             |   33 
 b/arch/ppc64/kernel/bitops.c                       |   13 
 b/arch/ppc64/kernel/head.S                         |   12 
 b/arch/ppc64/kernel/htab.c                         |    1 
 b/arch/ppc64/kernel/i8259.c                        |    3 
 b/arch/ppc64/kernel/idle.c                         |    1 
 b/arch/ppc64/kernel/irq.c                          |   19 
 b/arch/ppc64/kernel/misc.S                         |   48 
 b/arch/ppc64/kernel/mk_defs.c                      |    1 
 b/arch/ppc64/kernel/open_pic.c                     |    2 
 b/arch/ppc64/kernel/pSeries_lpar.c                 |   21 
 b/arch/ppc64/kernel/ppc_ksyms.c                    |   29 
 b/arch/ppc64/kernel/process.c                      |   50 
 b/arch/ppc64/kernel/prom.c                         |    1 
 b/arch/ppc64/kernel/ptrace32.c                     |    5 
 b/arch/ppc64/kernel/rtasd.c                        |    1 
 b/arch/ppc64/kernel/signal.c                       |   12 
 b/arch/ppc64/kernel/signal32.c                     |   12 
 b/arch/ppc64/kernel/smp.c                          |  410 -
 b/arch/ppc64/kernel/sys32.S                        |   10 
 b/arch/ppc64/kernel/sys_ppc32.c                    |  241 
 b/arch/ppc64/kernel/syscalls.c                     |   46 
 b/arch/ppc64/kernel/time.c                         |    4 
 b/arch/ppc64/kernel/traps.c                        |   11 
 b/arch/ppc64/kernel/xics.c                         |    2 
 b/arch/ppc64/lib/Makefile                          |    2 
 b/arch/ppc64/lib/dec_and_lock.c                    |   45 
 b/arch/ppc64/mm/imalloc.c                          |    1 
 b/arch/ppc64/mm/init.c                             |   19 
 b/arch/s390/kernel/smp.c                           |    3 
 b/arch/s390x/Makefile                              |    1 
 b/arch/s390x/kernel/smp.c                          |    3 
 b/arch/sh/Makefile                                 |    9 
 b/arch/sh/config.in                                |    8 
 b/arch/sparc/config.in                             |    6 
 b/arch/sparc/kernel/Makefile                       |    2 
 b/arch/sparc/kernel/ebus.c                         |    6 
 b/arch/sparc/kernel/irq.c                          |   18 
 b/arch/sparc/kernel/pcic.c                         |   14 
 b/arch/sparc/kernel/process.c                      |   14 
 b/arch/sparc/kernel/ptrace.c                       |    9 
 b/arch/sparc/kernel/rtrap.S                        |    3 
 b/arch/sparc/kernel/setup.c                        |    2 
 b/arch/sparc/kernel/smp.c                          |    3 
 b/arch/sparc/kernel/sparc_ksyms.c                  |    7 
 b/arch/sparc/kernel/sun4c_irq.c                    |    2 
 b/arch/sparc/kernel/sun4d_irq.c                    |    8 
 b/arch/sparc/kernel/sun4d_smp.c                    |    4 
 b/arch/sparc/kernel/sun4m_irq.c                    |    2 
 b/arch/sparc/kernel/sun4m_smp.c                    |    4 
 b/arch/sparc/kernel/systbls.S                      |    2 
 b/arch/sparc/mm/fault.c                            |    1 
 b/arch/sparc/mm/srmmu.c                            |  198 
 b/arch/sparc/mm/sun4c.c                            |   15 
 b/arch/sparc/prom/printf.c                         |   42 
 b/arch/sparc64/config.in                           |    6 
 b/arch/sparc64/defconfig                           |  148 
 b/arch/sparc64/kernel/chmc.c                       |    2 
 b/arch/sparc64/kernel/cpu.c                        |    2 
 b/arch/sparc64/kernel/devices.c                    |    3 
 b/arch/sparc64/kernel/dtlb_base.S                  |    2 
 b/arch/sparc64/kernel/entry.S                      |  193 
 b/arch/sparc64/kernel/etrap.S                      |   52 
 b/arch/sparc64/kernel/head.S                       |  110 
 b/arch/sparc64/kernel/irq.c                        |    5 
 b/arch/sparc64/kernel/pci.c                        |   47 
 b/arch/sparc64/kernel/process.c                    |   16 
 b/arch/sparc64/kernel/ptrace.c                     |   11 
 b/arch/sparc64/kernel/setup.c                      |    6 
 b/arch/sparc64/kernel/smp.c                        |   23 
 b/arch/sparc64/kernel/sparc64_ksyms.c              |    8 
 b/arch/sparc64/kernel/sys_sparc32.c                |   25 
 b/arch/sparc64/kernel/systbls.S                    |    4 
 b/arch/sparc64/kernel/trampoline.S                 |   41 
 b/arch/sparc64/kernel/traps.c                      |  161 
 b/arch/sparc64/kernel/ttable.S                     |   12 
 b/arch/sparc64/lib/blockops.S                      |   19 
 b/arch/sparc64/mm/fault.c                          |    1 
 b/arch/sparc64/mm/init.c                           |   57 
 b/arch/sparc64/mm/modutil.c                        |   76 
 b/arch/sparc64/mm/ultra.S                          |  299 -
 b/arch/sparc64/prom/printf.c                       |   47 
 b/arch/x86_64/Makefile                             |    6 
 b/arch/x86_64/config.in                            |   11 
 b/arch/x86_64/kernel/smp.c                         |    3 
 b/arch/x86_64/kernel/x8664_ksyms.c                 |    1 
 b/drivers/acpi/Makefile                            |    2 
 b/drivers/acpi/acpi_ksyms.c                        |    1 
 b/drivers/acpi/bus.c                               |    2 
 b/drivers/acpi/debugger/dbcmds.c                   |    8 
 b/drivers/acpi/debugger/dbdisply.c                 |    8 
 b/drivers/acpi/debugger/dbexec.c                   |   12 
 b/drivers/acpi/debugger/dbfileio.c                 |   10 
 b/drivers/acpi/debugger/dbhistry.c                 |    8 
 b/drivers/acpi/debugger/dbinput.c                  |    8 
 b/drivers/acpi/debugger/dbstats.c                  |   20 
 b/drivers/acpi/debugger/dbutils.c                  |    8 
 b/drivers/acpi/debugger/dbxface.c                  |   10 
 b/drivers/acpi/dispatcher/dsfield.c                |    2 
 b/drivers/acpi/dispatcher/dsmethod.c               |    2 
 b/drivers/acpi/dispatcher/dsmthdat.c               |   47 
 b/drivers/acpi/dispatcher/dsobject.c               |    2 
 b/drivers/acpi/dispatcher/dsopcode.c               |    2 
 b/drivers/acpi/dispatcher/dswexec.c                |    2 
 b/drivers/acpi/dispatcher/dswload.c                |   26 
 b/drivers/acpi/dispatcher/dswstate.c               |   23 
 b/drivers/acpi/events/evevent.c                    |    4 
 b/drivers/acpi/events/evmisc.c                     |   51 
 b/drivers/acpi/events/evregion.c                   |    2 
 b/drivers/acpi/events/evrgnini.c                   |    2 
 b/drivers/acpi/events/evxface.c                    |    2 
 b/drivers/acpi/events/evxfevnt.c                   |   35 
 b/drivers/acpi/executer/exdump.c                   |    4 
 b/drivers/acpi/executer/exfldio.c                  |    2 
 b/drivers/acpi/executer/exmisc.c                   |    2 
 b/drivers/acpi/executer/exoparg1.c                 |    2 
 b/drivers/acpi/executer/exoparg2.c                 |    2 
 b/drivers/acpi/executer/exprep.c                   |    2 
 b/drivers/acpi/executer/exregion.c                 |    2 
 b/drivers/acpi/executer/exresop.c                  |    2 
 b/drivers/acpi/executer/exstore.c                  |    2 
 b/drivers/acpi/executer/exutils.c                  |    5 
 b/drivers/acpi/hardware/hwacpi.c                   |   23 
 b/drivers/acpi/hardware/hwgpe.c                    |    2 
 b/drivers/acpi/hardware/hwregs.c                   |    2 
 b/drivers/acpi/hardware/hwsleep.c                  |    2 
 b/drivers/acpi/include/acconfig.h                  |    6 
 b/drivers/acpi/include/acdisasm.h                  |    2 
 b/drivers/acpi/include/acglobal.h                  |   14 
 b/drivers/acpi/include/aclocal.h                   |    6 
 b/drivers/acpi/include/acmacros.h                  |   18 
 b/drivers/acpi/include/acobject.h                  |    2 
 b/drivers/acpi/include/acoutput.h                  |   18 
 b/drivers/acpi/include/acparser.h                  |    9 
 b/drivers/acpi/include/acresrc.h                   |    2 
 b/drivers/acpi/include/actbl2.h                    |    4 
 b/drivers/acpi/include/acutils.h                   |    6 
 b/drivers/acpi/include/amlcode.h                   |    2 
 b/drivers/acpi/include/amlresrc.h                  |  169 
 b/drivers/acpi/include/platform/acenv.h            |   12 
 b/drivers/acpi/namespace/nsaccess.c                |  123 
 b/drivers/acpi/namespace/nsdump.c                  |    4 
 b/drivers/acpi/namespace/nsdumpdv.c                |    4 
 b/drivers/acpi/namespace/nseval.c                  |    2 
 b/drivers/acpi/namespace/nsinit.c                  |    4 
 b/drivers/acpi/namespace/nsload.c                  |    2 
 b/drivers/acpi/namespace/nsnames.c                 |    4 
 b/drivers/acpi/namespace/nssearch.c                |    8 
 b/drivers/acpi/namespace/nsutils.c                 |   11 
 b/drivers/acpi/namespace/nsxfeval.c                |    2 
 b/drivers/acpi/parser/psargs.c                     |  293 -
 b/drivers/acpi/parser/psopcode.c                   |   24 
 b/drivers/acpi/parser/psparse.c                    |  137 
 b/drivers/acpi/parser/pstree.c                     |    2 
 b/drivers/acpi/resources/rsdump.c                  |    4 
 b/drivers/acpi/system.c                            |    5 
 b/drivers/acpi/tables.c                            |    6 
 b/drivers/acpi/tables/tbconvrt.c                   |    2 
 b/drivers/acpi/tables/tbget.c                      |    2 
 b/drivers/acpi/tables/tbgetall.c                   |    2 
 b/drivers/acpi/tables/tbinstal.c                   |    2 
 b/drivers/acpi/tables/tbrsdt.c                     |    2 
 b/drivers/acpi/tables/tbutils.c                    |    6 
 b/drivers/acpi/thermal.c                           |   30 
 b/drivers/acpi/utilities/utdebug.c                 |    4 
 b/drivers/acpi/utilities/uteval.c                  |    2 
 b/drivers/acpi/utilities/utglobal.c                |   12 
 b/drivers/acpi/utilities/utinit.c                  |   10 
 b/drivers/acpi/utilities/utmisc.c                  |    4 
 b/drivers/acpi/utilities/utxface.c                 |    6 
 b/drivers/base/Makefile                            |    5 
 b/drivers/base/base.h                              |   26 
 b/drivers/base/bus.c                               |   97 
 b/drivers/base/class.c                             |  109 
 b/drivers/base/core.c                              |  148 
 b/drivers/base/driver.c                            |   53 
 b/drivers/base/fs/Makefile                         |    4 
 b/drivers/base/fs/bus.c                            |   12 
 b/drivers/base/fs/class.c                          |  215 
 b/drivers/base/fs/device.c                         |   35 
 b/drivers/base/fs/driver.c                         |    8 
 b/drivers/base/fs/fs.h                             |    5 
 b/drivers/base/fs/intf.c                           |   54 
 b/drivers/base/interface.c                         |    4 
 b/drivers/base/intf.c                              |   96 
 b/drivers/base/power.c                             |   92 
 b/drivers/base/sys.c                               |    4 
 b/drivers/block/DAC960.c                           |  217 
 b/drivers/block/DAC960.h                           |   20 
 b/drivers/block/acsi.c                             |   43 
 b/drivers/block/cciss.c                            |  192 
 b/drivers/block/cciss.h                            |    3 
 b/drivers/block/cpqarray.c                         |    1 
 b/drivers/block/loop.c                             |    2 
 b/drivers/block/ps2esdi.c                          |    8 
 b/drivers/block/umem.c                             |   59 
 b/drivers/block/xd.c                               |  194 
 b/drivers/block/xd.h                               |    2 
 b/drivers/char/Config.help                         |   44 
 b/drivers/char/Config.in                           |   12 
 b/drivers/char/Makefile                            |  119 
 b/drivers/char/console.c                           |   13 
 b/drivers/char/genrtc.c                            |  518 ++
 b/drivers/char/hvc_console.c                       |    2 
 b/drivers/char/keyboard.c                          |  839 ++-
 b/drivers/char/mem.c                               |    5 
 b/drivers/char/vt.c                                |   72 
 b/drivers/i2c/Config.in                            |    8 
 b/drivers/i2c/i2c-algo-bit.c                       |    4 
 b/drivers/i2c/i2c-algo-ibm_ocp.c                   |  966 +++
 b/drivers/i2c/i2c-algo-ibm_ocp.h                   |   55 
 b/drivers/i2c/i2c-core.c                           |  212 
 b/drivers/i2c/i2c-dev.c                            |   17 
 b/drivers/i2c/i2c-elektor.c                        |    7 
 b/drivers/i2c/i2c-frodo.c                          |  118 
 b/drivers/i2c/i2c-proc.c                           |   48 
 b/drivers/i2c/i2c-rpx.c                            |  136 
 b/drivers/ide/Config.in                            |  308 -
 b/drivers/ide/Makefile                             |   31 
 b/drivers/ide/adma100.c                            |   30 
 b/drivers/ide/aec62xx.c                            |  870 ++-
 b/drivers/ide/ali14xx.c                            |  185 
 b/drivers/ide/alim15x3.c                           |  691 ++
 b/drivers/ide/amd74xx.c                            |  724 +-
 b/drivers/ide/buddha.c                             |   10 
 b/drivers/ide/cmd640.c                             |  283 -
 b/drivers/ide/cmd64x.c                             | 1132 ++--
 b/drivers/ide/cs5530.c                             |  267 -
 b/drivers/ide/cy82c693.c                           |  373 -
 b/drivers/ide/dtc2278.c                            |   49 
 b/drivers/ide/falconide.c                          |    2 
 b/drivers/ide/gayle.c                              |   23 
 b/drivers/ide/hd.c                                 |    2 
 b/drivers/ide/hpt34x.c                             |  497 +
 b/drivers/ide/hpt366.c                             | 1444 +++--
 b/drivers/ide/ht6560b.c                            |  161 
 b/drivers/ide/icside.c                             |  778 +--
 b/drivers/ide/ide-adma.c                           |    9 
 b/drivers/ide/ide-cd.c                             | 1528 +++---
 b/drivers/ide/ide-cd.h                             |   98 
 b/drivers/ide/ide-cs.c                             |  655 +-
 b/drivers/ide/ide-disk.c                           | 2586 +++++-----
 b/drivers/ide/ide-dma.c                            |  906 +++
 b/drivers/ide/ide-floppy.c                         | 1292 +++--
 b/drivers/ide/ide-geometry.c                       |  224 
 b/drivers/ide/ide-m8xx.c                           |   64 
 b/drivers/ide/ide-pci.c                            | 1427 +++--
 b/drivers/ide/ide-pmac.c                           |  865 +--
 b/drivers/ide/ide-pnp.c                            |   60 
 b/drivers/ide/ide-probe.c                          | 1027 ++++
 b/drivers/ide/ide-proc.c                           |  961 +++
 b/drivers/ide/ide-swarm.c                          |   73 
 b/drivers/ide/ide-tape.c                           | 3141 +++++++-----
 b/drivers/ide/ide-taskfile.c                       | 2791 ++++++++++
 b/drivers/ide/ide-timing.h                         |  281 +
 b/drivers/ide/ide.c                                | 4228 +++++++++++++---
 b/drivers/ide/ide_modes.h                          |  236 
 b/drivers/ide/it8172.c                             |  460 +
 b/drivers/ide/macide.c                             |   10 
 b/drivers/ide/ns87415.c                            |  180 
 b/drivers/ide/opti621.c                            |  171 
 b/drivers/ide/pdc202xx.c                           | 1896 ++++---
 b/drivers/ide/pdc4030.c                            |  631 +-
 b/drivers/ide/pdcadma.c                            |  106 
 b/drivers/ide/piix.c                               |  974 ++-
 b/drivers/ide/q40ide.c                             |   17 
 b/drivers/ide/qd65xx.c                             |  350 -
 b/drivers/ide/qd65xx.h                             |    4 
 b/drivers/ide/rapide.c                             |    2 
 b/drivers/ide/rz1000.c                             |   87 
 b/drivers/ide/serverworks.c                        |  785 ++-
 b/drivers/ide/sis5513.c                            |  600 +-
 b/drivers/ide/sl82c105.c                           |  283 -
 b/drivers/ide/slc90e66.c                           |  470 +
 b/drivers/ide/trm290.c                             |  245 
 b/drivers/ide/umc8672.c                            |   78 
 b/drivers/ide/via82cxxx.c                          |  310 -
 b/drivers/ieee1394/ieee1394_core.c                 |    1 
 b/drivers/input/Config.help                        |   19 
 b/drivers/input/Config.in                          |    6 
 b/drivers/input/Makefile                           |    3 
 b/drivers/input/evbug.c                            |    8 
 b/drivers/input/evdev.c                            |   37 
 b/drivers/input/input.c                            |  143 
 b/drivers/input/joydev.c                           |    8 
 b/drivers/input/joystick/Config.help               |    4 
 b/drivers/input/joystick/Config.in                 |    2 
 b/drivers/input/joystick/amijoy.c                  |   31 
 b/drivers/input/joystick/iforce/iforce-usb.c       |    2 
 b/drivers/input/keyboard/amikbd.c                  |   27 
 b/drivers/input/keyboard/atkbd.c                   |    4 
 b/drivers/input/keyboard/newtonkbd.c               |    2 
 b/drivers/input/keyboard/sunkbd.c                  |    3 
 b/drivers/input/keyboard/xtkbd.c                   |    2 
 b/drivers/input/misc/Config.help                   |   28 
 b/drivers/input/misc/Config.in                     |    8 
 b/drivers/input/misc/Makefile                      |   12 
 b/drivers/input/misc/pcspkr.c                      |   94 
 b/drivers/input/misc/uinput.c                      |  385 +
 b/drivers/input/mouse/amimouse.c                   |    9 
 b/drivers/input/mouse/psmouse.c                    |   16 
 b/drivers/input/mousedev.c                         |   20 
 b/drivers/input/serio/i8042.c                      |   10 
 b/drivers/input/tsdev.c                            |    8 
 b/drivers/isdn/Config.in                           |    3 
 b/drivers/isdn/capi/capi.c                         |   16 
 b/drivers/isdn/capi/capifs.c                       |   20 
 b/drivers/isdn/capi/capilib.c                      |    2 
 b/drivers/isdn/capi/kcapi.h                        |    2 
 b/drivers/isdn/capi/kcapi_proc.c                   |   64 
 b/drivers/isdn/divert/divert_procfs.c              |   16 
 b/drivers/isdn/hardware/Config.in                  |   24 
 b/drivers/isdn/hardware/avm/Config.in              |    2 
 b/drivers/isdn/hardware/avm/b1pci.c                |    8 
 b/drivers/isdn/hardware/avm/c4.c                   |    8 
 b/drivers/isdn/hardware/avm/t1pci.c                |    8 
 b/drivers/isdn/hisax/Config.in                     |    2 
 b/drivers/isdn/hisax/config.c                      |    5 
 b/drivers/isdn/hisax/hisax_debug.h                 |    2 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c              |   16 
 b/drivers/isdn/hisax/hisax_hfcpci.c                |   20 
 b/drivers/isdn/hisax/ipacx.c                       |   29 
 b/drivers/isdn/hisax/st5481.h                      |    6 
 b/drivers/isdn/hisax/st5481_init.c                 |    8 
 b/drivers/isdn/hysdn/hysdn_procconf.c              |   10 
 b/drivers/isdn/hysdn/hysdn_proclog.c               |   12 
 b/drivers/isdn/i4l/Config.in                       |   19 
 b/drivers/isdn/i4l/isdn_audio.c                    |    6 
 b/drivers/isdn/i4l/isdn_common.c                   |   36 
 b/drivers/isdn/i4l/isdn_net.c                      |  150 
 b/drivers/isdn/i4l/isdn_net.h                      |    2 
 b/drivers/isdn/i4l/isdn_ppp.c                      |   16 
 b/drivers/isdn/tpam/tpam_main.c                    |    8 
 b/drivers/macintosh/Makefile                       |    2 
 b/drivers/macintosh/adbhid.c                       |    3 
 b/drivers/macintosh/mac_hid.c                      |   98 
 b/drivers/md/linear.c                              |   12 
 b/drivers/md/md.c                                  |  301 -
 b/drivers/md/multipath.c                           |  175 
 b/drivers/md/raid0.c                               |    2 
 b/drivers/md/raid1.c                               |  450 -
 b/drivers/md/raid5.c                               |  409 -
 b/drivers/message/i2o/i2o_block.c                  |  193 
 b/drivers/mtd/maps/Config.in                       |    4 
 b/drivers/net/3c501.c                              |    1 
 b/drivers/net/3c505.c                              |    1 
 b/drivers/net/3c507.c                              |    1 
 b/drivers/net/3c515.c                              |    1 
 b/drivers/net/3c527.c                              |    1 
 b/drivers/net/7990.c                               |    1 
 b/drivers/net/8139cp.c                             |    4 
 b/drivers/net/82596.c                              |    1 
 b/drivers/net/8390.c                               |    1 
 b/drivers/net/a2065.c                              |    1 
 b/drivers/net/aironet4500_card.c                   |    1 
 b/drivers/net/aironet4500_proc.c                   |    1 
 b/drivers/net/am79c961a.c                          |    1 
 b/drivers/net/appletalk/Config.in                  |    4 
 b/drivers/net/appletalk/cops.c                     |    6 
 b/drivers/net/appletalk/ipddp.c                    |    2 
 b/drivers/net/appletalk/ipddp.h                    |    2 
 b/drivers/net/appletalk/ltpc.c                     |    4 
 b/drivers/net/ariadne.c                            |    1 
 b/drivers/net/at1700.c                             |    1 
 b/drivers/net/atari_bionet.c                       |    1 
 b/drivers/net/atari_pamsnet.c                      |    1 
 b/drivers/net/atarilance.c                         |    1 
 b/drivers/net/atp.c                                |    1 
 b/drivers/net/bagetlance.c                         |    1 
 b/drivers/net/bonding.c                            |   37 
 b/drivers/net/cs89x0.c                             |    1 
 b/drivers/net/de600.c                              |    1 
 b/drivers/net/de620.c                              |    1 
 b/drivers/net/declance.c                           |    1 
 b/drivers/net/defxx.c                              |    1 
 b/drivers/net/depca.c                              |    1 
 b/drivers/net/e100/e100.h                          |    1 
 b/drivers/net/eepro.c                              |    1 
 b/drivers/net/eexpress.c                           |    3 
 b/drivers/net/eth16i.c                             |    1 
 b/drivers/net/ewrk3.c                              |    1 
 b/drivers/net/fmv18x.c                             |    1 
 b/drivers/net/hamachi.c                            |    1 
 b/drivers/net/hamradio/Config.in                   |    1 
 b/drivers/net/hplance.c                            |    1 
 b/drivers/net/hydra.c                              |    1 
 b/drivers/net/irda/ali-ircc.c                      |   12 
 b/drivers/net/isa-skeleton.c                       |    1 
 b/drivers/net/jazzsonic.c                          |    1 
 b/drivers/net/lance.c                              |    1 
 b/drivers/net/lasi_82596.c                         |    1 
 b/drivers/net/lp486e.c                             |    1 
 b/drivers/net/mac89x0.c                            |    1 
 b/drivers/net/macsonic.c                           |    1 
 b/drivers/net/mvme147.c                            |    1 
 b/drivers/net/myri_sbus.c                          |    1 
 b/drivers/net/natsemi.c                            |    2 
 b/drivers/net/ne2.c                                |    1 
 b/drivers/net/ni65.c                               |    1 
 b/drivers/net/pcmcia/xirc2ps_cs.c                  |    2 
 b/drivers/net/pcnet32.c                            |    1 
 b/drivers/net/plip.c                               |    1 
 b/drivers/net/rcpci45.c                            |    5 
 b/drivers/net/sb1000.c                             |    1 
 b/drivers/net/seeq8005.c                           |    1 
 b/drivers/net/sgiseeq.c                            |    1 
 b/drivers/net/shaper.c                             |    1 
 b/drivers/net/sk_g16.c                             |    1 
 b/drivers/net/smc9194.c                            |    1 
 b/drivers/net/sun3lance.c                          |    1 
 b/drivers/net/sunbmac.c                            |    1 
 b/drivers/net/sungem.c                             |    1 
 b/drivers/net/sunhme.c                             |    1 
 b/drivers/net/sunlance.c                           |    1 
 b/drivers/net/sunqe.c                              |    1 
 b/drivers/net/tc35815.c                            |    1 
 b/drivers/net/tg3.c                                |    4 
 b/drivers/net/tokenring/3c359.c                    |    1 
 b/drivers/net/wan/Config.in                        |    2 
 b/drivers/net/wan/sbni.c                           |    5 
 b/drivers/net/wan/sdla_ft1.c                       |    1 
 b/drivers/net/znet.c                               |    1 
 b/drivers/pci/pci.ids                              | 2006 ++++++-
 b/drivers/pci/proc.c                               |    4 
 b/drivers/pnp/pnpbios_core.c                       |    3 
 b/drivers/s390/block/dasd.c                        |   20 
 b/drivers/s390/block/dasd_genhd.c                  |  170 
 b/drivers/s390/block/dasd_int.h                    |    2 
 b/drivers/s390/block/dasd_proc.c                   |    7 
 b/drivers/sbus/char/jsflash.c                      |    9 
 b/drivers/sbus/sbus.c                              |   14 
 b/drivers/scsi/53c700.c                            |   12 
 b/drivers/scsi/README.st                           |   30 
 b/drivers/scsi/aic7xxx_old.c                       |    2 
 b/drivers/scsi/cpqfc.Readme                        |    7 
 b/drivers/scsi/cpqfcTSinit.c                       |  268 -
 b/drivers/scsi/cpqfcTSstructs.h                    |   17 
 b/drivers/scsi/cpqfcTSworker.c                     |   49 
 b/drivers/scsi/esp.c                               |    1 
 b/drivers/scsi/ide-scsi.c                          |  715 +-
 b/drivers/scsi/ips.c                               |    6 
 b/drivers/scsi/qlogicisp.c                         |    1 
 b/drivers/scsi/scsi_debug.c                        | 1161 ++--
 b/drivers/scsi/scsi_debug.h                        |   47 
 b/drivers/scsi/scsi_mid_low_api.txt                |   46 
 b/drivers/scsi/scsi_scan.c                         | 3110 ++++++------
 b/drivers/scsi/sg.c                                | 5342 ++++++++++-----------
 b/drivers/scsi/sr.c                                |    8 
 b/drivers/scsi/st.c                                |  422 +
 b/drivers/scsi/st.h                                |   10 
 b/drivers/scsi/st_options.h                        |   11 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c              |    5 
 b/drivers/usb/Config.in                            |    8 
 b/drivers/usb/Makefile                             |    2 
 b/drivers/usb/class/Makefile                       |    2 
 b/drivers/usb/class/usblp.c                        | 1130 ++++
 b/drivers/usb/core/Makefile                        |    4 
 b/drivers/usb/core/buffer.c                        |  186 
 b/drivers/usb/core/devio.c                         |   20 
 b/drivers/usb/core/hcd-pci.c                       |   17 
 b/drivers/usb/core/hcd.c                           |   57 
 b/drivers/usb/core/hcd.h                           |  116 
 b/drivers/usb/core/hub.c                           |   25 
 b/drivers/usb/core/hub.h                           |    4 
 b/drivers/usb/core/message.c                       |    2 
 b/drivers/usb/core/urb.c                           |   47 
 b/drivers/usb/core/usb.c                           |  382 -
 b/drivers/usb/host/ehci-dbg.c                      |  214 
 b/drivers/usb/host/ehci-hcd.c                      |  129 
 b/drivers/usb/host/ehci-q.c                        |  400 -
 b/drivers/usb/host/ehci-sched.c                    |  435 -
 b/drivers/usb/host/ehci.h                          |   19 
 b/drivers/usb/host/hc_sl811_rh.c                   |   50 
 b/drivers/usb/host/ohci-q.c                        |   52 
 b/drivers/usb/host/ohci-sa1111.c                   |    8 
 b/drivers/usb/host/uhci-hcd.c                      |   51 
 b/drivers/usb/host/uhci-hcd.h                      |    6 
 b/drivers/usb/image/scanner.h                      |    5 
 b/drivers/usb/input/hid-core.c                     |    8 
 b/drivers/usb/media/ibmcam.c                       |   84 
 b/drivers/usb/media/konicawc.c                     |  541 +-
 b/drivers/usb/media/ultracam.c                     |   36 
 b/drivers/usb/media/usbvideo.c                     |  361 -
 b/drivers/usb/media/usbvideo.h                     |   58 
 b/drivers/usb/misc/Config.help                     |   28 
 b/drivers/usb/misc/Config.in                       |   11 
 b/drivers/usb/misc/Makefile                        |    4 
 b/drivers/usb/misc/atmsar.c                        |  720 ++
 b/drivers/usb/misc/atmsar.h                        |   81 
 b/drivers/usb/misc/speedtouch.c                    | 1068 ++++
 b/drivers/usb/misc/tiglusb.c                       |    4 
 b/drivers/usb/misc/usblcd.c                        |  354 +
 b/drivers/usb/net/cdc-ether.c                      |   58 
 b/drivers/usb/serial/Config.in                     |    2 
 b/drivers/usb/serial/ipaq.h                        |    2 
 b/drivers/usb/serial/usbserial.c                   |    2 
 b/drivers/usb/storage/isd200.c                     |   28 
 b/drivers/usb/storage/raw_bulk.c                   |   23 
 b/drivers/usb/storage/scsiglue.c                   |   14 
 b/drivers/usb/storage/scsiglue.h                   |    1 
 b/drivers/usb/storage/transport.c                  |    5 
 b/drivers/usb/storage/unusual_devs.h               |   11 
 b/drivers/usb/storage/usb.c                        |   45 
 b/drivers/usb/storage/usb.h                        |    7 
 b/drivers/video/Config.help                        |   58 
 b/drivers/video/Config.in                          |   19 
 b/drivers/video/Makefile                           |   10 
 b/drivers/video/S3triofb.c                         |   34 
 b/drivers/video/acornfb.c                          |   46 
 b/drivers/video/amifb.c                            |   20 
 b/drivers/video/anakinfb.c                         |   56 
 b/drivers/video/atafb.c                            |   18 
 b/drivers/video/aty/Makefile                       |    2 
 b/drivers/video/aty/atyfb.h                        |   18 
 b/drivers/video/aty/atyfb_base.c                   |  619 --
 b/drivers/video/aty/mach64_accel.c                 |  141 
 b/drivers/video/aty/mach64_ct.c                    |    8 
 b/drivers/video/aty/mach64_cursor.c                |    6 
 b/drivers/video/aty/mach64_gx.c                    |   44 
 b/drivers/video/aty128fb.c                         |   46 
 b/drivers/video/cfbcopyarea.c                      |   38 
 b/drivers/video/cfbfillrect.c                      |   48 
 b/drivers/video/cgfourteenfb.c                     |    2 
 b/drivers/video/cgsixfb.c                          |   16 
 b/drivers/video/cgthreefb.c                        |    2 
 b/drivers/video/chipsfb.c                          |   16 
 b/drivers/video/clgenfb.c                          |   70 
 b/drivers/video/clps711xfb.c                       |   24 
 b/drivers/video/controlfb.c                        |   20 
 b/drivers/video/creatorfb.c                        |   14 
 b/drivers/video/cyber2000fb.c                      |   68 
 b/drivers/video/cyberfb.c                          |   32 
 b/drivers/video/dnfb.c                             |   46 
 b/drivers/video/dummycon.c                         |   28 
 b/drivers/video/epson1355fb.c                      |   38 
 b/drivers/video/fbcon-accel.c                      |   16 
 b/drivers/video/fbcon-afb.c                        |    4 
 b/drivers/video/fbcon-cfb16.c                      |    2 
 b/drivers/video/fbcon-cfb2.c                       |    2 
 b/drivers/video/fbcon-cfb24.c                      |    4 
 b/drivers/video/fbcon-cfb32.c                      |    2 
 b/drivers/video/fbcon-cfb4.c                       |    2 
 b/drivers/video/fbcon-cfb8.c                       |    2 
 b/drivers/video/fbcon-hga.c                        |   18 
 b/drivers/video/fbcon-ilbm.c                       |   10 
 b/drivers/video/fbcon-mfb.c                        |    4 
 b/drivers/video/fbcon-sti.c                        |   16 
 b/drivers/video/fbcon-vga-planes.c                 |   44 
 b/drivers/video/fbcon.c                            |  110 
 b/drivers/video/fbgen.c                            |   22 
 b/drivers/video/fbmem.c                            |   70 
 b/drivers/video/fm2fb.c                            |   32 
 b/drivers/video/g364fb.c                           |   42 
 b/drivers/video/hgafb.c                            |   76 
 b/drivers/video/hitfb.c                            |   38 
 b/drivers/video/hpfb.c                             |   56 
 b/drivers/video/igafb.c                            |   16 
 b/drivers/video/imsttfb.c                          |  108 
 b/drivers/video/leofb.c                            |   14 
 b/drivers/video/macfb.c                            |  180 
 b/drivers/video/matrox/Makefile                    |    6 
 b/drivers/video/matrox/g450_pll.c                  |   85 
 b/drivers/video/matrox/g450_pll.h                  |    2 
 b/drivers/video/matrox/i2c-matroxfb.c              |  259 -
 b/drivers/video/matrox/matroxfb_DAC1064.c          |  332 -
 b/drivers/video/matrox/matroxfb_DAC1064.h          |    4 
 b/drivers/video/matrox/matroxfb_Ti3026.c           |   22 
 b/drivers/video/matrox/matroxfb_accel.c            |  130 
 b/drivers/video/matrox/matroxfb_accel.h            |    2 
 b/drivers/video/matrox/matroxfb_base.c             |  634 +-
 b/drivers/video/matrox/matroxfb_base.h             |   56 
 b/drivers/video/matrox/matroxfb_crtc2.c            |  407 -
 b/drivers/video/matrox/matroxfb_crtc2.h            |    3 
 b/drivers/video/matrox/matroxfb_g450.c             |  467 +
 b/drivers/video/matrox/matroxfb_g450.h             |   14 
 b/drivers/video/matrox/matroxfb_maven.c            |  124 
 b/drivers/video/matrox/matroxfb_maven.h            |   16 
 b/drivers/video/matrox/matroxfb_misc.c             |   14 
 b/drivers/video/maxinefb.c                         |   46 
 b/drivers/video/mdacon.c                           |   32 
 b/drivers/video/neofb.c                            |   34 
 b/drivers/video/newport_con.c                      |   32 
 b/drivers/video/offb.c                             |   34 
 b/drivers/video/platinumfb.c                       |   16 
 b/drivers/video/pm2fb.c                            |   98 
 b/drivers/video/pm3fb.c                            |   20 
 b/drivers/video/pm3fb.h                            |    2 
 b/drivers/video/pmag-ba-fb.c                       |   48 
 b/drivers/video/pmagb-b-fb.c                       |   48 
 b/drivers/video/promcon.c                          |   30 
 b/drivers/video/pvr2fb.c                           |   18 
 b/drivers/video/q40fb.c                            |   54 
 b/drivers/video/radeonfb.c                         |   42 
 b/drivers/video/retz3fb.c                          |   16 
 b/drivers/video/riva/accel.c                       |   48 
 b/drivers/video/riva/fbdev.c                       |   82 
 b/drivers/video/sbusfb.c                           |   55 
 b/drivers/video/sgivwfb.c                          |   72 
 b/drivers/video/sis/sis_main.c                     |   20 
 b/drivers/video/skeletonfb.c                       |   50 
 b/drivers/video/sstfb.c                            |   66 
 b/drivers/video/sticon-bmode.c                     |   36 
 b/drivers/video/sticon.c                           |   32 
 b/drivers/video/sticore.c                          |    4 
 b/drivers/video/stifb.c                            |   32 
 b/drivers/video/sun3fb.c                           |   16 
 b/drivers/video/tdfxfb.c                           |   86 
 b/drivers/video/tgafb.c                            |   16 
 b/drivers/video/tridentfb.c                        |   62 
 b/drivers/video/tx3912fb.c                         |   76 
 b/drivers/video/valkyriefb.c                       |   16 
 b/drivers/video/vesafb.c                           |   42 
 b/drivers/video/vfb.c                              |   76 
 b/drivers/video/vga16fb.c                          |   18 
 b/drivers/video/vgacon.c                           |   36 
 b/drivers/video/virgefb.c                          |   76 
 b/fs/Makefile                                      |    4 
 b/fs/aio.c                                         | 1116 ++++
 b/fs/block_dev.c                                   |   10 
 b/fs/buffer.c                                      |   88 
 b/fs/exec.c                                        |    5 
 b/fs/ext2/dir.c                                    |    8 
 b/fs/ext2/file.c                                   |   20 
 b/fs/ext2/inode.c                                  |   20 
 b/fs/ext2/namei.c                                  |   18 
 b/fs/ext2/super.c                                  |   35 
 b/fs/ext2/symlink.c                                |    4 
 b/fs/fat/file.c                                    |    1 
 b/fs/jfs/inode.c                                   |   16 
 b/fs/jfs/jfs_txnmgr.c                              |    4 
 b/fs/jfs/resize.c                                  |    5 
 b/fs/lockd/svclock.c                               |    1 
 b/fs/mpage.c                                       |   34 
 b/fs/ncpfs/inode.c                                 |    6 
 b/fs/ncpfs/mmap.c                                  |    2 
 b/fs/ncpfs/symlink.c                               |    2 
 b/fs/nfs/nfs2xdr.c                                 |   47 
 b/fs/nfs/nfs3xdr.c                                 |   36 
 b/fs/nfs/read.c                                    |    9 
 b/fs/nfsd/nfs3proc.c                               |    8 
 b/fs/nfsd/nfsfh.c                                  |   42 
 b/fs/nfsd/nfsproc.c                                |    2 
 b/fs/nfsd/vfs.c                                    |   43 
 b/fs/nls/nls_iso8859-1.c                           |   40 
 b/fs/nls/nls_iso8859-13.c                          |   40 
 b/fs/nls/nls_iso8859-14.c                          |   40 
 b/fs/nls/nls_iso8859-15.c                          |   40 
 b/fs/nls/nls_iso8859-2.c                           |   40 
 b/fs/nls/nls_iso8859-3.c                           |   40 
 b/fs/nls/nls_iso8859-4.c                           |   40 
 b/fs/nls/nls_iso8859-5.c                           |   40 
 b/fs/nls/nls_iso8859-6.c                           |   40 
 b/fs/nls/nls_iso8859-7.c                           |   40 
 b/fs/nls/nls_iso8859-9.c                           |   40 
 b/fs/ntfs/ChangeLog                                |   10 
 b/fs/ntfs/Makefile                                 |    2 
 b/fs/ntfs/aops.c                                   |   19 
 b/fs/ntfs/file.c                                   |    3 
 b/fs/partitions/check.c                            |   41 
 b/fs/partitions/ibm.c                              |   37 
 b/fs/proc/base.c                                   |    6 
 b/fs/proc/inode.c                                  |   24 
 b/fs/romfs/inode.c                                 |   21 
 b/fs/ufs/balloc.c                                  |   48 
 b/fs/ufs/cylinder.c                                |   73 
 b/fs/ufs/dir.c                                     |    8 
 b/fs/ufs/ialloc.c                                  |   20 
 b/fs/ufs/inode.c                                   |   18 
 b/fs/ufs/namei.c                                   |    2 
 b/fs/ufs/super.c                                   |  138 
 b/fs/ufs/swab.h                                    |   24 
 b/fs/ufs/truncate.c                                |   10 
 b/fs/ufs/util.h                                    |   26 
 b/include/asm-alpha/rtc.h                          |   10 
 b/include/asm-generic/percpu.h                     |   27 
 b/include/asm-generic/rtc.h                        |  211 
 b/include/asm-i386/desc.h                          |   83 
 b/include/asm-i386/hardirq.h                       |    2 
 b/include/asm-i386/ide.h                           |   16 
 b/include/asm-i386/kmap_types.h                    |    4 
 b/include/asm-i386/ldt.h                           |    2 
 b/include/asm-i386/processor.h                     |   12 
 b/include/asm-i386/rtc.h                           |   10 
 b/include/asm-i386/segment.h                       |   77 
 b/include/asm-i386/smp.h                           |    1 
 b/include/asm-i386/unistd.h                        |    6 
 b/include/asm-i386/user.h                          |    1 
 b/include/asm-ia64/acpi.h                          |   67 
 b/include/asm-ia64/agp.h                           |   26 
 b/include/asm-ia64/bitops.h                        |    2 
 b/include/asm-ia64/cacheflush.h                    |    4 
 b/include/asm-ia64/delay.h                         |    2 
 b/include/asm-ia64/dma.h                           |    6 
 b/include/asm-ia64/efi.h                           |    4 
 b/include/asm-ia64/elf.h                           |    2 
 b/include/asm-ia64/hardirq.h                       |  142 
 b/include/asm-ia64/hw_irq.h                        |    7 
 b/include/asm-ia64/kregs.h                         |   11 
 b/include/asm-ia64/machvec.h                       |    1 
 b/include/asm-ia64/machvec_init.h                  |    1 
 b/include/asm-ia64/mmu_context.h                   |   29 
 b/include/asm-ia64/module.h                        |    2 
 b/include/asm-ia64/page.h                          |    7 
 b/include/asm-ia64/param.h                         |    5 
 b/include/asm-ia64/pci.h                           |    4 
 b/include/asm-ia64/percpu.h                        |   12 
 b/include/asm-ia64/perfmon.h                       |    5 
 b/include/asm-ia64/pgalloc.h                       |    3 
 b/include/asm-ia64/processor.h                     |   23 
 b/include/asm-ia64/rmap.h                          |    6 
 b/include/asm-ia64/scatterlist.h                   |    6 
 b/include/asm-ia64/serial.h                        |   19 
 b/include/asm-ia64/smp.h                           |   26 
 b/include/asm-ia64/softirq.h                       |   23 
 b/include/asm-ia64/system.h                        |   62 
 b/include/asm-ia64/tlb.h                           |  203 
 b/include/asm-ia64/tlbflush.h                      |   12 
 b/include/asm-ia64/unistd.h                        |    4 
 b/include/asm-parisc/rtc.h                         |  131 
 b/include/asm-ppc/cache.h                          |    3 
 b/include/asm-ppc/ide.h                            |   25 
 b/include/asm-ppc/kmap_types.h                     |    2 
 b/include/asm-ppc/machdep.h                        |    6 
 b/include/asm-ppc/rtc.h                            |   95 
 b/include/asm-ppc/unistd.h                         |    6 
 b/include/asm-ppc64/delay.h                        |    2 
 b/include/asm-ppc64/hardirq.h                      |   85 
 b/include/asm-ppc64/machdep.h                      |   24 
 b/include/asm-ppc64/mmu_context.h                  |   27 
 b/include/asm-ppc64/mmzone.h                       |    7 
 b/include/asm-ppc64/processor.h                    |   40 
 b/include/asm-ppc64/rwsem.h                        |   40 
 b/include/asm-ppc64/smp.h                          |    3 
 b/include/asm-ppc64/softirq.h                      |   24 
 b/include/asm-ppc64/spinlock.h                     |    2 
 b/include/asm-ppc64/system.h                       |   20 
 b/include/asm-ppc64/thread_info.h                  |    3 
 b/include/asm-ppc64/unistd.h                       |   14 
 b/include/asm-sparc/hardirq.h                      |  109 
 b/include/asm-sparc/ide.h                          |   18 
 b/include/asm-sparc/oplib.h                        |    5 
 b/include/asm-sparc/page.h                         |   14 
 b/include/asm-sparc/pgalloc.h                      |   12 
 b/include/asm-sparc/pgtable.h                      |   41 
 b/include/asm-sparc/pgtsrmmu.h                     |    4 
 b/include/asm-sparc/softirq.h                      |   18 
 b/include/asm-sparc/system.h                       |    4 
 b/include/asm-sparc/unistd.h                       |    2 
 b/include/asm-sparc64/asi.h                        |    1 
 b/include/asm-sparc64/dcr.h                        |    4 
 b/include/asm-sparc64/elf.h                        |    3 
 b/include/asm-sparc64/head.h                       |    3 
 b/include/asm-sparc64/ide.h                        |   19 
 b/include/asm-sparc64/oplib.h                      |    5 
 b/include/asm-sparc64/smp.h                        |    2 
 b/include/asm-sparc64/spitfire.h                   |   18 
 b/include/asm-sparc64/unistd.h                     |    2 
 b/include/asm-x86_64/percpu.h                      |    2 
 b/include/linux/acpi.h                             |    2 
 b/include/linux/aio.h                              |  127 
 b/include/linux/aio_abi.h                          |   92 
 b/include/linux/apm_bios.h                         |    3 
 b/include/linux/binfmts.h                          |    1 
 b/include/linux/blkdev.h                           |    7 
 b/include/linux/brlock.h                           |    2 
 b/include/linux/device.h                           |  122 
 b/include/linux/elfcore.h                          |    1 
 b/include/linux/errno.h                            |    1 
 b/include/linux/fb.h                               |   11 
 b/include/linux/fs.h                               |    9 
 b/include/linux/futex.h                            |    2 
 b/include/linux/hdreg.h                            |  606 ++
 b/include/linux/i2c-dev.h                          |   25 
 b/include/linux/i2c-id.h                           |   22 
 b/include/linux/i2c.h                              |   44 
 b/include/linux/ide.h                              | 2042 ++++----
 b/include/linux/init_task.h                        |  122 
 b/include/linux/input.h                            |   25 
 b/include/linux/isdn.h                             |    2 
 b/include/linux/kernel.h                           |    7 
 b/include/linux/mm.h                               |   15 
 b/include/linux/netdevice.h                        |    5 
 b/include/linux/netfilter_ipv4/ip_conntrack.h      |  100 
 b/include/linux/netfilter_ipv4/ip_conntrack_core.h |    2 
 b/include/linux/netfilter_ipv4/ip_conntrack_ftp.h  |    6 
 b/include/linux/netfilter_ipv4/ip_conntrack_irc.h  |   33 
 b/include/linux/netfilter_ipv4/ip_conntrack_tcp.h  |    4 
 b/include/linux/netfilter_ipv4/ip_nat.h            |   34 
 b/include/linux/netfilter_ipv4/ipt_DSCP.h          |   20 
 b/include/linux/netfilter_ipv4/ipt_ECN.h           |   31 
 b/include/linux/netfilter_ipv4/ipt_conntrack.h     |   38 
 b/include/linux/netfilter_ipv4/ipt_dscp.h          |   23 
 b/include/linux/netfilter_ipv4/ipt_ecn.h           |   33 
 b/include/linux/netfilter_ipv4/ipt_helper.h        |    8 
 b/include/linux/netfilter_ipv4/ipt_owner.h         |    2 
 b/include/linux/netfilter_ipv4/ipt_pkttype.h       |    8 
 b/include/linux/netfilter_ipv6/ip6t_length.h       |   10 
 b/include/linux/nfs.h                              |   87 
 b/include/linux/nfsd/nfsd.h                        |   19 
 b/include/linux/page-flags.h                       |    2 
 b/include/linux/pagemap.h                          |   10 
 b/include/linux/pagevec.h                          |   77 
 b/include/linux/pci_ids.h                          |    6 
 b/include/linux/percpu.h                           |   13 
 b/include/linux/prctl.h                            |    8 
 b/include/linux/preempt.h                          |   18 
 b/include/linux/prefetch.h                         |    3 
 b/include/linux/proc_fs.h                          |    3 
 b/include/linux/ptrace.h                           |   24 
 b/include/linux/quota.h                            |    6 
 b/include/linux/raid/linear.h                      |    2 
 b/include/linux/raid/md.h                          |    5 
 b/include/linux/raid/md_k.h                        |   28 
 b/include/linux/raid/multipath.h                   |    9 
 b/include/linux/raid/raid1.h                       |   13 
 b/include/linux/raid/raid5.h                       |   11 
 b/include/linux/rtc.h                              |   26 
 b/include/linux/sched.h                            |   13 
 b/include/linux/smp.h                              |    4 
 b/include/linux/smp_lock.h                         |   65 
 b/include/linux/spinlock.h                         |  274 -
 b/include/linux/stringify.h                        |    4 
 b/include/linux/sunrpc/svcsock.h                   |    1 
 b/include/linux/sunrpc/xprt.h                      |    5 
 b/include/linux/swap.h                             |   13 
 b/include/linux/ufs_fs.h                           |   10 
 b/include/linux/usb.h                              |  176 
 b/include/linux/vmalloc.h                          |   57 
 b/include/linux/vt_kern.h                          |    4 
 b/include/linux/wait.h                             |   10 
 b/include/net/datalink.h                           |   13 
 b/include/net/llc_actn.h                           |   22 
 b/include/net/llc_c_ac.h                           |  216 
 b/include/net/llc_c_ev.h                           |  194 
 b/include/net/llc_conn.h                           |    8 
 b/include/net/llc_evnt.h                           |   28 
 b/include/net/llc_mac.h                            |   11 
 b/include/net/llc_main.h                           |   55 
 b/include/net/llc_pdu.h                            |   15 
 b/include/net/llc_s_ac.h                           |   28 
 b/include/net/llc_s_ev.h                           |   43 
 b/include/net/llc_s_st.h                           |    9 
 b/include/net/llc_sap.h                            |   47 
 b/include/net/p8022.h                              |   10 
 b/include/net/psnap.h                              |    2 
 b/include/scsi/sg.h                                |    6 
 b/include/video/fbcon.h                            |    7 
 b/init/Makefile                                    |    2 
 b/init/do_mounts.c                                 |   18 
 b/init/main.c                                      |    7 
 b/kernel/cpu.c                                     |    2 
 b/kernel/exit.c                                    |  198 
 b/kernel/fork.c                                    |   57 
 b/kernel/kmod.c                                    |   15 
 b/kernel/ksyms.c                                   |   17 
 b/kernel/printk.c                                  |   16 
 b/kernel/ptrace.c                                  |   55 
 b/kernel/sched.c                                   |   20 
 b/kernel/signal.c                                  |   13 
 b/kernel/softirq.c                                 |   30 
 b/kernel/sys.c                                     |   18 
 b/mm/filemap.c                                     |  159 
 b/mm/memory.c                                      |    2 
 b/mm/mempool.c                                     |    2 
 b/mm/page-writeback.c                              |   66 
 b/mm/page_alloc.c                                  |   16 
 b/mm/readahead.c                                   |   13 
 b/mm/rmap.c                                        |   85 
 b/mm/shmem.c                                       |    2 
 b/mm/swap.c                                        |  202 
 b/mm/swap_state.c                                  |    7 
 b/mm/vmalloc.c                                     |  373 +
 b/mm/vmscan.c                                      |  540 +-
 b/net/802/p8022.c                                  |  107 
 b/net/802/p8023.c                                  |    7 
 b/net/802/psnap.c                                  |  112 
 b/net/Config.in                                    |   15 
 b/net/appletalk/aarp.c                             |   30 
 b/net/appletalk/ddp.c                              |   10 
 b/net/core/Makefile                                |    7 
 b/net/decnet/af_decnet.c                           |    2 
 b/net/decnet/dn_route.c                            |    6 
 b/net/ethernet/pe2.c                               |    8 
 b/net/ipv4/ipconfig.c                              |   38 
 b/net/ipv4/netfilter/Config.help                   |   67 
 b/net/ipv4/netfilter/Config.in                     |   13 
 b/net/ipv4/netfilter/Makefile                      |   17 
 b/net/ipv4/netfilter/ip_conntrack_core.c           |  297 -
 b/net/ipv4/netfilter/ip_conntrack_ftp.c            |    4 
 b/net/ipv4/netfilter/ip_conntrack_irc.c            |    6 
 b/net/ipv4/netfilter/ip_conntrack_standalone.c     |   13 
 b/net/ipv4/netfilter/ip_fw_compat.c                |    1 
 b/net/ipv4/netfilter/ip_nat_core.c                 |    4 
 b/net/ipv4/netfilter/ip_nat_ftp.c                  |    2 
 b/net/ipv4/netfilter/ip_nat_snmp_basic.c           |    3 
 b/net/ipv4/netfilter/ipfwadm_core.c                |   72 
 b/net/ipv4/netfilter/ipt_DSCP.c                    |  108 
 b/net/ipv4/netfilter/ipt_ECN.c                     |  184 
 b/net/ipv4/netfilter/ipt_REJECT.c                  |   12 
 b/net/ipv4/netfilter/ipt_ah.c                      |    5 
 b/net/ipv4/netfilter/ipt_conntrack.c               |  123 
 b/net/ipv4/netfilter/ipt_dscp.c                    |   58 
 b/net/ipv4/netfilter/ipt_ecn.c                     |  118 
 b/net/ipv4/netfilter/ipt_esp.c                     |    1 
 b/net/ipv4/netfilter/ipt_helper.c                  |  112 
 b/net/ipv4/netfilter/ipt_owner.c                   |   38 
 b/net/ipv4/netfilter/ipt_pkttype.c                 |   59 
 b/net/ipv4/tcp_diag.c                              |    6 
 b/net/ipv6/netfilter/Config.help                   |   15 
 b/net/ipv6/netfilter/Config.in                     |    4 
 b/net/ipv6/netfilter/Makefile                      |    2 
 b/net/ipv6/netfilter/ip6_queue.c                   |  907 +--
 b/net/ipv6/netfilter/ip6_tables.c                  |  114 
 b/net/ipv6/netfilter/ip6t_eui64.c                  |   89 
 b/net/ipv6/netfilter/ip6t_length.c                 |   51 
 b/net/ipx/af_ipx.c                                 |   25 
 b/net/llc/llc_actn.c                               |   79 
 b/net/llc/llc_c_ac.c                               |  831 +--
 b/net/llc/llc_c_ev.c                               |  384 -
 b/net/llc/llc_c_st.c                               |  196 
 b/net/llc/llc_conn.c                               |  105 
 b/net/llc/llc_evnt.c                               |   41 
 b/net/llc/llc_if.c                                 |  101 
 b/net/llc/llc_mac.c                                |   76 
 b/net/llc/llc_main.c                               |  143 
 b/net/llc/llc_pdu.c                                |   92 
 b/net/llc/llc_s_ac.c                               |   94 
 b/net/llc/llc_s_ev.c                               |   46 
 b/net/llc/llc_s_st.c                               |   20 
 b/net/llc/llc_sap.c                                |   95 
 b/net/llc/llc_sock.c                               |   65 
 b/net/llc/llc_stat.c                               |   18 
 b/net/sunrpc/clnt.c                                |  157 
 b/net/sunrpc/svcsock.c                             |   81 
 b/net/sunrpc/xprt.c                                |   67 
 b/net/unix/af_unix.c                               |   18 
 b/scripts/Makefile                                 |   75 
 b/scripts/conmakehash.c                            |  293 +
 b/scripts/lxdialog/Makefile                        |    4 
 b/sound/oss/Config.in                              |    1 
 b/sound/oss/es1371.c                               |    8 
 drivers/char/conmakehash.c                         |  293 -
 drivers/char/pc_keyb.c                             | 1253 ----
 drivers/ide/ata-timing.c                           |  299 -
 drivers/ide/atapi.c                                |  186 
 drivers/ide/ataraid.c                              |  301 -
 drivers/ide/ataraid.h                              |   72 
 drivers/ide/device.c                               |  263 -
 drivers/ide/hptraid.c                              |  438 -
 drivers/ide/hptraid.h                              |   77 
 drivers/ide/ioctl.c                                |  361 -
 drivers/ide/ioctl.h                                |   15 
 drivers/ide/main.c                                 | 1441 -----
 drivers/ide/pcidma.c                               |  576 --
 drivers/ide/pcihost.h                              |  129 
 drivers/ide/pdcraid.c                              |  681 --
 drivers/ide/pdcraid.h                              |   47 
 drivers/ide/probe.c                                | 1215 ----
 drivers/ide/quirks.c                               |  232 
 drivers/ide/tcq.c                                  |  649 --
 drivers/ide/timing.h                               |   83 
 drivers/input/keybdev.c                            |  229 
 drivers/input/uinput.c                             |  385 -
 drivers/usb/class/printer.c                        | 1130 ----
 include/asm-alpha/keyboard.h                       |   73 
 include/asm-alpha/smplock.h                        |   56 
 include/asm-arm/keyboard.h                         |   72 
 include/asm-arm/smplock.h                          |   60 
 include/asm-cris/smplock.h                         |   25 
 include/asm-generic/smplock.h                      |   50 
 include/asm-i386/keyboard.h                        |   72 
 include/asm-i386/smplock.h                         |   87 
 include/asm-ia64/keyboard.h                        |   68 
 include/asm-ia64/offsets.h                         |  130 
 include/asm-ia64/smplock.h                         |   65 
 include/asm-m68k/keyboard.h                        |   72 
 include/asm-m68k/smplock.h                         |   51 
 include/asm-mips/keyboard.h                        |   94 
 include/asm-mips/smplock.h                         |   54 
 include/asm-mips64/keyboard.h                      |   77 
 include/asm-mips64/smplock.h                       |   56 
 include/asm-parisc/keyboard.h                      |   67 
 include/asm-parisc/smplock.h                       |   49 
 include/asm-ppc/keyboard.h                         |  112 
 include/asm-ppc/smplock.h                          |   68 
 include/asm-ppc64/keyboard.h                       |  115 
 include/asm-ppc64/kgdb.h                           |   53 
 include/asm-ppc64/smplock.h                        |   55 
 include/asm-s390/smplock.h                         |   62 
 include/asm-s390x/smplock.h                        |   62 
 include/asm-sh/keyboard.h                          |   57 
 include/asm-sh/smplock.h                           |   23 
 include/asm-sparc/keyboard.h                       |   79 
 include/asm-sparc/smplock.h                        |   55 
 include/asm-sparc64/keyboard.h                     |   34 
 include/asm-sparc64/smplock.h                      |   60 
 include/asm-x86_64/keyboard.h                      |   71 
 include/asm-x86_64/smplock.h                       |   95 
 include/linux/kbd_ll.h                             |   12 
 include/linux/romfs_fs_sb.h                        |   10 
 net/core/ext8022.c                                 |   76 
 1156 files changed, 69375 insertions(+), 49933 deletions(-)

