From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.55 released
Date: Wed, 8 Jan 2003 20:12:05 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200301090412.h094C5W22136@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.55 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.55.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.55.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               688741           3467593
Full source                       39284482         176117760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/ppc/boot/common/ofcommon.c                    |  180 --
 arch/ppc/boot/prep/of1275.c                        |  427 -----
 arch/ppc/boot/prep/of1275.h                        |  421 -----
 arch/ppc/configs/iSeries_defconfig                 |  477 ------
 arch/ppc/iSeries/HvCall.c                          |  127 -
 arch/ppc/iSeries/HvLpConfig.c                      |   27 
 arch/ppc/iSeries/HvLpEvent.c                       |   87 -
 arch/ppc/iSeries/ItLpQueue.c                       |  178 --
 arch/ppc/iSeries/LparData.c                        |  331 ----
 arch/ppc/iSeries/Makefile                          |   17 
 arch/ppc/iSeries/XmPciLpEvent.c                    |  150 -
 arch/ppc/iSeries/createReleaseData                 |  115 -
 arch/ppc/iSeries/iSeries_FlightRecorder.c          |   89 -
 arch/ppc/iSeries/iSeries_IoMmTable.c               |  206 --
 arch/ppc/iSeries/iSeries_IoMmTable.h               |  105 -
 arch/ppc/iSeries/iSeries_VpdInfo.c                 |  339 ----
 arch/ppc/iSeries/iSeries_fixup.c                   |  255 ---
 arch/ppc/iSeries/iSeries_irq.c                     |  256 ---
 arch/ppc/iSeries/iSeries_ksyms.c                   |   82 -
 arch/ppc/iSeries/iSeries_pci.c                     |  587 -------
 arch/ppc/iSeries/iSeries_pci.h                     |  139 -
 arch/ppc/iSeries/iSeries_pci_proc.c                |  185 --
 arch/ppc/iSeries/iSeries_proc.c                    |  154 -
 arch/ppc/iSeries/iSeries_reset_device.c            |  196 --
 arch/ppc/iSeries/mf.c                              | 1215 ---------------
 arch/ppc/iSeries/mf_proc.c                         |  309 ---
 arch/ppc/iSeries/pmc_proc.c                        |  647 --------
 arch/ppc/iSeries/rtc.c                             |  265 ---
 arch/ppc/kernel/iSeries_asm.h                      |   59 
 arch/ppc/kernel/iSeries_head.S                     | 1512 -------------------
 arch/ppc/kernel/iSeries_idle.c                     |  124 -
 arch/ppc/kernel/iSeries_misc.S                     |  469 -----
 arch/ppc/kernel/ppc6xx_idle.c                      |   79 -
 arch/ppc/mm/iSeries_hashtable.c                    |  223 --
 arch/ppc/mm/iSeries_mmu.c                          |  184 --
 arch/ppc/platforms/4xx/ibm_ocp.h                   |  192 --
 arch/ppc/platforms/iSeries_dma.c                   | 1049 -------------
 arch/ppc/platforms/iSeries_pic.c                   |   77 
 arch/ppc/platforms/iSeries_setup.c                 |  816 ----------
 arch/ppc/platforms/iSeries_setup.h                 |   61 
 arch/ppc/platforms/iSeries_smp.c                   |  136 -
 arch/ppc/platforms/iSeries_time.c                  |  150 -
 arch/ppc/platforms/oak.h                           |   71 
 arch/ppc/platforms/oak_setup.c                     |  282 ---
 arch/ppc/platforms/oak_setup.h                     |   50 
 arch/ppc/syslib/ppc405_dma.c                       |  511 ------
 arch/ppc64/kernel/xics.h                           |   22 
 b/CREDITS                                          |    5 
 b/Documentation/DocBook/Makefile                   |    2 
 b/Documentation/DocBook/journal-api.tmpl           |    2 
 b/Documentation/DocBook/kernel-api.tmpl            |   29 
 b/Documentation/DocBook/scsidrivers.tmpl           |    4 
 b/Documentation/DocBook/videobook.tmpl             |   14 
 b/Documentation/kobject.txt                        |  400 +++--
 b/Documentation/video4linux/bttv/CARDLIST          |    2 
 b/Documentation/video4linux/bttv/Cards             |  181 +-
 b/MAINTAINERS                                      |    6 
 b/Makefile                                         |    2 
 b/arch/alpha/Kconfig                               |   54 
 b/arch/alpha/Makefile                              |  102 -
 b/arch/alpha/boot/Makefile                         |  131 -
 b/arch/alpha/kernel/Makefile                       |  125 -
 b/arch/alpha/kernel/alpha_ksyms.c                  |    2 
 b/arch/alpha/kernel/irq_i8259.c                    |    4 
 b/arch/alpha/kernel/module.c                       |  305 +++
 b/arch/alpha/kernel/sys_alcor.c                    |    8 
 b/arch/alpha/kernel/traps.c                        |    5 
 b/arch/alpha/lib/Makefile                          |   71 
 b/arch/alpha/math-emu/Makefile                     |    2 
 b/arch/alpha/mm/extable.c                          |   43 
 b/arch/alpha/mm/fault.c                            |    5 
 b/arch/arm/Kconfig                                 |   39 
 b/arch/arm/Makefile                                |    1 
 b/arch/arm/boot/compressed/Makefile                |    2 
 b/arch/arm/kernel/armksyms.c                       |    4 
 b/arch/arm/kernel/bios32.c                         |    1 
 b/arch/arm/kernel/calls.S                          |    2 
 b/arch/arm/kernel/irq.c                            |   25 
 b/arch/arm/kernel/module.c                         |    6 
 b/arch/arm/kernel/signal.c                         |   41 
 b/arch/arm/mach-integrator/cpu.c                   |    8 
 b/arch/arm/mach-sa1100/Makefile                    |    3 
 b/arch/arm/mach-sa1100/cpu-sa1100.c                |    8 
 b/arch/arm/mach-sa1100/cpu-sa1110.c                |    8 
 b/arch/arm/mach-sa1100/irq.c                       |   22 
 b/arch/arm/mach-sa1100/jornada720.c                |   46 
 b/arch/arm/mach-sa1100/neponset.c                  |   11 
 b/arch/arm/mach-sa1100/pcipool.c                   |    2 
 b/arch/arm/mach-sa1100/sa1111-pcibuf.c             |   72 
 b/arch/arm/mach-sa1100/sa1111.c                    |   30 
 b/arch/arm/mm/consistent.c                         |   11 
 b/arch/arm/tools/mach-types                        |   19 
 b/arch/arm/vmlinux-armv.lds.in                     |    3 
 b/arch/cris/Kconfig                                |   41 
 b/arch/i386/Kconfig                                |   55 
 b/arch/i386/kernel/apm.c                           |    8 
 b/arch/i386/kernel/cpu/cpufreq/elanfreq.c          |   59 
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c       |   90 -
 b/arch/i386/kernel/edd.c                           |   12 
 b/arch/i386/kernel/entry.S                         |   12 
 b/arch/i386/kernel/ioport.c                        |    2 
 b/arch/i386/kernel/module.c                        |    6 
 b/arch/i386/kernel/pci-dma.c                       |    2 
 b/arch/i386/kernel/process.c                       |    8 
 b/arch/i386/kernel/signal.c                        |   50 
 b/arch/i386/kernel/smp.c                           |    1 
 b/arch/i386/kernel/smpboot.c                       |  175 --
 b/arch/i386/kernel/sysenter.c                      |   14 
 b/arch/i386/kernel/timers/timer_tsc.c              |   54 
 b/arch/i386/kernel/traps.c                         |   63 
 b/arch/i386/mach-voyager/voyager_smp.c             |    1 
 b/arch/i386/mm/extable.c                           |   48 
 b/arch/i386/mm/fault.c                             |    7 
 b/arch/i386/mm/hugetlbpage.c                       |    6 
 b/arch/i386/mm/init.c                              |   10 
 b/arch/i386/pci/numa.c                             |    2 
 b/arch/ia64/Kconfig                                |   38 
 b/arch/ia64/ia32/sys_ia32.c                        |   36 
 b/arch/m68k/Kconfig                                |  490 ------
 b/arch/m68k/kernel/traps.c                         |   36 
 b/arch/m68knommu/Kconfig                           |   41 
 b/arch/mips/Kconfig                                |   41 
 b/arch/mips/kernel/pci.c                           |    2 
 b/arch/mips64/Kconfig                              |   41 
 b/arch/mips64/sgi-ip27/ip27-rtc.c                  |   10 
 b/arch/parisc/Kconfig                              |   40 
 b/arch/parisc/kernel/perf.c                        |   10 
 b/arch/parisc/kernel/traps.c                       |   25 
 b/arch/ppc/8xx_io/Kconfig                          |   16 
 b/arch/ppc/8xx_io/fec.c                            |   84 -
 b/arch/ppc/Kconfig                                 |  379 ----
 b/arch/ppc/Makefile                                |   14 
 b/arch/ppc/boot/Makefile                           |    6 
 b/arch/ppc/boot/openfirmware/Makefile              |    6 
 b/arch/ppc/boot/prep/misc.c                        |   28 
 b/arch/ppc/boot/simple/Makefile                    |    8 
 b/arch/ppc/boot/simple/embed_config.c              |    4 
 b/arch/ppc/boot/simple/misc-embedded.c             |   28 
 b/arch/ppc/boot/simple/misc-spruce.c               |   29 
 b/arch/ppc/boot/simple/misc.c                      |   31 
 b/arch/ppc/configs/FADS_defconfig                  |  302 ++-
 b/arch/ppc/configs/IVMS8_defconfig                 |  460 ++---
 b/arch/ppc/configs/SM850_defconfig                 |  397 ++---
 b/arch/ppc/configs/SPD823TS_defconfig              |  397 ++---
 b/arch/ppc/configs/TQM823L_defconfig               |  397 ++---
 b/arch/ppc/configs/TQM8260_defconfig               |  317 ++--
 b/arch/ppc/configs/TQM850L_defconfig               |  397 ++---
 b/arch/ppc/configs/TQM860L_defconfig               |  465 ++---
 b/arch/ppc/configs/adir_defconfig                  |  572 ++++---
 b/arch/ppc/configs/apus_defconfig                  |  691 ++++----
 b/arch/ppc/configs/ash_defconfig                   |  426 ++---
 b/arch/ppc/configs/beech_defconfig                 |  625 +++++++
 b/arch/ppc/configs/bseip_defconfig                 |  393 ++--
 b/arch/ppc/configs/cedar_defconfig                 |  464 ++---
 b/arch/ppc/configs/common_defconfig                |  721 ++++-----
 b/arch/ppc/configs/cpci405_defconfig               |  549 +++---
 b/arch/ppc/configs/ep405_defconfig                 |  450 ++---
 b/arch/ppc/configs/est8260_defconfig               |  393 ++--
 b/arch/ppc/configs/ev64260_defconfig               |  420 ++---
 b/arch/ppc/configs/gemini_defconfig                |  479 ++----
 b/arch/ppc/configs/ibmchrp_defconfig               |  654 +++-----
 b/arch/ppc/configs/k2_defconfig                    |  456 ++---
 b/arch/ppc/configs/lopec_defconfig                 |  518 ++----
 b/arch/ppc/configs/mbx_defconfig                   |  396 ++---
 b/arch/ppc/configs/mcpn765_defconfig               |  328 ++--
 b/arch/ppc/configs/menf1_defconfig                 |  510 ++----
 b/arch/ppc/configs/mvme5100_defconfig              |  513 +++---
 b/arch/ppc/configs/oak_defconfig                   |  434 +----
 b/arch/ppc/configs/pcore_defconfig                 |  486 +++---
 b/arch/ppc/configs/pmac_defconfig                  |  837 +++++-----
 b/arch/ppc/configs/power3_defconfig                |  656 +++-----
 b/arch/ppc/configs/pplus_defconfig                 |  604 +++----
 b/arch/ppc/configs/prpmc750_defconfig              |  409 ++---
 b/arch/ppc/configs/prpmc800_defconfig              |  358 ++--
 b/arch/ppc/configs/rainier_defconfig               |  612 +++++++
 b/arch/ppc/configs/redwood5_defconfig              |  464 ++---
 b/arch/ppc/configs/redwood_defconfig               |  433 ++---
 b/arch/ppc/configs/rpxcllf_defconfig               |  393 ++--
 b/arch/ppc/configs/rpxlite_defconfig               |  393 ++--
 b/arch/ppc/configs/sandpoint_defconfig             |  485 ++----
 b/arch/ppc/configs/spruce_defconfig                |  386 ++--
 b/arch/ppc/configs/walnut_defconfig                |  473 ++----
 b/arch/ppc/configs/zx4500_defconfig                |  333 ++--
 b/arch/ppc/kernel/Makefile                         |    8 
 b/arch/ppc/kernel/asm-offsets.c                    |   36 
 b/arch/ppc/kernel/cputable.c                       |   70 
 b/arch/ppc/kernel/entry.S                          |   25 
 b/arch/ppc/kernel/head.S                           |  165 +-
 b/arch/ppc/kernel/head_4xx.S                       |  142 -
 b/arch/ppc/kernel/idle_6xx.S                       |  242 +++
 b/arch/ppc/kernel/irq.c                            |    2 
 b/arch/ppc/kernel/l2cr.S                           |   61 
 b/arch/ppc/kernel/misc.S                           |   31 
 b/arch/ppc/kernel/module.c                         |    8 
 b/arch/ppc/kernel/ppc-stub.c                       |    2 
 b/arch/ppc/kernel/ppc_ksyms.c                      |    2 
 b/arch/ppc/kernel/process.c                        |    7 
 b/arch/ppc/kernel/setup.c                          |    2 
 b/arch/ppc/kernel/time.c                           |   32 
 b/arch/ppc/kernel/traps.c                          |    5 
 b/arch/ppc/mm/4xx_mmu.c                            |   47 
 b/arch/ppc/mm/Makefile                             |    1 
 b/arch/ppc/mm/extable.c                            |   46 
 b/arch/ppc/mm/fault.c                              |    8 
 b/arch/ppc/mm/init.c                               |   13 
 b/arch/ppc/mm/mmu_context.c                        |    3 
 b/arch/ppc/mm/mmu_decl.h                           |    2 
 b/arch/ppc/mm/pgtable.c                            |    2 
 b/arch/ppc/mm/ppc_mmu.c                            |    3 
 b/arch/ppc/platforms/4xx/Kconfig                   |  156 +
 b/arch/ppc/platforms/4xx/Makefile                  |    8 
 b/arch/ppc/platforms/4xx/ash.c                     |  220 ++
 b/arch/ppc/platforms/4xx/ash.h                     |    8 
 b/arch/ppc/platforms/4xx/beech.c                   |  252 +++
 b/arch/ppc/platforms/4xx/beech.h                   |  202 ++
 b/arch/ppc/platforms/4xx/cedar.c                   |   70 
 b/arch/ppc/platforms/4xx/cedar.h                   |   38 
 b/arch/ppc/platforms/4xx/cpci405.c                 |   26 
 b/arch/ppc/platforms/4xx/cpci405.h                 |   24 
 b/arch/ppc/platforms/4xx/ep405.c                   |   40 
 b/arch/ppc/platforms/4xx/ep405.h                   |    3 
 b/arch/ppc/platforms/4xx/ibm405gp.c                |   34 
 b/arch/ppc/platforms/4xx/ibm405gp.h                |   60 
 b/arch/ppc/platforms/4xx/ibm405gpr.c               |   47 
 b/arch/ppc/platforms/4xx/ibm405gpr.h               |  187 ++
 b/arch/ppc/platforms/4xx/ibm405lp.c                |  266 +++
 b/arch/ppc/platforms/4xx/ibm405lp.h                |  900 +++++++++++
 b/arch/ppc/platforms/4xx/ibmnp405h.c               |   57 
 b/arch/ppc/platforms/4xx/ibmnp405h.h               |  121 -
 b/arch/ppc/platforms/4xx/ibmnp405l.c               |   38 
 b/arch/ppc/platforms/4xx/ibmnp405l.h               |  116 -
 b/arch/ppc/platforms/4xx/ibmnp4gs.c                |   42 
 b/arch/ppc/platforms/4xx/ibmnp4gs.h                |  168 ++
 b/arch/ppc/platforms/4xx/ibmstb3.c                 |   26 
 b/arch/ppc/platforms/4xx/ibmstb3.h                 |  126 -
 b/arch/ppc/platforms/4xx/ibmstb4.c                 |   41 
 b/arch/ppc/platforms/4xx/ibmstb4.h                 |  148 -
 b/arch/ppc/platforms/4xx/ibmstbx25.c               |   51 
 b/arch/ppc/platforms/4xx/ibmstbx25.h               |  282 +++
 b/arch/ppc/platforms/4xx/oak.h                     |   71 
 b/arch/ppc/platforms/4xx/oak_setup.c               |  282 +++
 b/arch/ppc/platforms/4xx/oak_setup.h               |   50 
 b/arch/ppc/platforms/4xx/redwood.c                 |   51 
 b/arch/ppc/platforms/4xx/redwood.h                 |    7 
 b/arch/ppc/platforms/4xx/redwood5.c                |   22 
 b/arch/ppc/platforms/4xx/redwood6.c                |  172 ++
 b/arch/ppc/platforms/4xx/redwood6.h                |   76 
 b/arch/ppc/platforms/4xx/walnut.c                  |   52 
 b/arch/ppc/platforms/4xx/walnut.h                  |    4 
 b/arch/ppc/platforms/Makefile                      |    3 
 b/arch/ppc/platforms/adir_pic.c                    |    4 
 b/arch/ppc/platforms/adir_setup.c                  |    2 
 b/arch/ppc/platforms/ccm.h                         |    8 
 b/arch/ppc/platforms/k2_setup.c                    |    8 
 b/arch/ppc/platforms/menf1_setup.c                 |    7 
 b/arch/ppc/platforms/powerpmc250.c                 |    6 
 b/arch/ppc/platforms/pplus_setup.c                 |    8 
 b/arch/ppc/platforms/prep_setup.c                  |   15 
 b/arch/ppc/platforms/prpmc750_setup.c              |    6 
 b/arch/ppc/platforms/prpmc800_setup.c              |    6 
 b/arch/ppc/platforms/sandpoint_setup.c             |    2 
 b/arch/ppc/platforms/tqm8xx.h                      |   38 
 b/arch/ppc/syslib/Makefile                         |   14 
 b/arch/ppc/syslib/ppc405_pci.c                     |  119 -
 b/arch/ppc/syslib/ppc4xx_dma.c                     |  511 ++++++
 b/arch/ppc/syslib/ppc4xx_pic.c                     |  212 +-
 b/arch/ppc/syslib/ppc4xx_setup.c                   |  114 -
 b/arch/ppc/syslib/prom_init.c                      |    4 
 b/arch/ppc64/Kconfig                               |   41 
 b/arch/ppc64/Makefile                              |   58 
 b/arch/ppc64/boot/Makefile                         |  172 +-
 b/arch/ppc64/boot/main.c                           |    6 
 b/arch/ppc64/defconfig                             |   50 
 b/arch/ppc64/kernel/Makefile                       |   58 
 b/arch/ppc64/kernel/chrp_setup.c                   |    2 
 b/arch/ppc64/kernel/head.S                         |   23 
 b/arch/ppc64/kernel/init_task.c                    |    2 
 b/arch/ppc64/kernel/ioctl32.c                      |   57 
 b/arch/ppc64/kernel/irq.c                          |   21 
 b/arch/ppc64/kernel/misc.S                         |   48 
 b/arch/ppc64/kernel/pSeries_pci.c                  |    7 
 b/arch/ppc64/kernel/pci_dma.c                      |   17 
 b/arch/ppc64/kernel/prom.c                         |  284 ---
 b/arch/ppc64/kernel/rtc.c                          |  124 -
 b/arch/ppc64/kernel/setup.c                        |    6 
 b/arch/ppc64/kernel/signal32.c                     |    2 
 b/arch/ppc64/kernel/smp.c                          |   52 
 b/arch/ppc64/kernel/sys_ppc32.c                    |  165 --
 b/arch/ppc64/kernel/time.c                         |    8 
 b/arch/ppc64/kernel/xics.c                         |   17 
 b/arch/ppc64/lib/Makefile                          |    8 
 b/arch/ppc64/lib/memcpy.S                          |    2 
 b/arch/ppc64/mm/Makefile                           |    4 
 b/arch/ppc64/oprofile/Makefile                     |    4 
 b/arch/ppc64/xmon/Makefile                         |    4 
 b/arch/ppc64/xmon/start.c                          |  119 -
 b/arch/s390/kernel/module.c                        |    6 
 b/arch/s390/kernel/traps.c                         |   44 
 b/arch/s390x/kernel/linux32.c                      |   41 
 b/arch/s390x/kernel/linux32.h                      |    9 
 b/arch/s390x/kernel/module.c                       |    6 
 b/arch/s390x/kernel/traps.c                        |   44 
 b/arch/sh/Kconfig                                  |   42 
 b/arch/sparc/Kconfig                               |  390 ----
 b/arch/sparc/Makefile                              |   21 
 b/arch/sparc/boot/Makefile                         |   53 
 b/arch/sparc/kernel/Makefile                       |    6 
 b/arch/sparc/kernel/module.c                       |    6 
 b/arch/sparc/kernel/sparc_ksyms.c                  |   11 
 b/arch/sparc/kernel/sun4c_irq.c                    |   13 
 b/arch/sparc/kernel/sun4d_irq.c                    |   10 
 b/arch/sparc/kernel/sun4m_irq.c                    |   13 
 b/arch/sparc64/Kconfig                             |   43 
 b/arch/sparc64/Makefile                            |    5 
 b/arch/sparc64/kernel/ioctl32.c                    |   62 
 b/arch/sparc64/kernel/module.c                     |    6 
 b/arch/sparc64/kernel/sunos_ioctl32.c              |    5 
 b/arch/sparc64/kernel/sys_sparc32.c                |  189 +-
 b/arch/sparc64/kernel/sys_sunos32.c                |   24 
 b/arch/sparc64/kernel/traps.c                      |   10 
 b/arch/sparc64/kernel/unaligned.c                  |    3 
 b/arch/sparc64/mm/extable.c                        |   67 
 b/arch/sparc64/mm/fault.c                          |    3 
 b/arch/sparc64/mm/hugetlbpage.c                    |    9 
 b/arch/um/kernel/sysrq.c                           |   43 
 b/arch/v850/Kconfig                                |   41 
 b/arch/x86_64/Kconfig                              |   43 
 b/arch/x86_64/Makefile                             |   17 
 b/arch/x86_64/ia32/ia32_binfmt.c                   |    2 
 b/arch/x86_64/ia32/ia32_ioctl.c                    |   46 
 b/arch/x86_64/ia32/ia32entry.S                     |   17 
 b/arch/x86_64/ia32/ipc32.c                         |   46 
 b/arch/x86_64/ia32/sys_ia32.c                      |  189 +-
 b/arch/x86_64/kernel/head.S                        |    3 
 b/arch/x86_64/kernel/module.c                      |    6 
 b/arch/x86_64/kernel/msr.c                         |    2 
 b/arch/x86_64/kernel/pci-gart.c                    |    9 
 b/arch/x86_64/kernel/process.c                     |   22 
 b/arch/x86_64/kernel/ptrace.c                      |   11 
 b/arch/x86_64/kernel/setup.c                       |    2 
 b/arch/x86_64/kernel/smpboot.c                     |    5 
 b/arch/x86_64/kernel/sys_x86_64.c                  |   30 
 b/arch/x86_64/kernel/traps.c                       |   55 
 b/arch/x86_64/kernel/vsyscall.c                    |    3 
 b/arch/x86_64/mm/extable.c                         |   65 
 b/arch/x86_64/mm/fault.c                           |    8 
 b/arch/x86_64/mm/hugetlbpage.c                     |    6 
 b/arch/x86_64/mm/init.c                            |    2 
 b/drivers/acpi/bus.c                               |    4 
 b/drivers/acpi/scan.c                              |   17 
 b/drivers/atm/atmtcp.c                             |    2 
 b/drivers/base/bus.c                               |  160 +-
 b/drivers/base/class.c                             |   50 
 b/drivers/base/core.c                              |   19 
 b/drivers/base/firmware.c                          |    6 
 b/drivers/base/intf.c                              |   46 
 b/drivers/base/power.c                             |   20 
 b/drivers/block/genhd.c                            |   57 
 b/drivers/cdrom/cdrom.c                            |    6 
 b/drivers/char/agp/Kconfig                         |   10 
 b/drivers/char/agp/Makefile                        |    1 
 b/drivers/char/agp/agp.h                           |   13 
 b/drivers/char/agp/ali-agp.c                       |    1 
 b/drivers/char/agp/amd-k7-agp.c                    |    4 
 b/drivers/char/agp/amd-k8-agp.c                    |   28 
 b/drivers/char/agp/backend.c                       |   15 
 b/drivers/char/agp/frontend.c                      |    3 
 b/drivers/char/agp/generic-3.0.c                   |   21 
 b/drivers/char/agp/generic.c                       |   59 
 b/drivers/char/agp/hp-agp.c                        |    1 
 b/drivers/char/agp/i460-agp.c                      |    1 
 b/drivers/char/agp/i7x05-agp.c                     |    1 
 b/drivers/char/agp/intel-agp.c                     |   28 
 b/drivers/char/agp/sis-agp.c                       |    1 
 b/drivers/char/agp/sworks-agp.c                    |    4 
 b/drivers/char/agp/via-agp.c                       |   60 
 b/drivers/char/agp/via-kt400.c                     |  198 ++
 b/drivers/char/drm/radeon_mem.c                    |   10 
 b/drivers/char/ftape/compressor/zftape-compress.c  |   49 
 b/drivers/char/ftape/lowlevel/fdc-io.c             |   35 
 b/drivers/char/ftape/lowlevel/fdc-isr.c            |   15 
 b/drivers/char/ftape/lowlevel/ftape-ctl.c          |    4 
 b/drivers/char/ftape/lowlevel/ftape-init.c         |   11 
 b/drivers/char/ftape/lowlevel/ftape-setup.c        |    5 
 b/drivers/char/ftape/zftape/zftape-buffers.c       |    2 
 b/drivers/char/ftape/zftape/zftape-ctl.c           |   36 
 b/drivers/char/ftape/zftape/zftape-ctl.h           |    1 
 b/drivers/char/ftape/zftape/zftape-init.c          |    1 
 b/drivers/char/ftape/zftape/zftape-read.c          |    9 
 b/drivers/char/ftape/zftape/zftape-write.c         |    9 
 b/drivers/char/genrtc.c                            |   15 
 b/drivers/char/ip2.c                               |    3 
 b/drivers/char/nwflash.c                           |    7 
 b/drivers/char/raw.c                               |   11 
 b/drivers/char/sx.c                                |   12 
 b/drivers/char/toshiba.c                           |   15 
 b/drivers/hotplug/ibmphp_core.c                    |   10 
 b/drivers/hotplug/pci_hotplug_core.c               |   43 
 b/drivers/ide/ide.c                                |    3 
 b/drivers/input/serio/sa1111ps2.c                  |    6 
 b/drivers/isdn/hisax/amd7930.c                     |    2 
 b/drivers/isdn/hisax/amd7930_fn.c                  |   10 
 b/drivers/isdn/hisax/arcofi.c                      |   23 
 b/drivers/isdn/hisax/asuscom.c                     |  207 +-
 b/drivers/isdn/hisax/avm_a1.c                      |   92 -
 b/drivers/isdn/hisax/avm_a1p.c                     |  155 -
 b/drivers/isdn/hisax/avm_pci.c                     |  105 -
 b/drivers/isdn/hisax/avma1_cs.c                    |    2 
 b/drivers/isdn/hisax/bkm_a4t.c                     |  102 -
 b/drivers/isdn/hisax/bkm_a8.c                      |  162 --
 b/drivers/isdn/hisax/callc.c                       |    2 
 b/drivers/isdn/hisax/config.c                      |   27 
 b/drivers/isdn/hisax/diva.c                        |  283 +--
 b/drivers/isdn/hisax/elsa.c                        |  243 +--
 b/drivers/isdn/hisax/elsa_ser.c                    |   12 
 b/drivers/isdn/hisax/enternow.h                    |    9 
 b/drivers/isdn/hisax/enternow_pci.c                |   32 
 b/drivers/isdn/hisax/gazel.c                       |  208 +-
 b/drivers/isdn/hisax/hfc_2bds0.c                   |   85 -
 b/drivers/isdn/hisax/hfc_2bds0.h                   |    2 
 b/drivers/isdn/hisax/hfc_2bs0.c                    |   98 -
 b/drivers/isdn/hisax/hfc_pci.c                     |   43 
 b/drivers/isdn/hisax/hfc_pci.h                     |   36 
 b/drivers/isdn/hisax/hfc_sx.c                      |   41 
 b/drivers/isdn/hisax/hfcscard.c                    |   46 
 b/drivers/isdn/hisax/hisax.h                       |  201 +-
 b/drivers/isdn/hisax/hisax_debug.h                 |    2 
 b/drivers/isdn/hisax/hisax_fcclassic.c             |    6 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c              |   44 
 b/drivers/isdn/hisax/hisax_fcpcipnp.h              |   18 
 b/drivers/isdn/hisax/hisax_hscx.c                  |    2 
 b/drivers/isdn/hisax/hisax_hscx.h                  |   12 
 b/drivers/isdn/hisax/hisax_isac.c                  |    4 
 b/drivers/isdn/hisax/hisax_isac.h                  |   14 
 b/drivers/isdn/hisax/hscx.c                        |  130 +
 b/drivers/isdn/hisax/hscx.h                        |    2 
 b/drivers/isdn/hisax/hscx_irq.c                    |   60 
 b/drivers/isdn/hisax/icc.c                         |  154 +
 b/drivers/isdn/hisax/icc.h                         |    2 
 b/drivers/isdn/hisax/ipacx.c                       |  214 +-
 b/drivers/isdn/hisax/isac.c                        |  158 +-
 b/drivers/isdn/hisax/isac.h                        |    2 
 b/drivers/isdn/hisax/isar.c                        |  192 +-
 b/drivers/isdn/hisax/isdnl1.c                      |    6 
 b/drivers/isdn/hisax/isdnl1.h                      |   16 
 b/drivers/isdn/hisax/isdnl2.c                      |   52 
 b/drivers/isdn/hisax/isdnl3.c                      |    8 
 b/drivers/isdn/hisax/isdnl3.h                      |    2 
 b/drivers/isdn/hisax/isurf.c                       |   41 
 b/drivers/isdn/hisax/ix1_micro.c                   |  131 -
 b/drivers/isdn/hisax/jade.c                        |  114 -
 b/drivers/isdn/hisax/jade.h                        |    3 
 b/drivers/isdn/hisax/jade_irq.c                    |   26 
 b/drivers/isdn/hisax/l3_1tr6.c                     |  102 -
 b/drivers/isdn/hisax/l3dss1.c                      |  286 +--
 b/drivers/isdn/hisax/l3dss1.h                      |    2 
 b/drivers/isdn/hisax/l3ni1.c                       |  296 +--
 b/drivers/isdn/hisax/l3ni1.h                       |    2 
 b/drivers/isdn/hisax/mic.c                         |  138 -
 b/drivers/isdn/hisax/netjet.c                      |   81 -
 b/drivers/isdn/hisax/netjet.h                      |   10 
 b/drivers/isdn/hisax/niccy.c                       |  118 -
 b/drivers/isdn/hisax/nj_s.c                        |   19 
 b/drivers/isdn/hisax/nj_u.c                        |   25 
 b/drivers/isdn/hisax/q931.c                        |   62 
 b/drivers/isdn/hisax/rawhdlc.c                     |   30 
 b/drivers/isdn/hisax/rawhdlc.h                     |   10 
 b/drivers/isdn/hisax/s0box.c                       |  124 -
 b/drivers/isdn/hisax/saphir.c                      |  142 -
 b/drivers/isdn/hisax/sedlbauer.c                   |  270 +--
 b/drivers/isdn/hisax/sedlbauer_cs.c                |    2 
 b/drivers/isdn/hisax/sportster.c                   |   83 -
 b/drivers/isdn/hisax/st5481.h                      |    8 
 b/drivers/isdn/hisax/st5481_b.c                    |    2 
 b/drivers/isdn/hisax/st5481_usb.c                  |    8 
 b/drivers/isdn/hisax/tei.c                         |    6 
 b/drivers/isdn/hisax/teleint.c                     |   58 
 b/drivers/isdn/hisax/teles0.c                      |  162 --
 b/drivers/isdn/hisax/teles3.c                      |   92 -
 b/drivers/isdn/hisax/telespci.c                    |  230 +-
 b/drivers/isdn/hisax/w6692.c                       |  226 +-
 b/drivers/macintosh/ans-lcd.c                      |    8 
 b/drivers/macintosh/apm_emu.c                      |    2 
 b/drivers/macintosh/via-pmu.c                      |    6 
 b/drivers/macintosh/via-pmu68k.c                   |    6 
 b/drivers/md/dm-ioctl.c                            |   18 
 b/drivers/md/dm-table.c                            |   38 
 b/drivers/md/dm-target.c                           |   37 
 b/drivers/md/dm.c                                  |   31 
 b/drivers/md/md.c                                  |  102 -
 b/drivers/md/raid1.c                               |    4 
 b/drivers/md/raid5.c                               |    2 
 b/drivers/media/video/Makefile                     |    8 
 b/drivers/media/video/audiochip.h                  |   38 
 b/drivers/media/video/bt832.c                      |  289 +++
 b/drivers/media/video/bt832.h                      |  305 +++
 b/drivers/media/video/bttv-cards.c                 |  264 ++-
 b/drivers/media/video/bttv-driver.c                |  327 ++--
 b/drivers/media/video/bttv-if.c                    |    5 
 b/drivers/media/video/bttv-risc.c                  |   10 
 b/drivers/media/video/bttv-vbi.c                   |   11 
 b/drivers/media/video/bttv.h                       |   12 
 b/drivers/media/video/bttvp.h                      |   14 
 b/drivers/media/video/msp3400.c                    |   69 
 b/drivers/media/video/saa7134/saa7134-cards.c      |   95 +
 b/drivers/media/video/saa7134/saa7134-i2c.c        |    1 
 b/drivers/media/video/saa7134/saa7134-oss.c        |    4 
 b/drivers/media/video/saa7134/saa7134-ts.c         |   40 
 b/drivers/media/video/saa7134/saa7134-tvaudio.c    |   12 
 b/drivers/media/video/saa7134/saa7134-vbi.c        |    6 
 b/drivers/media/video/saa7134/saa7134-video.c      |  115 +
 b/drivers/media/video/saa7134/saa7134.h            |    6 
 b/drivers/media/video/tda7432.c                    |  110 -
 b/drivers/media/video/tda9875.c                    |   38 
 b/drivers/media/video/tda9887.c                    |  484 ++++++
 b/drivers/media/video/tuner.c                      |   41 
 b/drivers/media/video/tvaudio.c                    |   53 
 b/drivers/media/video/tvmixer.c                    |   28 
 b/drivers/media/video/v4l1-compat.c                | 1010 ++++++++++++
 b/drivers/media/video/video-buf.c                  |   44 
 b/drivers/media/video/video-buf.h                  |    8 
 b/drivers/media/video/zr36067.c                    |    6 
 b/drivers/net/3c59x.c                              |    4 
 b/drivers/net/Kconfig                              |  237 ++-
 b/drivers/net/Makefile                             |    1 
 b/drivers/net/Makefile.lib                         |    1 
 b/drivers/net/aironet4500_proc.c                   |   15 
 b/drivers/net/amd8111e.c                           | 1651 +++++++++++++++++++++
 b/drivers/net/amd8111e.h                           |  786 +++++++++
 b/drivers/net/appletalk/Kconfig                    |    4 
 b/drivers/net/arcnet/Kconfig                       |    2 
 b/drivers/net/atari_bionet.c                       |    2 
 b/drivers/net/e100/e100.h                          |   13 
 b/drivers/net/e100/e100_config.c                   |   16 
 b/drivers/net/e100/e100_main.c                     |  373 ++--
 b/drivers/net/e100/e100_test.c                     |   26 
 b/drivers/net/e1000/e1000.h                        |    1 
 b/drivers/net/e1000/e1000_ethtool.c                |   22 
 b/drivers/net/e1000/e1000_main.c                   |   83 -
 b/drivers/net/e1000/e1000_osdep.h                  |    2 
 b/drivers/net/e1000/e1000_param.c                  |   25 
 b/drivers/net/e1000/e1000_proc.c                   |   24 
 b/drivers/net/eepro100.c                           |    1 
 b/drivers/net/irda/ali-ircc.c                      |    7 
 b/drivers/net/irda/donauboe.c                      |    7 
 b/drivers/net/irda/irda-usb.c                      |    6 
 b/drivers/net/irda/nsc-ircc.c                      |    7 
 b/drivers/net/irda/sa1100_ir.c                     |    5 
 b/drivers/net/irda/w83977af_ir.c                   |    7 
 b/drivers/net/mii.c                                |    8 
 b/drivers/net/natsemi.c                            |   44 
 b/drivers/net/starfire.c                           |    8 
 b/drivers/net/sungem.c                             |    1 
 b/drivers/net/sunlance.c                           |    1 
 b/drivers/net/tokenring/Kconfig                    |    2 
 b/drivers/net/tulip/de4x5.c                        |    1 
 b/drivers/net/wan/Kconfig                          |   20 
 b/drivers/net/wireless/Kconfig                     |    6 
 b/drivers/net/wireless/wavelan_cs.p.h              |    2 
 b/drivers/pci/Kconfig                              |   30 
 b/drivers/pci/hotplug.c                            |    2 
 b/drivers/pci/pci.ids                              |  563 +++++--
 b/drivers/pci/probe.c                              |    8 
 b/drivers/pci/proc.c                               |   38 
 b/drivers/pcmcia/sa1100_jornada720.c               |   10 
 b/drivers/pcmcia/sa1111_generic.c                  |    4 
 b/drivers/pcmcia/yenta.c                           |    2 
 b/drivers/sbus/char/bpp.c                          |    7 
 b/drivers/sbus/char/envctrl.c                      |    4 
 b/drivers/sbus/sbus.c                              |   71 
 b/drivers/scsi/53c700.h                            |    2 
 b/drivers/scsi/Kconfig                             |   24 
 b/drivers/scsi/Makefile                            |    2 
 b/drivers/scsi/aic7xxx/Makefile                    |   49 
 b/drivers/scsi/aic7xxx/aic79xx_core.c              |   16 
 b/drivers/scsi/aic7xxx/aic79xx_osm.c               |   25 
 b/drivers/scsi/aic7xxx/aic79xx_osm.h               |   13 
 b/drivers/scsi/aic7xxx/aic79xx_osm_pci.c           |    5 
 b/drivers/scsi/aic7xxx/aic79xx_pci.c               |   25 
 b/drivers/scsi/aic7xxx/aic7xxx.h                   |    3 
 b/drivers/scsi/aic7xxx/aic7xxx.reg                 |    4 
 b/drivers/scsi/aic7xxx/aic7xxx.seq                 |    4 
 b/drivers/scsi/aic7xxx/aic7xxx_core.c              |   74 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.c               |   29 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.h               |   14 
 b/drivers/scsi/aic7xxx/aic7xxx_osm_pci.c           |    6 
 b/drivers/scsi/aic7xxx/aic7xxx_pci.c               |   34 
 b/drivers/scsi/aic7xxx/aic7xxx_reg.h_shipped       |    5 
 b/drivers/scsi/aic7xxx/aic7xxx_reg_print.c_shipped |    4 
 b/drivers/scsi/aic7xxx/aic7xxx_seq.h_shipped       |    4 
 b/drivers/scsi/aic7xxx/aicasm/aicasm_gram.y        |   15 
 b/drivers/scsi/gdth.c                              |   96 -
 b/drivers/scsi/gdth.h                              |   13 
 b/drivers/scsi/i91uscsi.c                          |  136 -
 b/drivers/scsi/ide-scsi.c                          |    7 
 b/drivers/scsi/ips.c                               |  804 +---------
 b/drivers/scsi/ips.h                               |   64 
 b/drivers/scsi/lasi700.c                           |    2 
 b/drivers/scsi/ncr53c8xx.c                         |  356 +++-
 b/drivers/scsi/pcmcia/Makefile                     |   20 
 b/drivers/scsi/pcmcia/aha152x_core.c               |    3 
 b/drivers/scsi/pcmcia/aha152x_stub.c               |   10 
 b/drivers/scsi/pcmcia/fdomain_core.c               |    2 
 b/drivers/scsi/pcmcia/fdomain_stub.c               |    7 
 b/drivers/scsi/pcmcia/nsp_cs.c                     |    4 
 b/drivers/scsi/pcmcia/nsp_cs.h                     |    2 
 b/drivers/scsi/pcmcia/qlogic_core.c                |    2 
 b/drivers/scsi/pcmcia/qlogic_stub.c                |    6 
 b/drivers/scsi/scsi_scan.c                         |  164 --
 b/drivers/scsi/sr_ioctl.c                          |    2 
 b/drivers/scsi/sym53c8xx_comm.h                    |   71 
 b/drivers/scsi/sym53c8xx_defs.h                    |   72 
 b/drivers/scsi/zalon.c                             |  163 ++
 b/drivers/scsi/zalon.h                             |   43 
 b/drivers/serial/68360serial.c                     |    1 
 b/drivers/serial/sunsab.c                          |   99 -
 b/drivers/sgi/char/streamable.c                    |   27 
 b/drivers/sgi/char/usema.c                         |    7 
 b/drivers/telephony/ixj.c                          |   12 
 b/drivers/usb/core/hcd.c                           |    1 
 b/drivers/usb/host/ohci-dbg.c                      |    2 
 b/drivers/usb/input/Kconfig                        |    2 
 b/drivers/video/fbmem.c                            |    5 
 b/drivers/video/tgafb.c                            |  603 +++++++
 b/fs/aio.c                                         |    1 
 b/fs/befs/linuxvfs.c                               |    2 
 b/fs/bio.c                                         |  108 +
 b/fs/block_dev.c                                   |    5 
 b/fs/compat.c                                      |   31 
 b/fs/direct-io.c                                   |  260 ++-
 b/fs/exec.c                                        |    8 
 b/fs/ext2/inode.c                                  |    5 
 b/fs/ext3/inode.c                                  |    7 
 b/fs/hugetlbfs/inode.c                             |    1 
 b/fs/jfs/file.c                                    |    2 
 b/fs/jfs/inode.c                                   |    5 
 b/fs/jfs/jfs_logmgr.c                              |   51 
 b/fs/jfs/jfs_logmgr.h                              |    3 
 b/fs/jfs/jfs_txnmgr.c                              |    8 
 b/fs/jfs/jfs_umount.c                              |    4 
 b/fs/jfs/resize.c                                  |    2 
 b/fs/jfs/super.c                                   |   12 
 b/fs/mpage.c                                       |    3 
 b/fs/ncpfs/sock.c                                  |    2 
 b/fs/nfs/direct.c                                  |    2 
 b/fs/nfs/inode.c                                   |    2 
 b/fs/nfs/nfs3proc.c                                |    4 
 b/fs/nfs/nfs4proc.c                                |    4 
 b/fs/nfs/nfs4xdr.c                                 |    2 
 b/fs/nfs/pagelist.c                                |    5 
 b/fs/nfs/proc.c                                    |    4 
 b/fs/nfs/read.c                                    |    2 
 b/fs/nfs/write.c                                   |    3 
 b/fs/nfsctl.c                                      |   17 
 b/fs/nfsd/export.c                                 |   27 
 b/fs/nfsd/nfs3xdr.c                                |    2 
 b/fs/nfsd/nfs4proc.c                               |    2 
 b/fs/nfsd/nfs4xdr.c                                |   53 
 b/fs/nfsd/nfsctl.c                                 |  353 ++--
 b/fs/nfsd/nfsfh.c                                  |    4 
 b/fs/nfsd/nfssvc.c                                 |    8 
 b/fs/partitions/check.c                            |   17 
 b/fs/proc/array.c                                  |    3 
 b/fs/readdir.c                                     |   12 
 b/fs/romfs/inode.c                                 |    1 
 b/fs/sysfs/inode.c                                 |   12 
 b/fs/xfs/linux/xfs_aops.c                          |    5 
 b/include/asm-alpha/irq.h                          |    1 
 b/include/asm-alpha/module.h                       |   25 
 b/include/asm-alpha/uaccess.h                      |   17 
 b/include/asm-arm/arch-iop310/memory.h             |    1 
 b/include/asm-arm/current.h                        |    2 
 b/include/asm-arm/dma-mapping.h                    |  304 +++
 b/include/asm-arm/io.h                             |   10 
 b/include/asm-arm/irq.h                            |    3 
 b/include/asm-arm/mach/irq.h                       |    4 
 b/include/asm-arm/pci.h                            |  248 +--
 b/include/asm-arm/proc-armv/locks.h                |    8 
 b/include/asm-arm/proc-armv/uaccess.h              |   47 
 b/include/asm-arm/semaphore.h                      |   20 
 b/include/asm-arm/thread_info.h                    |   20 
 b/include/asm-arm/uaccess.h                        |   11 
 b/include/asm-arm/unistd.h                         |    1 
 b/include/asm-i386/edd.h                           |    2 
 b/include/asm-i386/elf.h                           |    6 
 b/include/asm-i386/highmem.h                       |    2 
 b/include/asm-i386/io_apic.h                       |    3 
 b/include/asm-i386/mach-default/mach_apic.h        |   13 
 b/include/asm-i386/mach-default/mach_wakecpu.h     |   41 
 b/include/asm-i386/mach-numaq/mach_apic.h          |   20 
 b/include/asm-i386/mach-numaq/mach_wakecpu.h       |   43 
 b/include/asm-i386/mach-summit/mach_apic.h         |   14 
 b/include/asm-i386/numaq.h                         |    2 
 b/include/asm-i386/smp.h                           |   29 
 b/include/asm-i386/system.h                        |   10 
 b/include/asm-i386/thread_info.h                   |    2 
 b/include/asm-i386/topology.h                      |   56 
 b/include/asm-i386/uaccess.h                       |    4 
 b/include/asm-ia64/compat.h                        |    8 
 b/include/asm-ia64/ia32.h                          |    9 
 b/include/asm-ppc/bitops.h                         |    8 
 b/include/asm-ppc/cache.h                          |    3 
 b/include/asm-ppc/commproc.h                       |  111 +
 b/include/asm-ppc/cputable.h                       |    9 
 b/include/asm-ppc/ibm403.h                         |    9 
 b/include/asm-ppc/ibm405.h                         |   21 
 b/include/asm-ppc/ibm4xx.h                         |   88 -
 b/include/asm-ppc/ibm_ocp_pci.h                    |   56 
 b/include/asm-ppc/io.h                             |   34 
 b/include/asm-ppc/irq.h                            |   13 
 b/include/asm-ppc/module.h                         |    4 
 b/include/asm-ppc/nvram.h                          |    4 
 b/include/asm-ppc/ocp.h                            |  205 ++
 b/include/asm-ppc/ocp_ids.h                        |  103 +
 b/include/asm-ppc/open_pic.h                       |   13 
 b/include/asm-ppc/page.h                           |    2 
 b/include/asm-ppc/param.h                          |    2 
 b/include/asm-ppc/pci-bridge.h                     |    9 
 b/include/asm-ppc/ppc4xx_pic.h                     |    9 
 b/include/asm-ppc/ppc_asm.h                        |   22 
 b/include/asm-ppc/processor.h                      |   29 
 b/include/asm-ppc/prom.h                           |   11 
 b/include/asm-ppc/ptrace.h                         |    2 
 b/include/asm-ppc/signal.h                         |    5 
 b/include/asm-ppc/socket.h                         |    2 
 b/include/asm-ppc/spinlock.h                       |   24 
 b/include/asm-ppc/termios.h                        |    2 
 b/include/asm-ppc/time.h                           |   22 
 b/include/asm-ppc/uaccess.h                        |    2 
 b/include/asm-ppc64/compat.h                       |   45 
 b/include/asm-ppc64/page.h                         |    2 
 b/include/asm-ppc64/pgtable.h                      |    4 
 b/include/asm-ppc64/ppc32.h                        |   67 
 b/include/asm-ppc64/prom.h                         |   11 
 b/include/asm-ppc64/smp.h                          |    2 
 b/include/asm-ppc64/tlb.h                          |    4 
 b/include/asm-ppc64/topology.h                     |    2 
 b/include/asm-ppc64/xics.h                         |   18 
 b/include/asm-s390x/compat.h                       |    9 
 b/include/asm-sparc/bitops.h                       |    3 
 b/include/asm-sparc/ide.h                          |    4 
 b/include/asm-sparc/sbus.h                         |   11 
 b/include/asm-sparc/system.h                       |    1 
 b/include/asm-sparc/thread_info.h                  |    2 
 b/include/asm-sparc64/compat.h                     |   64 
 b/include/asm-sparc64/fcntl.h                      |   11 
 b/include/asm-sparc64/ide.h                        |    4 
 b/include/asm-sparc64/posix_types.h                |   17 
 b/include/asm-sparc64/siginfo.h                    |    8 
 b/include/asm-sparc64/smp.h                        |    4 
 b/include/asm-sparc64/statfs.h                     |    3 
 b/include/asm-sparc64/uaccess.h                    |    4 
 b/include/asm-x86_64/compat.h                      |   16 
 b/include/asm-x86_64/ia32.h                        |   23 
 b/include/asm-x86_64/segment.h                     |    3 
 b/include/asm-x86_64/smp.h                         |    5 
 b/include/asm-x86_64/spinlock.h                    |    2 
 b/include/asm-x86_64/uaccess.h                     |    7 
 b/include/asm-x86_64/xor.h                         |    2 
 b/include/linux/agp_backend.h                      |    2 
 b/include/linux/bio.h                              |    2 
 b/include/linux/compat.h                           |    9 
 b/include/linux/crc32.h                            |   12 
 b/include/linux/device.h                           |   24 
 b/include/linux/dirent.h                           |   13 
 b/include/linux/elf.h                              |   35 
 b/include/linux/fb.h                               |    1 
 b/include/linux/fs.h                               |   13 
 b/include/linux/genhd.h                            |    2 
 b/include/linux/highmem.h                          |    9 
 b/include/linux/if_arp.h                           |    1 
 b/include/linux/init.h                             |    3 
 b/include/linux/kernel.h                           |    3 
 b/include/linux/kobject.h                          |  122 +
 b/include/linux/module.h                           |   99 +
 b/include/linux/moduleloader.h                     |    6 
 b/include/linux/netdevice.h                        |    6 
 b/include/linux/nfs_page.h                         |    5 
 b/include/linux/nfsd/xdr4.h                        |    1 
 b/include/linux/pagemap.h                          |    8 
 b/include/linux/pci_ids.h                          |    1 
 b/include/linux/radix-tree.h                       |    8 
 b/include/linux/raid/md_k.h                        |    5 
 b/include/linux/raid/md_p.h                        |    7 
 b/include/linux/rmap-locking.h                     |   14 
 b/include/linux/rtnetlink.h                        |    1 
 b/include/linux/signal.h                           |   59 
 b/include/linux/smp.h                              |    1 
 b/include/linux/sunrpc/auth.h                      |    8 
 b/include/linux/sunrpc/cache.h                     |    7 
 b/include/linux/sunrpc/svcauth.h                   |    8 
 b/include/linux/swap.h                             |   12 
 b/include/net/icmp.h                               |   15 
 b/include/net/ip.h                                 |    6 
 b/include/net/ipv6.h                               |   11 
 b/include/net/route.h                              |    6 
 b/include/net/sctp/sctp.h                          |    2 
 b/include/net/snmp.h                               |   39 
 b/include/net/tcp.h                                |    6 
 b/include/net/udp.h                                |    3 
 b/include/video/tgafb.h                            |    1 
 b/init/Kconfig                                     |   61 
 b/init/do_mounts.c                                 |   29 
 b/init/main.c                                      |    7 
 b/kernel/Makefile                                  |    4 
 b/kernel/compat.c                                  |   23 
 b/kernel/cpufreq.c                                 |   20 
 b/kernel/extable.c                                 |   39 
 b/kernel/fork.c                                    |    1 
 b/kernel/kallsyms.c                                |    9 
 b/kernel/ksyms.c                                   |    3 
 b/kernel/module.c                                  |  228 ++
 b/kernel/panic.c                                   |    4 
 b/kernel/pid.c                                     |   49 
 b/kernel/printk.c                                  |   11 
 b/kernel/sched.c                                   |    2 
 b/lib/crc32.c                                      |   25 
 b/lib/kobject.c                                    |  179 +-
 b/lib/radix-tree.c                                 |   89 -
 b/mm/filemap.c                                     |  116 +
 b/mm/fremap.c                                      |    8 
 b/mm/memory.c                                      |  141 +
 b/mm/mempool.c                                     |   28 
 b/mm/mremap.c                                      |   21 
 b/mm/readahead.c                                   |    5 
 b/mm/rmap.c                                        |  125 -
 b/mm/shmem.c                                       |    2 
 b/mm/slab.c                                        |   67 
 b/mm/swap_state.c                                  |    5 
 b/mm/swapfile.c                                    |   18 
 b/net/Kconfig                                      |   21 
 b/net/core/dev.c                                   |   19 
 b/net/core/dv.c                                    |    6 
 b/net/core/rtnetlink.c                             |   66 
 b/net/core/skbuff.c                                |    6 
 b/net/ipv4/af_inet.c                               |   61 
 b/net/ipv4/icmp.c                                  |   96 -
 b/net/ipv4/ip_input.c                              |    2 
 b/net/ipv4/proc.c                                  |   37 
 b/net/ipv4/route.c                                 |   94 -
 b/net/ipv4/tcp.c                                   |   13 
 b/net/ipv4/tcp_input.c                             |    4 
 b/net/ipv4/tcp_minisocks.c                         |    4 
 b/net/ipv4/tcp_timer.c                             |    3 
 b/net/ipv4/udp.c                                   |    2 
 b/net/ipv6/af_inet6.c                              |   83 +
 b/net/ipv6/exthdrs.c                               |    8 
 b/net/ipv6/icmp.c                                  |    8 
 b/net/ipv6/ipv6_sockglue.c                         |    2 
 b/net/ipv6/proc.c                                  |   38 
 b/net/ipv6/udp.c                                   |    2 
 b/net/sctp/protocol.c                              |   44 
 b/net/socket.c                                     |   14 
 b/net/sunrpc/auth.c                                |  178 --
 b/net/sunrpc/cache.c                               |  248 ++-
 b/net/sunrpc/sunrpc_syms.c                         |    5 
 b/net/sunrpc/svcauth.c                             |   21 
 b/net/sunrpc/svcauth_unix.c                        |   46 
 b/net/unix/af_unix.c                               |    3 
 b/scripts/kallsyms.c                               |    2 
 b/sound/oss/cmpci.c                                |    5 
 b/sound/oss/es1370.c                               |    9 
 b/sound/oss/es1371.c                               |    9 
 b/sound/oss/esssolo1.c                             |    7 
 b/sound/oss/sonicvibes.c                           |    9 
 b/sound/sound_firmware.c                           |    1 
 drivers/char/ftape/lowlevel/ftape_syms.h           |   39 
 drivers/char/ftape/zftape/zftape_syms.h            |   39 
 include/asm-i386/smpboot.h                         |   48 
 include/asm-ppc/iSeries/HvCall.h                   |  209 --
 include/asm-ppc/iSeries/HvCallCfg.h                |  219 --
 include/asm-ppc/iSeries/HvCallEvent.h              |  328 ----
 include/asm-ppc/iSeries/HvCallHpt.h                |  137 -
 include/asm-ppc/iSeries/HvCallPci.h                |  689 --------
 include/asm-ppc/iSeries/HvCallSc.h                 |   53 
 include/asm-ppc/iSeries/HvCallSm.h                 |   58 
 include/asm-ppc/iSeries/HvCallXm.h                 |  105 -
 include/asm-ppc/iSeries/HvLpConfig.h               |  292 ---
 include/asm-ppc/iSeries/HvLpEvent.h                |  144 -
 include/asm-ppc/iSeries/HvReleaseData.h            |   71 
 include/asm-ppc/iSeries/HvTypes.h                  |  161 --
 include/asm-ppc/iSeries/IoHriMainStore.h           |   65 
 include/asm-ppc/iSeries/IoHriProcessorVpd.h        |   90 -
 include/asm-ppc/iSeries/ItIplParmsReal.h           |   78 
 include/asm-ppc/iSeries/ItLpNaca.h                 |   87 -
 include/asm-ppc/iSeries/ItLpPaca.h                 |  122 -
 include/asm-ppc/iSeries/ItLpQueue.h                |   94 -
 include/asm-ppc/iSeries/ItLpRegSave.h              |   87 -
 include/asm-ppc/iSeries/ItSpCommArea.h             |   39 
 include/asm-ppc/iSeries/ItVpdAreas.h               |  100 -
 include/asm-ppc/iSeries/LparData.h                 |   75 
 include/asm-ppc/iSeries/LparMap.h                  |   76 
 include/asm-ppc/iSeries/Naca.h                     |   38 
 include/asm-ppc/iSeries/Paca.h                     |  137 -
 include/asm-ppc/iSeries/XmPciLpEvent.h             |   18 
 include/asm-ppc/iSeries/iSeries_FlightRecorder.h   |   85 -
 include/asm-ppc/iSeries/iSeries_VpdInfo.h          |   56 
 include/asm-ppc/iSeries/iSeries_dma.h              |   97 -
 include/asm-ppc/iSeries/iSeries_fixup.h            |   25 
 include/asm-ppc/iSeries/iSeries_io.h               |   42 
 include/asm-ppc/iSeries/iSeries_irq.h              |   26 
 include/asm-ppc/iSeries/iSeries_pci.h              |  123 -
 include/asm-ppc/iSeries/iSeries_proc.h             |   37 
 include/asm-ppc/iSeries/mf.h                       |   83 -
 include/asm-ppc/iSeries/mf_proc.h                  |   33 
 include/asm-ppc/iSeries/pmc_proc.h                 |   33 
 include/asm-ppc/iSeries/veth-proc.h                |   32 
 kernel/platform.c                                  |   72 
 908 files changed, 34770 insertions(+), 42299 deletions(-)

