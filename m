From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.37 released
Date: Fri, 20 Sep 2002 08:37:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209201537.g8KFb3l19846@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.37 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.37.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.37.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               440465           1888994
Full source                       36309929         161914880

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/driver-model.txt              |  617 ----------
 arch/i386/kernel/setup-visws.c              |  128 --
 arch/i386/kernel/visws_apic.c               |  410 -------
 arch/i386/pci/visws.c                       |  141 --
 arch/ppc/boot/chrp/Makefile                 |   69 -
 arch/ppc/boot/chrp/main.c                   |  106 -
 arch/ppc/boot/chrp/misc.S                   |   53 
 arch/ppc/boot/chrp/start.c                  |  311 -----
 arch/ppc/boot/pmac/Makefile                 |  112 -
 arch/ppc/boot/pmac/chrpmain.c               |  100 -
 arch/ppc/boot/pmac/coffmain.c               |  105 -
 arch/ppc/boot/pmac/misc.S                   |   60 -
 arch/ppc/boot/pmac/start.c                  |  346 ------
 arch/ppc64/kernel/local_irq.h               |   26 
 arch/ppc64/kernel/mk_defs.c                 |  162 --
 arch/ppc64/kernel/ppc_asm.h                 |  115 --
 arch/ppc64/kernel/ppc_defs.head             |    3 
 b/Documentation/driver-model/binding.txt    |  102 +
 b/Documentation/driver-model/bus.txt        |  192 +++
 b/Documentation/driver-model/class.txt      |  162 ++
 b/Documentation/driver-model/device.txt     |  152 ++
 b/Documentation/driver-model/driver.txt     |  287 +++++
 b/Documentation/driver-model/interface.txt  |  129 ++
 b/Documentation/driver-model/overview.txt   |  114 +
 b/Documentation/driver-model/platform.txt   |   99 +
 b/Documentation/filesystems/proc.txt        |    6 
 b/Documentation/sysctl/vm.txt               |    2 
 b/MAINTAINERS                               |   35 
 b/Makefile                                  |   34 
 b/arch/alpha/mm/numa.c                      |    6 
 b/arch/i386/Makefile                        |   25 
 b/arch/i386/config.in                       |   15 
 b/arch/i386/kernel/Makefile                 |   14 
 b/arch/i386/kernel/acpi.c                   |   71 -
 b/arch/i386/kernel/apic.c                   |   15 
 b/arch/i386/kernel/cpu/amd.c                |    2 
 b/arch/i386/kernel/cpu/intel.c              |    2 
 b/arch/i386/kernel/cpu/mtrr/mtrr.h          |    3 
 b/arch/i386/kernel/entry.S                  |   32 
 b/arch/i386/kernel/i386_ksyms.c             |    6 
 b/arch/i386/kernel/i8259.c                  |   58 -
 b/arch/i386/kernel/io_apic.c                |    2 
 b/arch/i386/kernel/mca.c                    |    8 
 b/arch/i386/kernel/mpparse.c                |   64 -
 b/arch/i386/kernel/numaq.c                  |   20 
 b/arch/i386/kernel/process.c                |  281 ----
 b/arch/i386/kernel/reboot.c                 |  324 +++++
 b/arch/i386/kernel/setup.c                  |   39 
 b/arch/i386/kernel/smpboot.c                |   69 -
 b/arch/i386/kernel/suspend.c                |    1 
 b/arch/i386/kernel/time.c                   |   93 -
 b/arch/i386/kernel/traps.c                  |  103 -
 b/arch/i386/lib/checksum.S                  |   40 
 b/arch/i386/mach-generic/Makefile           |   15 
 b/arch/i386/mach-generic/do_timer.h         |   81 +
 b/arch/i386/mach-generic/entry_arch.h       |   34 
 b/arch/i386/mach-generic/irq_vectors.h      |   85 +
 b/arch/i386/mach-generic/setup.c            |  104 +
 b/arch/i386/mach-generic/setup_arch_post.h  |   40 
 b/arch/i386/mach-generic/setup_arch_pre.h   |    5 
 b/arch/i386/mach-generic/smpboot_hooks.h    |   33 
 b/arch/i386/mach-visws/Makefile             |   25 
 b/arch/i386/mach-visws/do_timer.h           |   50 
 b/arch/i386/mach-visws/entry_arch.h         |   23 
 b/arch/i386/mach-visws/irq_vectors.h        |   64 +
 b/arch/i386/mach-visws/mpparse.c            |   67 +
 b/arch/i386/mach-visws/pci-visws.c          |  141 ++
 b/arch/i386/mach-visws/setup.c              |  170 ++
 b/arch/i386/mach-visws/setup_arch_post.h    |   37 
 b/arch/i386/mach-visws/setup_arch_pre.h     |    5 
 b/arch/i386/mach-visws/smpboot_hooks.h      |   13 
 b/arch/i386/mach-visws/traps.c              |  134 ++
 b/arch/i386/mach-visws/visws_apic.c         |  410 +++++++
 b/arch/i386/math-emu/Makefile               |    2 
 b/arch/i386/mm/Makefile                     |   10 
 b/arch/i386/mm/discontig.c                  |   15 
 b/arch/i386/mm/hugetlbpage.c                |    4 
 b/arch/i386/mm/init.c                       |    6 
 b/arch/i386/mm/pgtable.c                    |   29 
 b/arch/i386/pci/Makefile                    |    7 
 b/arch/i386/pci/acpi.c                      |    2 
 b/arch/m68k/vmlinux.lds.S                   |    2 
 b/arch/mips/Makefile                        |   10 
 b/arch/mips/arc/Makefile                    |    7 
 b/arch/mips/baget/prom/Makefile             |    7 
 b/arch/mips/dec/prom/Makefile               |    2 
 b/arch/mips64/Makefile                      |    6 
 b/arch/mips64/arc/Makefile                  |    2 
 b/arch/mips64/sgi-ip22/Makefile             |    2 
 b/arch/mips64/sgi-ip27/ip27-memory.c        |   12 
 b/arch/ppc/8260_io/Makefile                 |    2 
 b/arch/ppc/8260_io/commproc.c               |    4 
 b/arch/ppc/8260_io/enet.c                   |    3 
 b/arch/ppc/8260_io/fcc_enet.c               |    3 
 b/arch/ppc/8260_io/uart.c                   |    3 
 b/arch/ppc/8xx_io/Makefile                  |    2 
 b/arch/ppc/8xx_io/commproc.c                |    4 
 b/arch/ppc/8xx_io/enet.c                    |    3 
 b/arch/ppc/8xx_io/fec.c                     |    3 
 b/arch/ppc/8xx_io/uart.c                    |    3 
 b/arch/ppc/Makefile                         |    9 
 b/arch/ppc/amiga/Makefile                   |    2 
 b/arch/ppc/amiga/amiga_ksyms.c              |    3 
 b/arch/ppc/amiga/amiints.c                  |    5 
 b/arch/ppc/amiga/amisound.c                 |    3 
 b/arch/ppc/amiga/bootinfo.c                 |    5 
 b/arch/ppc/amiga/chipram.c                  |    3 
 b/arch/ppc/amiga/cia.c                      |    5 
 b/arch/ppc/amiga/config.c                   |    5 
 b/arch/ppc/amiga/ints.c                     |    5 
 b/arch/ppc/amiga/pcmcia.c                   |    3 
 b/arch/ppc/amiga/time.c                     |    3 
 b/arch/ppc/boot/Makefile                    |   10 
 b/arch/ppc/boot/common/cpc700_memory.c      |   38 
 b/arch/ppc/boot/common/crt0.S               |    3 
 b/arch/ppc/boot/common/dummy.c              |    3 
 b/arch/ppc/boot/common/misc-simple.c        |   17 
 b/arch/ppc/boot/common/mpc10x_memory.c      |  109 +
 b/arch/ppc/boot/common/ns16550.c            |    3 
 b/arch/ppc/boot/common/ofcommon.c           |    2 
 b/arch/ppc/boot/common/string.S             |    3 
 b/arch/ppc/boot/common/util.S               |    5 
 b/arch/ppc/boot/include/cpc700.h            |   26 
 b/arch/ppc/boot/include/mpc10x.h            |   67 +
 b/arch/ppc/boot/include/nonstdio.h          |    3 
 b/arch/ppc/boot/include/of1275.h            |   38 
 b/arch/ppc/boot/include/rs6000.h            |    3 
 b/arch/ppc/boot/include/zlib.h              |    3 
 b/arch/ppc/boot/ld.script                   |    3 
 b/arch/ppc/boot/lib/Makefile                |    2 
 b/arch/ppc/boot/lib/zlib.c                  |    3 
 b/arch/ppc/boot/of1275/Makefile             |   10 
 b/arch/ppc/boot/of1275/claim.c              |   34 
 b/arch/ppc/boot/of1275/enter.c              |   22 
 b/arch/ppc/boot/of1275/exit.c               |   24 
 b/arch/ppc/boot/of1275/finddevice.c         |   31 
 b/arch/ppc/boot/of1275/getprop.c            |   37 
 b/arch/ppc/boot/of1275/ofinit.c             |   19 
 b/arch/ppc/boot/of1275/ofstdio.c            |   32 
 b/arch/ppc/boot/of1275/read.c               |   35 
 b/arch/ppc/boot/of1275/release.c            |   30 
 b/arch/ppc/boot/of1275/write.c              |   35 
 b/arch/ppc/boot/openfirmware/Makefile       |  137 ++
 b/arch/ppc/boot/openfirmware/chrpmain.c     |  100 +
 b/arch/ppc/boot/openfirmware/coffmain.c     |   99 +
 b/arch/ppc/boot/openfirmware/common.c       |  179 +++
 b/arch/ppc/boot/openfirmware/misc.S         |   57 
 b/arch/ppc/boot/openfirmware/newworldmain.c |   93 +
 b/arch/ppc/boot/openfirmware/start.c        |  172 +++
 b/arch/ppc/boot/prep/Makefile               |    9 
 b/arch/ppc/boot/prep/head.S                 |   14 
 b/arch/ppc/boot/prep/iso_font.h             |    3 
 b/arch/ppc/boot/prep/kbd.c                  |    4 
 b/arch/ppc/boot/prep/misc.c                 |   67 -
 b/arch/ppc/boot/prep/of1275.c               |    3 
 b/arch/ppc/boot/prep/of1275.h               |    3 
 b/arch/ppc/boot/prep/vreset.c               |    3 
 b/arch/ppc/boot/simple/Makefile             |  160 +-
 b/arch/ppc/boot/simple/embed_config.c       |   96 +
 b/arch/ppc/boot/simple/gt64260_tty.c        |    3 
 b/arch/ppc/boot/simple/head.S               |    5 
 b/arch/ppc/boot/simple/iic.c                |    4 
 b/arch/ppc/boot/simple/m8260_tty.c          |    5 
 b/arch/ppc/boot/simple/m8xx_tty.c           |    5 
 b/arch/ppc/boot/simple/misc-embedded.c      |    4 
 b/arch/ppc/boot/simple/pci.c                |    3 
 b/arch/ppc/boot/simple/qspan_pci.c          |    3 
 b/arch/ppc/boot/utils/addnote.c             |    3 
 b/arch/ppc/boot/utils/hack-coff.c           |    3 
 b/arch/ppc/boot/utils/mknote.c              |    3 
 b/arch/ppc/boot/utils/mkprep.c              |    3 
 b/arch/ppc/boot/utils/mktree.c              |    2 
 b/arch/ppc/config.in                        |  102 -
 b/arch/ppc/kernel/Makefile                  |    2 
 b/arch/ppc/kernel/align.c                   |    3 
 b/arch/ppc/kernel/bitops.c                  |    3 
 b/arch/ppc/kernel/btext.c                   |    3 
 b/arch/ppc/kernel/cputable.c                |    3 
 b/arch/ppc/kernel/entry.S                   |    3 
 b/arch/ppc/kernel/find_name.c               |    3 
 b/arch/ppc/kernel/head.S                    |    3 
 b/arch/ppc/kernel/head_8xx.S                |    3 
 b/arch/ppc/kernel/i8259.c                   |    4 
 b/arch/ppc/kernel/iSeries_asm.h             |    3 
 b/arch/ppc/kernel/idle.c                    |    3 
 b/arch/ppc/kernel/indirect_pci.c            |    3 
 b/arch/ppc/kernel/irq.c                     |    3 
 b/arch/ppc/kernel/m8260_setup.c             |    5 
 b/arch/ppc/kernel/m8xx_setup.c              |    4 
 b/arch/ppc/kernel/misc.S                    |    3 
 b/arch/ppc/kernel/mk_defs.c                 |    3 
 b/arch/ppc/kernel/open_pic.c                |    3 
 b/arch/ppc/kernel/open_pic_defs.h           |    5 
 b/arch/ppc/kernel/pci-dma.c                 |    3 
 b/arch/ppc/kernel/pci.c                     |    3 
 b/arch/ppc/kernel/ppc-stub.c                |    3 
 b/arch/ppc/kernel/ppc8260_pic.c             |    4 
 b/arch/ppc/kernel/ppc8260_pic.h             |    4 
 b/arch/ppc/kernel/ppc8xx_pic.c              |    3 
 b/arch/ppc/kernel/ppc8xx_pic.h              |    3 
 b/arch/ppc/kernel/ppc_htab.c                |   37 
 b/arch/ppc/kernel/ppc_ksyms.c               |    3 
 b/arch/ppc/kernel/prep_nvram.c              |    3 
 b/arch/ppc/kernel/process.c                 |    5 
 b/arch/ppc/kernel/prom.c                    |    3 
 b/arch/ppc/kernel/ptrace.c                  |    5 
 b/arch/ppc/kernel/qspan_pci.c               |    3 
 b/arch/ppc/kernel/semaphore.c               |    3 
 b/arch/ppc/kernel/setup.c                   |    3 
 b/arch/ppc/kernel/signal.c                  |    5 
 b/arch/ppc/kernel/smp.c                     |    3 
 b/arch/ppc/kernel/softemu8xx.c              |    3 
 b/arch/ppc/kernel/syscalls.c                |    5 
 b/arch/ppc/kernel/time.c                    |    3 
 b/arch/ppc/kernel/traps.c                   |    5 
 b/arch/ppc/lib/Makefile                     |    2 
 b/arch/ppc/lib/checksum.S                   |    3 
 b/arch/ppc/lib/locks.c                      |    3 
 b/arch/ppc/lib/strcase.c                    |    3 
 b/arch/ppc/lib/string.S                     |    3 
 b/arch/ppc/math-emu/Makefile                |    6 
 b/arch/ppc/math-emu/double.h                |    3 
 b/arch/ppc/math-emu/fabs.c                  |    3 
 b/arch/ppc/math-emu/fadd.c                  |    3 
 b/arch/ppc/math-emu/fadds.c                 |    3 
 b/arch/ppc/math-emu/fcmpo.c                 |    3 
 b/arch/ppc/math-emu/fcmpu.c                 |    3 
 b/arch/ppc/math-emu/fctiw.c                 |    3 
 b/arch/ppc/math-emu/fctiwz.c                |    3 
 b/arch/ppc/math-emu/fdiv.c                  |    3 
 b/arch/ppc/math-emu/fdivs.c                 |    3 
 b/arch/ppc/math-emu/fmadd.c                 |    3 
 b/arch/ppc/math-emu/fmadds.c                |    3 
 b/arch/ppc/math-emu/fmr.c                   |    3 
 b/arch/ppc/math-emu/fmsub.c                 |    3 
 b/arch/ppc/math-emu/fmsubs.c                |    3 
 b/arch/ppc/math-emu/fmul.c                  |    3 
 b/arch/ppc/math-emu/fmuls.c                 |    3 
 b/arch/ppc/math-emu/fnabs.c                 |    3 
 b/arch/ppc/math-emu/fneg.c                  |    3 
 b/arch/ppc/math-emu/fnmadd.c                |    3 
 b/arch/ppc/math-emu/fnmadds.c               |    3 
 b/arch/ppc/math-emu/fnmsub.c                |    3 
 b/arch/ppc/math-emu/fnmsubs.c               |    3 
 b/arch/ppc/math-emu/fres.c                  |    3 
 b/arch/ppc/math-emu/frsp.c                  |    3 
 b/arch/ppc/math-emu/frsqrte.c               |    3 
 b/arch/ppc/math-emu/fsel.c                  |    3 
 b/arch/ppc/math-emu/fsqrt.c                 |    3 
 b/arch/ppc/math-emu/fsqrts.c                |    3 
 b/arch/ppc/math-emu/fsub.c                  |    3 
 b/arch/ppc/math-emu/fsubs.c                 |    3 
 b/arch/ppc/math-emu/lfd.c                   |    3 
 b/arch/ppc/math-emu/lfs.c                   |    3 
 b/arch/ppc/math-emu/math.c                  |    3 
 b/arch/ppc/math-emu/mcrfs.c                 |    3 
 b/arch/ppc/math-emu/mffs.c                  |    3 
 b/arch/ppc/math-emu/mtfsb0.c                |    3 
 b/arch/ppc/math-emu/mtfsb1.c                |    3 
 b/arch/ppc/math-emu/mtfsf.c                 |    3 
 b/arch/ppc/math-emu/mtfsfi.c                |    3 
 b/arch/ppc/math-emu/op-1.h                  |    3 
 b/arch/ppc/math-emu/op-2.h                  |    3 
 b/arch/ppc/math-emu/op-4.h                  |    3 
 b/arch/ppc/math-emu/op-common.h             |    4 
 b/arch/ppc/math-emu/sfp-machine.h           |    3 
 b/arch/ppc/math-emu/single.h                |    3 
 b/arch/ppc/math-emu/soft-fp.h               |    3 
 b/arch/ppc/math-emu/stfd.c                  |    3 
 b/arch/ppc/math-emu/stfiwx.c                |    3 
 b/arch/ppc/math-emu/stfs.c                  |    3 
 b/arch/ppc/math-emu/types.c                 |    4 
 b/arch/ppc/math-emu/udivmodti4.c            |    3 
 b/arch/ppc/mm/4xx_mmu.c                     |    3 
 b/arch/ppc/mm/Makefile                      |    2 
 b/arch/ppc/mm/cachemap.c                    |    4 
 b/arch/ppc/mm/extable.c                     |    7 
 b/arch/ppc/mm/fault.c                       |    3 
 b/arch/ppc/mm/hashtable.S                   |    3 
 b/arch/ppc/mm/iSeries_mmu.c                 |    3 
 b/arch/ppc/mm/init.c                        |    3 
 b/arch/ppc/mm/mem_pieces.c                  |    3 
 b/arch/ppc/mm/mem_pieces.h                  |    3 
 b/arch/ppc/mm/mmu_context.c                 |    3 
 b/arch/ppc/mm/mmu_decl.h                    |    3 
 b/arch/ppc/mm/pgtable.c                     |    3 
 b/arch/ppc/mm/ppc_mmu.c                     |    3 
 b/arch/ppc/mm/tlb.c                         |    3 
 b/arch/ppc/platforms/Makefile               |    2 
 b/arch/ppc/platforms/apus_pci.c             |    3 
 b/arch/ppc/platforms/apus_pci.h             |    3 
 b/arch/ppc/platforms/apus_setup.c           |    3 
 b/arch/ppc/platforms/bseip.h                |    4 
 b/arch/ppc/platforms/chrp_pci.c             |    3 
 b/arch/ppc/platforms/chrp_setup.c           |    3 
 b/arch/ppc/platforms/chrp_smp.c             |    3 
 b/arch/ppc/platforms/chrp_time.c            |    3 
 b/arch/ppc/platforms/ep405.c                |   13 
 b/arch/ppc/platforms/error_log.c            |    3 
 b/arch/ppc/platforms/error_log.h            |    3 
 b/arch/ppc/platforms/est8260.h              |    4 
 b/arch/ppc/platforms/fads.h                 |    4 
 b/arch/ppc/platforms/gemini.h               |    5 
 b/arch/ppc/platforms/gemini_pci.c           |    3 
 b/arch/ppc/platforms/gemini_prom.S          |    5 
 b/arch/ppc/platforms/gemini_serial.h        |    3 
 b/arch/ppc/platforms/gemini_setup.c         |    5 
 b/arch/ppc/platforms/iSeries_pic.c          |    3 
 b/arch/ppc/platforms/iSeries_smp.c          |    3 
 b/arch/ppc/platforms/iSeries_time.c         |    3 
 b/arch/ppc/platforms/ivms8.h                |    3 
 b/arch/ppc/platforms/mbx.h                  |    3 
 b/arch/ppc/platforms/oak.h                  |    3 
 b/arch/ppc/platforms/oak_setup.c            |    3 
 b/arch/ppc/platforms/oak_setup.h            |    3 
 b/arch/ppc/platforms/pmac_backlight.c       |    3 
 b/arch/ppc/platforms/pmac_feature.c         |    3 
 b/arch/ppc/platforms/pmac_nvram.c           |    3 
 b/arch/ppc/platforms/pmac_pci.c             |    3 
 b/arch/ppc/platforms/pmac_pic.c             |    3 
 b/arch/ppc/platforms/pmac_pic.h             |    3 
 b/arch/ppc/platforms/pmac_setup.c           |    3 
 b/arch/ppc/platforms/pmac_smp.c             |    3 
 b/arch/ppc/platforms/pmac_time.c            |    3 
 b/arch/ppc/platforms/prep_pci.c             |    3 
 b/arch/ppc/platforms/prep_setup.c           |    3 
 b/arch/ppc/platforms/prep_time.c            |    3 
 b/arch/ppc/platforms/proc_rtas.c            |    5 
 b/arch/ppc/platforms/residual.c             |    3 
 b/arch/ppc/platforms/rpxclassic.h           |    4 
 b/arch/ppc/platforms/rpxhiox.h              |    4 
 b/arch/ppc/platforms/rpxlite.h              |    4 
 b/arch/ppc/platforms/sleep.S                |    3 
 b/arch/ppc/platforms/spd8xx.h               |    3 
 b/arch/ppc/platforms/tqm8xx.h               |    3 
 b/arch/ppc/xmon/Makefile                    |    2 
 b/arch/ppc/xmon/adb.c                       |    3 
 b/arch/ppc/xmon/ansidecl.h                  |    3 
 b/arch/ppc/xmon/nonstdio.h                  |    3 
 b/arch/ppc/xmon/ppc-dis.c                   |    3 
 b/arch/ppc/xmon/ppc-opc.c                   |    3 
 b/arch/ppc/xmon/ppc.h                       |    3 
 b/arch/ppc/xmon/privinst.h                  |    3 
 b/arch/ppc/xmon/setjmp.c                    |    3 
 b/arch/ppc/xmon/start.c                     |    3 
 b/arch/ppc/xmon/start_8xx.c                 |    3 
 b/arch/ppc/xmon/subr_prf.c                  |    3 
 b/arch/ppc/xmon/xmon.c                      |    3 
 b/arch/ppc64/Makefile                       |   17 
 b/arch/ppc64/kernel/LparData.c              |    6 
 b/arch/ppc64/kernel/Makefile                |   22 
 b/arch/ppc64/kernel/asm-offsets.c           |  162 ++
 b/arch/ppc64/kernel/chrp_setup.c            |    5 
 b/arch/ppc64/kernel/entry.S                 |    9 
 b/arch/ppc64/kernel/head.S                  |    8 
 b/arch/ppc64/kernel/htab.c                  |    1 
 b/arch/ppc64/kernel/hvCall.S                |    3 
 b/arch/ppc64/kernel/i8259.h                 |    2 
 b/arch/ppc64/kernel/iSeries_VpdInfo.c       |    1 
 b/arch/ppc64/kernel/iSeries_pci.c           |    1 
 b/arch/ppc64/kernel/iSeries_setup.c         |   13 
 b/arch/ppc64/kernel/irq.c                   |    3 
 b/arch/ppc64/kernel/lmb.c                   |    2 
 b/arch/ppc64/kernel/misc.S                  |   27 
 b/arch/ppc64/kernel/open_pic.c              |    1 
 b/arch/ppc64/kernel/pSeries_hvCall.S        |    3 
 b/arch/ppc64/kernel/pSeries_pci.c           |   83 -
 b/arch/ppc64/kernel/pci.c                   |  130 --
 b/arch/ppc64/kernel/pci_dma.c               |   63 -
 b/arch/ppc64/kernel/pci_dn.c                |   30 
 b/arch/ppc64/kernel/proc_pmc.c              |    1 
 b/arch/ppc64/kernel/process.c               |   12 
 b/arch/ppc64/kernel/rtas.c                  |    6 
 b/arch/ppc64/kernel/rtas_flash.c            |    2 
 b/arch/ppc64/kernel/signal.c                |    9 
 b/arch/ppc64/kernel/signal32.c              |   19 
 b/arch/ppc64/kernel/stab.c                  |   16 
 b/arch/ppc64/kernel/sys32.S                 |    2 
 b/arch/ppc64/kernel/sys_ppc32.c             |   41 
 b/arch/ppc64/kernel/syscalls.c              |   26 
 b/arch/ppc64/kernel/time.c                  |    5 
 b/arch/ppc64/kernel/traps.c                 |    2 
 b/arch/ppc64/kernel/xics.c                  |    1 
 b/arch/ppc64/kernel/xics.h                  |    2 
 b/arch/ppc64/lib/checksum.S                 |    2 
 b/arch/ppc64/lib/copypage.S                 |    2 
 b/arch/ppc64/lib/copyuser.S                 |    2 
 b/arch/ppc64/lib/memcpy.S                   |    2 
 b/arch/ppc64/lib/string.S                   |    2 
 b/arch/ppc64/mm/Makefile                    |    1 
 b/arch/ppc64/mm/init.c                      |   43 
 b/arch/ppc64/mm/numa.c                      |  171 ++
 b/arch/ppc64/xmon/xmon.c                    |   12 
 b/arch/s390/vmlinux.lds.S                   |    2 
 b/arch/s390x/vmlinux.lds.S                  |    2 
 b/arch/sparc/Makefile                       |    2 
 b/arch/sparc/config.in                      |    2 
 b/arch/sparc/kernel/setup.c                 |   61 -
 b/arch/sparc/kernel/sparc_ksyms.c           |   11 
 b/arch/sparc/mm/srmmu.c                     |   40 
 b/arch/sparc/prom/Makefile                  |    7 
 b/arch/sparc64/Config.help                  |    8 
 b/arch/sparc64/Makefile                     |    4 
 b/arch/sparc64/config.in                    |    4 
 b/arch/sparc64/defconfig                    |   47 
 b/arch/sparc64/kernel/setup.c               |    2 
 b/arch/sparc64/kernel/sparc64_ksyms.c       |    1 
 b/arch/sparc64/kernel/sys_sparc.c           |   97 +
 b/arch/sparc64/kernel/systbls.S             |    4 
 b/arch/sparc64/kernel/traps.c               |   18 
 b/arch/sparc64/mm/Makefile                  |    2 
 b/arch/sparc64/mm/fault.c                   |   36 
 b/arch/sparc64/mm/hugetlbpage.c             |  621 ++++++++++
 b/arch/sparc64/mm/init.c                    |   35 
 b/arch/sparc64/prom/Makefile                |    2 
 b/drivers/acpi/Config.help                  |   17 
 b/drivers/acpi/Config.in                    |    3 
 b/drivers/acpi/Makefile                     |    9 
 b/drivers/acpi/ac.c                         |   12 
 b/drivers/acpi/acpi_bus.h                   |   42 
 b/drivers/acpi/acpi_drivers.h               |  210 ---
 b/drivers/acpi/acpi_ksyms.c                 |    2 
 b/drivers/acpi/battery.c                    |   15 
 b/drivers/acpi/blacklist.c                  |  141 ++
 b/drivers/acpi/bus.c                        | 1505 --------------------------
 b/drivers/acpi/button.c                     |   26 
 b/drivers/acpi/debug.c                      |  130 ++
 b/drivers/acpi/dispatcher/dsfield.c         |    8 
 b/drivers/acpi/dispatcher/dsobject.c        |    7 
 b/drivers/acpi/dispatcher/dswload.c         |   68 +
 b/drivers/acpi/driverfs.c                   |   46 
 b/drivers/acpi/ec.c                         |   27 
 b/drivers/acpi/event.c                      |  140 ++
 b/drivers/acpi/executer/exconvrt.c          |   30 
 b/drivers/acpi/executer/exmisc.c            |    3 
 b/drivers/acpi/executer/exoparg1.c          |  132 --
 b/drivers/acpi/executer/exresnte.c          |    3 
 b/drivers/acpi/executer/exresolv.c          |  169 ++
 b/drivers/acpi/executer/exresop.c           |    9 
 b/drivers/acpi/executer/exstore.c           |   10 
 b/drivers/acpi/executer/exstoren.c          |   11 
 b/drivers/acpi/fan.c                        |    9 
 b/drivers/acpi/include/acconfig.h           |    4 
 b/drivers/acpi/include/acdebug.h            |    6 
 b/drivers/acpi/include/acexcep.h            |   14 
 b/drivers/acpi/include/acinterp.h           |    9 
 b/drivers/acpi/include/acpiosxf.h           |   20 
 b/drivers/acpi/include/actypes.h            |    2 
 b/drivers/acpi/include/acutils.h            |   16 
 b/drivers/acpi/namespace/nsdump.c           |   14 
 b/drivers/acpi/namespace/nsdumpdv.c         |    3 
 b/drivers/acpi/namespace/nsload.c           |    3 
 b/drivers/acpi/numa.c                       |    2 
 b/drivers/acpi/parser/psxface.c             |    3 
 b/drivers/acpi/pci_bind.c                   |    3 
 b/drivers/acpi/pci_irq.c                    |    2 
 b/drivers/acpi/pci_link.c                   |   16 
 b/drivers/acpi/pci_root.c                   |   23 
 b/drivers/acpi/power.c                      |   33 
 b/drivers/acpi/processor.c                  |   12 
 b/drivers/acpi/resources/rsdump.c           |   35 
 b/drivers/acpi/scan.c                       |  944 ++++++++++++++++
 b/drivers/acpi/sleep.c                      |  718 ++++++++++++
 b/drivers/acpi/system.c                     | 1157 --------------------
 b/drivers/acpi/tables.c                     |   67 +
 b/drivers/acpi/tables/tbget.c               |   14 
 b/drivers/acpi/thermal.c                    |   19 
 b/drivers/acpi/utilities/utcopy.c           |    3 
 b/drivers/acpi/utilities/utdebug.c          |    6 
 b/drivers/acpi/utilities/utglobal.c         |    3 
 b/drivers/acpi/utilities/utinit.c           |    4 
 b/drivers/acpi/utilities/utmisc.c           |    4 
 b/drivers/base/Makefile                     |    2 
 b/drivers/base/core.c                       |    9 
 b/drivers/base/platform.c                   |   27 
 b/drivers/base/power.c                      |    6 
 b/drivers/block/DAC960.c                    |    4 
 b/drivers/block/cciss.c                     |    5 
 b/drivers/block/cpqarray.c                  |    6 
 b/drivers/block/floppy.c                    |    6 
 b/drivers/block/ll_rw_blk.c                 |  290 -----
 b/drivers/block/loop.c                      |   21 
 b/drivers/block/rd.c                        |    5 
 b/drivers/block/umem.c                      |   11 
 b/drivers/bluetooth/hci_h4.c                |   14 
 b/drivers/bluetooth/hci_usb.c               |    8 
 b/drivers/bluetooth/hci_vhci.c              |   18 
 b/drivers/char/eurotechwdt.c                |    1 
 b/drivers/char/random.c                     |  167 +-
 b/drivers/char/raw.c                        |    2 
 b/drivers/char/rtc.c                        |    1 
 b/drivers/char/tty_io.c                     |   43 
 b/drivers/hotplug/cpqphp.h                  |    9 
 b/drivers/hotplug/cpqphp_core.c             |   66 -
 b/drivers/hotplug/cpqphp_ctrl.c             |    4 
 b/drivers/hotplug/ibmphp_core.c             |   32 
 b/drivers/hotplug/pci_hotplug.h             |   28 
 b/drivers/hotplug/pci_hotplug_core.c        |  290 ++++-
 b/drivers/i2c/i2c-philips-par.c             |    2 
 b/drivers/ide/Makefile                      |   20 
 b/drivers/ide/arm/Makefile                  |    5 
 b/drivers/ide/ide-dma.c                     |   14 
 b/drivers/ide/ide-lib.c                     |   16 
 b/drivers/ide/ide-probe.c                   |    2 
 b/drivers/ide/ide-proc.c                    |    2 
 b/drivers/ide/ide-taskfile.c                |    2 
 b/drivers/ide/ide.c                         |    2 
 b/drivers/ide/legacy/Makefile               |    5 
 b/drivers/ide/legacy/hd.c                   |    2 
 b/drivers/ide/pci/Makefile                  |    5 
 b/drivers/ide/ppc/Makefile                  |    5 
 b/drivers/ieee1394/Makefile                 |    6 
 b/drivers/ieee1394/dv1394.c                 |   25 
 b/drivers/isdn/hisax/st5481_init.c          |    4 
 b/drivers/md/linear.c                       |    4 
 b/drivers/md/md.c                           |    8 
 b/drivers/md/multipath.c                    |    9 
 b/drivers/md/raid0.c                        |    2 
 b/drivers/md/raid1.c                        |   20 
 b/drivers/md/raid5.c                        |   32 
 b/drivers/message/fusion/Makefile           |   25 
 b/drivers/net/3c509.c                       |    4 
 b/drivers/net/3c59x.c                       |   13 
 b/drivers/net/8139cp.c                      |   34 
 b/drivers/net/8139too.c                     |    4 
 b/drivers/net/Config.help                   |   18 
 b/drivers/net/Config.in                     |    4 
 b/drivers/net/Makefile                      |    2 
 b/drivers/net/acenic.c                      |  170 ++
 b/drivers/net/acenic.h                      |   26 
 b/drivers/net/dl2k.c                        |    5 
 b/drivers/net/e100/e100_main.c              |    8 
 b/drivers/net/eepro100.c                    |  225 ++-
 b/drivers/net/epic100.c                     |    6 
 b/drivers/net/fealnx.c                      |   12 
 b/drivers/net/hp100.c                       |    9 
 b/drivers/net/irda/act200l.c                |    6 
 b/drivers/net/irda/actisys.c                |    2 
 b/drivers/net/irda/ali-ircc.c               |  172 +--
 b/drivers/net/irda/girbil.c                 |    6 
 b/drivers/net/irda/irda-usb.c               |    2 
 b/drivers/net/irda/irport.c                 |  150 +-
 b/drivers/net/irda/irtty.c                  |   97 +
 b/drivers/net/irda/mcp2120.c                |    6 
 b/drivers/net/irda/nsc-ircc.c               |  132 +-
 b/drivers/net/irda/smc-ircc.c               |   46 
 b/drivers/net/irda/tekram.c                 |    6 
 b/drivers/net/irda/toshoboe.c               |    8 
 b/drivers/net/irda/w83977af_ir.c            |   27 
 b/drivers/net/lasi_82596.c                  |  374 +++---
 b/drivers/net/natsemi.c                     |  486 +++++---
 b/drivers/net/pci-skeleton.c                |    4 
 b/drivers/net/pcmcia/axnet_cs.c             |   25 
 b/drivers/net/pcmcia/pcnet_cs.c             |    6 
 b/drivers/net/ppp_generic.c                 |    2 
 b/drivers/net/sundance.c                    |  703 +++++++-----
 b/drivers/net/tg3.c                         |  156 ++
 b/drivers/net/tg3.h                         |    5 
 b/drivers/net/tulip/ChangeLog               |   11 
 b/drivers/net/tulip/eeprom.c                |   56 
 b/drivers/net/tulip/interrupt.c             |   22 
 b/drivers/net/tulip/tulip.h                 |    4 
 b/drivers/net/tulip/tulip_core.c            |   19 
 b/drivers/net/tulip/winbond-840.c           |    6 
 b/drivers/net/tulip/xircom_tulip_cb.c       |    3 
 b/drivers/net/tun.c                         |    4 
 b/drivers/net/wan/c101.c                    |   38 
 b/drivers/net/wan/comx-hw-munich.c          |   12 
 b/drivers/net/wan/hd6457x.c                 |    2 
 b/drivers/net/wan/hdlc_cisco.c              |   16 
 b/drivers/net/wan/hdlc_fr.c                 |   43 
 b/drivers/net/wan/hdlc_generic.c            |   38 
 b/drivers/net/wan/hdlc_ppp.c                |    8 
 b/drivers/net/wan/hdlc_raw.c                |   25 
 b/drivers/net/wan/hdlc_x25.c                |    8 
 b/drivers/net/wan/n2.c                      |   40 
 b/drivers/net/wireless/airo.c               |   94 +
 b/drivers/net/wireless/netwave_cs.c         |   43 
 b/drivers/net/wireless/wavelan.c            |   53 
 b/drivers/net/wireless/wavelan.p.h          |    6 
 b/drivers/net/wireless/wavelan_cs.c         |   46 
 b/drivers/net/wireless/wavelan_cs.p.h       |    6 
 b/drivers/net/yellowfin.c                   |    6 
 b/drivers/pci/pool.c                        |    2 
 b/drivers/pci/probe.c                       |    3 
 b/drivers/pci/proc.c                        |    3 
 b/drivers/pcmcia/sa1100.h                   |    2 
 b/drivers/pcmcia/sa1100_generic.c           |    4 
 b/drivers/s390/net/iucv.c                   |    6 
 b/drivers/sbus/char/Config.in               |    2 
 b/drivers/sbus/char/bbc_envctrl.c           |    2 
 b/drivers/sbus/char/envctrl.c               |    2 
 b/drivers/scsi/Makefile                     |    5 
 b/drivers/scsi/scsi.c                       |   88 +
 b/drivers/scsi/scsi.h                       |    5 
 b/drivers/scsi/scsi_lib.c                   |    6 
 b/drivers/scsi/sd.c                         |    1 
 b/drivers/scsi/sg.c                         |    1 
 b/drivers/serial/sunsu.c                    |   46 
 b/drivers/usb/serial/visor.c                |    4 
 b/drivers/video/clgenfb.c                   |    1 
 b/fs/Makefile                               |    2 
 b/fs/aio.c                                  |    2 
 b/fs/bad_inode.c                            |   54 
 b/fs/binfmt_aout.c                          |   10 
 b/fs/binfmt_elf.c                           |   12 
 b/fs/binfmt_em86.c                          |    4 
 b/fs/binfmt_misc.c                          |   30 
 b/fs/binfmt_script.c                        |    4 
 b/fs/bio.c                                  |  165 ++
 b/fs/block_dev.c                            |    6 
 b/fs/buffer.c                               |  155 ++
 b/fs/devices.c                              |    4 
 b/fs/direct-io.c                            |    6 
 b/fs/dquot.c                                |   28 
 b/fs/driverfs/inode.c                       |   84 -
 b/fs/exec.c                                 |    4 
 b/fs/ext2/inode.c                           |    4 
 b/fs/ext3/inode.c                           |    4 
 b/fs/fcntl.c                                |   14 
 b/fs/fifo.c                                 |    2 
 b/fs/freevxfs/vxfs_super.c                  |   10 
 b/fs/fs-writeback.c                         |  113 -
 b/fs/jfs/inode.c                            |    5 
 b/fs/jfs/jfs_logmgr.c                       |   11 
 b/fs/libfs.c                                |   18 
 b/fs/mpage.c                                |   72 -
 b/fs/namei.c                                |    4 
 b/fs/namespace.c                            |    8 
 b/fs/nfs/inode.c                            |    2 
 b/fs/nfs/nfs2xdr.c                          |    4 
 b/fs/nfs/nfs3xdr.c                          |    4 
 b/fs/nfsd/nfscache.c                        |    2 
 b/fs/nfsd/nfssvc.c                          |    2 
 b/fs/pipe.c                                 |  104 -
 b/fs/proc/array.c                           |  145 --
 b/fs/proc/proc_misc.c                       |    2 
 b/fs/quota_v1.c                             |   18 
 b/fs/quota_v2.c                             |   18 
 b/fs/read_write.c                           |    8 
 b/fs/smbfs/dir.c                            |   36 
 b/fs/smbfs/file.c                           |   30 
 b/fs/smbfs/inode.c                          |   22 
 b/fs/smbfs/proc.c                           |   48 
 b/fs/xfs/linux/xfs_aops.c                   |    2 
 b/fs/xfs/pagebuf/page_buf.c                 |   19 
 b/include/asm-alpha/mmzone.h                |    8 
 b/include/asm-alpha/numnodes.h              |   12 
 b/include/asm-i386/arch_hooks.h             |   25 
 b/include/asm-i386/irq.h                    |    3 
 b/include/asm-i386/mmzone.h                 |   16 
 b/include/asm-i386/mpspec.h                 |    1 
 b/include/asm-i386/numaq.h                  |    9 
 b/include/asm-i386/numnodes.h               |   12 
 b/include/asm-i386/page.h                   |    2 
 b/include/asm-mips64/mmzone.h               |    1 
 b/include/asm-mips64/pgtable.h              |    8 
 b/include/asm-ppc/8xx_immap.h               |    4 
 b/include/asm-ppc/a.out.h                   |    3 
 b/include/asm-ppc/amigahw.h                 |    3 
 b/include/asm-ppc/amigaints.h               |    3 
 b/include/asm-ppc/amigappc.h                |    5 
 b/include/asm-ppc/amigayle.h                |    3 
 b/include/asm-ppc/amipcmcia.h               |    3 
 b/include/asm-ppc/atomic.h                  |    3 
 b/include/asm-ppc/backlight.h               |    3 
 b/include/asm-ppc/bitops.h                  |    3 
 b/include/asm-ppc/bootinfo.h                |    3 
 b/include/asm-ppc/bootx.h                   |    3 
 b/include/asm-ppc/bseip.h                   |    4 
 b/include/asm-ppc/btext.h                   |    3 
 b/include/asm-ppc/bugs.h                    |    3 
 b/include/asm-ppc/byteorder.h               |    3 
 b/include/asm-ppc/cache.h                   |    3 
 b/include/asm-ppc/cacheflush.h              |    3 
 b/include/asm-ppc/checksum.h                |    3 
 b/include/asm-ppc/commproc.h                |    4 
 b/include/asm-ppc/cpm_8260.h                |    4 
 b/include/asm-ppc/cputable.h                |    3 
 b/include/asm-ppc/current.h                 |    3 
 b/include/asm-ppc/dbdma.h                   |    3 
 b/include/asm-ppc/delay.h                   |    3 
 b/include/asm-ppc/div64.h                   |    3 
 b/include/asm-ppc/dma.h                     |    5 
 b/include/asm-ppc/elf.h                     |    3 
 b/include/asm-ppc/errno.h                   |    3 
 b/include/asm-ppc/fcntl.h                   |    3 
 b/include/asm-ppc/floppy.h                  |    3 
 b/include/asm-ppc/gg2.h                     |    5 
 b/include/asm-ppc/hardirq.h                 |    3 
 b/include/asm-ppc/hdreg.h                   |    5 
 b/include/asm-ppc/heathrow.h                |    3 
 b/include/asm-ppc/highmem.h                 |    3 
 b/include/asm-ppc/hw_irq.h                  |    3 
 b/include/asm-ppc/hydra.h                   |    5 
 b/include/asm-ppc/i8259.h                   |    4 
 b/include/asm-ppc/ide.h                     |    3 
 b/include/asm-ppc/immap_8260.h              |    4 
 b/include/asm-ppc/io.h                      |    4 
 b/include/asm-ppc/ioctl.h                   |    3 
 b/include/asm-ppc/ioctls.h                  |    3 
 b/include/asm-ppc/ipc.h                     |    3 
 b/include/asm-ppc/ipcbuf.h                  |    3 
 b/include/asm-ppc/irq.h                     |    3 
 b/include/asm-ppc/keylargo.h                |    3 
 b/include/asm-ppc/kgdb.h                    |    3 
 b/include/asm-ppc/kmap_types.h              |    3 
 b/include/asm-ppc/linux_logo.h              |    3 
 b/include/asm-ppc/m48t35.h                  |    3 
 b/include/asm-ppc/machdep.h                 |    3 
 b/include/asm-ppc/mc146818rtc.h             |    3 
 b/include/asm-ppc/md.h                      |    3 
 b/include/asm-ppc/mediabay.h                |    3 
 b/include/asm-ppc/mk48t59.h                 |    3 
 b/include/asm-ppc/mman.h                    |    3 
 b/include/asm-ppc/mmu.h                     |    3 
 b/include/asm-ppc/mmu_context.h             |    3 
 b/include/asm-ppc/module.h                  |    3 
 b/include/asm-ppc/mpc8260.h                 |    4 
 b/include/asm-ppc/mpc8xx.h                  |    4 
 b/include/asm-ppc/msgbuf.h                  |    3 
 b/include/asm-ppc/namei.h                   |    8 
 b/include/asm-ppc/nvram.h                   |    3 
 b/include/asm-ppc/ohare.h                   |    3 
 b/include/asm-ppc/open_pic.h                |    5 
 b/include/asm-ppc/page.h                    |    3 
 b/include/asm-ppc/param.h                   |    3 
 b/include/asm-ppc/parport.h                 |    3 
 b/include/asm-ppc/pc_serial.h               |    2 
 b/include/asm-ppc/pci-bridge.h              |    3 
 b/include/asm-ppc/pci.h                     |    3 
 b/include/asm-ppc/pgalloc.h                 |    3 
 b/include/asm-ppc/pgtable.h                 |    3 
 b/include/asm-ppc/pnp.h                     |    3 
 b/include/asm-ppc/poll.h                    |    3 
 b/include/asm-ppc/posix_types.h             |    3 
 b/include/asm-ppc/ppc4xx_pic.h              |    3 
 b/include/asm-ppc/ppc_asm.h                 |    3 
 b/include/asm-ppc/prep_nvram.h              |    3 
 b/include/asm-ppc/processor.h               |    3 
 b/include/asm-ppc/prom.h                    |    3 
 b/include/asm-ppc/ptrace.h                  |    3 
 b/include/asm-ppc/raven.h                   |    5 
 b/include/asm-ppc/residual.h                |    3 
 b/include/asm-ppc/resource.h                |    3 
 b/include/asm-ppc/rwsem.h                   |    3 
 b/include/asm-ppc/scatterlist.h             |    3 
 b/include/asm-ppc/sections.h                |    3 
 b/include/asm-ppc/segment.h                 |    3 
 b/include/asm-ppc/semaphore.h               |    3 
 b/include/asm-ppc/sembuf.h                  |    3 
 b/include/asm-ppc/serial.h                  |    3 
 b/include/asm-ppc/setup.h                   |    3 
 b/include/asm-ppc/shmbuf.h                  |    3 
 b/include/asm-ppc/shmparam.h                |    3 
 b/include/asm-ppc/sigcontext.h              |    3 
 b/include/asm-ppc/siginfo.h                 |    3 
 b/include/asm-ppc/signal.h                  |    3 
 b/include/asm-ppc/smp.h                     |    3 
 b/include/asm-ppc/socket.h                  |    3 
 b/include/asm-ppc/sockios.h                 |    3 
 b/include/asm-ppc/softirq.h                 |    3 
 b/include/asm-ppc/spinlock.h                |    3 
 b/include/asm-ppc/stat.h                    |    3 
 b/include/asm-ppc/statfs.h                  |    3 
 b/include/asm-ppc/string.h                  |    3 
 b/include/asm-ppc/system.h                  |    3 
 b/include/asm-ppc/termbits.h                |    3 
 b/include/asm-ppc/termios.h                 |    3 
 b/include/asm-ppc/time.h                    |    3 
 b/include/asm-ppc/timex.h                   |    5 
 b/include/asm-ppc/tlbflush.h                |    3 
 b/include/asm-ppc/traps.h                   |    3 
 b/include/asm-ppc/types.h                   |    3 
 b/include/asm-ppc/uaccess.h                 |    3 
 b/include/asm-ppc/ucontext.h                |    3 
 b/include/asm-ppc/unaligned.h               |    3 
 b/include/asm-ppc/uninorth.h                |    3 
 b/include/asm-ppc/unistd.h                  |    3 
 b/include/asm-ppc/user.h                    |    3 
 b/include/asm-ppc/vga.h                     |    3 
 b/include/asm-ppc/xor.h                     |    3 
 b/include/asm-ppc64/hardirq.h               |    2 
 b/include/asm-ppc64/hw_irq.h                |    1 
 b/include/asm-ppc64/iSeries/LparData.h      |    5 
 b/include/asm-ppc64/irq.h                   |    2 
 b/include/asm-ppc64/machdep.h               |   49 
 b/include/asm-ppc64/mman.h                  |    1 
 b/include/asm-ppc64/mmzone.h                |   53 
 b/include/asm-ppc64/numnodes.h              |    6 
 b/include/asm-ppc64/page.h                  |    4 
 b/include/asm-ppc64/pci-bridge.h            |   35 
 b/include/asm-ppc64/pgtable.h               |    7 
 b/include/asm-ppc64/ppc_asm.h               |  227 +++
 b/include/asm-ppc64/semaphore.h             |    2 
 b/include/asm-ppc64/tlb.h                   |   12 
 b/include/asm-ppc64/unistd.h                |    3 
 b/include/asm-sparc/io.h                    |   52 
 b/include/asm-sparc/unistd.h                |    4 
 b/include/asm-sparc64/page.h                |   10 
 b/include/asm-sparc64/system.h              |   21 
 b/include/asm-sparc64/unistd.h              |    4 
 b/include/linux/acpi.h                      |   15 
 b/include/linux/bio.h                       |   16 
 b/include/linux/blkdev.h                    |    4 
 b/include/linux/buffer_head.h               |    2 
 b/include/linux/cyclades.h                  |    6 
 b/include/linux/device.h                    |    8 
 b/include/linux/fs.h                        |   10 
 b/include/linux/gfp.h                       |   19 
 b/include/linux/hdlc.h                      |   22 
 b/include/linux/ide.h                       |    1 
 b/include/linux/if_bridge.h                 |    3 
 b/include/linux/list.h                      |    4 
 b/include/linux/lockd/lockd.h               |    2 
 b/include/linux/mm.h                        |   12 
 b/include/linux/mmzone.h                    |   23 
 b/include/linux/mpage.h                     |    8 
 b/include/linux/nbd.h                       |    2 
 b/include/linux/netdevice.h                 |    4 
 b/include/linux/netfilter_bridge.h          |   13 
 b/include/linux/page-flags.h                |    1 
 b/include/linux/percpu.h                    |    3 
 b/include/linux/pid.h                       |   63 +
 b/include/linux/sched.h                     |   41 
 b/include/linux/sunrpc/auth.h               |    8 
 b/include/linux/sunrpc/clnt.h               |    2 
 b/include/linux/sunrpc/msg_prot.h           |    6 
 b/include/linux/sunrpc/svc.h                |    4 
 b/include/linux/sunrpc/svcauth.h            |    9 
 b/include/linux/sunrpc/xprt.h               |   15 
 b/include/linux/sysctl.h                    |   13 
 b/include/linux/threads.h                   |    9 
 b/include/linux/uio.h                       |    6 
 b/include/linux/wireless.h                  |   61 -
 b/include/linux/writeback.h                 |   30 
 b/include/net/ax25.h                        |   25 
 b/include/net/irda/af_irda.h                |    4 
 b/include/net/irda/ircomm_tty.h             |   12 
 b/include/net/irda/irlmp.h                  |   15 
 b/include/net/irda/irqueue.h                |   35 
 b/include/net/irda/irtty.h                  |    3 
 b/include/net/irda/smc-ircc.h               |    4 
 b/include/net/irda/w83977af_ir.h            |    5 
 b/include/net/iw_handler.h                  |   15 
 b/include/net/llc_actn.h                    |    1 
 b/include/net/llc_c_ac.h                    |    5 
 b/include/net/llc_c_ev.h                    |    9 
 b/include/net/llc_main.h                    |    2 
 b/init/Makefile                             |    2 
 b/init/main.c                               |    3 
 b/ipc/Makefile                              |    7 
 b/kernel/Makefile                           |    9 
 b/kernel/exit.c                             |  228 ++-
 b/kernel/fork.c                             |  100 -
 b/kernel/ksyms.c                            |    9 
 b/kernel/pid.c                              |  219 +++
 b/kernel/printk.c                           |    6 
 b/kernel/signal.c                           |   83 -
 b/kernel/suspend.c                          |   17 
 b/kernel/sys.c                              |  204 ++-
 b/kernel/sysctl.c                           |   15 
 b/kernel/user.c                             |    5 
 b/mm/Makefile                               |    9 
 b/mm/filemap.c                              |  472 +-------
 b/mm/highmem.c                              |   30 
 b/mm/madvise.c                              |  238 ++++
 b/mm/memory.c                               |    8 
 b/mm/mempool.c                              |    3 
 b/mm/mlock.c                                |  158 --
 b/mm/mmap.c                                 |  108 -
 b/mm/mprotect.c                             |  245 +---
 b/mm/mremap.c                               |    1 
 b/mm/numa.c                                 |   80 -
 b/mm/page-writeback.c                       |   69 -
 b/mm/page_alloc.c                           |  160 +-
 b/mm/page_io.c                              |   16 
 b/mm/shmem.c                                |    1 
 b/mm/slab.c                                 |   11 
 b/mm/swap.c                                 |   10 
 b/mm/swap_state.c                           |   11 
 b/mm/swapfile.c                             |    1 
 b/mm/vmscan.c                               |   13 
 b/net/Config.in                             |    3 
 b/net/Makefile                              |    3 
 b/net/ax25/Config.in                        |    2 
 b/net/ax25/TODO                             |   24 
 b/net/ax25/af_ax25.c                        | 1601 ++++++++++++++--------------
 b/net/ax25/ax25_addr.c                      |   31 
 b/net/ax25/ax25_dev.c                       |   93 -
 b/net/ax25/ax25_ds_in.c                     |  411 +++----
 b/net/ax25/ax25_ds_subr.c                   |   49 
 b/net/ax25/ax25_ds_timer.c                  |  155 +-
 b/net/ax25/ax25_iface.c                     |  124 +-
 b/net/ax25/ax25_in.c                        |  180 +--
 b/net/ax25/ax25_ip.c                        |   57 
 b/net/ax25/ax25_out.c                       |  114 -
 b/net/ax25/ax25_route.c                     |  431 ++++---
 b/net/ax25/ax25_std_in.c                    |  643 +++++------
 b/net/ax25/ax25_std_subr.c                  |   26 
 b/net/ax25/ax25_std_timer.c                 |  158 +-
 b/net/ax25/ax25_subr.c                      |   68 -
 b/net/ax25/ax25_timer.c                     |  145 +-
 b/net/ax25/ax25_uid.c                       |  151 +-
 b/net/ax25/sysctl_net_ax25.c                |   17 
 b/net/bridge/Makefile                       |    3 
 b/net/bridge/br.c                           |    4 
 b/net/bridge/br_forward.c                   |    3 
 b/net/bridge/br_input.c                     |   15 
 b/net/bridge/br_private.h                   |    2 
 b/net/bridge/netfilter/Config.help          |  105 +
 b/net/bridge/netfilter/Config.in            |   17 
 b/net/bridge/netfilter/Makefile             |   20 
 b/net/bridge/netfilter/ebt_arp.c            |  101 +
 b/net/bridge/netfilter/ebt_dnat.c           |   64 +
 b/net/bridge/netfilter/ebt_ip.c             |   72 +
 b/net/bridge/netfilter/ebt_log.c            |   99 +
 b/net/bridge/netfilter/ebt_mark.c           |   65 +
 b/net/bridge/netfilter/ebt_mark_m.c         |   60 +
 b/net/bridge/netfilter/ebt_redirect.c       |   70 +
 b/net/bridge/netfilter/ebt_snat.c           |   63 +
 b/net/bridge/netfilter/ebt_vlan.c           |  316 +++++
 b/net/bridge/netfilter/ebtable_broute.c     |   78 +
 b/net/bridge/netfilter/ebtable_filter.c     |   89 +
 b/net/bridge/netfilter/ebtable_nat.c        |   95 +
 b/net/bridge/netfilter/ebtables.c           | 1484 +++++++++++++++++++++++++
 b/net/core/dev.c                            |   10 
 b/net/core/wireless.c                       |   82 +
 b/net/irda/discovery.c                      |   34 
 b/net/irda/ircomm/ircomm_core.c             |    9 
 b/net/irda/ircomm/ircomm_lmp.c              |    2 
 b/net/irda/ircomm/ircomm_param.c            |   11 
 b/net/irda/ircomm/ircomm_tty.c              |   84 -
 b/net/irda/ircomm/ircomm_tty_attach.c       |    2 
 b/net/irda/irda_device.c                    |    8 
 b/net/irda/iriap.c                          |   25 
 b/net/irda/irias_object.c                   |   24 
 b/net/irda/irlan/irlan_common.c             |    9 
 b/net/irda/irlap.c                          |   24 
 b/net/irda/irlmp.c                          |  213 ++-
 b/net/irda/irlmp_event.c                    |  110 -
 b/net/irda/irlmp_frame.c                    |   41 
 b/net/irda/irqueue.c                        |  979 ++++++++++-------
 b/net/irda/irsyms.c                         |    7 
 b/net/irda/irttp.c                          |   31 
 b/net/llc/llc_actn.c                        |   10 
 b/net/llc/llc_c_ac.c                        |   57 
 b/net/llc/llc_c_ev.c                        |   18 
 b/net/llc/llc_main.c                        |   84 +
 b/net/llc/llc_sock.c                        |   43 
 b/net/netrom/af_netrom.c                    |  489 ++++----
 b/net/netrom/nr_dev.c                       |   24 
 b/net/netrom/nr_in.c                        |  306 ++---
 b/net/netrom/nr_loopback.c                  |   19 
 b/net/netrom/nr_out.c                       |   27 
 b/net/netrom/nr_route.c                     |  280 ++--
 b/net/netrom/nr_subr.c                      |  148 +-
 b/net/netrom/nr_timer.c                     |  133 +-
 b/net/netrom/sysctl_net_netrom.c            |   11 
 b/net/rose/af_rose.c                        |  631 +++++------
 b/net/rose/rose_dev.c                       |   20 
 b/net/rose/rose_in.c                        |  311 ++---
 b/net/rose/rose_link.c                      |   56 
 b/net/rose/rose_loopback.c                  |   18 
 b/net/rose/rose_out.c                       |   23 
 b/net/rose/rose_route.c                     |  513 +++++---
 b/net/rose/rose_subr.c                      |  379 +++---
 b/net/rose/rose_timer.c                     |  110 -
 b/net/rose/sysctl_net_rose.c                |   11 
 b/net/sunrpc/auth.c                         |   20 
 b/net/sunrpc/auth_null.c                    |   16 
 b/net/sunrpc/auth_unix.c                    |   22 
 b/net/sunrpc/clnt.c                         |   68 -
 b/net/sunrpc/svc.c                          |   28 
 b/net/sunrpc/svcauth.c                      |   31 
 b/net/sunrpc/svcsock.c                      |    4 
 b/net/sunrpc/xprt.c                         |  216 ++-
 b/scripts/mkcompile_h                       |    4 
 b/sound/Makefile                            |    2 
 b/sound/oss/cs4281/cs4281m.c                |    6 
 drivers/scsi/scsi_queue.c                   |  149 --
 include/asm-i386/irq_vectors.h              |   64 -
 include/asm-i386/max_numnodes.h             |   12 
 include/asm-ppc64/ppc_asm.tmpl              |  115 --
 984 files changed, 23617 insertions(+), 18095 deletions(-)

