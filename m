From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.47 released
Date: Sun, 10 Nov 2002 19:34:05 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200211110334.gAB3Y5j04837@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.47 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.47.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.47.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               918563           3809709
Full source                       38809394         174653440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/kbuild/config-language.txt    |  706 ----
 arch/i386/kernel/bluesmoke.c                |  504 ---
 arch/ppc/kernel/btext.c                     |  861 -----
 arch/ppc/kernel/gt64260_common.c            | 1666 -----------
 arch/ppc/kernel/gt64260_pic.c               |  245 -
 arch/ppc/kernel/harrier.c                   |  214 -
 arch/ppc/kernel/i8259.c                     |  199 -
 arch/ppc/kernel/indirect_pci.c              |  118 
 arch/ppc/kernel/m8260_setup.c               |  275 -
 arch/ppc/kernel/m8xx_setup.c                |  400 --
 arch/ppc/kernel/mpc10x_common.c             |  378 --
 arch/ppc/kernel/open_pic.c                  |  927 ------
 arch/ppc/kernel/open_pic_defs.h             |  292 --
 arch/ppc/kernel/pci_auto.c                  |  519 ---
 arch/ppc/kernel/ppc405_dma.c                |  511 ---
 arch/ppc/kernel/ppc405_pci.c                |  207 -
 arch/ppc/kernel/ppc4xx_kgdb.c               |  124 
 arch/ppc/kernel/ppc4xx_pic.c                |  348 --
 arch/ppc/kernel/ppc4xx_pm.c                 |   75 
 arch/ppc/kernel/ppc4xx_serial.c             |  190 -
 arch/ppc/kernel/ppc4xx_setup.c              |  360 --
 arch/ppc/kernel/ppc8260_pic.c               |  131 
 arch/ppc/kernel/ppc8260_pic.h               |   13 
 arch/ppc/kernel/ppc8xx_pic.c                |  197 -
 arch/ppc/kernel/ppc8xx_pic.h                |   20 
 arch/ppc/kernel/pplus_common.c              |  317 --
 arch/ppc/kernel/prep_nvram.c                |  145 -
 arch/ppc/kernel/prom.c                      | 1258 --------
 arch/ppc/kernel/prom_init.c                 |  900 ------
 arch/ppc/kernel/qspan_pci.c                 |  379 --
 arch/ppc/kernel/todc_time.c                 |  456 ---
 arch/ppc/platforms/cpc700.h                 |  109 
 arch/ppc/platforms/cpc700_pic.c             |  205 -
 arch/ppc/platforms/cpc710.h                 |   77 
 b/CREDITS                                   |   47 
 b/Documentation/Changes                     |    4 
 b/Documentation/DocBook/journal-api.tmpl    |    6 
 b/Documentation/DocBook/kernel-hacking.tmpl |    7 
 b/Documentation/crypto/api-intro.txt        |   16 
 b/Documentation/filesystems/devfs/ChangeLog |   10 
 b/Documentation/kbuild/00-INDEX             |    4 
 b/Documentation/kbuild/kconfig-language.txt |  255 +
 b/Documentation/networking/pktgen.txt       |   77 
 b/MAINTAINERS                               |   54 
 b/Makefile                                  |    5 
 b/arch/alpha/Kconfig                        |    2 
 b/arch/alpha/Makefile                       |    2 
 b/arch/alpha/kernel/alpha_ksyms.c           |    1 
 b/arch/alpha/kernel/asm-offsets.c           |   11 
 b/arch/alpha/kernel/entry.S                 | 1412 +++++----
 b/arch/alpha/kernel/irq_alpha.c             |   27 
 b/arch/alpha/kernel/osf_sys.c               |   81 
 b/arch/alpha/kernel/pci.c                   |    2 
 b/arch/alpha/kernel/process.c               |   27 
 b/arch/alpha/kernel/ptrace.c                |    8 
 b/arch/alpha/kernel/traps.c                 |   77 
 b/arch/alpha/math-emu/math.c                |    6 
 b/arch/alpha/vmlinux.lds.S                  |    2 
 b/arch/arm/Kconfig                          |    2 
 b/arch/arm/Makefile                         |    3 
 b/arch/arm/def-configs/neponset             |  429 --
 b/arch/arm/def-configs/rpc                  |  502 +--
 b/arch/arm/kernel/process.c                 |   12 
 b/arch/arm/mm/Makefile                      |    2 
 b/arch/arm/vmlinux-armv.lds.in              |    2 
 b/arch/cris/drivers/ethernet.c              |    4 
 b/arch/i386/Kconfig                         |   11 
 b/arch/i386/Makefile                        |    4 
 b/arch/i386/kernel/Makefile                 |    3 
 b/arch/i386/kernel/cpu/Makefile             |    3 
 b/arch/i386/kernel/cpu/centaur.c            |    1 
 b/arch/i386/kernel/cpu/common.c             |    2 
 b/arch/i386/kernel/cpu/cpufreq/speedstep.c  |   59 
 b/arch/i386/kernel/cpu/cyrix.c              |   24 
 b/arch/i386/kernel/cpu/mcheck/Makefile      |    5 
 b/arch/i386/kernel/cpu/mcheck/k7.c          |   96 
 b/arch/i386/kernel/cpu/mcheck/mce.c         |   77 
 b/arch/i386/kernel/cpu/mcheck/mce.h         |   16 
 b/arch/i386/kernel/cpu/mcheck/non-fatal.c   |   83 
 b/arch/i386/kernel/cpu/mcheck/p4.c          |  261 +
 b/arch/i386/kernel/cpu/mcheck/p5.c          |   52 
 b/arch/i386/kernel/cpu/mcheck/p6.c          |  113 
 b/arch/i386/kernel/cpu/mcheck/winchip.c     |   35 
 b/arch/i386/kernel/entry.S                  |    2 
 b/arch/i386/kernel/i387.c                   |   37 
 b/arch/i386/kernel/process.c                |   20 
 b/arch/i386/kernel/time.c                   |    1 
 b/arch/i386/kernel/timers/timer_tsc.c       |   24 
 b/arch/i386/kernel/traps.c                  |    9 
 b/arch/i386/mach-generic/do_timer.h         |    2 
 b/arch/i386/mm/hugetlbpage.c                |  125 
 b/arch/i386/mm/init.c                       |   31 
 b/arch/i386/pci/common.c                    |    5 
 b/arch/i386/pci/fixup.c                     |    4 
 b/arch/i386/vmlinux.lds.S                   |    2 
 b/arch/ia64/kernel/process.c                |   72 
 b/arch/ia64/sn/kernel/irq.c                 |    2 
 b/arch/ia64/sn/kernel/mca.c                 |    2 
 b/arch/m68k/Kconfig                         |    2 
 b/arch/m68k/amiga/amisound.c                |    2 
 b/arch/m68k/mac/macboing.c                  |    3 
 b/arch/m68knommu/Kconfig                    |    2 
 b/arch/mips/Kconfig                         |    2 
 b/arch/mips/ddb5074/pci.c                   |    4 
 b/arch/mips/ddb5476/pci.c                   |    4 
 b/arch/mips64/Kconfig                       |    2 
 b/arch/mips64/sgi-ip27/ip27-pci.c           |    2 
 b/arch/mips64/sgi-ip32/ip32-pci.c           |    4 
 b/arch/parisc/Kconfig                       |   43 
 b/arch/parisc/Makefile                      |    3 
 b/arch/parisc/kernel/irq.c                  |    4 
 b/arch/parisc/kernel/keyboard.c             |   16 
 b/arch/parisc/kernel/pci.c                  |    2 
 b/arch/parisc/kernel/pdc_chassis.c          |    8 
 b/arch/parisc/kernel/pdc_cons.c             |   23 
 b/arch/parisc/kernel/perf.c                 |   12 
 b/arch/parisc/kernel/processor.c            |    6 
 b/arch/parisc/kernel/setup.c                |   32 
 b/arch/parisc/kernel/sys_parisc.c           |   30 
 b/arch/parisc/lib/Makefile                  |    1 
 b/arch/parisc/mm/init.c                     |   16 
 b/arch/parisc/vmlinux.lds.S                 |    4 
 b/arch/ppc/8xx_io/cs4218_tdm.c              |    3 
 b/arch/ppc/Kconfig                          |   25 
 b/arch/ppc/Makefile                         |   13 
 b/arch/ppc/boot/Makefile                    |   29 
 b/arch/ppc/boot/common/misc-common.c        |    1 
 b/arch/ppc/boot/images/Makefile             |    8 
 b/arch/ppc/boot/include/nonstdio.h          |    3 
 b/arch/ppc/boot/openfirmware/chrpmain.c     |    3 
 b/arch/ppc/boot/openfirmware/coffmain.c     |    3 
 b/arch/ppc/boot/openfirmware/common.c       |    1 
 b/arch/ppc/boot/openfirmware/newworldmain.c |    3 
 b/arch/ppc/boot/simple/Makefile             |   14 
 b/arch/ppc/kernel/Makefile                  |   53 
 b/arch/ppc/kernel/asm-offsets.c             |    1 
 b/arch/ppc/kernel/head.S                    |    5 
 b/arch/ppc/kernel/iSeries_idle.c            |  124 
 b/arch/ppc/kernel/idle.c                    |  169 -
 b/arch/ppc/kernel/misc.S                    |    5 
 b/arch/ppc/kernel/pci.c                     |    2 
 b/arch/ppc/kernel/ppc6xx_idle.c             |   76 
 b/arch/ppc/kernel/ppc_ksyms.c               |    3 
 b/arch/ppc/kernel/setup.c                   |    6 
 b/arch/ppc/mm/Makefile                      |    2 
 b/arch/ppc/mm/init.c                        |   76 
 b/arch/ppc/mm/ppc_mmu.c                     |   24 
 b/arch/ppc/platforms/4xx/ash.h              |    4 
 b/arch/ppc/platforms/4xx/cedar.h            |    2 
 b/arch/ppc/platforms/4xx/ep405.c            |    2 
 b/arch/ppc/platforms/4xx/ep405.h            |    2 
 b/arch/ppc/platforms/4xx/ibm405gp.c         |    2 
 b/arch/ppc/platforms/4xx/ibm405gp.h         |    4 
 b/arch/ppc/platforms/4xx/ibmnp405h.c        |    2 
 b/arch/ppc/platforms/4xx/ibmnp405h.h        |    4 
 b/arch/ppc/platforms/4xx/ibmnp405l.c        |    2 
 b/arch/ppc/platforms/4xx/ibmnp405l.h        |    4 
 b/arch/ppc/platforms/4xx/ibmstb3.c          |    2 
 b/arch/ppc/platforms/4xx/ibmstb3.h          |    4 
 b/arch/ppc/platforms/4xx/ibmstb4.c          |    2 
 b/arch/ppc/platforms/4xx/ibmstb4.h          |    4 
 b/arch/ppc/platforms/4xx/redwood.h          |    2 
 b/arch/ppc/platforms/4xx/redwood5.h         |    2 
 b/arch/ppc/platforms/4xx/walnut.c           |    2 
 b/arch/ppc/platforms/4xx/walnut.h           |    2 
 b/arch/ppc/platforms/Makefile               |    4 
 b/arch/ppc/platforms/adir_pci.c             |    2 
 b/arch/ppc/platforms/iSeries_setup.c        |    3 
 b/arch/ppc/platforms/k2_pci.c               |    3 
 b/arch/ppc/platforms/pal4_pci.c             |    3 
 b/arch/ppc/platforms/pal4_setup.c           |    3 
 b/arch/ppc/platforms/pmac_setup.c           |    9 
 b/arch/ppc/platforms/prep_pci.c             |  191 -
 b/arch/ppc/platforms/prep_setup.c           |  626 +++-
 b/arch/ppc/platforms/spruce_pci.c           |    2 
 b/arch/ppc/platforms/spruce_setup.c         |    4 
 b/arch/ppc/syslib/Makefile                  |   68 
 b/arch/ppc/syslib/btext.c                   |  861 +++++
 b/arch/ppc/syslib/cpc700.h                  |  109 
 b/arch/ppc/syslib/cpc700_pic.c              |  205 +
 b/arch/ppc/syslib/cpc710.h                  |   77 
 b/arch/ppc/syslib/gt64260_common.c          | 1666 +++++++++++
 b/arch/ppc/syslib/gt64260_pic.c             |  245 +
 b/arch/ppc/syslib/harrier.c                 |  214 +
 b/arch/ppc/syslib/i8259.c                   |  199 +
 b/arch/ppc/syslib/indirect_pci.c            |  118 
 b/arch/ppc/syslib/m8260_setup.c             |  275 +
 b/arch/ppc/syslib/m8xx_setup.c              |  400 ++
 b/arch/ppc/syslib/mpc10x_common.c           |  378 ++
 b/arch/ppc/syslib/open_pic.c                |  927 ++++++
 b/arch/ppc/syslib/open_pic_defs.h           |  292 ++
 b/arch/ppc/syslib/pci_auto.c                |  519 +++
 b/arch/ppc/syslib/ppc405_dma.c              |  511 +++
 b/arch/ppc/syslib/ppc405_pci.c              |  207 +
 b/arch/ppc/syslib/ppc4xx_kgdb.c             |  124 
 b/arch/ppc/syslib/ppc4xx_pic.c              |  348 ++
 b/arch/ppc/syslib/ppc4xx_pm.c               |   75 
 b/arch/ppc/syslib/ppc4xx_serial.c           |  190 +
 b/arch/ppc/syslib/ppc4xx_setup.c            |  360 ++
 b/arch/ppc/syslib/ppc8260_pic.c             |  131 
 b/arch/ppc/syslib/ppc8260_pic.h             |   13 
 b/arch/ppc/syslib/ppc8xx_pic.c              |  197 +
 b/arch/ppc/syslib/ppc8xx_pic.h              |   20 
 b/arch/ppc/syslib/pplus_common.c            |  317 ++
 b/arch/ppc/syslib/prep_nvram.c              |  145 +
 b/arch/ppc/syslib/prom.c                    | 1258 ++++++++
 b/arch/ppc/syslib/prom_init.c               |  900 ++++++
 b/arch/ppc/syslib/qspan_pci.c               |  379 ++
 b/arch/ppc/syslib/todc_time.c               |  456 +++
 b/arch/ppc/vmlinux.lds.S                    |   47 
 b/arch/ppc64/Kconfig                        |    2 
 b/arch/ppc64/Makefile                       |    1 
 b/arch/ppc64/boot/Makefile                  |   17 
 b/arch/ppc64/defconfig                      |  176 -
 b/arch/ppc64/kernel/htab.c                  |  156 -
 b/arch/ppc64/kernel/ioctl32.c               |  844 ++---
 b/arch/ppc64/kernel/nvram.c                 |    3 
 b/arch/ppc64/kernel/pSeries_htab.c          |  160 -
 b/arch/ppc64/kernel/pSeries_lpar.c          |   89 
 b/arch/ppc64/kernel/pci.c                   |    4 
 b/arch/ppc64/kernel/udbg.c                  |    5 
 b/arch/ppc64/mm/init.c                      |   32 
 b/arch/ppc64/mm/numa.c                      |  174 +
 b/arch/ppc64/vmlinux.lds.S                  |   37 
 b/arch/s390/Kconfig                         |    2 
 b/arch/s390x/Kconfig                        |    2 
 b/arch/sh/Kconfig                           |    2 
 b/arch/sh/kernel/pci-dc.c                   |    2 
 b/arch/sh/kernel/pci-sh7751.c               |    4 
 b/arch/sh/kernel/pci_st40.c                 |    2 
 b/arch/sparc/Kconfig                        |    2 
 b/arch/sparc/Makefile                       |   12 
 b/arch/sparc/boot/Makefile                  |    4 
 b/arch/sparc/kernel/ioport.c                |    2 
 b/arch/sparc/kernel/sys_sparc.c             |   15 
 b/arch/sparc/kernel/systbls.S               |    2 
 b/arch/sparc/mm/sun4c.c                     |   10 
 b/arch/sparc/vmlinux.lds.S                  |    4 
 b/arch/sparc64/Makefile                     |    1 
 b/arch/sparc64/kernel/cpu.c                 |    4 
 b/arch/sparc64/kernel/ioctl32.c             |   14 
 b/arch/sparc64/kernel/pci.c                 |    4 
 b/arch/sparc64/kernel/sys32.S               |    6 
 b/arch/sparc64/kernel/sys_sparc32.c         |   59 
 b/arch/sparc64/kernel/systbls.S             |    4 
 b/arch/sparc64/kernel/traps.c               |    2 
 b/arch/sparc64/vmlinux.lds.S                |    4 
 b/arch/v850/Kconfig                         |    2 
 b/arch/x86_64/Kconfig                       |    2 
 b/crypto/Kconfig                            |   38 
 b/crypto/Makefile                           |   10 
 b/crypto/api.c                              |   59 
 b/crypto/autoload.c                         |   10 
 b/crypto/blowfish.c                         |  479 +++
 b/crypto/cipher.c                           |   10 
 b/crypto/des.c                              |   60 
 b/crypto/digest.c                           |   62 
 b/crypto/hmac.c                             |  112 
 b/crypto/internal.h                         |   10 
 b/crypto/sha1.c                             |    4 
 b/crypto/sha256.c                           |  362 ++
 b/crypto/tcrypt.c                           |  496 +++
 b/crypto/tcrypt.h                           |  432 ++
 b/drivers/acorn/block/fd1772.c              |   20 
 b/drivers/acorn/scsi/arxescsi.c             |    1 
 b/drivers/acorn/scsi/cumana_2.c             |    1 
 b/drivers/acorn/scsi/eesox.c                |    1 
 b/drivers/acorn/scsi/powertec.c             |    1 
 b/drivers/atm/idt77105.c                    |   10 
 b/drivers/atm/iphase.c                      |    2 
 b/drivers/block/acsi.c                      |    2 
 b/drivers/block/acsi_slm.c                  |   14 
 b/drivers/block/ataflop.c                   |   10 
 b/drivers/block/cciss.c                     |    8 
 b/drivers/block/deadline-iosched.c          |    6 
 b/drivers/block/elevator.c                  |   12 
 b/drivers/block/floppy.c                    |    9 
 b/drivers/block/genhd.c                     |   27 
 b/drivers/block/ll_rw_blk.c                 |   47 
 b/drivers/block/loop.c                      |   38 
 b/drivers/block/nbd.c                       |   35 
 b/drivers/block/paride/pg.c                 |   10 
 b/drivers/block/paride/pseudo.h             |    2 
 b/drivers/block/paride/pt.c                 |   12 
 b/drivers/block/ps2esdi.c                   |    3 
 b/drivers/block/rd.c                        |   18 
 b/drivers/block/swim_iop.c                  |    1 
 b/drivers/block/umem.c                      |   15 
 b/drivers/cdrom/aztcd.c                     |    2 
 b/drivers/cdrom/cm206.c                     |    1 
 b/drivers/cdrom/gscd.c                      |    2 
 b/drivers/cdrom/mcd.c                       |    2 
 b/drivers/cdrom/optcd.c                     |    2 
 b/drivers/cdrom/sbpcd.c                     |    9 
 b/drivers/cdrom/sjcd.c                      |    2 
 b/drivers/char/ChangeLog                    |    2 
 b/drivers/char/acquirewdt.c                 |   12 
 b/drivers/char/advantechwdt.c               |   12 
 b/drivers/char/agp/agp.c                    |    8 
 b/drivers/char/amd768_rng.c                 |    8 
 b/drivers/char/applicom.c                   |   10 
 b/drivers/char/busmouse.c                   |   14 
 b/drivers/char/cyclades.c                   |    4 
 b/drivers/char/ds1620.c                     |    6 
 b/drivers/char/dsp56k.c                     |   12 
 b/drivers/char/dtlk.c                       |   14 
 b/drivers/char/dz.c                         |   12 
 b/drivers/char/efirtc.c                     |    8 
 b/drivers/char/eurotechwdt.c                |   12 
 b/drivers/char/hp_psaux.c                   |   28 
 b/drivers/char/hvc_console.c                |   12 
 b/drivers/char/i810_rng.c                   |   18 
 b/drivers/char/i8k.c                        |    4 
 b/drivers/char/ib700wdt.c                   |   12 
 b/drivers/char/ip2/i2ellis.c                |    1 
 b/drivers/char/ip2main.c                    |   12 
 b/drivers/char/isicom.c                     |    4 
 b/drivers/char/istallion.c                  |   15 
 b/drivers/char/ite_gpio.c                   |    8 
 b/drivers/char/keyboard.c                   |   21 
 b/drivers/char/lp.c                         |   20 
 b/drivers/char/machzwd.c                    |   18 
 b/drivers/char/mem.c                        |   58 
 b/drivers/char/misc.c                       |    4 
 b/drivers/char/mixcomwd.c                   |   12 
 b/drivers/char/nvram.c                      |   14 
 b/drivers/char/nwbutton.c                   |    4 
 b/drivers/char/nwflash.c                    |   10 
 b/drivers/char/pcwd.c                       |   12 
 b/drivers/char/ppdev.c                      |   16 
 b/drivers/char/qtronix.c                    |   12 
 b/drivers/char/random.c                     |   18 
 b/drivers/char/riscom8.c                    |    8 
 b/drivers/char/rtc.c                        |   16 
 b/drivers/char/sbc60xxwdt.c                 |   14 
 b/drivers/char/scx200_wdt.c                 |    2 
 b/drivers/char/serial167.c                  |   12 
 b/drivers/char/serial_tx3912.c              |   32 
 b/drivers/char/sh-sci.c                     |   12 
 b/drivers/char/shwdt.c                      |   12 
 b/drivers/char/softdog.c                    |    5 
 b/drivers/char/sonypi.c                     |   14 
 b/drivers/char/stallion.c                   |    8 
 b/drivers/char/sx.c                         |    4 
 b/drivers/char/synclink.c                   |    8 
 b/drivers/char/synclinkmp.c                 |    8 
 b/drivers/char/sysrq.c                      |   72 
 b/drivers/char/tipar.c                      |   14 
 b/drivers/char/toshiba.c                    |    4 
 b/drivers/char/tpqic02.c                    |   14 
 b/drivers/char/tty_io.c                     |   28 
 b/drivers/char/vc_screen.c                  |    8 
 b/drivers/char/vme_scc.c                    |   12 
 b/drivers/char/vt.c                         |   12 
 b/drivers/char/w83877f_wdt.c                |   14 
 b/drivers/char/wdt.c                        |   14 
 b/drivers/char/wdt285.c                     |   10 
 b/drivers/char/wdt977.c                     |   10 
 b/drivers/char/wdt_pci.c                    |   22 
 b/drivers/fc4/fc.c                          |    1 
 b/drivers/hotplug/Kconfig                   |   43 
 b/drivers/hotplug/Makefile                  |    8 
 b/drivers/hotplug/acpiphp.h                 |    8 
 b/drivers/hotplug/acpiphp_core.c            |  163 -
 b/drivers/hotplug/acpiphp_glue.c            |  187 -
 b/drivers/hotplug/acpiphp_pci.c             |   65 
 b/drivers/hotplug/acpiphp_res.c             |   48 
 b/drivers/hotplug/cpci_hotplug.h            |  100 
 b/drivers/hotplug/cpci_hotplug_core.c       |  927 ++++++
 b/drivers/hotplug/cpci_hotplug_pci.c        |  685 ++++
 b/drivers/hotplug/cpcihp_generic.c          |  290 ++
 b/drivers/hotplug/cpcihp_zt5550.c           |  306 ++
 b/drivers/hotplug/cpcihp_zt5550.h           |   79 
 b/drivers/hotplug/pci_hotplug.h             |    4 
 b/drivers/hotplug/pci_hotplug_util.c        |   75 
 b/drivers/ide/ide-cd.c                      |    9 
 b/drivers/ide/ide-disk.c                    |    2 
 b/drivers/ide/ide-dma.c                     |   13 
 b/drivers/ide/ide-probe.c                   |   11 
 b/drivers/ide/ide-proc.c                    |    3 
 b/drivers/ide/ide.c                         |   39 
 b/drivers/ide/legacy/ide-cs.c               |  110 
 b/drivers/ide/pci/sl82c105.c                |    2 
 b/drivers/ide/ppc/pmac.c                    |  100 
 b/drivers/ide/setup-pci.c                   |   10 
 b/drivers/ieee1394/sbp2.c                   |    6 
 b/drivers/ieee1394/sbp2.h                   |    7 
 b/drivers/ieee1394/video1394.c              |    3 
 b/drivers/input/mouse/Kconfig               |    2 
 b/drivers/input/mouse/Makefile              |    2 
 b/drivers/input/mouse/rpcmouse.c            |   19 
 b/drivers/input/serio/Kconfig               |    2 
 b/drivers/input/serio/ambakmi.c             |    1 
 b/drivers/input/serio/i8042.c               |    1 
 b/drivers/input/serio/rpckbd.c              |   62 
 b/drivers/macintosh/Makefile                |    2 
 b/drivers/macintosh/adb.c                   |   91 
 b/drivers/macintosh/macio-adb.c             |   90 
 b/drivers/macintosh/macserial.c             |   57 
 b/drivers/macintosh/macserial.h             |    3 
 b/drivers/macintosh/via-cuda.c              |   66 
 b/drivers/macintosh/via-pmu.c               |  447 +--
 b/drivers/md/md.c                           |   32 
 b/drivers/md/raid1.c                        |   39 
 b/drivers/md/raid5.c                        |  127 
 b/drivers/media/video/msp3400.c             |    1 
 b/drivers/media/video/tvaudio.c             |    1 
 b/drivers/mtd/cmdline.c                     |   27 
 b/drivers/mtd/ftl.c                         |    4 
 b/drivers/mtd/mtdblock.c                    |    4 
 b/drivers/net/3c505.c                       |   24 
 b/drivers/net/3c59x.c                       |   10 
 b/drivers/net/Kconfig                       |   14 
 b/drivers/net/Makefile                      |    1 
 b/drivers/net/atari_bionet.c                |    2 
 b/drivers/net/atari_pamsnet.c               |    2 
 b/drivers/net/b44.c                         | 1830 ++++++++++++
 b/drivers/net/b44.h                         |  543 +++
 b/drivers/net/bmac.c                        |    6 
 b/drivers/net/dl2k.c                        |  240 +
 b/drivers/net/dl2k.h                        |    2 
 b/drivers/net/e100/e100.h                   |    5 
 b/drivers/net/e100/e100_main.c              |  136 
 b/drivers/net/e100/e100_test.c              |    8 
 b/drivers/net/hamradio/yam.c                |    2 
 b/drivers/net/irda/Kconfig                  |   97 
 b/drivers/net/irda/Makefile                 |   22 
 b/drivers/net/irda/actisys-sir.c            |  240 +
 b/drivers/net/irda/donauboe.c               |   30 
 b/drivers/net/irda/esi-sir.c                |  145 +
 b/drivers/net/irda/irda-usb.c               |    2 
 b/drivers/net/irda/irtty-sir.c              |  684 ++++
 b/drivers/net/irda/irtty-sir.h              |   34 
 b/drivers/net/irda/sir-dev.h                |  203 +
 b/drivers/net/irda/sir_core.c               |   52 
 b/drivers/net/irda/sir_dev.c                |  673 ++++
 b/drivers/net/irda/sir_dongle.c             |  146 +
 b/drivers/net/irda/sir_kthread.c            |  543 +++
 b/drivers/net/irda/tekram-sir.c             |  265 +
 b/drivers/net/mace.c                        |   36 
 b/drivers/net/pcmcia/3c574_cs.c             |    2 
 b/drivers/net/pcmcia/3c589_cs.c             |    1 
 b/drivers/net/pcmcia/axnet_cs.c             |  296 --
 b/drivers/net/pcmcia/fmvj18x_cs.c           |  186 -
 b/drivers/net/pcmcia/nmclan_cs.c            |   72 
 b/drivers/net/pcmcia/pcnet_cs.c             |   15 
 b/drivers/net/pcmcia/ray_cs.c               |    2 
 b/drivers/net/pcmcia/smc91c92_cs.c          |  362 +-
 b/drivers/net/sundance.c                    |  250 +
 b/drivers/net/tg3.c                         |    6 
 b/drivers/net/tulip/de2104x.c               |    2 
 b/drivers/net/tulip/de4x5.c                 |    1 
 b/drivers/net/wan/comx-hw-munich.c          |    1 
 b/drivers/net/wan/comx-proto-fr.c           |    1 
 b/drivers/net/wireless/airo_cs.c            |    2 
 b/drivers/net/wireless/wavelan.p.h          |    2 
 b/drivers/net/znet.c                        |   32 
 b/drivers/oprofile/buffer_sync.c            |    3 
 b/drivers/parisc/Kconfig                    |   36 
 b/drivers/parisc/asp.c                      |    6 
 b/drivers/parisc/ccio-dma.c                 |    6 
 b/drivers/parisc/ccio-rm-dma.c              |    6 
 b/drivers/parisc/dino.c                     |    6 
 b/drivers/parisc/eisa.c                     |    6 
 b/drivers/parisc/eisa_eeprom.c              |   12 
 b/drivers/parisc/gsc.c                      |    8 
 b/drivers/parisc/iosapic.c                  |    8 
 b/drivers/parisc/lasi.c                     |    8 
 b/drivers/parisc/lba_pci.c                  |   38 
 b/drivers/parisc/led.c                      |   26 
 b/drivers/parisc/sba_iommu.c                |    6 
 b/drivers/parisc/superio.c                  |   16 
 b/drivers/parisc/wax.c                      |    6 
 b/drivers/parport/Kconfig                   |   18 
 b/drivers/parport/parport_cs.c              |  115 
 b/drivers/pci/Makefile                      |    7 
 b/drivers/pci/hotplug.c                     |    3 
 b/drivers/pci/pci.c                         |   89 
 b/drivers/pci/pci.ids                       |    8 
 b/drivers/pci/probe.c                       |    6 
 b/drivers/pci/quirks.c                      |   50 
 b/drivers/pci/search.c                      |   40 
 b/drivers/pci/setup-bus.c                   |   17 
 b/drivers/pcmcia/cardbus.c                  |   14 
 b/drivers/pcmcia/cirrus.h                   |    2 
 b/drivers/pcmcia/cistpl.c                   |   19 
 b/drivers/pcmcia/cs_internal.h              |   10 
 b/drivers/pcmcia/ds.c                       |    1 
 b/drivers/pcmcia/i82365.c                   |    3 
 b/drivers/pcmcia/i82365.h                   |    2 
 b/drivers/pcmcia/o2micro.h                  |    2 
 b/drivers/pcmcia/ricoh.h                    |    2 
 b/drivers/pcmcia/sa1100_generic.c           |    1 
 b/drivers/pcmcia/tcic.c                     |    4 
 b/drivers/pcmcia/tcic.h                     |    2 
 b/drivers/pcmcia/ti113x.h                   |    2 
 b/drivers/pcmcia/topic.h                    |    2 
 b/drivers/pcmcia/vg468.h                    |    2 
 b/drivers/sbus/char/aurora.c                |    4 
 b/drivers/sbus/char/bpp.c                   |    1 
 b/drivers/sbus/char/cpwatchdog.c            |    1 
 b/drivers/scsi/Kconfig                      |   17 
 b/drivers/scsi/NCR5380.c                    |  259 -
 b/drivers/scsi/NCR53c406a.c                 |   59 
 b/drivers/scsi/aha1740.c                    |   66 
 b/drivers/scsi/aha1740.h                    |  100 
 b/drivers/scsi/aic7xxx_old.c                | 1024 ++-----
 b/drivers/scsi/aic7xxx_old/aic7xxx.h        |    6 
 b/drivers/scsi/aic7xxx_old/aic7xxx_proc.c   |   37 
 b/drivers/scsi/eata.c                       |    3 
 b/drivers/scsi/eata.h                       |    2 
 b/drivers/scsi/eata_pio.c                   | 1621 +++++------
 b/drivers/scsi/eata_pio.h                   |  108 
 b/drivers/scsi/esp.c                        |   42 
 b/drivers/scsi/esp.h                        |   36 
 b/drivers/scsi/fd_mcs.c                     |  187 -
 b/drivers/scsi/fd_mcs.h                     |    2 
 b/drivers/scsi/g_NCR5380.h                  |    2 
 b/drivers/scsi/hosts.c                      |  192 -
 b/drivers/scsi/hosts.h                      |   61 
 b/drivers/scsi/ibmmca.c                     | 4040 +++++++++++++---------------
 b/drivers/scsi/ibmmca.h                     |   24 
 b/drivers/scsi/in2000.c                     | 2812 +++++++++----------
 b/drivers/scsi/megaraid.c                   |  193 -
 b/drivers/scsi/megaraid.h                   |    4 
 b/drivers/scsi/osst.c                       |   52 
 b/drivers/scsi/pcmcia/nsp_cs.c              |  163 -
 b/drivers/scsi/pcmcia/nsp_cs.h              |   13 
 b/drivers/scsi/pcmcia/nsp_message.c         |    2 
 b/drivers/scsi/pluto.c                      |    3 
 b/drivers/scsi/qlogicfas.c                  |    2 
 b/drivers/scsi/qlogicpti.c                  |   34 
 b/drivers/scsi/qlogicpti.h                  |   34 
 b/drivers/scsi/scsi.c                       |  175 -
 b/drivers/scsi/scsi.h                       |    9 
 b/drivers/scsi/scsi_debug.c                 |  288 +
 b/drivers/scsi/scsi_debug.h                 |   21 
 b/drivers/scsi/scsi_mid_low_api.txt         |   24 
 b/drivers/scsi/scsi_scan.c                  |   34 
 b/drivers/scsi/scsi_syms.c                  |    5 
 b/drivers/scsi/sd.c                         |   18 
 b/drivers/scsi/sg.c                         |  110 
 b/drivers/scsi/sr.c                         |  263 -
 b/drivers/scsi/sr.h                         |    1 
 b/drivers/scsi/st.c                         |   41 
 b/drivers/scsi/u14-34f.c                    |    8 
 b/drivers/scsi/u14-34f.h                    |    4 
 b/drivers/scsi/ultrastor.c                  |  151 -
 b/drivers/scsi/ultrastor.h                  |   17 
 b/drivers/scsi/wd7000.c                     |   16 
 b/drivers/serial/68328serial.c              | 1698 +++++++++++
 b/drivers/serial/68328serial.h              |  198 +
 b/drivers/serial/68360serial.c              | 3197 ++++++++++++++++++++++
 b/drivers/serial/Kconfig                    |   49 
 b/drivers/serial/Makefile                   |    4 
 b/drivers/serial/amba.c                     |    4 
 b/drivers/serial/anakin.c                   |   12 
 b/drivers/serial/clps711x.c                 |    6 
 b/drivers/serial/mcfserial.c                | 1869 ++++++++++++
 b/drivers/serial/mcfserial.h                |   84 
 b/drivers/serial/nb85e_uart.c               |  590 ++++
 b/drivers/serial/sunzilog.c                 |  298 +-
 b/drivers/serial/uart00.c                   |    6 
 b/drivers/usb/class/Kconfig                 |    2 
 b/drivers/usb/core/devio.c                  |    6 
 b/drivers/usb/core/hcd.h                    |    1 
 b/drivers/usb/host/ohci-dbg.c               |   17 
 b/drivers/usb/host/ohci-pci.c               |   11 
 b/drivers/usb/host/ohci-q.c                 |    6 
 b/drivers/usb/host/ohci-sa1111.c            |   10 
 b/drivers/usb/host/ohci.h                   |    1 
 b/drivers/usb/image/scanner.c               |    4 
 b/drivers/usb/image/scanner.h               |    8 
 b/drivers/usb/media/vicam.c                 |   40 
 b/drivers/usb/misc/Kconfig                  |    7 
 b/drivers/usb/misc/usbtest.c                |   37 
 b/drivers/usb/serial/visor.c                |    2 
 b/drivers/usb/serial/visor.h                |    1 
 b/drivers/usb/storage/datafab.c             |    1 
 b/drivers/usb/storage/freecom.c             |   27 
 b/drivers/usb/storage/isd200.c              |  236 -
 b/drivers/usb/storage/jumpshot.c            |    1 
 b/drivers/usb/storage/sddr09.c              |    1 
 b/drivers/usb/storage/sddr55.c              |    1 
 b/drivers/usb/storage/shuttle_usbat.c       |    4 
 b/drivers/usb/storage/transport.c           |   71 
 b/drivers/video/fbcon.c                     |    5 
 b/drivers/video/fbmem.c                     |    2 
 b/fs/Kconfig                                |   16 
 b/fs/affs/amigaffs.c                        |    4 
 b/fs/affs/dir.c                             |   24 
 b/fs/affs/file.c                            |   38 
 b/fs/affs/namei.c                           |    8 
 b/fs/affs/super.c                           |    1 
 b/fs/affs/symlink.c                         |    8 
 b/fs/afs/main.c                             |    2 
 b/fs/attr.c                                 |    4 
 b/fs/binfmt_elf.c                           |  410 +-
 b/fs/binfmt_misc.c                          |   10 
 b/fs/block_dev.c                            |    1 
 b/fs/buffer.c                               |   92 
 b/fs/devfs/base.c                           |   62 
 b/fs/devfs/util.c                           |    4 
 b/fs/eventpoll.c                            |  188 -
 b/fs/exec.c                                 |   65 
 b/fs/ext2/acl.c                             |   16 
 b/fs/ext2/dir.c                             |    2 
 b/fs/ext2/inode.c                           |    3 
 b/fs/ext2/super.c                           |    6 
 b/fs/ext2/xattr_user.c                      |    8 
 b/fs/ext3/acl.c                             |   16 
 b/fs/ext3/dir.c                             |    7 
 b/fs/ext3/ialloc.c                          |   51 
 b/fs/ext3/inode.c                           |    3 
 b/fs/ext3/namei.c                           |   45 
 b/fs/ext3/super.c                           |    7 
 b/fs/ext3/xattr_user.c                      |    8 
 b/fs/fat/dir.c                              |    8 
 b/fs/fat/file.c                             |   16 
 b/fs/fat/inode.c                            |   42 
 b/fs/fifo.c                                 |    3 
 b/fs/file_table.c                           |    5 
 b/fs/hpfs/dnode.c                           |    4 
 b/fs/hpfs/inode.c                           |    1 
 b/fs/hpfs/super.c                           |    1 
 b/fs/hugetlbfs/inode.c                      |   48 
 b/fs/intermezzo/vfs.c                       |   12 
 b/fs/jfs/inode.c                            |    2 
 b/fs/jfs/jfs_acl.h                          |   33 
 b/fs/locks.c                                |    2 
 b/fs/mbcache.c                              |   27 
 b/fs/mpage.c                                |    1 
 b/fs/nfs/Makefile                           |    2 
 b/fs/nfs/file.c                             |   34 
 b/fs/nfs/inode.c                            |   34 
 b/fs/nfs/mount_clnt.c                       |   31 
 b/fs/nfs/nfs2xdr.c                          |   14 
 b/fs/nfs/nfs3proc.c                         |    2 
 b/fs/nfs/nfs4proc.c                         |    2 
 b/fs/nfs/nfsroot.c                          |   12 
 b/fs/nfs/pagelist.c                         |  206 -
 b/fs/nfs/read.c                             |  214 -
 b/fs/nfs/write.c                            |  279 -
 b/fs/nfsd/nfs3proc.c                        |   50 
 b/fs/nfsd/nfs3xdr.c                         |   56 
 b/fs/nfsd/nfsproc.c                         |   30 
 b/fs/nfsd/nfsxdr.c                          |   44 
 b/fs/nfsd/vfs.c                             |   50 
 b/fs/ntfs/inode.c                           |    2 
 b/fs/partitions/check.c                     |    2 
 b/fs/proc/proc_misc.c                       |   42 
 b/fs/read_write.c                           |  172 -
 b/fs/stat.c                                 |    5 
 b/fs/ufs/dir.c                              |    6 
 b/fs/ufs/inode.c                            |    2 
 b/fs/ufs/super.c                            |    1 
 b/fs/umsdos/dir.c                           |   30 
 b/fs/umsdos/inode.c                         |   22 
 b/fs/umsdos/rdir.c                          |   20 
 b/fs/xfs/Makefile                           |    3 
 b/fs/xfs/linux/xfs_aops.c                   |   23 
 b/fs/xfs/linux/xfs_iomap.c                  |  892 ++++++
 b/fs/xfs/linux/xfs_iops.c                   |   11 
 b/fs/xfs/linux/xfs_linux.h                  |    4 
 b/fs/xfs/linux/xfs_lrw.c                    | 1005 ------
 b/fs/xfs/linux/xfs_lrw.h                    |   42 
 b/fs/xfs/linux/xfs_super.c                  |  333 +-
 b/fs/xfs/linux/xfs_super.h                  |   15 
 b/fs/xfs/linux/xfs_sysctl.c                 |   43 
 b/fs/xfs/linux/xfs_sysctl.h                 |   12 
 b/fs/xfs/linux/xfs_vnode.c                  |    3 
 b/fs/xfs/linux/xfs_vnode.h                  |    1 
 b/fs/xfs/pagebuf/page_buf.c                 |   23 
 b/fs/xfs/pagebuf/page_buf.h                 |   16 
 b/fs/xfs/xfs.h                              |    2 
 b/fs/xfs/xfs_acl.c                          |   83 
 b/fs/xfs/xfs_acl.h                          |    2 
 b/fs/xfs/xfs_attr.c                         |    4 
 b/fs/xfs/xfs_bmap_btree.c                   |    6 
 b/fs/xfs/xfs_buf.h                          |    3 
 b/fs/xfs/xfs_buf_item.c                     |    5 
 b/fs/xfs/xfs_da_btree.c                     |   14 
 b/fs/xfs/xfs_da_btree.h                     |   20 
 b/fs/xfs/xfs_dir.c                          |    6 
 b/fs/xfs/xfs_dir2.c                         |    5 
 b/fs/xfs/xfs_dir2_node.c                    |    4 
 b/fs/xfs/xfs_dmapi.h                        |    6 
 b/fs/xfs/xfs_fsops.c                        |    3 
 b/fs/xfs/xfs_iget.c                         |   32 
 b/fs/xfs/xfs_inode.c                        |    1 
 b/fs/xfs/xfs_inode.h                        |    4 
 b/fs/xfs/xfs_log.c                          |   12 
 b/fs/xfs/xfs_log_recover.c                  |    8 
 b/fs/xfs/xfs_macros.c                       |    8 
 b/fs/xfs/xfs_mount.c                        |  104 
 b/fs/xfs/xfs_mount.h                        |    5 
 b/fs/xfs/xfs_qm.c                           |   15 
 b/fs/xfs/xfs_rename.c                       |    1 
 b/fs/xfs/xfs_rtalloc.c                      |   12 
 b/fs/xfs/xfs_rw.c                           |  381 --
 b/fs/xfs/xfs_rw.h                           |   26 
 b/fs/xfs/xfs_vfsops.c                       |   76 
 b/fs/xfs/xfs_vnodeops.c                     |   41 
 b/fs/xfs/xfsidbg.c                          |   11 
 b/include/asm-arm/arch-sa1100/SA-1101.h     |    8 
 b/include/asm-arm/arch-sa1100/hardware.h    |  104 
 b/include/asm-generic/xor.h                 |  404 ++
 b/include/asm-i386/bitops.h                 |   10 
 b/include/asm-i386/elf.h                    |   23 
 b/include/asm-i386/hardirq.h                |    2 
 b/include/asm-i386/timer.h                  |    4 
 b/include/asm-ia64/elf.h                    |   12 
 b/include/asm-parisc/mman.h                 |    2 
 b/include/asm-parisc/pgtable.h              |    2 
 b/include/asm-ppc/cacheflush.h              |    2 
 b/include/asm-ppc/highmem.h                 |    4 
 b/include/asm-ppc/ibm4xx.h                  |   16 
 b/include/asm-ppc/machdep.h                 |    3 
 b/include/asm-ppc/mman.h                    |    2 
 b/include/asm-ppc/page.h                    |    6 
 b/include/asm-ppc/poll.h                    |    1 
 b/include/asm-ppc/tlbflush.h                |   22 
 b/include/asm-ppc/unistd.h                  |    5 
 b/include/asm-ppc64/elf.h                   |    4 
 b/include/asm-ppc64/machdep.h               |   14 
 b/include/asm-ppc64/mman.h                  |    3 
 b/include/asm-ppc64/poll.h                  |    1 
 b/include/asm-ppc64/processor.h             |    4 
 b/include/asm-ppc64/unistd.h                |    2 
 b/include/asm-sparc/poll.h                  |    1 
 b/include/asm-sparc/system.h                |    3 
 b/include/asm-sparc/unistd.h                |    2 
 b/include/asm-sparc/vac-ops.h               |    4 
 b/include/asm-sparc64/elf.h                 |    1 
 b/include/asm-sparc64/poll.h                |    1 
 b/include/asm-sparc64/unistd.h              |    2 
 b/include/linux/blkdev.h                    |   32 
 b/include/linux/cpufreq.h                   |   46 
 b/include/linux/crypto.h                    |   47 
 b/include/linux/devfs_fs_kernel.h           |   19 
 b/include/linux/elf.h                       |    4 
 b/include/linux/elfcore.h                   |   41 
 b/include/linux/eventpoll.h                 |   14 
 b/include/linux/ext3_fs.h                   |    7 
 b/include/linux/flat.h                      |    3 
 b/include/linux/fs.h                        |   48 
 b/include/linux/hugetlb.h                   |    9 
 b/include/linux/ide.h                       |   11 
 b/include/linux/in.h                        |    1 
 b/include/linux/inetdevice.h                |    2 
 b/include/linux/ipsec.h                     |  105 
 b/include/linux/mm.h                        |    6 
 b/include/linux/module.h                    |    2 
 b/include/linux/mtd/ftl.h                   |    2 
 b/include/linux/nfs_fs.h                    |   61 
 b/include/linux/nfs_fs_sb.h                 |    7 
 b/include/linux/nfs_page.h                  |   33 
 b/include/linux/nfsd/xdr.h                  |   10 
 b/include/linux/nfsd/xdr3.h                 |   10 
 b/include/linux/pagemap.h                   |    2 
 b/include/linux/pci.h                       |    7 
 b/include/linux/pci_ids.h                   |    5 
 b/include/linux/pfkeyv2.h                   |    6 
 b/include/linux/pnpbios.h                   |    2 
 b/include/linux/poll.h                      |   15 
 b/include/linux/resource.h                  |    6 
 b/include/linux/sched.h                     |   19 
 b/include/linux/sctp.h                      |  129 
 b/include/linux/slab.h                      |    1 
 b/include/linux/sunrpc/clnt.h               |   16 
 b/include/linux/sunrpc/sched.h              |   19 
 b/include/linux/sunrpc/svc.h                |   38 
 b/include/linux/sunrpc/svcsock.h            |    1 
 b/include/linux/sunrpc/timer.h              |   12 
 b/include/linux/sunrpc/xdr.h                |    7 
 b/include/linux/sunrpc/xprt.h               |    4 
 b/include/linux/sysctl.h                    |    2 
 b/include/linux/timer.h                     |   17 
 b/include/linux/umem.h                      |    1 
 b/include/linux/vmalloc.h                   |    1 
 b/include/linux/workqueue.h                 |    4 
 b/include/net/dst.h                         |   12 
 b/include/net/protocol.h                    |    1 
 b/include/net/route.h                       |    1 
 b/include/net/sctp/sctp.h                   |    6 
 b/include/net/sctp/sm.h                     |    4 
 b/include/net/sctp/structs.h                |   13 
 b/include/net/snmp.h                        |   29 
 b/include/net/sock.h                        |    1 
 b/include/net/xfrm.h                        |  175 -
 b/include/pcmcia/ciscode.h                  |   18 
 b/include/sound/core.h                      |    6 
 b/include/sound/cs4231.h                    |   45 
 b/include/sound/cs46xx.h                    |   83 
 b/include/sound/cs46xx_dsp_spos.h           |   45 
 b/include/sound/info.h                      |    3 
 b/include/sound/pcm.h                       |    4 
 b/include/sound/pcm_sgbuf.h                 |    2 
 b/include/sound/version.h                   |    2 
 b/kernel/cpufreq.c                          |   12 
 b/kernel/exit.c                             |   32 
 b/kernel/fork.c                             |    4 
 b/kernel/ksyms.c                            |    3 
 b/kernel/pid.c                              |    2 
 b/kernel/sched.c                            |   53 
 b/kernel/signal.c                           |   26 
 b/kernel/sysctl.c                           |   14 
 b/kernel/timer.c                            |   42 
 b/lib/Kconfig                               |    4 
 b/lib/vsprintf.c                            |   17 
 b/mm/filemap.c                              |   10 
 b/mm/mmap.c                                 |    2 
 b/mm/page_alloc.c                           |   27 
 b/mm/readahead.c                            |   42 
 b/mm/shmem.c                                |    8 
 b/mm/slab.c                                 |   20 
 b/net/Kconfig                               |   37 
 b/net/Makefile                              |    1 
 b/net/ax25/ax25_dev.c                       |    4 
 b/net/bridge/br_if.c                        |    2 
 b/net/bridge/br_netfilter.c                 |   12 
 b/net/core/Makefile                         |    1 
 b/net/core/dev.c                            |    4 
 b/net/core/dst.c                            |   57 
 b/net/core/netfilter.c                      |    1 
 b/net/core/pktgen.c                         | 1388 +++++++++
 b/net/core/profile.c                        |    5 
 b/net/decnet/dn_route.c                     |    4 
 b/net/ipv4/Kconfig                          |   14 
 b/net/ipv4/Makefile                         |    4 
 b/net/ipv4/af_inet.c                        |    6 
 b/net/ipv4/ah.c                             |  135 
 b/net/ipv4/devinet.c                        |   20 
 b/net/ipv4/esp.c                            |  693 ++++
 b/net/ipv4/fib_hash.c                       |    3 
 b/net/ipv4/inetpeer.c                       |    2 
 b/net/ipv4/ip_forward.c                     |    2 
 b/net/ipv4/ip_gre.c                         |    4 
 b/net/ipv4/ip_input.c                       |   26 
 b/net/ipv4/ip_output.c                      |    6 
 b/net/ipv4/ip_sockglue.c                    |    5 
 b/net/ipv4/ipip.c                           |    4 
 b/net/ipv4/ipmr.c                           |    4 
 b/net/ipv4/netfilter/ipt_TCPMSS.c           |    6 
 b/net/ipv4/netfilter/ipt_physdev.c          |    4 
 b/net/ipv4/raw.c                            |   10 
 b/net/ipv4/route.c                          |   48 
 b/net/ipv4/tcp.c                            |    3 
 b/net/ipv4/tcp_input.c                      |    9 
 b/net/ipv4/tcp_ipv4.c                       |   18 
 b/net/ipv4/tcp_minisocks.c                  |   13 
 b/net/ipv4/udp.c                            |   11 
 b/net/ipv4/xfrm_input.c                     |    9 
 b/net/ipv4/xfrm_policy.c                    |  507 ++-
 b/net/ipv4/xfrm_state.c                     |  473 +++
 b/net/ipv6/addrconf.c                       |    3 
 b/net/ipv6/ip6_fib.c                        |    2 
 b/net/ipv6/reassembly.c                     |    2 
 b/net/ipv6/route.c                          |    6 
 b/net/ipv6/tcp_ipv6.c                       |    6 
 b/net/irda/irlap_frame.c                    |   14 
 b/net/irda/irsyms.c                         |   14 
 b/net/key/Makefile                          |    7 
 b/net/key/af_key.c                          | 2329 ++++++++++++++++
 b/net/netsyms.c                             |   38 
 b/net/packet/af_packet.c                    |   30 
 b/net/rxrpc/main.c                          |    2 
 b/net/sched/sch_api.c                       |    3 
 b/net/sctp/associola.c                      |    6 
 b/net/sctp/input.c                          |    9 
 b/net/sctp/ipv6.c                           |   68 
 b/net/sctp/output.c                         |   15 
 b/net/sctp/outqueue.c                       |   54 
 b/net/sctp/protocol.c                       |   48 
 b/net/sctp/sm_make_chunk.c                  |   61 
 b/net/sctp/sm_sideeffect.c                  |   84 
 b/net/sctp/sm_statefuns.c                   |   57 
 b/net/sctp/socket.c                         |   24 
 b/net/sctp/transport.c                      |   74 
 b/net/socket.c                              |    4 
 b/net/sunrpc/auth_null.c                    |    8 
 b/net/sunrpc/auth_unix.c                    |   30 
 b/net/sunrpc/clnt.c                         |   10 
 b/net/sunrpc/pmap_clnt.c                    |   14 
 b/net/sunrpc/sched.c                        |  164 -
 b/net/sunrpc/sunrpc_syms.c                  |    5 
 b/net/sunrpc/svc.c                          |   16 
 b/net/sunrpc/svcsock.c                      |  145 -
 b/net/sunrpc/timer.c                        |   59 
 b/net/sunrpc/xprt.c                         |   28 
 b/net/wanrouter/af_wanpipe.c                |   27 
 b/scripts/Makefile                          |   28 
 b/scripts/README.Menuconfig                 |   19 
 b/scripts/kconfig/conf.c                    |    3 
 b/scripts/kconfig/confdata.c                |   56 
 b/scripts/kconfig/expr.h                    |    2 
 b/scripts/kconfig/lex.zconf.c_shipped       |  418 +-
 b/scripts/kconfig/mconf.c                   |   73 
 b/scripts/kconfig/menu.c                    |    2 
 b/scripts/kconfig/qconf.cc                  |   40 
 b/scripts/kconfig/zconf.l                   |   39 
 b/scripts/kconfig/zconf.tab.c_shipped       | 1749 ++++++------
 b/scripts/kconfig/zconf.tab.h_shipped       |  146 -
 b/sound/core/info.c                         |   19 
 b/sound/core/init.c                         |  102 
 b/sound/core/oss/pcm_oss.c                  |   10 
 b/sound/core/pcm_native.c                   |   16 
 b/sound/core/pcm_sgbuf.c                    |   24 
 b/sound/core/rawmidi.c                      |    4 
 b/sound/core/seq/seq_prioq.c                |    1 
 b/sound/core/timer.c                        |    1 
 b/sound/drivers/dummy.c                     |    1 
 b/sound/drivers/mtpav.c                     |    1 
 b/sound/drivers/serial-u16550.c             |    1 
 b/sound/i2c/l3/uda1341.c                    |    4 
 b/sound/isa/cs423x/cs4231_lib.c             |  247 +
 b/sound/isa/es18xx.c                        |    8 
 b/sound/isa/sb/emu8000_pcm.c                |   22 
 b/sound/oss/dmasound/dmasound_awacs.c       |    3 
 b/sound/oss/midibuf.c                       |    4 
 b/sound/oss/soundcard.c                     |    2 
 b/sound/oss/sys_timer.c                     |    3 
 b/sound/oss/uart6850.c                      |    5 
 b/sound/pci/ac97/ac97_codec.c               |   31 
 b/sound/pci/ac97/ac97_id.h                  |    1 
 b/sound/pci/ac97/ac97_patch.c               |   12 
 b/sound/pci/ac97/ac97_patch.h               |    1 
 b/sound/pci/ali5451/ali5451.c               |    9 
 b/sound/pci/cs46xx/cs46xx.c                 |   17 
 b/sound/pci/cs46xx/cs46xx_lib.c             |  751 ++++-
 b/sound/pci/cs46xx/cs46xx_lib.h             |   33 
 b/sound/pci/cs46xx/dsp_spos.c               |  125 
 b/sound/pci/cs46xx/dsp_spos.h               |   25 
 b/sound/pci/cs46xx/dsp_spos_scb_lib.c       |  326 +-
 b/sound/pci/emu10k1/emufx.c                 |    1 
 b/sound/pci/ens1370.c                       |  305 +-
 b/sound/pci/ice1712/ak4524.c                |  178 -
 b/sound/pci/ice1712/delta.c                 |   26 
 b/sound/pci/ice1712/delta.h                 |    6 
 b/sound/pci/ice1712/ews.c                   |    3 
 b/sound/pci/ice1712/ice1712.c               |   46 
 b/sound/pci/ice1712/ice1712.h               |    6 
 b/sound/pci/rme9652/hammerfall_mem.c        |    3 
 b/sound/pci/rme9652/hdsp.c                  |    1 
 b/sound/pci/via82xx.c                       |   56 
 b/sound/sparc/amd7930.c                     |    1 
 b/sound/usb/usbaudio.c                      |   76 
 b/sound/usb/usbaudio.h                      |   11 
 b/sound/usb/usbmidi.c                       |  111 
 b/usr/Makefile                              |   14 
 b/usr/initramfs_data.scr                    |    4 
 drivers/macintosh/mac_keyb.c                |  834 -----
 drivers/macintosh/mackeymap.map             |  344 --
 drivers/macintosh/rtc.c                     |  147 -
 drivers/net/pcmcia/ax8390.h                 |  187 -
 drivers/scsi/NCR53c406a.h                   |   58 
 fs/nfs/flushd.c                             |  205 -
 include/linux/nfs_flushd.h                  |   61 
 include/linux/nfsiod.h                      |   52 
 include/linux/rpcsock.h                     |  121 
 scripts/Configure                           |  688 ----
 scripts/Menuconfig                          | 1469 ----------
 scripts/tail.tk                             |   89 
 scripts/tkcond.c                            |  602 ----
 scripts/tkgen.c                             | 1521 ----------
 scripts/tkparse.c                           |  828 -----
 scripts/tkparse.h                           |  127 
 967 files changed, 57740 insertions(+), 40074 deletions(-)

