From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.46 released
Date: Mon, 4 Nov 2002 17:51:06 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200211050151.gA51p6a00995@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.46 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.46.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.46.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                              1070621           4643700
Full source                       38704409         174182400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/driverfs.txt                |  330 -
 arch/parisc/kernel/ccio-dma.c                         | 1209 ------
 arch/parisc/kernel/ccio-rm-dma.c                      |  212 -
 arch/parisc/kernel/iosapic.c                          | 1100 ------
 arch/parisc/kernel/iosapic_private.h                  |  165 
 arch/parisc/kernel/lasimap.map                        |  322 -
 arch/parisc/kernel/lba_pci.c                          | 1346 -------
 arch/parisc/kernel/led.c                              |  451 --
 arch/parisc/kernel/pdc.c                              |  217 -
 arch/parisc/kernel/real1.c                            |  154 
 arch/parisc/kernel/sba_iommu.c                        | 1752 ---------
 b/Documentation/DocBook/Makefile                      |    6 
 b/Documentation/filesystems/proc.txt                  |    1 
 b/Documentation/video4linux/bttv/CARDLIST             |   29 
 b/Documentation/video4linux/bttv/Cards                |  127 
 b/Documentation/video4linux/bttv/README               |    6 
 b/Documentation/video4linux/bttv/README.freeze        |    3 
 b/Documentation/video4linux/bttv/Tuners               |   36 
 b/MAINTAINERS                                         |   58 
 b/Makefile                                            |   25 
 b/arch/alpha/Kconfig                                  |   11 
 b/arch/alpha/Makefile                                 |    1 
 b/arch/alpha/defconfig                                |    1 
 b/arch/alpha/kernel/Makefile                          |    2 
 b/arch/alpha/kernel/asm-offsets.c                     |    1 
 b/arch/alpha/kernel/core_cia.c                        |   55 
 b/arch/alpha/kernel/core_titan.c                      |   66 
 b/arch/alpha/kernel/core_tsunami.c                    |   65 
 b/arch/alpha/kernel/entry.S                           |   10 
 b/arch/alpha/kernel/err_common.c                      |  772 ++++
 b/arch/alpha/kernel/err_impl.h                        |  148 
 b/arch/alpha/kernel/irq.c                             |    4 
 b/arch/alpha/kernel/irq_alpha.c                       |    6 
 b/arch/alpha/kernel/irq_impl.h                        |    1 
 b/arch/alpha/kernel/osf_sys.c                         |   23 
 b/arch/alpha/kernel/pci.c                             |   14 
 b/arch/alpha/kernel/pci_iommu.c                       |   46 
 b/arch/alpha/kernel/process.c                         |   13 
 b/arch/alpha/kernel/proto.h                           |    1 
 b/arch/alpha/kernel/ptrace.c                          |    5 
 b/arch/alpha/kernel/signal.c                          |   24 
 b/arch/alpha/kernel/sys_alcor.c                       |    6 
 b/arch/alpha/kernel/sys_cabriolet.c                   |   14 
 b/arch/alpha/kernel/sys_dp264.c                       |   10 
 b/arch/alpha/kernel/sys_eb64p.c                       |    4 
 b/arch/alpha/kernel/sys_eiger.c                       |    2 
 b/arch/alpha/kernel/sys_jensen.c                      |    7 
 b/arch/alpha/kernel/sys_miata.c                       |    4 
 b/arch/alpha/kernel/sys_mikasa.c                      |    6 
 b/arch/alpha/kernel/sys_nautilus.c                    |  355 -
 b/arch/alpha/kernel/sys_noritake.c                    |    6 
 b/arch/alpha/kernel/sys_rawhide.c                     |    2 
 b/arch/alpha/kernel/sys_ruffian.c                     |    3 
 b/arch/alpha/kernel/sys_rx164.c                       |    2 
 b/arch/alpha/kernel/sys_sable.c                       |    4 
 b/arch/alpha/kernel/sys_sio.c                         |   10 
 b/arch/alpha/kernel/sys_sx164.c                       |    4 
 b/arch/alpha/kernel/sys_takara.c                      |    4 
 b/arch/alpha/kernel/sys_titan.c                       |    7 
 b/arch/alpha/kernel/sys_wildfire.c                    |    2 
 b/arch/alpha/kernel/traps.c                           |  206 -
 b/arch/alpha/lib/dbg_current.S                        |   29 
 b/arch/alpha/math-emu/math.c                          |   38 
 b/arch/alpha/mm/fault.c                               |   51 
 b/arch/alpha/vmlinux.lds.S                            |   33 
 b/arch/arm/Kconfig                                    |   33 
 b/arch/arm/Makefile                                   |   10 
 b/arch/arm/boot/Makefile                              |    4 
 b/arch/arm/boot/compressed/head-sa1100.S              |    1 
 b/arch/arm/def-configs/adi_evb                        |    2 
 b/arch/arm/def-configs/adsbitsy                       |    2 
 b/arch/arm/def-configs/anakin                         |    2 
 b/arch/arm/def-configs/assabet                        |    2 
 b/arch/arm/def-configs/badge4                         |    2 
 b/arch/arm/def-configs/cerfcube                       |    2 
 b/arch/arm/def-configs/cerfpda                        |    2 
 b/arch/arm/def-configs/cerfpod                        |    2 
 b/arch/arm/def-configs/ebsa110                        |    2 
 b/arch/arm/def-configs/epxa10db                       |    2 
 b/arch/arm/def-configs/flexanet                       |    2 
 b/arch/arm/def-configs/fortunet                       |    2 
 b/arch/arm/def-configs/freebird                       |    2 
 b/arch/arm/def-configs/freebird_new                   |    2 
 b/arch/arm/def-configs/graphicsclient                 |    2 
 b/arch/arm/def-configs/graphicsmaster                 |    2 
 b/arch/arm/def-configs/h3600                          |    2 
 b/arch/arm/def-configs/integrator                     |    2 
 b/arch/arm/def-configs/iq80310                        |    2 
 b/arch/arm/def-configs/jornada720                     |    2 
 b/arch/arm/def-configs/lart                           |    2 
 b/arch/arm/def-configs/lubbock                        |    2 
 b/arch/arm/def-configs/lusl7200                       |    2 
 b/arch/arm/def-configs/neponset                       |    2 
 b/arch/arm/def-configs/pangolin                       |    2 
 b/arch/arm/def-configs/pfs168_mqtft                   |    2 
 b/arch/arm/def-configs/pfs168_mqvga                   |    2 
 b/arch/arm/def-configs/pfs168_sastn                   |    2 
 b/arch/arm/def-configs/pfs168_satft                   |    2 
 b/arch/arm/def-configs/pleb                           |    2 
 b/arch/arm/def-configs/rpc                            |    2 
 b/arch/arm/def-configs/shannon                        |    2 
 b/arch/arm/def-configs/shark                          |    2 
 b/arch/arm/def-configs/stork                          |    2 
 b/arch/arm/def-configs/system3                        |    2 
 b/arch/arm/kernel/armksyms.c                          |    1 
 b/arch/arm/kernel/bios32.c                            |   29 
 b/arch/arm/kernel/entry-armo.S                        |    3 
 b/arch/arm/kernel/entry-armv.S                        |   24 
 b/arch/arm/kernel/entry-header.S                      |    2 
 b/arch/arm/kernel/fiq.c                               |    5 
 b/arch/arm/kernel/head.S                              |    3 
 b/arch/arm/kernel/irq.c                               |   35 
 b/arch/arm/kernel/process.c                           |    5 
 b/arch/arm/kernel/ptrace.c                            |   10 
 b/arch/arm/kernel/setup.c                             |   91 
 b/arch/arm/kernel/traps.c                             |   19 
 b/arch/arm/lib/Makefile                               |    8 
 b/arch/arm/lib/backtrace.S                            |   10 
 b/arch/arm/mach-arc/head.S                            |    3 
 b/arch/arm/mach-clps711x/time.c                       |    2 
 b/arch/arm/mach-footbridge/mm.c                       |   16 
 b/arch/arm/mach-pxa/generic.c                         |   75 
 b/arch/arm/mach-sa1100/badge4.c                       |   94 
 b/arch/arm/mm/copypage-v3.S                           |    3 
 b/arch/arm/mm/copypage-v4mc.S                         |    3 
 b/arch/arm/mm/copypage-v4wb.S                         |    3 
 b/arch/arm/mm/copypage-v4wt.S                         |    3 
 b/arch/arm/mm/copypage-xscale.S                       |    3 
 b/arch/arm/mm/ioremap.c                               |   16 
 b/arch/arm/mm/mm-armv.c                               |   79 
 b/arch/arm/mm/proc-arm1020.S                          |    8 
 b/arch/arm/mm/proc-arm2_3.S                           |    3 
 b/arch/arm/mm/proc-arm6_7.S                           |    3 
 b/arch/arm/mm/proc-arm720.S                           |    3 
 b/arch/arm/mm/proc-arm920.S                           |    8 
 b/arch/arm/mm/proc-arm922.S                           |    8 
 b/arch/arm/mm/proc-arm926.S                           |    8 
 b/arch/arm/mm/proc-sa110.S                            |    5 
 b/arch/arm/mm/proc-xscale.S                           |   35 
 b/arch/arm/mm/tlb-v3.S                                |    3 
 b/arch/arm/mm/tlb-v4.S                                |    3 
 b/arch/arm/mm/tlb-v4wb.S                              |    3 
 b/arch/arm/vmlinux-armo.lds.in                        |   10 
 b/arch/arm/vmlinux-armv.lds.in                        |   20 
 b/arch/cris/Kconfig                                   |    8 
 b/arch/cris/kernel/entry.S                            |    1 
 b/arch/cris/kernel/entryoffsets.c                     |    1 
 b/arch/cris/kernel/irq.c                              |    4 
 b/arch/cris/kernel/ptrace.c                           |    8 
 b/arch/i386/Kconfig                                   |   29 
 b/arch/i386/Makefile                                  |    1 
 b/arch/i386/kernel/cpu/common.c                       |   54 
 b/arch/i386/kernel/cpu/cpufreq/longrun.c              |    5 
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c          |   69 
 b/arch/i386/kernel/cpu/mtrr/generic.c                 |    2 
 b/arch/i386/kernel/cpu/proc.c                         |    7 
 b/arch/i386/kernel/edd.c                              |  193 -
 b/arch/i386/kernel/entry.S                            |    1 
 b/arch/i386/kernel/i386_ksyms.c                       |    5 
 b/arch/i386/kernel/ioport.c                           |    2 
 b/arch/i386/kernel/irq.c                              |    4 
 b/arch/i386/kernel/ldt.c                              |    2 
 b/arch/i386/kernel/numaq.c                            |    1 
 b/arch/i386/kernel/process.c                          |    3 
 b/arch/i386/kernel/ptrace.c                           |   11 
 b/arch/i386/kernel/smpboot.c                          |    5 
 b/arch/i386/kernel/sys_i386.c                         |   72 
 b/arch/i386/kernel/timers/timer_pit.c                 |    1 
 b/arch/i386/mach-generic/Makefile                     |    2 
 b/arch/i386/mach-generic/topology.c                   |   67 
 b/arch/i386/mach-visws/visws_apic.c                   |    2 
 b/arch/i386/mm/hugetlbpage.c                          |  244 -
 b/arch/i386/mm/init.c                                 |    1 
 b/arch/i386/oprofile/Makefile                         |    6 
 b/arch/i386/oprofile/nmi_int.c                        |   10 
 b/arch/i386/vmlinux.lds.S                             |    4 
 b/arch/ia64/Kconfig                                   |  199 -
 b/arch/ia64/defconfig                                 |  231 -
 b/arch/ia64/hp/sim/simscsi.c                          |   14 
 b/arch/ia64/hp/sim/simscsi.h                          |   28 
 b/arch/ia64/ia32/sys_ia32.c                           |    2 
 b/arch/ia64/kernel/entry.S                            |    8 
 b/arch/ia64/kernel/irq.c                              |    4 
 b/arch/ia64/kernel/process.c                          |    2 
 b/arch/ia64/kernel/ptrace.c                           |   10 
 b/arch/ia64/kernel/setup.c                            |   12 
 b/arch/ia64/kernel/smpboot.c                          |   17 
 b/arch/ia64/kernel/sys_ia64.c                         |    1 
 b/arch/ia64/mm/hugetlbpage.c                          |    1 
 b/arch/ia64/mm/init.c                                 |    5 
 b/arch/ia64/vmlinux.lds.S                             |    4 
 b/arch/m68k/Kconfig                                   |   89 
 b/arch/m68k/amiga/amiints.c                           |   18 
 b/arch/m68k/amiga/amisound.c                          |    5 
 b/arch/m68k/amiga/cia.c                               |    4 
 b/arch/m68k/amiga/config.c                            |    3 
 b/arch/m68k/apollo/config.c                           |   10 
 b/arch/m68k/apollo/dn_ints.c                          |   29 
 b/arch/m68k/atari/Makefile                            |    2 
 b/arch/m68k/atari/ataints.c                           |    9 
 b/arch/m68k/atari/config.c                            |    3 
 b/arch/m68k/atari/hades-pci.c                         |   12 
 b/arch/m68k/defconfig                                 |    1 
 b/arch/m68k/fpsp040/bindec.S                          |    2 
 b/arch/m68k/fpsp040/binstr.S                          |    2 
 b/arch/m68k/fpsp040/bugfix.S                          |    2 
 b/arch/m68k/fpsp040/decbin.S                          |    2 
 b/arch/m68k/fpsp040/do_func.S                         |    2 
 b/arch/m68k/fpsp040/gen_except.S                      |    2 
 b/arch/m68k/fpsp040/get_op.S                          |    2 
 b/arch/m68k/fpsp040/kernel_ex.S                       |    2 
 b/arch/m68k/fpsp040/res_func.S                        |    2 
 b/arch/m68k/fpsp040/round.S                           |    2 
 b/arch/m68k/fpsp040/satan.S                           |    2 
 b/arch/m68k/fpsp040/scale.S                           |    2 
 b/arch/m68k/fpsp040/setox.S                           |    2 
 b/arch/m68k/fpsp040/sgetem.S                          |    2 
 b/arch/m68k/fpsp040/sint.S                            |    2 
 b/arch/m68k/fpsp040/skeleton.S                        |    2 
 b/arch/m68k/fpsp040/slogn.S                           |    2 
 b/arch/m68k/fpsp040/smovecr.S                         |    2 
 b/arch/m68k/fpsp040/srem_mod.S                        |    2 
 b/arch/m68k/fpsp040/ssin.S                            |    2 
 b/arch/m68k/fpsp040/stan.S                            |    2 
 b/arch/m68k/fpsp040/stanh.S                           |    2 
 b/arch/m68k/fpsp040/sto_res.S                         |    2 
 b/arch/m68k/fpsp040/stwotox.S                         |    2 
 b/arch/m68k/fpsp040/util.S                            |    2 
 b/arch/m68k/fpsp040/x_bsun.S                          |    2 
 b/arch/m68k/fpsp040/x_fline.S                         |    2 
 b/arch/m68k/fpsp040/x_operr.S                         |    2 
 b/arch/m68k/fpsp040/x_ovfl.S                          |    2 
 b/arch/m68k/fpsp040/x_snan.S                          |    2 
 b/arch/m68k/fpsp040/x_store.S                         |    2 
 b/arch/m68k/fpsp040/x_unfl.S                          |    2 
 b/arch/m68k/fpsp040/x_unimp.S                         |    2 
 b/arch/m68k/fpsp040/x_unsupp.S                        |    2 
 b/arch/m68k/hp300/Makefile                            |    2 
 b/arch/m68k/hp300/time.c                              |   18 
 b/arch/m68k/ifpsp060/fskeleton.S                      |    2 
 b/arch/m68k/ifpsp060/iskeleton.S                      |    2 
 b/arch/m68k/kernel/Makefile                           |   22 
 b/arch/m68k/kernel/bios32.c                           |   34 
 b/arch/m68k/kernel/entry.S                            |   15 
 b/arch/m68k/kernel/ints.c                             |    4 
 b/arch/m68k/kernel/m68k_defs.c                        |    2 
 b/arch/m68k/kernel/m68k_ksyms.c                       |    4 
 b/arch/m68k/kernel/process.c                          |   12 
 b/arch/m68k/kernel/ptrace.c                           |    5 
 b/arch/m68k/kernel/setup.c                            |    7 
 b/arch/m68k/kernel/sun3-head.S                        |    6 
 b/arch/m68k/kernel/time.c                             |   24 
 b/arch/m68k/kernel/traps.c                            |   39 
 b/arch/m68k/lib/checksum.c                            |  100 
 b/arch/m68k/mac/config.c                              |    4 
 b/arch/m68k/mac/macints.c                             |    6 
 b/arch/m68k/mm/Makefile                               |    2 
 b/arch/m68k/mm/memory.c                               |  255 -
 b/arch/m68k/mm/motorola.c                             |    3 
 b/arch/m68k/mm/sun3kmap.c                             |  156 
 b/arch/m68k/mm/sun3mmu.c                              |    6 
 b/arch/m68k/mvme147/config.c                          |    5 
 b/arch/m68k/q40/config.c                              |    4 
 b/arch/m68k/q40/q40ints.c                             |    9 
 b/arch/m68k/sun3/Makefile                             |    4 
 b/arch/m68k/sun3/config.c                             |    3 
 b/arch/m68k/sun3/idprom.c                             |    4 
 b/arch/m68k/sun3/intersil.c                           |    1 
 b/arch/m68k/sun3/mmu_emu.c                            |    6 
 b/arch/m68k/sun3/sun3dvma.c                           |   89 
 b/arch/m68k/sun3/sun3ints.c                           |   64 
 b/arch/m68k/sun3x/config.c                            |   33 
 b/arch/m68k/sun3x/prom.c                              |   30 
 b/arch/m68k/sun3x/time.c                              |    2 
 b/arch/m68k/vmlinux-std.lds                           |   16 
 b/arch/m68k/vmlinux-sun3.lds                          |   14 
 b/arch/m68knommu/Kconfig                              |  796 ++++
 b/arch/m68knommu/Makefile                             |  108 
 b/arch/m68knommu/defconfig                            |  538 +++
 b/arch/m68knommu/kernel/Makefile                      |   13 
 b/arch/m68knommu/kernel/asm-offsets.c                 |   85 
 b/arch/m68knommu/kernel/comempci.c                    | 1171 ++++++
 b/arch/m68knommu/kernel/init_task.c                   |   37 
 b/arch/m68knommu/kernel/ints.c                        |  274 +
 b/arch/m68knommu/kernel/m68k_ksyms.c                  |  124 
 b/arch/m68knommu/kernel/process.c                     |  450 ++
 b/arch/m68knommu/kernel/ptrace.c                      |  392 ++
 b/arch/m68knommu/kernel/semaphore.c                   |  133 
 b/arch/m68knommu/kernel/setup.c                       |  360 ++
 b/arch/m68knommu/kernel/signal.c                      |  886 ++++
 b/arch/m68knommu/kernel/sys_m68k.c                    |  215 +
 b/arch/m68knommu/kernel/syscalltable.S                |  279 +
 b/arch/m68knommu/kernel/time.c                        |  178 +
 b/arch/m68knommu/kernel/traps.c                       |  313 +
 b/arch/m68knommu/lib/Makefile                         |   10 
 b/arch/m68knommu/lib/ashldi3.c                        |   62 
 b/arch/m68knommu/lib/ashrdi3.c                        |   63 
 b/arch/m68knommu/lib/checksum.c                       |  156 
 b/arch/m68knommu/lib/divsi3.S                         |  125 
 b/arch/m68knommu/lib/lshrdi3.c                        |   62 
 b/arch/m68knommu/lib/memcpy.c                         |   63 
 b/arch/m68knommu/lib/memset.c                         |   47 
 b/arch/m68knommu/lib/modsi3.S                         |  113 
 b/arch/m68knommu/lib/muldi3.c                         |   86 
 b/arch/m68knommu/lib/mulsi3.S                         |  110 
 b/arch/m68knommu/lib/semaphore.S                      |   67 
 b/arch/m68knommu/lib/udivsi3.S                        |  162 
 b/arch/m68knommu/lib/umodsi3.S                        |  113 
 b/arch/m68knommu/mm/Makefile                          |    7 
 b/arch/m68knommu/mm/fault.c                           |   57 
 b/arch/m68knommu/mm/init.c                            |  235 +
 b/arch/m68knommu/mm/kmap.c                            |   56 
 b/arch/m68knommu/mm/memory.c                          |  166 
 b/arch/m68knommu/platform/5206/ARNEWSH/crt0_ram.S     |  206 +
 b/arch/m68knommu/platform/5206/ARNEWSH/ram.ld         |   72 
 b/arch/m68knommu/platform/5206/Makefile               |   24 
 b/arch/m68knommu/platform/5206/config.c               |  155 
 b/arch/m68knommu/platform/5206e/MOTOROLA/crt0_ram.S   |  145 
 b/arch/m68knommu/platform/5206e/MOTOROLA/ram.ld       |   72 
 b/arch/m68knommu/platform/5206e/Makefile              |   24 
 b/arch/m68knommu/platform/5206e/config.c              |  233 +
 b/arch/m68knommu/platform/5206e/eLITE/crt0_ram.S      |  339 +
 b/arch/m68knommu/platform/5206e/eLITE/ram.ld          |   72 
 b/arch/m68knommu/platform/5249/MOTOROLA/crt0_ram.S    |  223 +
 b/arch/m68knommu/platform/5249/MOTOROLA/ram.ld        |   76 
 b/arch/m68knommu/platform/5249/Makefile               |   24 
 b/arch/m68knommu/platform/5249/config.c               |  229 +
 b/arch/m68knommu/platform/5272/MOTOROLA/crt0_ram.S    |  152 
 b/arch/m68knommu/platform/5272/MOTOROLA/ram.ld        |   76 
 b/arch/m68knommu/platform/5272/Makefile               |   24 
 b/arch/m68knommu/platform/5272/NETtel/crt0_ram.S      |  188 +
 b/arch/m68knommu/platform/5272/NETtel/ram.ld          |   76 
 b/arch/m68knommu/platform/5272/config.c               |  247 +
 b/arch/m68knommu/platform/5307/ARNEWSH/crt0_ram.S     |  159 
 b/arch/m68knommu/platform/5307/ARNEWSH/ram.ld         |   72 
 b/arch/m68knommu/platform/5307/CLEOPATRA/crt0_ram.S   |  176 
 b/arch/m68knommu/platform/5307/CLEOPATRA/ram.ld       |   72 
 b/arch/m68knommu/platform/5307/MOTOROLA/crt0_ram.S    |  159 
 b/arch/m68knommu/platform/5307/MOTOROLA/ram.ld        |   72 
 b/arch/m68knommu/platform/5307/MP3/crt0_ram.S         |  173 
 b/arch/m68knommu/platform/5307/MP3/ram.ld             |   72 
 b/arch/m68knommu/platform/5307/Makefile               |   27 
 b/arch/m68knommu/platform/5307/NETtel/crt0_ram.S      |  196 +
 b/arch/m68knommu/platform/5307/NETtel/ram.ld          |   72 
 b/arch/m68knommu/platform/5307/config.c               |  337 +
 b/arch/m68knommu/platform/5307/entry.S                |  557 +++
 b/arch/m68knommu/platform/5407/CLEOPATRA/crt0_ram.S   |  173 
 b/arch/m68knommu/platform/5407/CLEOPATRA/ram.ld       |   72 
 b/arch/m68knommu/platform/5407/MOTOROLA/crt0_ram.S    |  152 
 b/arch/m68knommu/platform/5407/MOTOROLA/ram.ld        |   72 
 b/arch/m68knommu/platform/5407/Makefile               |   24 
 b/arch/m68knommu/platform/5407/config.c               |  236 +
 b/arch/m68knommu/platform/68328/Makefile              |   17 
 b/arch/m68knommu/platform/68328/bootlogo.h            |  270 +
 b/arch/m68knommu/platform/68328/bootlogo.pl           |   10 
 b/arch/m68knommu/platform/68328/config.c              |  127 
 b/arch/m68knommu/platform/68328/entry.S               |  483 ++
 b/arch/m68knommu/platform/68328/ints.c                |  354 +
 b/arch/m68knommu/platform/68328/pilot/crt0_rom.S      |  228 +
 b/arch/m68knommu/platform/68328/pilot/rom.ld          |  105 
 b/arch/m68knommu/platform/68360/Makefile              |   10 
 b/arch/m68knommu/platform/68360/commproc.c            |  308 +
 b/arch/m68knommu/platform/68360/config.c              |  213 +
 b/arch/m68knommu/platform/68360/entry.S               |  344 +
 b/arch/m68knommu/platform/68360/ints.c                |  318 +
 b/arch/m68knommu/platform/68360/uCquicc/crt0_ram.S    |  415 ++
 b/arch/m68knommu/platform/68360/uCquicc/crt0_rom.S    |  424 ++
 b/arch/m68knommu/platform/68360/uCquicc/ram.ld        |  113 
 b/arch/m68knommu/platform/68360/uCquicc/rom.ld        |  113 
 b/arch/m68knommu/platform/68EZ328/Makefile            |   14 
 b/arch/m68knommu/platform/68EZ328/bootlogo.h          | 3204 ++++++++++++++++++
 b/arch/m68knommu/platform/68EZ328/config.c            |  131 
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_fixed.S |  109 
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_himem.S |    1 
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_ram.S   |  172 
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_rom.S   |    1 
 b/arch/m68knommu/platform/68EZ328/ucsimm/fixed.ld     |  108 
 b/arch/m68knommu/platform/68EZ328/ucsimm/himem.ld     |   11 
 b/arch/m68knommu/platform/68EZ328/ucsimm/ram.ld       |  110 
 b/arch/m68knommu/platform/68EZ328/ucsimm/rom.ld       |   11 
 b/arch/m68knommu/platform/68VZ328/Makefile            |   14 
 b/arch/m68knommu/platform/68VZ328/de2/config.c        |  151 
 b/arch/m68knommu/platform/68VZ328/de2/crt0_fixed.S    |  159 
 b/arch/m68knommu/platform/68VZ328/de2/crt0_himem.S    |    1 
 b/arch/m68knommu/platform/68VZ328/de2/crt0_ram.S      |    1 
 b/arch/m68knommu/platform/68VZ328/de2/crt0_rom.S      |    1 
 b/arch/m68knommu/platform/68VZ328/de2/fixed.ld        |  102 
 b/arch/m68knommu/platform/68VZ328/de2/himem.ld        |   11 
 b/arch/m68knommu/platform/68VZ328/de2/ram.ld          |  109 
 b/arch/m68knommu/platform/68VZ328/de2/rom.ld          |   11 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_fixed.S |  109 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_himem.S |    1 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_ram.S   |  176 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_rom.S   |    1 
 b/arch/m68knommu/platform/68VZ328/ucdimm/fixed.ld     |  102 
 b/arch/m68knommu/platform/68VZ328/ucdimm/himem.ld     |   11 
 b/arch/m68knommu/platform/68VZ328/ucdimm/ram.ld       |  109 
 b/arch/m68knommu/platform/68VZ328/ucdimm/rom.ld       |   11 
 b/arch/m68knommu/platform/Makefile                    |    6 
 b/arch/m68knommu/vmlinux.lds.S                        |  115 
 b/arch/mips/Kconfig                                   |    8 
 b/arch/mips/au1000/common/time.c                      |    2 
 b/arch/mips/baget/irq.c                               |    4 
 b/arch/mips/dec/irq.c                                 |    4 
 b/arch/mips/ite-boards/generic/irq.c                  |    2 
 b/arch/mips/kernel/irq.c                              |    2 
 b/arch/mips/kernel/old-irq.c                          |    6 
 b/arch/mips/kernel/old-time.c                         |    2 
 b/arch/mips/kernel/process.c                          |    2 
 b/arch/mips/kernel/ptrace.c                           |   10 
 b/arch/mips/kernel/time.c                             |    2 
 b/arch/mips/mips-boards/atlas/atlas_int.c             |    4 
 b/arch/mips/mips-boards/generic/time.c                |    2 
 b/arch/mips/philips/nino/irq.c                        |    4 
 b/arch/mips/sgi/kernel/indy_int.c                     |    2 
 b/arch/mips/sgi/kernel/time.c                         |    2 
 b/arch/mips64/Kconfig                                 |    8 
 b/arch/mips64/kernel/ioctl32.c                        |   15 
 b/arch/mips64/kernel/process.c                        |    2 
 b/arch/mips64/kernel/ptrace.c                         |   22 
 b/arch/mips64/mips-boards/atlas/atlas_int.c           |    4 
 b/arch/mips64/mips-boards/generic/time.c              |    2 
 b/arch/mips64/mips-boards/malta/malta_int.c           |    6 
 b/arch/mips64/sgi-ip22/ip22-int.c                     |   12 
 b/arch/mips64/sgi-ip22/ip22-timer.c                   |    4 
 b/arch/mips64/sgi-ip27/ip27-irq.c                     |    4 
 b/arch/mips64/sgi-ip27/ip27-timer.c                   |    2 
 b/arch/parisc/Kconfig                                 |  663 ---
 b/arch/parisc/Makefile                                |    1 
 b/arch/parisc/hpux/Makefile                           |    6 
 b/arch/parisc/hpux/entry_hpux.S                       |  860 ++--
 b/arch/parisc/hpux/fs.c                               |   10 
 b/arch/parisc/hpux/gate.S                             |   86 
 b/arch/parisc/hpux/ioctl.c                            |    5 
 b/arch/parisc/hpux/sys_hpux.c                         |  614 +++
 b/arch/parisc/hpux/wrappers.S                         |   30 
 b/arch/parisc/kernel/Makefile                         |    4 
 b/arch/parisc/kernel/asm-offsets.c                    |    1 
 b/arch/parisc/kernel/drivers.c                        |    1 
 b/arch/parisc/kernel/entry.S                          |   55 
 b/arch/parisc/kernel/hardware.c                       |    6 
 b/arch/parisc/kernel/irq.c                            |   96 
 b/arch/parisc/kernel/pa7300lc.c                       |    2 
 b/arch/parisc/kernel/parisc_ksyms.c                   |    4 
 b/arch/parisc/kernel/perf.c                           |    2 
 b/arch/parisc/kernel/process.c                        |    1 
 b/arch/parisc/kernel/processor.c                      |   22 
 b/arch/parisc/kernel/ptrace.c                         |   11 
 b/arch/parisc/kernel/setup.c                          |    4 
 b/arch/parisc/kernel/sys_parisc.c                     |   34 
 b/arch/parisc/kernel/sys_parisc32.c                   |   12 
 b/arch/parisc/kernel/syscall.S                        |   16 
 b/arch/parisc/lib/Makefile                            |    6 
 b/arch/parisc/math-emu/Makefile                       |    9 
 b/arch/parisc/mm/Makefile                             |    4 
 b/arch/ppc/Kconfig                                    |    9 
 b/arch/ppc/amiga/amiints.c                            |    4 
 b/arch/ppc/amiga/cia.c                                |    2 
 b/arch/ppc/amiga/ints.c                               |    4 
 b/arch/ppc/configs/apus_defconfig                     |    1 
 b/arch/ppc/kernel/irq.c                               |    4 
 b/arch/ppc/kernel/misc.S                              |    1 
 b/arch/ppc/kernel/ptrace.c                            |    5 
 b/arch/ppc/platforms/mcpn765_setup.c                  |    4 
 b/arch/ppc/platforms/prep_pci.c                       |    5 
 b/arch/ppc64/Kconfig                                  |    9 
 b/arch/ppc64/kernel/asm-offsets.c                     |    1 
 b/arch/ppc64/kernel/ioctl32.c                         |   13 
 b/arch/ppc64/kernel/irq.c                             |    4 
 b/arch/ppc64/kernel/misc.S                            |    1 
 b/arch/ppc64/kernel/ptrace.c                          |    5 
 b/arch/ppc64/kernel/ptrace32.c                        |    2 
 b/arch/s390/Kconfig                                   |    9 
 b/arch/s390/kernel/process.c                          |    2 
 b/arch/s390/kernel/ptrace.c                           |    9 
 b/arch/s390x/Kconfig                                  |    9 
 b/arch/s390x/kernel/ioctl32.c                         |   13 
 b/arch/s390x/kernel/process.c                         |    2 
 b/arch/s390x/kernel/ptrace.c                          |   12 
 b/arch/sh/Kconfig                                     |    8 
 b/arch/sh/kernel/irq.c                                |    2 
 b/arch/sh/kernel/process.c                            |    2 
 b/arch/sh/kernel/ptrace.c                             |   11 
 b/arch/sparc/Kconfig                                  |    8 
 b/arch/sparc/kernel/irq.c                             |    6 
 b/arch/sparc/kernel/process.c                         |    2 
 b/arch/sparc/kernel/ptrace.c                          |   12 
 b/arch/sparc/kernel/sun4d_irq.c                       |    4 
 b/arch/sparc64/Kconfig                                |    8 
 b/arch/sparc64/kernel/irq.c                           |    6 
 b/arch/sparc64/kernel/process.c                       |    2 
 b/arch/sparc64/kernel/ptrace.c                        |   12 
 b/arch/sparc64/kernel/smp.c                           |    2 
 b/arch/sparc64/kernel/sys_sparc.c                     |    1 
 b/arch/sparc64/mm/hugetlbpage.c                       |    1 
 b/arch/sparc64/mm/init.c                              |    1 
 b/arch/um/Kconfig                                     |    8 
 b/arch/um/kernel/irq.c                                |    4 
 b/arch/v850/Kconfig                                   |  488 ++
 b/arch/v850/Makefile                                  |   65 
 b/arch/v850/README                                    |   23 
 b/arch/v850/anna-rom.ld                               |  127 
 b/arch/v850/anna.ld                                   |  122 
 b/arch/v850/fpga85e2c.ld                              |  144 
 b/arch/v850/kernel/Makefile                           |   38 
 b/arch/v850/kernel/anna.c                             |  202 +
 b/arch/v850/kernel/asm-consts.c                       |   60 
 b/arch/v850/kernel/bug.c                              |   62 
 b/arch/v850/kernel/entry.S                            | 1005 +++++
 b/arch/v850/kernel/fpga85e2c.c                        |  167 
 b/arch/v850/kernel/gbus_int.c                         |  267 +
 b/arch/v850/kernel/head.S                             |  121 
 b/arch/v850/kernel/highres_timer.c                    |  132 
 b/arch/v850/kernel/init_task.c                        |   42 
 b/arch/v850/kernel/intv.S                             |   90 
 b/arch/v850/kernel/irq.c                              |  716 ++++
 b/arch/v850/kernel/ma.c                               |   70 
 b/arch/v850/kernel/mach.c                             |   17 
 b/arch/v850/kernel/mach.h                             |   56 
 b/arch/v850/kernel/memcons.c                          |  134 
 b/arch/v850/kernel/nb85e_intc.c                       |   68 
 b/arch/v850/kernel/nb85e_timer_d.c                    |   54 
 b/arch/v850/kernel/nb85e_utils.c                      |   65 
 b/arch/v850/kernel/process.c                          |  282 +
 b/arch/v850/kernel/procfs.c                           |   67 
 b/arch/v850/kernel/ptrace.c                           |  202 +
 b/arch/v850/kernel/rte_cb.c                           |  234 +
 b/arch/v850/kernel/rte_cb_leds.c                      |  135 
 b/arch/v850/kernel/rte_cb_multi.c                     |   85 
 b/arch/v850/kernel/rte_ma1_cb.c                       |  101 
 b/arch/v850/kernel/rte_mb_a_pci.c                     |  781 ++++
 b/arch/v850/kernel/rte_nb85e_cb.c                     |   54 
 b/arch/v850/kernel/semaphore.c                        |  164 
 b/arch/v850/kernel/setup.c                            |  273 +
 b/arch/v850/kernel/signal.c                           |  523 ++
 b/arch/v850/kernel/sim.c                              |  174 
 b/arch/v850/kernel/sim85e2c.c                         |  147 
 b/arch/v850/kernel/simcons.c                          |  158 
 b/arch/v850/kernel/syscalls.c                         |  197 +
 b/arch/v850/kernel/time.c                             |  193 +
 b/arch/v850/kernel/v850_ksyms.c                       |   79 
 b/arch/v850/lib/Makefile                              |    9 
 b/arch/v850/lib/ashldi3.c                             |   62 
 b/arch/v850/lib/ashrdi3.c                             |   63 
 b/arch/v850/lib/checksum.c                            |  151 
 b/arch/v850/lib/lshrdi3.c                             |   62 
 b/arch/v850/lib/memcpy.c                              |   97 
 b/arch/v850/lib/memset.c                              |   61 
 b/arch/v850/lib/muldi3.c                              |   61 
 b/arch/v850/lib/negdi2.c                              |   25 
 b/arch/v850/rte_ma1_cb-ksram.ld                       |  152 
 b/arch/v850/rte_ma1_cb-rom.ld                         |  115 
 b/arch/v850/rte_ma1_cb.ld                             |  152 
 b/arch/v850/sim.ld                                    |  108 
 b/arch/v850/sim85e2c.ld                               |  135 
 b/arch/v850/vmlinux.lds.S                             |   31 
 b/arch/x86_64/Kconfig                                 |    8 
 b/arch/x86_64/ia32/ptrace32.c                         |   14 
 b/arch/x86_64/kernel/irq.c                            |    4 
 b/arch/x86_64/kernel/process.c                        |    2 
 b/arch/x86_64/kernel/ptrace.c                         |   11 
 b/drivers/Makefile                                    |    1 
 b/drivers/acorn/block/fd1772.c                        |   25 
 b/drivers/acpi/Makefile                               |    2 
 b/drivers/acpi/acpi_bus.h                             |    5 
 b/drivers/acpi/bus.c                                  |    5 
 b/drivers/acpi/events/evxfregn.c                      |    6 
 b/drivers/acpi/include/acconfig.h                     |    4 
 b/drivers/acpi/include/acparser.h                     |    6 
 b/drivers/acpi/namespace/nsalloc.c                    |   23 
 b/drivers/acpi/osl.c                                  |    6 
 b/drivers/acpi/parser/psargs.c                        |   79 
 b/drivers/acpi/parser/psparse.c                       |   80 
 b/drivers/acpi/processor.c                            |    3 
 b/drivers/acpi/scan.c                                 |  113 
 b/drivers/acpi/tables/tbutils.c                       |    6 
 b/drivers/atm/zatm.c                                  |    8 
 b/drivers/base/Makefile                               |    6 
 b/drivers/base/base.h                                 |   29 
 b/drivers/base/bus.c                                  |  142 
 b/drivers/base/class.c                                |  112 
 b/drivers/base/core.c                                 |   90 
 b/drivers/base/cpu.c                                  |   38 
 b/drivers/base/driver.c                               |   32 
 b/drivers/base/firmware.c                             |   32 
 b/drivers/base/fs/Makefile                            |    4 
 b/drivers/base/fs/device.c                            |  195 -
 b/drivers/base/fs/fs.h                                |    2 
 b/drivers/base/interface.c                            |    6 
 b/drivers/base/intf.c                                 |   29 
 b/drivers/base/memblk.c                               |   55 
 b/drivers/base/node.c                                 |   99 
 b/drivers/base/sys.c                                  |    3 
 b/drivers/block/DAC960.c                              |   15 
 b/drivers/block/amiflop.c                             |   35 
 b/drivers/block/ataflop.c                             |   19 
 b/drivers/block/elevator.c                            |    4 
 b/drivers/block/floppy.c                              |   23 
 b/drivers/block/genhd.c                               |  126 
 b/drivers/block/ll_rw_blk.c                           |   30 
 b/drivers/block/ps2esdi.c                             |    4 
 b/drivers/block/rd.c                                  |    7 
 b/drivers/block/scsi_ioctl.c                          |    4 
 b/drivers/block/z2ram.c                               |    2 
 b/drivers/bluetooth/hci_bcsp.c                        |    8 
 b/drivers/bluetooth/hci_h4.c                          |    8 
 b/drivers/bluetooth/hci_ldisc.c                       |    9 
 b/drivers/bluetooth/hci_uart.h                        |    2 
 b/drivers/bluetooth/hci_usb.c                         |    4 
 b/drivers/bluetooth/hci_vhci.c                        |    4 
 b/drivers/char/Makefile                               |    5 
 b/drivers/char/amiserial.c                            |    4 
 b/drivers/char/nvram.c                                |    2 
 b/drivers/char/raw.c                                  |   10 
 b/drivers/char/sysrq.c                                |   16 
 b/drivers/ide/ide-cd.c                                |   11 
 b/drivers/ide/ide-cd.h                                |    4 
 b/drivers/ide/ide-floppy.c                            |    4 
 b/drivers/ide/ide-lib.c                               |    2 
 b/drivers/ide/ide-tape.c                              |    4 
 b/drivers/ide/ide-taskfile.c                          |    1 
 b/drivers/ide/ide.c                                   |    7 
 b/drivers/input/keyboard/amikbd.c                     |    2 
 b/drivers/macintosh/mac_keyb.c                        |  206 -
 b/drivers/media/Kconfig                               |   11 
 b/drivers/media/video/Kconfig                         |   12 
 b/drivers/media/video/Makefile                        |    6 
 b/drivers/media/video/bt848.h                         |    2 
 b/drivers/media/video/bttv-cards.c                    |  968 ++++-
 b/drivers/media/video/bttv-driver.c                   | 1414 ++++---
 b/drivers/media/video/bttv-if.c                       |   16 
 b/drivers/media/video/bttv-risc.c                     |  398 +-
 b/drivers/media/video/bttv-vbi.c                      |  266 -
 b/drivers/media/video/bttv.h                          |   24 
 b/drivers/media/video/bttvp.h                         |  108 
 b/drivers/media/video/saa7134/Makefile                |   11 
 b/drivers/media/video/saa7134/saa7134-cards.c         |  361 ++
 b/drivers/media/video/saa7134/saa7134-core.c          |  928 +++++
 b/drivers/media/video/saa7134/saa7134-i2c.c           |  451 ++
 b/drivers/media/video/saa7134/saa7134-oss.c           |  762 ++++
 b/drivers/media/video/saa7134/saa7134-reg.h           |  338 +
 b/drivers/media/video/saa7134/saa7134-ts.c            |  453 ++
 b/drivers/media/video/saa7134/saa7134-tvaudio.c       |  552 +++
 b/drivers/media/video/saa7134/saa7134-vbi.c           |  265 +
 b/drivers/media/video/saa7134/saa7134-video.c         | 2035 +++++++++++
 b/drivers/media/video/saa7134/saa7134.h               |  473 ++
 b/drivers/media/video/tuner.c                         |   49 
 b/drivers/media/video/tuner.h                         |   10 
 b/drivers/media/video/v4l2-common.c                   |  211 +
 b/drivers/media/video/video-buf.c                     |  148 
 b/drivers/media/video/video-buf.h                     |   40 
 b/drivers/mtd/maps/Kconfig                            |    6 
 b/drivers/mtd/maps/Makefile                           |    1 
 b/drivers/mtd/maps/uclinux.c                          |  171 
 b/drivers/net/3c509.c                                 |   14 
 b/drivers/net/68360enet.c                             |  953 +++++
 b/drivers/net/Kconfig                                 |   14 
 b/drivers/net/Makefile                                |    4 
 b/drivers/net/dl2k.c                                  |    2 
 b/drivers/net/fealnx.c                                |    8 
 b/drivers/net/fec.c                                   | 1926 ++++++++++
 b/drivers/net/fec.h                                   |  115 
 b/drivers/net/ibmlana.c                               |   20 
 b/drivers/net/irda/sa1100_ir.c                        |    2 
 b/drivers/net/lasi_82596.c                            |    1 
 b/drivers/net/mac8390.c                               |  752 ++++
 b/drivers/net/sun3_82586.c                            |   24 
 b/drivers/net/sun3lance.c                             |   21 
 b/drivers/net/tulip/de2104x.c                         |    2 
 b/drivers/net/tulip/de4x5.c                           |   34 
 b/drivers/net/tulip/winbond-840.c                     |    5 
 b/drivers/net/wireless/airo.c                         |   66 
 b/drivers/nubus/nubus.c                               |    1 
 b/drivers/nubus/proc.c                                |    1 
 b/drivers/oprofile/buffer_sync.c                      |   24 
 b/drivers/parisc/Kconfig                              |  103 
 b/drivers/parisc/Makefile                             |   25 
 b/drivers/parisc/README.dino                          |   28 
 b/drivers/parisc/asp.c                                |  131 
 b/drivers/parisc/ccio-dma.c                           | 1613 +++++++++
 b/drivers/parisc/ccio-rm-dma.c                        |  202 +
 b/drivers/parisc/dino.c                               |  935 +++++
 b/drivers/parisc/eisa.c                               |  454 ++
 b/drivers/parisc/eisa_eeprom.c                        |  107 
 b/drivers/parisc/eisa_enumerator.c                    |  518 ++
 b/drivers/parisc/gsc.c                                |  205 +
 b/drivers/parisc/gsc.h                                |   45 
 b/drivers/parisc/iosapic.c                            | 1092 ++++++
 b/drivers/parisc/iosapic_private.h                    |  168 
 b/drivers/parisc/lasi.c                               |  245 +
 b/drivers/parisc/lba_pci.c                            | 1498 ++++++++
 b/drivers/parisc/led.c                                |  775 ++++
 b/drivers/parisc/power.c                              |  375 ++
 b/drivers/parisc/sba_iommu.c                          | 2052 +++++++++++
 b/drivers/parisc/superio.c                            |  542 +++
 b/drivers/parisc/wax.c                                |  141 
 b/drivers/parport/parport_gsc.c                       |   96 
 b/drivers/pci/pci.c                                   |    5 
 b/drivers/pnp/isapnp/core.c                           |    1 
 b/drivers/s390/net/lcs.c                              |    1 
 b/drivers/sbus/char/aurora.c                          |    1 
 b/drivers/scsi/3w-xxxx.c                              |  625 ++-
 b/drivers/scsi/3w-xxxx.h                              |   38 
 b/drivers/scsi/Makefile                               |    2 
 b/drivers/scsi/aacraid/aachba.c                       |   35 
 b/drivers/scsi/aacraid/aacraid.h                      |    2 
 b/drivers/scsi/aacraid/linit.c                        |    2 
 b/drivers/scsi/aha1542.c                              |    8 
 b/drivers/scsi/aic7xxx/Makefile                       |    9 
 b/drivers/scsi/aic7xxx/aicasm/Makefile                |    7 
 b/drivers/scsi/constants.c                            |   15 
 b/drivers/scsi/eata.c                                 |  294 -
 b/drivers/scsi/eata.h                                 |   32 
 b/drivers/scsi/hosts.h                                |   10 
 b/drivers/scsi/ide-scsi.c                             |   10 
 b/drivers/scsi/inia100.h                              |    2 
 b/drivers/scsi/ncr53c8xx.h                            |    2 
 b/drivers/scsi/osst.c                                 | 1089 +++---
 b/drivers/scsi/osst.h                                 |    3 
 b/drivers/scsi/qla1280.h                              |    3 
 b/drivers/scsi/scsi.c                                 |    3 
 b/drivers/scsi/scsi.h                                 |    3 
 b/drivers/scsi/scsi_lib.c                             |   34 
 b/drivers/scsi/sd.c                                   |   37 
 b/drivers/scsi/sg.c                                   |   60 
 b/drivers/scsi/sr.c                                   |   21 
 b/drivers/scsi/sr.h                                   |    1 
 b/drivers/scsi/st.c                                   |  468 +-
 b/drivers/scsi/st.h                                   |    3 
 b/drivers/scsi/sun3_NCR5380.c                         |  110 
 b/drivers/scsi/sun3_scsi.c                            |   80 
 b/drivers/scsi/sun3_scsi.h                            |   92 
 b/drivers/scsi/sun3_scsi_vme.c                        |  567 +++
 b/drivers/scsi/sun3x_esp.c                            |   13 
 b/drivers/scsi/sym53c8xx.h                            |    2 
 b/drivers/scsi/u14-34f.c                              |  173 
 b/drivers/scsi/u14-34f.h                              |   31 
 b/drivers/serial/21285.c                              |    6 
 b/drivers/serial/8250.c                               |  369 +-
 b/drivers/serial/8250_cs.c                            |    3 
 b/drivers/serial/8250_gsc.c                           |  133 
 b/drivers/serial/8250_pci.c                           |  200 -
 b/drivers/serial/Makefile                             |    1 
 b/drivers/serial/amba.c                               |    6 
 b/drivers/serial/anakin.c                             |    2 
 b/drivers/serial/clps711x.c                           |   13 
 b/drivers/serial/core.c                               |   32 
 b/drivers/serial/sa1100.c                             |   10 
 b/drivers/serial/sunsab.c                             |    4 
 b/drivers/serial/sunsu.c                              |    4 
 b/drivers/serial/sunzilog.c                           |    4 
 b/drivers/serial/uart00.c                             |    2 
 b/drivers/video/Kconfig                               |    3 
 b/drivers/video/fbcon.c                               |    2 
 b/drivers/video/hpfb.c                                |   67 
 b/drivers/zorro/proc.c                                |    2 
 b/drivers/zorro/zorro.ids                             |   10 
 b/fs/Kconfig                                          |   75 
 b/fs/Makefile                                         |   12 
 b/fs/afs/Makefile                                     |   10 
 b/fs/afs/dir.c                                        |   64 
 b/fs/afs/errors.h                                     |    6 
 b/fs/afs/file.c                                       |   39 
 b/fs/afs/fsclient.c                                   |    2 
 b/fs/afs/inode.c                                      |  153 
 b/fs/afs/internal.h                                   |   47 
 b/fs/afs/kafsasyncd.c                                 |    4 
 b/fs/afs/kafstimod.c                                  |    4 
 b/fs/afs/main.c                                       |    4 
 b/fs/afs/mntpt.c                                      |    6 
 b/fs/afs/proc.c                                       |    3 
 b/fs/afs/super.c                                      |   86 
 b/fs/afs/vlclient.c                                   |    2 
 b/fs/afs/vnode.h                                      |   14 
 b/fs/attr.c                                           |    2 
 b/fs/binfmt_aout.c                                    |    9 
 b/fs/binfmt_elf.c                                     |    9 
 b/fs/binfmt_flat.c                                    |  659 +++
 b/fs/binfmt_som.c                                     |  329 +
 b/fs/cifs/AUTHORS                                     |    6 
 b/fs/cifs/CHANGES                                     |   21 
 b/fs/cifs/TODO                                        |    5 
 b/fs/cifs/cifs_debug.c                                |   45 
 b/fs/cifs/cifsfs.c                                    |   43 
 b/fs/cifs/cifsfs.h                                    |    3 
 b/fs/cifs/cifsglob.h                                  |   28 
 b/fs/cifs/cifsproto.h                                 |  222 -
 b/fs/cifs/cifssmb.c                                   |   16 
 b/fs/cifs/connect.c                                   |  132 
 b/fs/cifs/file.c                                      |  226 -
 b/fs/cifs/inode.c                                     |   90 
 b/fs/cifs/md5.h                                       |   10 
 b/fs/cifs/misc.c                                      |  118 
 b/fs/cifs/netmisc.c                                   |   27 
 b/fs/cifs/nterr.c                                     |   27 
 b/fs/cifs/nterr.h                                     |    9 
 b/fs/cifs/smbencrypt.c                                |   22 
 b/fs/cifs/transport.c                                 |   25 
 b/fs/dcookies.c                                       |   34 
 b/fs/direct-io.c                                      |    2 
 b/fs/eventpoll.c                                      | 1293 +++++++
 b/fs/exec.c                                           |    2 
 b/fs/ext2/Makefile                                    |   10 
 b/fs/ext2/acl.c                                       |  573 +++
 b/fs/ext2/acl.h                                       |   88 
 b/fs/ext2/ext2.h                                      |   15 
 b/fs/ext2/file.c                                      |   10 
 b/fs/ext2/ialloc.c                                    |  215 +
 b/fs/ext2/inode.c                                     |   68 
 b/fs/ext2/namei.c                                     |   26 
 b/fs/ext2/super.c                                     |  301 +
 b/fs/ext2/symlink.c                                   |   14 
 b/fs/ext2/xattr.c                                     | 1135 ++++++
 b/fs/ext2/xattr.h                                     |  135 
 b/fs/ext2/xattr_user.c                                |  102 
 b/fs/ext3/Makefile                                    |   10 
 b/fs/ext3/acl.c                                       |  590 +++
 b/fs/ext3/acl.h                                       |   87 
 b/fs/ext3/file.c                                      |    8 
 b/fs/ext3/ialloc.c                                    |  371 +-
 b/fs/ext3/inode.c                                     |   70 
 b/fs/ext3/namei.c                                     |   33 
 b/fs/ext3/super.c                                     |  270 -
 b/fs/ext3/symlink.c                                   |   16 
 b/fs/ext3/xattr.c                                     | 1142 ++++++
 b/fs/ext3/xattr.h                                     |  133 
 b/fs/ext3/xattr_user.c                                |   99 
 b/fs/file_table.c                                     |    6 
 b/fs/hugetlbfs/Makefile                               |    9 
 b/fs/hugetlbfs/inode.c                                |  594 +++
 b/fs/inode.c                                          |   90 
 b/fs/jfs/Makefile                                     |    4 
 b/fs/jfs/file.c                                       |    5 
 b/fs/jfs/jfs_incore.h                                 |    5 
 b/fs/jfs/jfs_txnmgr.c                                 |   16 
 b/fs/jfs/namei.c                                      |   26 
 b/fs/jfs/super.c                                      |   16 
 b/fs/jfs/xattr.c                                      |   86 
 b/fs/mbcache.c                                        |  702 +++
 b/fs/namei.c                                          |   13 
 b/fs/partitions/check.c                               |  253 -
 b/fs/pipe.c                                           |   45 
 b/fs/posix_acl.c                                      |  423 ++
 b/fs/proc/array.c                                     |    1 
 b/fs/proc/base.c                                      |   33 
 b/fs/proc/proc_misc.c                                 |   52 
 b/fs/select.c                                         |    8 
 b/fs/xattr_acl.c                                      |   99 
 b/include/asm-alpha/dma.h                             |   33 
 b/include/asm-alpha/floppy.h                          |    4 
 b/include/asm-alpha/hwrpb.h                           |    3 
 b/include/asm-alpha/machvec.h                         |    2 
 b/include/asm-alpha/mman.h                            |   10 
 b/include/asm-alpha/poll.h                            |   23 
 b/include/asm-alpha/processor.h                       |    3 
 b/include/asm-alpha/siginfo.h                         |   21 
 b/include/asm-alpha/system.h                          |    7 
 b/include/asm-alpha/unistd.h                          |   12 
 b/include/asm-arm/arch-ebsa285/hardware.h             |    4 
 b/include/asm-arm/arch-sa1100/badge4.h                |    1 
 b/include/asm-arm/io.h                                |    3 
 b/include/asm-arm/mman.h                              |    2 
 b/include/asm-arm/pci.h                               |    2 
 b/include/asm-arm/poll.h                              |    1 
 b/include/asm-arm/proc-armv/pgtable.h                 |   10 
 b/include/asm-arm/processor.h                         |    4 
 b/include/asm-arm/ptrace.h                            |    5 
 b/include/asm-arm/system.h                            |   10 
 b/include/asm-cris/processor.h                        |    4 
 b/include/asm-i386/cpu.h                              |   26 
 b/include/asm-i386/memblk.h                           |   23 
 b/include/asm-i386/mman.h                             |    2 
 b/include/asm-i386/mmu_context.h                      |    4 
 b/include/asm-i386/node.h                             |   25 
 b/include/asm-i386/processor.h                        |    5 
 b/include/asm-i386/ptrace.h                           |    5 
 b/include/asm-i386/unistd.h                           |    3 
 b/include/asm-i386/vic.h                              |   61 
 b/include/asm-ia64/ide.h                              |    1 
 b/include/asm-ia64/numa.h                             |    4 
 b/include/asm-ia64/page.h                             |    3 
 b/include/asm-ia64/pgtable.h                          |    2 
 b/include/asm-ia64/poll.h                             |    5 
 b/include/asm-ia64/processor.h                        |    9 
 b/include/asm-ia64/ptrace.h                           |    5 
 b/include/asm-ia64/system.h                           |    5 
 b/include/asm-ia64/topology.h                         |   42 
 b/include/asm-ia64/unistd.h                           |    5 
 b/include/asm-m68k/checksum.h                         |    4 
 b/include/asm-m68k/dvma.h                             |    5 
 b/include/asm-m68k/floppy.h                           |    2 
 b/include/asm-m68k/hardirq.h                          |   87 
 b/include/asm-m68k/io.h                               |   12 
 b/include/asm-m68k/kmap_types.h                       |   21 
 b/include/asm-m68k/nubus.h                            |    2 
 b/include/asm-m68k/page.h                             |    1 
 b/include/asm-m68k/pci.h                              |    2 
 b/include/asm-m68k/percpu.h                           |    6 
 b/include/asm-m68k/poll.h                             |    1 
 b/include/asm-m68k/processor.h                        |    3 
 b/include/asm-m68k/q40_master.h                       |   30 
 b/include/asm-m68k/raw_io.h                           |   13 
 b/include/asm-m68k/rtc.h                              |   30 
 b/include/asm-m68k/softirq.h                          |   19 
 b/include/asm-m68k/sun3_pgalloc.h                     |   10 
 b/include/asm-m68k/sun3ints.h                         |    8 
 b/include/asm-m68k/sun3mmu.h                          |    4 
 b/include/asm-m68k/sun3xflop.h                        |    2 
 b/include/asm-m68k/system.h                           |   70 
 b/include/asm-m68k/thread_info.h                      |   10 
 b/include/asm-m68k/virtconvert.h                      |   30 
 b/include/asm-m68k/zorro.h                            |    2 
 b/include/asm-m68knommu/MC68328.h                     | 1266 +++++++
 b/include/asm-m68knommu/MC68332.h                     |  152 
 b/include/asm-m68knommu/MC68EZ328.h                   | 1253 +++++++
 b/include/asm-m68knommu/MC68VZ328.h                   | 1349 +++++++
 b/include/asm-m68knommu/a.out.h                       |    1 
 b/include/asm-m68knommu/anchor.h                      |  112 
 b/include/asm-m68knommu/asm-offsets.h                 |   49 
 b/include/asm-m68knommu/atomic.h                      |  118 
 b/include/asm-m68knommu/bitops.h                      |  488 ++
 b/include/asm-m68knommu/bootinfo.h                    |    2 
 b/include/asm-m68knommu/bootstd.h                     |  132 
 b/include/asm-m68knommu/bugs.h                        |   16 
 b/include/asm-m68knommu/byteorder.h                   |   13 
 b/include/asm-m68knommu/cache.h                       |   12 
 b/include/asm-m68knommu/cachectl.h                    |    1 
 b/include/asm-m68knommu/cacheflush.h                  |   82 
 b/include/asm-m68knommu/checksum.h                    |  131 
 b/include/asm-m68knommu/coldfire.h                    |   72 
 b/include/asm-m68knommu/commproc.h                    |  723 ++++
 b/include/asm-m68knommu/current.h                     |   24 
 b/include/asm-m68knommu/dbg.h                         |    6 
 b/include/asm-m68knommu/delay.h                       |   77 
 b/include/asm-m68knommu/div64.h                       |   13 
 b/include/asm-m68knommu/dma.h                         |  492 ++
 b/include/asm-m68knommu/elf.h                         |   95 
 b/include/asm-m68knommu/elia.h                        |   42 
 b/include/asm-m68knommu/entry.h                       |  129 
 b/include/asm-m68knommu/errno.h                       |    1 
 b/include/asm-m68knommu/fcntl.h                       |    1 
 b/include/asm-m68knommu/fpu.h                         |   22 
 b/include/asm-m68knommu/hardirq.h                     |  102 
 b/include/asm-m68knommu/hdreg.h                       |    1 
 b/include/asm-m68knommu/hwtest.h                      |    1 
 b/include/asm-m68knommu/ide.h                         |  465 ++
 b/include/asm-m68knommu/init.h                        |    1 
 b/include/asm-m68knommu/io.h                          |  179 +
 b/include/asm-m68knommu/io_hw_swap.h                  |  113 
 b/include/asm-m68knommu/ioctl.h                       |    1 
 b/include/asm-m68knommu/ioctls.h                      |    1 
 b/include/asm-m68knommu/ipc.h                         |    1 
 b/include/asm-m68knommu/ipcbuf.h                      |    1 
 b/include/asm-m68knommu/irq.h                         |  128 
 b/include/asm-m68knommu/keyboard.h                    |    1 
 b/include/asm-m68knommu/kmap_types.h                  |   19 
 b/include/asm-m68knommu/linkage.h                     |    1 
 b/include/asm-m68knommu/linux_logo.h                  |   13 
 b/include/asm-m68knommu/m5206sim.h                    |  132 
 b/include/asm-m68knommu/m5249sim.h                    |  119 
 b/include/asm-m68knommu/m5272sim.h                    |   79 
 b/include/asm-m68knommu/m5307sim.h                    |  181 +
 b/include/asm-m68knommu/m5407sim.h                    |  157 
 b/include/asm-m68knommu/m68360.h                      |    5 
 b/include/asm-m68knommu/m68360_enet.h                 |  177 
 b/include/asm-m68knommu/m68360_pram.h                 |  431 ++
 b/include/asm-m68knommu/m68360_quicc.h                |  362 ++
 b/include/asm-m68knommu/m68360_regs.h                 |  408 ++
 b/include/asm-m68knommu/machdep.h                     |   51 
 b/include/asm-m68knommu/math-emu.h                    |    1 
 b/include/asm-m68knommu/mc146818rtc.h                 |    9 
 b/include/asm-m68knommu/mcfdma.h                      |  139 
 b/include/asm-m68knommu/mcfmbus.h                     |   78 
 b/include/asm-m68knommu/mcfne.h                       |  353 +
 b/include/asm-m68knommu/mcfpci.h                      |  120 
 b/include/asm-m68knommu/mcfsim.h                      |  104 
 b/include/asm-m68knommu/mcfsmc.h                      |  176 
 b/include/asm-m68knommu/mcftimer.h                    |   73 
 b/include/asm-m68knommu/mcfuart.h                     |  174 
 b/include/asm-m68knommu/mcfwdebug.h                   |  119 
 b/include/asm-m68knommu/md.h                          |    1 
 b/include/asm-m68knommu/mman.h                        |    1 
 b/include/asm-m68knommu/mmu.h                         |   22 
 b/include/asm-m68knommu/mmu_context.h                 |   31 
 b/include/asm-m68knommu/module.h                      |    1 
 b/include/asm-m68knommu/movs.h                        |    1 
 b/include/asm-m68knommu/msgbuf.h                      |    1 
 b/include/asm-m68knommu/namei.h                       |    1 
 b/include/asm-m68knommu/nap.h                         |   96 
 b/include/asm-m68knommu/nettel.h                      |  109 
 b/include/asm-m68knommu/openprom.h                    |    1 
 b/include/asm-m68knommu/oplib.h                       |    1 
 b/include/asm-m68knommu/page.h                        |  123 
 b/include/asm-m68knommu/page_offset.h                 |   51 
 b/include/asm-m68knommu/param.h                       |   57 
 b/include/asm-m68knommu/pci.h                         |    1 
 b/include/asm-m68knommu/percpu.h                      |    6 
 b/include/asm-m68knommu/pgalloc.h                     |    8 
 b/include/asm-m68knommu/pgtable.h                     |   59 
 b/include/asm-m68knommu/poll.h                        |    1 
 b/include/asm-m68knommu/posix_types.h                 |    1 
 b/include/asm-m68knommu/processor.h                   |  128 
 b/include/asm-m68knommu/ptrace.h                      |   90 
 b/include/asm-m68knommu/quicc_simple.h                |   52 
 b/include/asm-m68knommu/resource.h                    |    1 
 b/include/asm-m68knommu/rmap.h                        |    2 
 b/include/asm-m68knommu/scatterlist.h                 |   13 
 b/include/asm-m68knommu/segment.h                     |   51 
 b/include/asm-m68knommu/semaphore-helper.h            |   83 
 b/include/asm-m68knommu/semaphore.h                   |  178 +
 b/include/asm-m68knommu/sembuf.h                      |    1 
 b/include/asm-m68knommu/semp3.h                       |   60 
 b/include/asm-m68knommu/setup.h                       |    1 
 b/include/asm-m68knommu/shglcore.h                    |   65 
 b/include/asm-m68knommu/shglports.h                   |   76 
 b/include/asm-m68knommu/shm.h                         |    1 
 b/include/asm-m68knommu/shmbuf.h                      |    1 
 b/include/asm-m68knommu/shmparam.h                    |    1 
 b/include/asm-m68knommu/sigcontext.h                  |   16 
 b/include/asm-m68knommu/siginfo.h                     |    1 
 b/include/asm-m68knommu/signal.h                      |  181 +
 b/include/asm-m68knommu/smp.h                         |    1 
 b/include/asm-m68knommu/socket.h                      |    1 
 b/include/asm-m68knommu/sockios.h                     |    1 
 b/include/asm-m68knommu/softirq.h                     |   20 
 b/include/asm-m68knommu/spinlock.h                    |    1 
 b/include/asm-m68knommu/stat.h                        |    1 
 b/include/asm-m68knommu/statfs.h                      |    1 
 b/include/asm-m68knommu/string.h                      |  126 
 b/include/asm-m68knommu/system.h                      |  270 +
 b/include/asm-m68knommu/termbits.h                    |    1 
 b/include/asm-m68knommu/termios.h                     |    1 
 b/include/asm-m68knommu/thread_info.h                 |  100 
 b/include/asm-m68knommu/timex.h                       |    1 
 b/include/asm-m68knommu/tlb.h                         |    1 
 b/include/asm-m68knommu/tlbflush.h                    |   61 
 b/include/asm-m68knommu/topology.h                    |    6 
 b/include/asm-m68knommu/traps.h                       |  150 
 b/include/asm-m68knommu/types.h                       |   58 
 b/include/asm-m68knommu/uaccess.h                     |  184 +
 b/include/asm-m68knommu/ucontext.h                    |   38 
 b/include/asm-m68knommu/unaligned.h                   |   32 
 b/include/asm-m68knommu/unistd.h                      |  418 ++
 b/include/asm-m68knommu/user.h                        |    1 
 b/include/asm-mips/processor.h                        |    4 
 b/include/asm-mips/ptrace.h                           |    5 
 b/include/asm-mips64/processor.h                      |    4 
 b/include/asm-mips64/ptrace.h                         |    5 
 b/include/asm-parisc/dma.h                            |    8 
 b/include/asm-parisc/io.h                             |   12 
 b/include/asm-parisc/poll.h                           |    1 
 b/include/asm-parisc/processor.h                      |   12 
 b/include/asm-ppc/processor.h                         |    3 
 b/include/asm-ppc64/processor.h                       |    4 
 b/include/asm-s390/processor.h                        |    4 
 b/include/asm-s390/ptrace.h                           |    5 
 b/include/asm-s390x/processor.h                       |    4 
 b/include/asm-s390x/ptrace.h                          |    5 
 b/include/asm-sh/processor.h                          |    5 
 b/include/asm-sh/ptrace.h                             |    5 
 b/include/asm-sparc/mman.h                            |    3 
 b/include/asm-sparc/processor.h                       |    4 
 b/include/asm-sparc64/mman.h                          |    3 
 b/include/asm-sparc64/processor.h                     |    3 
 b/include/asm-um/processor-generic.h                  |   11 
 b/include/asm-v850/a.out.h                            |   21 
 b/include/asm-v850/anna.h                             |  150 
 b/include/asm-v850/asm.h                              |   25 
 b/include/asm-v850/atomic.h                           |   89 
 b/include/asm-v850/bitops.h                           |  269 +
 b/include/asm-v850/bugs.h                             |   16 
 b/include/asm-v850/byteorder.h                        |   47 
 b/include/asm-v850/cache.h                            |   25 
 b/include/asm-v850/cacheflush.h                       |   42 
 b/include/asm-v850/checksum.h                         |  115 
 b/include/asm-v850/clinkage.h                         |   25 
 b/include/asm-v850/current.h                          |   44 
 b/include/asm-v850/delay.h                            |   46 
 b/include/asm-v850/div64.h                            |   11 
 b/include/asm-v850/dma.h                              |   18 
 b/include/asm-v850/elf.h                              |   75 
 b/include/asm-v850/entry.h                            |  128 
 b/include/asm-v850/errno.h                            |    6 
 b/include/asm-v850/fcntl.h                            |   86 
 b/include/asm-v850/fpga85e2c.h                        |  107 
 b/include/asm-v850/gbus_int.h                         |   97 
 b/include/asm-v850/hardirq.h                          |   96 
 b/include/asm-v850/highres_timer.h                    |   44 
 b/include/asm-v850/hw_irq.h                           |    8 
 b/include/asm-v850/io.h                               |  106 
 b/include/asm-v850/ioctl.h                            |   80 
 b/include/asm-v850/ioctls.h                           |   81 
 b/include/asm-v850/ipc.h                              |   31 
 b/include/asm-v850/ipcbuf.h                           |   29 
 b/include/asm-v850/irq.h                              |   57 
 b/include/asm-v850/kmap_types.h                       |   19 
 b/include/asm-v850/linkage.h                          |    6 
 b/include/asm-v850/ma.h                               |  102 
 b/include/asm-v850/ma1.h                              |   51 
 b/include/asm-v850/machdep.h                          |   49 
 b/include/asm-v850/macrology.h                        |   17 
 b/include/asm-v850/mman.h                             |   38 
 b/include/asm-v850/mmu.h                              |   22 
 b/include/asm-v850/mmu_context.h                      |   12 
 b/include/asm-v850/module.h                           |   22 
 b/include/asm-v850/msgbuf.h                           |   31 
 b/include/asm-v850/namei.h                            |   17 
 b/include/asm-v850/nb85e.h                            |   21 
 b/include/asm-v850/nb85e_cache.h                      |  106 
 b/include/asm-v850/nb85e_intc.h                       |  126 
 b/include/asm-v850/nb85e_timer_c.h                    |   48 
 b/include/asm-v850/nb85e_timer_d.h                    |   62 
 b/include/asm-v850/nb85e_uart.h                       |  142 
 b/include/asm-v850/nb85e_utils.h                      |   35 
 b/include/asm-v850/page.h                             |  144 
 b/include/asm-v850/param.h                            |   36 
 b/include/asm-v850/pci.h                              |   77 
 b/include/asm-v850/percpu.h                           |    6 
 b/include/asm-v850/pgalloc.h                          |   22 
 b/include/asm-v850/pgtable.h                          |   58 
 b/include/asm-v850/poll.h                             |   23 
 b/include/asm-v850/posix_types.h                      |   73 
 b/include/asm-v850/processor.h                        |  116 
 b/include/asm-v850/ptrace.h                           |  111 
 b/include/asm-v850/resource.h                         |   47 
 b/include/asm-v850/rmap.h                             |    1 
 b/include/asm-v850/rte_cb.h                           |   87 
 b/include/asm-v850/rte_ma1_cb.h                       |  112 
 b/include/asm-v850/rte_mb_a_pci.h                     |   56 
 b/include/asm-v850/rte_nb85e_cb.h                     |   63 
 b/include/asm-v850/scatterlist.h                      |   26 
 b/include/asm-v850/segment.h                          |   36 
 b/include/asm-v850/semaphore.h                        |   86 
 b/include/asm-v850/sembuf.h                           |   25 
 b/include/asm-v850/setup.h                            |   37 
 b/include/asm-v850/shmbuf.h                           |   42 
 b/include/asm-v850/shmparam.h                         |    6 
 b/include/asm-v850/sigcontext.h                       |   25 
 b/include/asm-v850/siginfo.h                          |    6 
 b/include/asm-v850/signal.h                           |  193 +
 b/include/asm-v850/sim.h                              |   49 
 b/include/asm-v850/sim85e2c.h                         |   89 
 b/include/asm-v850/simsyscall.h                       |   99 
 b/include/asm-v850/socket.h                           |   64 
 b/include/asm-v850/sockios.h                          |   12 
 b/include/asm-v850/softirq.h                          |   20 
 b/include/asm-v850/stat.h                             |   60 
 b/include/asm-v850/statfs.h                           |   25 
 b/include/asm-v850/string.h                           |   27 
 b/include/asm-v850/system.h                           |  115 
 b/include/asm-v850/teg.h                              |   58 
 b/include/asm-v850/termbits.h                         |  174 
 b/include/asm-v850/termios.h                          |  106 
 b/include/asm-v850/thread_info.h                      |  129 
 b/include/asm-v850/timex.h                            |   22 
 b/include/asm-v850/tlb.h                              |   21 
 b/include/asm-v850/tlbflush.h                         |   71 
 b/include/asm-v850/topology.h                         |    6 
 b/include/asm-v850/types.h                            |   62 
 b/include/asm-v850/uaccess.h                          |  159 
 b/include/asm-v850/ucontext.h                         |   14 
 b/include/asm-v850/unaligned.h                        |  130 
 b/include/asm-v850/unistd.h                           |  411 ++
 b/include/asm-v850/user.h                             |   56 
 b/include/asm-x86_64/mman.h                           |    2 
 b/include/asm-x86_64/poll.h                           |    1 
 b/include/asm-x86_64/ptrace.h                         |    5 
 b/include/linux/blkdev.h                              |   18 
 b/include/linux/cpu.h                                 |   12 
 b/include/linux/cpufreq.h                             |    7 
 b/include/linux/dcache.h                              |    9 
 b/include/linux/dcookies.h                            |    4 
 b/include/linux/device.h                              |   29 
 b/include/linux/elf.h                                 |    3 
 b/include/linux/eventpoll.h                           |   34 
 b/include/linux/ext2_fs.h                             |   68 
 b/include/linux/ext2_fs_sb.h                          |    2 
 b/include/linux/ext3_fs.h                             |   60 
 b/include/linux/ext3_fs_i.h                           |    4 
 b/include/linux/ext3_fs_sb.h                          |    2 
 b/include/linux/ext3_jbd.h                            |    8 
 b/include/linux/flat.h                                |   83 
 b/include/linux/fs.h                                  |    8 
 b/include/linux/genhd.h                               |    6 
 b/include/linux/hugetlb.h                             |   53 
 b/include/linux/ipc.h                                 |    2 
 b/include/linux/isapnp.h                              |    2 
 b/include/linux/kdev_t.h                              |    1 
 b/include/linux/kernel_stat.h                         |   33 
 b/include/linux/kobject.h                             |    4 
 b/include/linux/mbcache.h                             |   72 
 b/include/linux/memblk.h                              |   32 
 b/include/linux/miscdevice.h                          |    4 
 b/include/linux/mm.h                                  |   25 
 b/include/linux/mmzone.h                              |   55 
 b/include/linux/mtd/compatmac.h                       |    1 
 b/include/linux/node.h                                |   34 
 b/include/linux/page-flags.h                          |   11 
 b/include/linux/pagevec.h                             |    2 
 b/include/linux/pci.h                                 |    6 
 b/include/linux/personality.h                         |    1 
 b/include/linux/pipe_fs_i.h                           |    4 
 b/include/linux/poll.h                                |   18 
 b/include/linux/posix_acl.h                           |   87 
 b/include/linux/posix_acl_xattr.h                     |   55 
 b/include/linux/ptrace.h                              |   19 
 b/include/linux/sched.h                               |    8 
 b/include/linux/sem.h                                 |    1 
 b/include/linux/serial_core.h                         |   10 
 b/include/linux/shm.h                                 |    1 
 b/include/linux/som.h                                 |  154 
 b/include/linux/swap.h                                |  137 
 b/include/linux/sysfs.h                               |   12 
 b/include/linux/videodev.h                            |   11 
 b/include/linux/videodev2.h                           |  859 ++++
 b/include/linux/xattr_acl.h                           |   50 
 b/include/net/bluetooth/bluetooth.h                   |    4 
 b/include/net/bluetooth/hci_core.h                    |   14 
 b/include/net/bluetooth/rfcomm.h                      |    2 
 b/include/net/sock.h                                  |   12 
 b/include/rxrpc/call.h                                |    4 
 b/include/rxrpc/peer.h                                |    4 
 b/include/scsi/scsi.h                                 |    7 
 b/init/Makefile                                       |    2 
 b/init/do_mounts.c                                    |   10 
 b/init/initramfs.c                                    |  462 ++
 b/init/main.c                                         |    4 
 b/ipc/msg.c                                           |   49 
 b/ipc/sem.c                                           |   59 
 b/ipc/shm.c                                           |  171 
 b/ipc/util.c                                          |  191 +
 b/ipc/util.h                                          |   63 
 b/kernel/cpufreq.c                                    |   33 
 b/kernel/fork.c                                       |   32 
 b/kernel/ksyms.c                                      |    1 
 b/kernel/module.c                                     |    6 
 b/kernel/ptrace.c                                     |   69 
 b/kernel/sched.c                                      |   47 
 b/kernel/sys.c                                        |    2 
 b/kernel/timer.c                                      |    1 
 b/lib/kobject.c                                       |   15 
 b/lib/rwsem-spinlock.c                                |    4 
 b/mm/Makefile                                         |   13 
 b/mm/filemap.c                                        |  248 +
 b/mm/fremap.c                                         |  146 
 b/mm/highmem.c                                        |    6 
 b/mm/memory.c                                         |   31 
 b/mm/mmap.c                                           |   60 
 b/mm/mprotect.c                                       |    1 
 b/mm/mremap.c                                         |    7 
 b/mm/msync.c                                          |    2 
 b/mm/page_alloc.c                                     |   90 
 b/mm/shmem.c                                          |   40 
 b/mm/slab.c                                           |    1 
 b/mm/swap.c                                           |   73 
 b/mm/swap_state.c                                     |    2 
 b/mm/swapfile.c                                       |   31 
 b/mm/vmalloc.c                                        |    8 
 b/mm/vmscan.c                                         |   33 
 b/net/bluetooth/Makefile                              |    2 
 b/net/bluetooth/af_bluetooth.c                        |   18 
 b/net/bluetooth/bnep/core.c                           |   29 
 b/net/bluetooth/hci_conn.c                            |    6 
 b/net/bluetooth/hci_core.c                            |   32 
 b/net/bluetooth/hci_proc.c                            |  187 +
 b/net/bluetooth/hci_sock.c                            |    7 
 b/net/bluetooth/l2cap.c                               |  115 
 b/net/bluetooth/rfcomm/core.c                         |  133 
 b/net/bluetooth/rfcomm/sock.c                         |   97 
 b/net/bluetooth/rfcomm/tty.c                          |   15 
 b/net/bluetooth/sco.c                                 |  110 
 b/net/bluetooth/syms.c                                |    2 
 b/net/ipv4/tcp.c                                      |    4 
 b/net/rxrpc/Makefile                                  |   18 
 b/net/rxrpc/call.c                                    |   85 
 b/net/rxrpc/connection.c                              |    4 
 b/net/rxrpc/internal.h                                |   30 
 b/net/rxrpc/krxiod.c                                  |    4 
 b/net/rxrpc/krxsecd.c                                 |    4 
 b/net/rxrpc/krxtimod.c                                |    4 
 b/net/rxrpc/main.c                                    |    2 
 b/net/rxrpc/peer.c                                    |    6 
 b/net/rxrpc/proc.c                                    |   13 
 b/net/rxrpc/transport.c                               |    6 
 b/net/sunrpc/xdr.c                                    |    5 
 b/scripts/Makefile.build                              |    2 
 b/scripts/kconfig/Makefile                            |    2 
 b/sound/oss/i810_audio.c                              |    2 
 b/sound/oss/trident.c                                 |    6 
 b/usr/Makefile                                        |   18 
 b/usr/gen_init_cpio.c                                 |  137 
 drivers/acpi/driverfs.c                               |   46 
 drivers/base/fs/bus.c                                 |  123 
 drivers/base/fs/class.c                               |  215 -
 drivers/base/fs/driver.c                              |  100 
 drivers/base/fs/intf.c                                |   54 
 drivers/char/eventpoll.c                              | 1438 --------
 drivers/net/daynaport.c                               |  922 -----
 fs/driverfs/Makefile                                  |    9 
 fs/driverfs/inode.c                                   |  708 ---
 fs/fcblist.c                                          |  146 
 include/asm-parisc/gsc.h                              |   31 
 include/linux/driverfs_fs.h                           |   68 
 include/linux/fcblist.h                               |   71 
 1304 files changed, 101549 insertions(+), 21775 deletions(-)

