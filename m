From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.59 released
Date: Thu, 16 Jan 2003 18:29:03 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200301170229.h0H2T3x09797@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.59 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.59.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.59.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               308701           1302098
Full source                       39453845         176896000

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/m68knommu/platform/68VZ328/de2/himem.ld        |   11 
 arch/x86_64/mm/modutil.c                            |  127 -
 b/Documentation/Changes                             |    2 
 b/Documentation/crypto/api-intro.txt                |   12 
 b/Documentation/driver-model/bus.txt                |    4 
 b/Documentation/driver-model/driver.txt             |   32 
 b/Documentation/driver-model/overview.txt           |    4 
 b/Documentation/filesystems/sysfs.txt               |   10 
 b/MAINTAINERS                                       |    6 
 b/Makefile                                          |   13 
 b/arch/alpha/Kconfig                                |   38 
 b/arch/alpha/Makefile                               |    4 
 b/arch/alpha/boot/Makefile                          |    7 
 b/arch/alpha/kernel/Makefile                        |   22 
 b/arch/alpha/kernel/alpha_ksyms.c                   |   13 
 b/arch/alpha/kernel/core_marvel.c                   | 1121 +++++++++++++++
 b/arch/alpha/kernel/core_titan.c                    |  534 +++++--
 b/arch/alpha/kernel/core_tsunami.c                  |    1 
 b/arch/alpha/kernel/core_wildfire.c                 |   27 
 b/arch/alpha/kernel/err_impl.h                      |   14 
 b/arch/alpha/kernel/err_marvel.c                    |   57 
 b/arch/alpha/kernel/err_titan.c                     |  747 ++++++++++
 b/arch/alpha/kernel/gct.c                           |   48 
 b/arch/alpha/kernel/irq.c                           |   40 
 b/arch/alpha/kernel/machvec_impl.h                  |   15 
 b/arch/alpha/kernel/osf_sys.c                       |   11 
 b/arch/alpha/kernel/pci.c                           |   39 
 b/arch/alpha/kernel/pci_impl.h                      |    7 
 b/arch/alpha/kernel/pci_iommu.c                     |   38 
 b/arch/alpha/kernel/proto.h                         |   30 
 b/arch/alpha/kernel/setup.c                         |   53 
 b/arch/alpha/kernel/smp.c                           |  117 -
 b/arch/alpha/kernel/sys_marvel.c                    |  500 ++++++
 b/arch/alpha/kernel/sys_titan.c                     |  400 ++---
 b/arch/alpha/kernel/sys_wildfire.c                  |    5 
 b/arch/alpha/kernel/traps.c                         |    2 
 b/arch/alpha/lib/callback_srm.S                     |    2 
 b/arch/alpha/mm/Makefile                            |    2 
 b/arch/alpha/mm/numa.c                              |  101 -
 b/arch/alpha/mm/remap.c                             |   90 +
 b/arch/alpha/vmlinux.lds.S                          |  170 +-
 b/arch/arm/kernel/bios32.c                          |    2 
 b/arch/arm/kernel/calls.S                           |   20 
 b/arch/arm/kernel/process.c                         |    3 
 b/arch/arm/mach-integrator/cpu.c                    |    2 
 b/arch/arm/mach-sa1100/cpu-sa1100.c                 |    2 
 b/arch/arm/mach-sa1100/cpu-sa1110.c                 |    2 
 b/arch/arm/tools/mach-types                         |   12 
 b/arch/arm/vmlinux-armo.lds.in                      |   17 
 b/arch/arm/vmlinux-armv.lds.in                      |   23 
 b/arch/cris/vmlinux.lds.S                           |   14 
 b/arch/i386/Kconfig                                 |    2 
 b/arch/i386/Makefile                                |    4 
 b/arch/i386/defconfig                               |   10 
 b/arch/i386/kernel/acpi.c                           |    8 
 b/arch/i386/kernel/cpu/amd.c                        |    2 
 b/arch/i386/kernel/cpu/cpufreq/gx-suspmod.c         |    1 
 b/arch/i386/kernel/cpu/proc.c                       |    2 
 b/arch/i386/kernel/entry.S                          |   14 
 b/arch/i386/kernel/io_apic.c                        |   16 
 b/arch/i386/kernel/mpparse.c                        |    6 
 b/arch/i386/kernel/smp.c                            |    1 
 b/arch/i386/kernel/smpboot.c                        |    4 
 b/arch/i386/vmlinux.lds.S                           |   19 
 b/arch/ia64/defconfig                               |   10 
 b/arch/ia64/vmlinux.lds.S                           |   26 
 b/arch/m68k/Kconfig                                 |   25 
 b/arch/m68k/atari/stram.c                           |    4 
 b/arch/m68k/kernel/m68k_defs.c                      |    2 
 b/arch/m68k/kernel/m68k_ksyms.c                     |    3 
 b/arch/m68k/kernel/setup.c                          |    1 
 b/arch/m68k/mm/extable.c                            |   42 
 b/arch/m68k/mm/fault.c                              |    7 
 b/arch/m68k/q40/config.c                            |   44 
 b/arch/m68k/q40/q40ints.c                           |  223 +--
 b/arch/m68k/vmlinux-std.lds                         |   13 
 b/arch/m68k/vmlinux-sun3.lds                        |   15 
 b/arch/m68knommu/kernel/Makefile                    |    5 
 b/arch/m68knommu/platform/5307/entry.S              |  460 +-----
 b/arch/m68knommu/platform/68328/entry.S             |  309 ----
 b/arch/m68knommu/platform/68360/entry.S             |  215 --
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_ram.S |   11 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_ram.S |   11 
 b/arch/m68knommu/vmlinux.lds.S                      |   10 
 b/arch/mips/vmlinux.lds.S                           |   15 
 b/arch/mips64/ld.script.elf64                       |    1 
 b/arch/mips64/vmlinux.lds.S                         |    8 
 b/arch/parisc/defconfig                             |    8 
 b/arch/parisc/vmlinux.lds.S                         |   29 
 b/arch/ppc/Makefile                                 |    1 
 b/arch/ppc/boot/common/cpc700_memory.c              |   10 
 b/arch/ppc/boot/common/misc-common.c                |   25 
 b/arch/ppc/boot/common/mpc10x_memory.c              |   10 
 b/arch/ppc/boot/common/util.S                       |   10 
 b/arch/ppc/boot/include/mpc10x.h                    |   10 
 b/arch/ppc/boot/ld.script                           |    2 
 b/arch/ppc/boot/simple/Makefile                     |   10 
 b/arch/ppc/boot/simple/gt64260_tty.c                |   10 
 b/arch/ppc/boot/simple/head.S                       |   10 
 b/arch/ppc/boot/simple/misc-ev64260.S               |   10 
 b/arch/ppc/boot/simple/misc-spruce.c                |   25 
 b/arch/ppc/boot/simple/misc.c                       |   10 
 b/arch/ppc/boot/simple/relocate.S                   |   10 
 b/arch/ppc/boot/utils/mkbugboot.c                   |   10 
 b/arch/ppc/kernel/asm-offsets.c                     |    5 
 b/arch/ppc/kernel/entry.S                           |  192 ++
 b/arch/ppc/kernel/head.S                            |    2 
 b/arch/ppc/kernel/head_4xx.S                        |  169 --
 b/arch/ppc/kernel/ptrace.c                          |   21 
 b/arch/ppc/kernel/smp.c                             |   10 
 b/arch/ppc/kernel/traps.c                           |   22 
 b/arch/ppc/ocp/Makefile                             |   14 
 b/arch/ppc/ocp/ocp-driver.c                         |  195 ++
 b/arch/ppc/ocp/ocp-probe.c                          |  114 +
 b/arch/ppc/ocp/ocp.c                                |  109 +
 b/arch/ppc/platforms/4xx/ash.c                      |   12 
 b/arch/ppc/platforms/4xx/ash.h                      |   18 
 b/arch/ppc/platforms/4xx/cedar.c                    |   11 
 b/arch/ppc/platforms/4xx/cedar.h                    |   18 
 b/arch/ppc/platforms/4xx/ep405.c                    |   12 
 b/arch/ppc/platforms/4xx/ep405.h                    |   14 
 b/arch/ppc/platforms/4xx/ibm405gp.c                 |   33 
 b/arch/ppc/platforms/4xx/ibm405gp.h                 |   35 
 b/arch/ppc/platforms/4xx/ibm405gpr.c                |   32 
 b/arch/ppc/platforms/4xx/ibm405gpr.h                |   33 
 b/arch/ppc/platforms/4xx/ibmnp405h.c                |   33 
 b/arch/ppc/platforms/4xx/ibmnp405h.h                |   35 
 b/arch/ppc/platforms/4xx/ibmnp405l.c                |   33 
 b/arch/ppc/platforms/4xx/ibmnp405l.h                |   35 
 b/arch/ppc/platforms/4xx/ibmnp4gs.c                 |   33 
 b/arch/ppc/platforms/4xx/ibmnp4gs.h                 |   31 
 b/arch/ppc/platforms/4xx/ibmstb3.c                  |   33 
 b/arch/ppc/platforms/4xx/ibmstb3.h                  |   37 
 b/arch/ppc/platforms/4xx/ibmstb4.c                  |   33 
 b/arch/ppc/platforms/4xx/ibmstb4.h                  |   35 
 b/arch/ppc/platforms/4xx/ibmstbx25.c                |   33 
 b/arch/ppc/platforms/4xx/ibmstbx25.h                |   33 
 b/arch/ppc/platforms/4xx/redwood.c                  |   12 
 b/arch/ppc/platforms/4xx/redwood.h                  |   17 
 b/arch/ppc/platforms/4xx/redwood5.c                 |   14 
 b/arch/ppc/platforms/4xx/redwood5.h                 |   17 
 b/arch/ppc/platforms/4xx/redwood6.c                 |   33 
 b/arch/ppc/platforms/4xx/redwood6.h                 |   38 
 b/arch/ppc/platforms/4xx/sycamore.c                 |   16 
 b/arch/ppc/platforms/4xx/sycamore.h                 |   20 
 b/arch/ppc/platforms/4xx/walnut.c                   |   22 
 b/arch/ppc/platforms/4xx/walnut.h                   |   26 
 b/arch/ppc/platforms/ev64260.h                      |   10 
 b/arch/ppc/platforms/ev64260_setup.c                |   10 
 b/arch/ppc/platforms/k2.h                           |   10 
 b/arch/ppc/platforms/k2_pci.c                       |   10 
 b/arch/ppc/platforms/k2_setup.c                     |   10 
 b/arch/ppc/platforms/lopec_pci.c                    |   10 
 b/arch/ppc/platforms/lopec_serial.h                 |   10 
 b/arch/ppc/platforms/lopec_setup.c                  |   10 
 b/arch/ppc/platforms/mcpn765.h                      |   10 
 b/arch/ppc/platforms/mcpn765_pci.c                  |   10 
 b/arch/ppc/platforms/mcpn765_serial.h               |   10 
 b/arch/ppc/platforms/mcpn765_setup.c                |   10 
 b/arch/ppc/platforms/menf1.h                        |   10 
 b/arch/ppc/platforms/menf1_pci.c                    |   10 
 b/arch/ppc/platforms/menf1_setup.c                  |   12 
 b/arch/ppc/platforms/mvme5100.h                     |   10 
 b/arch/ppc/platforms/mvme5100_pci.c                 |   10 
 b/arch/ppc/platforms/mvme5100_serial.h              |   10 
 b/arch/ppc/platforms/mvme5100_setup.c               |   10 
 b/arch/ppc/platforms/pal4.h                         |   10 
 b/arch/ppc/platforms/pal4_pci.c                     |   10 
 b/arch/ppc/platforms/pal4_serial.h                  |   10 
 b/arch/ppc/platforms/pal4_setup.c                   |   10 
 b/arch/ppc/platforms/pcore.h                        |   10 
 b/arch/ppc/platforms/pcore_pci.c                    |   10 
 b/arch/ppc/platforms/pcore_setup.c                  |   10 
 b/arch/ppc/platforms/powerpmc250.c                  |   10 
 b/arch/ppc/platforms/powerpmc250.h                  |   10 
 b/arch/ppc/platforms/powerpmc250_serial.h           |   10 
 b/arch/ppc/platforms/pplus_pci.c                    |   14 
 b/arch/ppc/platforms/pplus_setup.c                  |   14 
 b/arch/ppc/platforms/prpmc750_pci.c                 |   10 
 b/arch/ppc/platforms/prpmc750_serial.h              |   10 
 b/arch/ppc/platforms/prpmc750_setup.c               |   10 
 b/arch/ppc/platforms/prpmc800.h                     |   10 
 b/arch/ppc/platforms/prpmc800_pci.c                 |   10 
 b/arch/ppc/platforms/prpmc800_serial.h              |   12 
 b/arch/ppc/platforms/prpmc800_setup.c               |   10 
 b/arch/ppc/platforms/sandpoint.h                    |   10 
 b/arch/ppc/platforms/sandpoint_pci.c                |   10 
 b/arch/ppc/platforms/sandpoint_serial.h             |   10 
 b/arch/ppc/platforms/sandpoint_setup.c              |   10 
 b/arch/ppc/platforms/spruce.h                       |   25 
 b/arch/ppc/platforms/spruce_pci.c                   |   25 
 b/arch/ppc/platforms/spruce_serial.h                |   25 
 b/arch/ppc/platforms/spruce_setup.c                 |   25 
 b/arch/ppc/platforms/zx4500.h                       |   10 
 b/arch/ppc/platforms/zx4500_pci.c                   |   10 
 b/arch/ppc/platforms/zx4500_serial.h                |   12 
 b/arch/ppc/platforms/zx4500_setup.c                 |   10 
 b/arch/ppc/syslib/cpc700.h                          |   27 
 b/arch/ppc/syslib/cpc700_pic.c                      |   27 
 b/arch/ppc/syslib/cpc710.h                          |   12 
 b/arch/ppc/syslib/gt64260_common.c                  |   12 
 b/arch/ppc/syslib/gt64260_pic.c                     |   12 
 b/arch/ppc/syslib/harrier.c                         |   12 
 b/arch/ppc/syslib/mpc10x_common.c                   |   13 
 b/arch/ppc/syslib/pci_auto.c                        |   12 
 b/arch/ppc/syslib/ppc405_pci.c                      |   37 
 b/arch/ppc/syslib/ppc4xx_dma.c                      |   33 
 b/arch/ppc/syslib/ppc4xx_pm.c                       |   42 
 b/arch/ppc/syslib/ppc4xx_serial.c                   |   35 
 b/arch/ppc/syslib/pplus_common.c                    |   12 
 b/arch/ppc/syslib/todc_time.c                       |   12 
 b/arch/ppc/vmlinux.lds.S                            |   23 
 b/arch/ppc64/boot/zImage.lds                        |    1 
 b/arch/ppc64/kernel/Makefile                        |    3 
 b/arch/ppc64/kernel/entry.S                         |   15 
 b/arch/ppc64/kernel/ioctl32.c                       |    3 
 b/arch/ppc64/kernel/misc.S                          |   26 
 b/arch/ppc64/kernel/module.c                        |  464 ++++++
 b/arch/ppc64/kernel/ppc_ksyms.c                     |   13 
 b/arch/ppc64/kernel/process.c                       |    6 
 b/arch/ppc64/kernel/signal.c                        |  182 --
 b/arch/ppc64/kernel/signal32.c                      |   40 
 b/arch/ppc64/kernel/sys32.S                         |  279 ++-
 b/arch/ppc64/kernel/sys_ppc32.c                     |  413 -----
 b/arch/ppc64/mm/extable.c                           |    7 
 b/arch/ppc64/vmlinux.lds.S                          |   22 
 b/arch/s390/vmlinux.lds.S                           |   15 
 b/arch/s390x/kernel/entry.S                         |    4 
 b/arch/s390x/kernel/linux32.c                       |   52 
 b/arch/s390x/kernel/linux32.h                       |   15 
 b/arch/s390x/kernel/signal32.c                      |   15 
 b/arch/s390x/kernel/wrapper32.S                     |   18 
 b/arch/s390x/vmlinux.lds.S                          |   15 
 b/arch/sh/vmlinux.lds.S                             |   16 
 b/arch/sparc/vmlinux.lds.S                          |   19 
 b/arch/sparc64/Kconfig                              |   33 
 b/arch/sparc64/defconfig                            |   20 
 b/arch/sparc64/kernel/Makefile                      |    1 
 b/arch/sparc64/kernel/setup.c                       |   19 
 b/arch/sparc64/kernel/sys_sparc32.c                 |   25 
 b/arch/sparc64/kernel/us3_cpufreq.c                 |  319 ++++
 b/arch/sparc64/vmlinux.lds.S                        |   19 
 b/arch/um/uml.lds.S                                 |   11 
 b/arch/v850/vmlinux.lds.S                           |   11 
 b/arch/x86_64/Kconfig                               |   77 -
 b/arch/x86_64/Makefile                              |   34 
 b/arch/x86_64/boot/Makefile                         |   10 
 b/arch/x86_64/boot/compressed/Makefile              |    2 
 b/arch/x86_64/defconfig                             |   41 
 b/arch/x86_64/ia32/fpu32.c                          |    6 
 b/arch/x86_64/ia32/ia32_signal.c                    |   70 
 b/arch/x86_64/ia32/ia32entry.S                      |    6 
 b/arch/x86_64/ia32/sys_ia32.c                       |   52 
 b/arch/x86_64/ia32/syscall32.c                      |   30 
 b/arch/x86_64/kernel/Makefile                       |    3 
 b/arch/x86_64/kernel/apic.c                         |   13 
 b/arch/x86_64/kernel/entry.S                        |    4 
 b/arch/x86_64/kernel/head.S                         |   31 
 b/arch/x86_64/kernel/module.c                       |  108 +
 b/arch/x86_64/kernel/process.c                      |   26 
 b/arch/x86_64/kernel/ptrace.c                       |   19 
 b/arch/x86_64/kernel/setup64.c                      |    2 
 b/arch/x86_64/kernel/smpboot.c                      |    8 
 b/arch/x86_64/kernel/traps.c                        |    6 
 b/arch/x86_64/lib/Makefile                          |   15 
 b/arch/x86_64/lib/usercopy.c                        |   21 
 b/arch/x86_64/mm/Makefile                           |    2 
 b/arch/x86_64/mm/init.c                             |    3 
 b/arch/x86_64/pci/Makefile                          |   18 
 b/arch/x86_64/vmlinux.lds.S                         |   27 
 b/crypto/Kconfig                                    |   12 
 b/crypto/Makefile                                   |    1 
 b/crypto/des.c                                      |    4 
 b/crypto/sha512.c                                   |  373 +++++
 b/crypto/tcrypt.c                                   |  116 +
 b/crypto/tcrypt.h                                   |  109 +
 b/drivers/Makefile                                  |    1 
 b/drivers/acorn/block/fd1772.c                      |   38 
 b/drivers/atm/nicstar.c                             |    3 
 b/drivers/base/bus.c                                |   36 
 b/drivers/base/node.c                               |    4 
 b/drivers/block/elevator.c                          |    8 
 b/drivers/char/Kconfig                              |    2 
 b/drivers/char/agp/agp.h                            |   58 
 b/drivers/char/agp/ali-agp.c                        |   10 
 b/drivers/char/agp/amd-k7-agp.c                     |   14 
 b/drivers/char/agp/amd-k8-agp.c                     |   82 -
 b/drivers/char/agp/backend.c                        |   41 
 b/drivers/char/agp/frontend.c                       |    4 
 b/drivers/char/agp/generic.c                        |  161 +-
 b/drivers/char/agp/hp-agp.c                         |    9 
 b/drivers/char/agp/i460-agp.c                       |    9 
 b/drivers/char/agp/i7x05-agp.c                      |   10 
 b/drivers/char/agp/intel-agp.c                      |   14 
 b/drivers/char/agp/sis-agp.c                        |   10 
 b/drivers/char/agp/sworks-agp.c                     |  123 -
 b/drivers/char/agp/via-agp.c                        |   10 
 b/drivers/char/agp/via-kt400.c                      |   10 
 b/drivers/char/i8k.c                                |    8 
 b/drivers/char/pcmcia/synclink_cs.c                 |   10 
 b/drivers/char/synclink.c                           |   11 
 b/drivers/char/synclinkmp.c                         |   10 
 b/drivers/char/tty_io.c                             |   14 
 b/drivers/char/watchdog/acquirewdt.c                |   14 
 b/drivers/char/watchdog/advantechwdt.c              |  210 +-
 b/drivers/char/watchdog/alim7101_wdt.c              |   14 
 b/drivers/char/watchdog/eurotechwdt.c               |  162 +-
 b/drivers/char/watchdog/i810-tco.c                  |    3 
 b/drivers/char/watchdog/ib700wdt.c                  |   73 
 b/drivers/char/watchdog/indydog.c                   |    1 
 b/drivers/char/watchdog/machzwd.c                   |   12 
 b/drivers/char/watchdog/mixcomwd.c                  |    4 
 b/drivers/char/watchdog/pcwd.c                      |   10 
 b/drivers/char/watchdog/sa1100_wdt.c                |    1 
 b/drivers/char/watchdog/sbc60xxwdt.c                |   13 
 b/drivers/char/watchdog/sc1200wdt.c                 |    9 
 b/drivers/char/watchdog/sc520_wdt.c                 |   14 
 b/drivers/char/watchdog/scx200_wdt.c                |    6 
 b/drivers/char/watchdog/shwdt.c                     |    1 
 b/drivers/char/watchdog/softdog.c                   |   57 
 b/drivers/char/watchdog/w83877f_wdt.c               |   16 
 b/drivers/char/watchdog/wafer5823wdt.c              |    5 
 b/drivers/char/watchdog/wdt.c                       |   44 
 b/drivers/char/watchdog/wdt285.c                    |   23 
 b/drivers/char/watchdog/wdt977.c                    |    1 
 b/drivers/char/watchdog/wdt_pci.c                   |  133 -
 b/drivers/eisa/Kconfig                              |   20 
 b/drivers/eisa/Makefile                             |   18 
 b/drivers/eisa/eisa-bus.c                           |  218 ++
 b/drivers/eisa/eisa.ids                             | 1155 +++++++++++++++
 b/drivers/hotplug/acpiphp_glue.c                    |   45 
 b/drivers/ide/Kconfig                               |    2 
 b/drivers/input/keyboard/amikbd.c                   |    2 
 b/drivers/input/serio/q40kbd.c                      |   16 
 b/drivers/isdn/hisax/config.c                       |    2 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c               |    2 
 b/drivers/isdn/i4l/isdn_ppp_ccp.c                   |    2 
 b/drivers/media/video/cpia.h                        |   26 
 b/drivers/media/video/cpia_pp.c                     |   22 
 b/drivers/media/video/cpia_usb.c                    |   11 
 b/drivers/net/3c501.c                               |    4 
 b/drivers/net/3c509.c                               |  336 ++--
 b/drivers/net/3c515.c                               |    1 
 b/drivers/net/3c527.c                               |    1 
 b/drivers/net/3c59x.c                               |  259 ++-
 b/drivers/net/Space.c                               |    4 
 b/drivers/net/appletalk/cops.c                      |    1 
 b/drivers/net/hamachi.c                             |    1 
 b/drivers/net/isa-skeleton.c                        |    1 
 b/drivers/net/myri_sbus.c                           |    1 
 b/drivers/net/pcnet32.c                             |    1 
 b/drivers/net/ptifddi.c                             |    1 
 b/drivers/net/seeq8005.c                            |    4 
 b/drivers/net/sk_mca.c                              |    5 
 b/drivers/net/smc9194.c                             |    1 
 b/drivers/net/sundance.c                            |    1 
 b/drivers/net/tc35815.c                             |    1 
 b/drivers/net/tulip/winbond-840.c                   |    1 
 b/drivers/net/via-rhine.c                           |    6 
 b/drivers/net/wan/sbni.c                            |    1 
 b/drivers/parisc/Kconfig                            |    2 
 b/drivers/pcmcia/cardbus.c                          |   16 
 b/drivers/s390/cio/chsc.c                           |    8 
 b/drivers/s390/net/ctcmain.c                        |   10 
 b/drivers/s390/net/cu3088.c                         |    6 
 b/drivers/s390/net/netiucv.c                        |    4 
 b/drivers/sbus/char/display7seg.c                   |   13 
 b/drivers/scsi/mac_scsi.c                           |  710 ++++-----
 b/drivers/scsi/mac_scsi.h                           |   32 
 b/drivers/scsi/pcmcia/aha152x_stub.c                |    3 
 b/drivers/scsi/pcmcia/fdomain_stub.c                |    3 
 b/drivers/scsi/pcmcia/qlogic_stub.c                 |    3 
 b/drivers/scsi/scsi_debug.c                         |   52 
 b/drivers/serial/sunsab.c                           |    2 
 b/drivers/usb/class/bluetty.c                       |    7 
 b/drivers/usb/class/cdc-acm.c                       |    4 
 b/drivers/usb/core/hcd.c                            |    2 
 b/drivers/usb/core/hcd.h                            |    3 
 b/drivers/usb/core/usb.c                            |    1 
 b/drivers/usb/misc/speedtouch.c                     |   45 
 b/drivers/usb/serial/bus.c                          |   13 
 b/drivers/usb/serial/usb-serial.c                   |    1 
 b/drivers/usb/storage/scsiglue.c                    |    4 
 b/drivers/video/Kconfig                             |    2 
 b/drivers/video/Makefile                            |   13 
 b/drivers/video/acornfb.c                           |  594 ++------
 b/drivers/video/aty/atyfb.h                         |    1 
 b/drivers/video/aty/atyfb_base.c                    |   92 -
 b/drivers/video/aty/mach64_accel.c                  |   12 
 b/drivers/video/cfbcopyarea.c                       |   85 -
 b/drivers/video/cfbfillrect.c                       |   22 
 b/drivers/video/cfbimgblt.c                         |  146 -
 b/drivers/video/console/Kconfig                     |   14 
 b/drivers/video/console/fbcon.c                     |   95 -
 b/drivers/video/console/sticon.c                    |  101 -
 b/drivers/video/console/sticore.c                   |  171 +-
 b/drivers/video/fbmem.c                             |   17 
 b/drivers/video/fbmon.c                             |  383 +++++
 b/drivers/video/i810/i810.h                         |    2 
 b/drivers/video/i810/i810_accel.c                   |   11 
 b/drivers/video/i810/i810_dvt.c                     |    2 
 b/drivers/video/i810/i810_main.c                    |   51 
 b/drivers/video/i810/i810_main.h                    |   79 -
 b/drivers/video/riva/Makefile                       |    2 
 b/drivers/video/riva/fbdev.c                        | 1468 +++++++++-----------
 b/drivers/video/riva/nv_driver.c                    |  212 ++
 b/drivers/video/riva/riva_hw.c                      |  350 +++-
 b/drivers/video/riva/rivafb.h                       |   15 
 b/drivers/video/sa1100fb.h                          |    4 
 b/drivers/video/sstfb.c                             |  707 ++++-----
 b/drivers/video/sstfb.h                             |   31 
 b/drivers/video/sticore.h                           |   58 
 b/drivers/video/stifb.c                             |  103 +
 b/drivers/video/tdfxfb.c                            |   12 
 b/drivers/video/tridentfb.c                         | 1213 ++++++++--------
 b/fs/block_dev.c                                    |   57 
 b/fs/devfs/Makefile                                 |   24 
 b/fs/devfs/base.c                                   |   18 
 b/fs/devfs/internal.h                               |    3 
 b/fs/devfs/util.c                                   |  226 +--
 b/fs/devpts/inode.c                                 |    2 
 b/fs/exec.c                                         |    2 
 b/fs/ext3/ialloc.c                                  |   28 
 b/fs/ext3/inode.c                                   |   36 
 b/fs/ext3/namei.c                                   |   16 
 b/fs/hugetlbfs/inode.c                              |    3 
 b/fs/intermezzo/vfs.c                               |   11 
 b/fs/jbd/checkpoint.c                               |    1 
 b/fs/jbd/commit.c                                   |   33 
 b/fs/jbd/transaction.c                              |   38 
 b/fs/partitions/sgi.c                               |   40 
 b/fs/proc/Makefile                                  |    6 
 b/fs/proc/array.c                                   |  260 ---
 b/fs/proc/base.c                                    |    6 
 b/fs/proc/inode.c                                   |    7 
 b/fs/proc/proc_misc.c                               |    3 
 b/fs/proc/task_mmu.c                                |  247 +++
 b/fs/proc/task_nommu.c                              |  107 +
 b/fs/quota.c                                        |   54 
 b/fs/xfs/linux/xfs_linux.h                          |    2 
 b/fs/xfs/linux/xfs_lrw.c                            |    7 
 b/fs/xfs/linux/xfs_vnode.h                          |    3 
 b/fs/xfs/pagebuf/page_buf.c                         |    6 
 b/fs/xfs/support/debug.c                            |   40 
 b/fs/xfs/xfs_dir.c                                  |    6 
 b/fs/xfs/xfs_dir2.c                                 |    8 
 b/fs/xfs/xfs_inode.h                                |    7 
 b/fs/xfs/xfs_log_recover.c                          |   10 
 b/fs/xfs/xfs_rename.c                               |   53 
 b/fs/xfs/xfs_utils.c                                |    4 
 b/fs/xfs/xfs_vfsops.c                               |    4 
 b/fs/xfs/xfs_vnodeops.c                             |   59 
 b/include/asm-alpha/agp.h                           |    2 
 b/include/asm-alpha/agp_backend.h                   |   43 
 b/include/asm-alpha/console.h                       |    5 
 b/include/asm-alpha/core_marvel.h                   |  579 +++++++
 b/include/asm-alpha/core_titan.h                    |   18 
 b/include/asm-alpha/gct.h                           |   58 
 b/include/asm-alpha/hardirq.h                       |    8 
 b/include/asm-alpha/hwrpb.h                         |    1 
 b/include/asm-alpha/ide.h                           |    2 
 b/include/asm-alpha/io.h                            |   26 
 b/include/asm-alpha/irq.h                           |    5 
 b/include/asm-alpha/machvec.h                       |   10 
 b/include/asm-alpha/mmzone.h                        |  137 +
 b/include/asm-alpha/numnodes.h                      |    8 
 b/include/asm-alpha/pci.h                           |    2 
 b/include/asm-alpha/pgalloc.h                       |    3 
 b/include/asm-alpha/pgtable.h                       |   32 
 b/include/asm-alpha/smp.h                           |   15 
 b/include/asm-alpha/system.h                        |    2 
 b/include/asm-alpha/topology.h                      |   47 
 b/include/asm-arm/arch-integrator/memory.h          |    6 
 b/include/asm-arm/ide.h                             |    2 
 b/include/asm-arm/unistd.h                          |   64 
 b/include/asm-generic/topology.h                    |    5 
 b/include/asm-generic/vmlinux.lds.h                 |   33 
 b/include/asm-i386/apicdef.h                        |    9 
 b/include/asm-i386/mach-bigsmp/mach_apic.h          |   15 
 b/include/asm-i386/mach-default/mach_apic.h         |   10 
 b/include/asm-i386/mach-default/mach_mpparse.h      |    6 
 b/include/asm-i386/mach-numaq/mach_apic.h           |   11 
 b/include/asm-i386/mach-numaq/mach_mpparse.h        |    5 
 b/include/asm-i386/mach-summit/mach_apic.h          |   59 
 b/include/asm-i386/mach-summit/mach_mpparse.h       |   10 
 b/include/asm-i386/module.h                         |   44 
 b/include/asm-i386/mpspec.h                         |    6 
 b/include/asm-i386/smp.h                            |   12 
 b/include/asm-i386/topology.h                       |    3 
 b/include/asm-ia64/topology.h                       |    3 
 b/include/asm-m68k/machdep.h                        |    1 
 b/include/asm-m68k/mmu_context.h                    |    2 
 b/include/asm-m68k/q40ints.h                        |   24 
 b/include/asm-m68k/rtc.h                            |   17 
 b/include/asm-m68k/uaccess.h                        |    3 
 b/include/asm-m68knommu/bug.h                       |   12 
 b/include/asm-m68knommu/entry.h                     |  201 +-
 b/include/asm-m68knommu/page.h                      |   22 
 b/include/asm-ppc/gt64260.h                         |   10 
 b/include/asm-ppc/gt64260_defs.h                    |   10 
 b/include/asm-ppc/harrier.h                         |   12 
 b/include/asm-ppc/ibm403.h                          |   35 
 b/include/asm-ppc/ibm405.h                          |   34 
 b/include/asm-ppc/ibm_ocp_pci.h                     |   34 
 b/include/asm-ppc/mpc10x.h                          |   10 
 b/include/asm-ppc/ppc405_dma.h                      |   18 
 b/include/asm-ppc/pplus.h                           |   12 
 b/include/asm-ppc/processor.h                       |    9 
 b/include/asm-ppc/rtc.h                             |   10 
 b/include/asm-ppc/todc.h                            |   10 
 b/include/asm-ppc64/bug.h                           |   33 
 b/include/asm-ppc64/module.h                        |   32 
 b/include/asm-ppc64/page.h                          |   23 
 b/include/asm-ppc64/topology.h                      |    3 
 b/include/asm-s390x/compat.h                        |    9 
 b/include/asm-sparc64/bug.h                         |    3 
 b/include/asm-x86_64/bug.h                          |   24 
 b/include/asm-x86_64/compat.h                       |   13 
 b/include/asm-x86_64/ia32.h                         |   13 
 b/include/asm-x86_64/mmu_context.h                  |    5 
 b/include/asm-x86_64/page.h                         |   16 
 b/include/asm-x86_64/proto.h                        |    6 
 b/include/asm-x86_64/ptrace.h                       |    4 
 b/include/asm-x86_64/segment.h                      |    2 
 b/include/asm-x86_64/uaccess.h                      |    2 
 b/include/linux/compat.h                            |    6 
 b/include/linux/cpufreq.h                           |    2 
 b/include/linux/devfs_fs_kernel.h                   |   30 
 b/include/linux/eisa.h                              |   60 
 b/include/linux/ext3_fs.h                           |    2 
 b/include/linux/ext3_jbd.h                          |   12 
 b/include/linux/fb.h                                |   13 
 b/include/linux/font.h                              |   30 
 b/include/linux/fs.h                                |    6 
 b/include/linux/i2c.h                               |    8 
 b/include/linux/jbd.h                               |   28 
 b/include/linux/kobject.h                           |    2 
 b/include/linux/miscdevice.h                        |    1 
 b/include/linux/mm.h                                |    7 
 b/include/linux/mmzone.h                            |    3 
 b/include/linux/module.h                            |   27 
 b/include/linux/netdevice.h                         |    1 
 b/include/linux/sched.h                             |   11 
 b/include/linux/tty_driver.h                        |    1 
 b/include/linux/usb.h                               |    4 
 b/include/linux/xattr.h                             |    2 
 b/include/video/trident.h                           |  175 ++
 b/init/Kconfig                                      |   57 
 b/init/Makefile                                     |    3 
 b/init/main.c                                       |    1 
 b/init/vermagic.c                                   |   22 
 b/kernel/compat.c                                   |   44 
 b/kernel/exit.c                                     |   19 
 b/kernel/fork.c                                     |   16 
 b/kernel/kallsyms.c                                 |   11 
 b/kernel/module.c                                   |   28 
 b/kernel/sched.c                                    |  186 ++
 b/lib/kobject.c                                     |    4 
 b/mm/mmap.c                                         |    8 
 b/mm/page_alloc.c                                   |    8 
 b/mm/readahead.c                                    |    5 
 b/net/atm/mpc.c                                     |    4 
 b/net/core/dev.c                                    |   12 
 b/net/core/rtnetlink.c                              |   17 
 b/net/netsyms.c                                     |    2 
 b/net/sunrpc/rpc_pipe.c                             |   15 
 b/scripts/Makefile.build                            |   13 
 b/scripts/kallsyms.c                                |    2 
 b/scripts/per-cpu-check.awk                         |    2 
 b/sound/Kconfig                                     |   26 
 b/sound/oss/soundcard.c                             |    3 
 drivers/video/tridentfb.h                           |  169 --
 include/video/font.h                                |   24 
 573 files changed, 16824 insertions(+), 10702 deletions(-)

