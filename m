From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.15 released
Date: Thu, 9 May 2002 15:30:25 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205092230.g49MUPG13123@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.15 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.15.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.15.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               384140           1583556
Full source                       34206571         152524800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/i386/kernel/pci-i386.c                          |  384 --
 arch/i386/kernel/pci-i386.h                          |   73 
 arch/i386/kernel/pci-irq.c                           |  866 -----
 arch/i386/kernel/pci-pc.c                            | 1423 --------
 arch/i386/kernel/pci-visws.c                         |  141 
 arch/ppc/kernel/ppc_defs.head                        |    3 
 b/CREDITS                                            |    2 
 b/Documentation/kbuild/makefiles.txt                 |   53 
 b/Documentation/nbd.txt                              |    2 
 b/Documentation/sonypi.txt                           |    4 
 b/Documentation/video4linux/meye.txt                 |   10 
 b/Makefile                                           |   32 
 b/arch/alpha/defconfig                               |    1 
 b/arch/alpha/kernel/pci.c                            |   32 
 b/arch/arm/def-configs/footbridge                    |    1 
 b/arch/arm/def-configs/iq80310                       |    1 
 b/arch/arm/def-configs/shark                         |    1 
 b/arch/arm/kernel/bios32.c                           |   18 
 b/arch/i386/Makefile                                 |    5 
 b/arch/i386/defconfig                                |    1 
 b/arch/i386/kernel/Makefile                          |   14 
 b/arch/i386/kernel/dmi_scan.c                        |    6 
 b/arch/i386/kernel/mtrr.c                            |   18 
 b/arch/i386/kernel/signal.c                          |    2 
 b/arch/i386/lib/Makefile                             |    3 
 b/arch/i386/lib/mmx.c                                |   24 
 b/arch/i386/math-emu/Makefile                        |    4 
 b/arch/i386/pci/Makefile                             |   29 
 b/arch/i386/pci/acpi.c                               |   74 
 b/arch/i386/pci/changelog                            |   62 
 b/arch/i386/pci/common.c                             |  206 +
 b/arch/i386/pci/direct.c                             |  366 ++
 b/arch/i386/pci/fixup.c                              |  183 +
 b/arch/i386/pci/i386.c                               |  324 ++
 b/arch/i386/pci/irq.c                                |  812 +++++
 b/arch/i386/pci/legacy.c                             |   53 
 b/arch/i386/pci/numa.c                               |  119 
 b/arch/i386/pci/pcbios.c                             |  559 +++
 b/arch/i386/pci/pci.h                                |   75 
 b/arch/i386/pci/visws.c                              |  141 
 b/arch/ia64/defconfig                                |    1 
 b/arch/ia64/kernel/pci.c                             |    7 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-mp       |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-sp       |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-dig-mp          |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-dig-sp          |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-generic-mp      |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-generic-sp      |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-prom-medusa     |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp          |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp-modules  |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp-syn1-0   |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-sp          |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-dig-numa        |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-dig-mp      |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-dig-sp      |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-mp          |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-mp-modules  |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-prom-medusa |    1 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-sp          |    1 
 b/arch/m68k/amiga/amiints.c                          |    1 
 b/arch/m68k/amiga/chipram.c                          |    1 
 b/arch/m68k/amiga/config.c                           |  196 -
 b/arch/m68k/apollo/config.c                          |   51 
 b/arch/m68k/atari/ataints.c                          |   12 
 b/arch/m68k/atari/config.c                           |   11 
 b/arch/m68k/atari/stram.c                            |   12 
 b/arch/m68k/atari/time.c                             |  140 
 b/arch/m68k/bvme6000/config.c                        |  124 
 b/arch/m68k/bvme6000/rtc.c                           |    2 
 b/arch/m68k/config.in                                |   41 
 b/arch/m68k/hp300/config.c                           |    3 
 b/arch/m68k/hp300/time.c                             |    2 
 b/arch/m68k/kernel/head.S                            |   16 
 b/arch/m68k/kernel/process.c                         |   30 
 b/arch/m68k/kernel/ptrace.c                          |    2 
 b/arch/m68k/kernel/setup.c                           |   38 
 b/arch/m68k/kernel/signal.c                          |   18 
 b/arch/m68k/kernel/sun3-head.S                       |    5 
 b/arch/m68k/kernel/time.c                            |   19 
 b/arch/m68k/kernel/traps.c                           |   98 
 b/arch/m68k/mac/config.c                             |    7 
 b/arch/m68k/mac/misc.c                               |   44 
 b/arch/m68k/math-emu/fp_emu.h                        |    2 
 b/arch/m68k/math-emu/multi_arith.h                   |    6 
 b/arch/m68k/mvme147/config.c                         |   31 
 b/arch/m68k/mvme16x/config.c                         |   31 
 b/arch/m68k/q40/config.c                             |   75 
 b/arch/m68k/sun3/config.c                            |   21 
 b/arch/m68k/sun3/intersil.c                          |   61 
 b/arch/m68k/sun3x/config.c                           |    4 
 b/arch/m68k/sun3x/time.c                             |   54 
 b/arch/m68k/sun3x/time.h                             |    4 
 b/arch/mips/ddb5074/pci.c                            |    6 
 b/arch/mips/ddb5476/pci.c                            |    2 
 b/arch/mips/ddb5xxx/common/pci.c                     |    3 
 b/arch/mips/defconfig-ddb5476                        |    1 
 b/arch/mips/defconfig-it8172                         |    1 
 b/arch/mips/gt64120/common/pci.c                     |    2 
 b/arch/mips/ite-boards/generic/it8172_pci.c          |    3 
 b/arch/mips/kernel/pci.c                             |    3 
 b/arch/mips/mips-boards/generic/pci.c                |    3 
 b/arch/mips/sni/pci.c                                |    3 
 b/arch/mips64/mips-boards/generic/pci.c              |    3 
 b/arch/mips64/sgi-ip27/ip27-pci.c                    |    7 
 b/arch/mips64/sgi-ip32/ip32-pci.c                    |    6 
 b/arch/parisc/kernel/pci.c                           |   12 
 b/arch/ppc/Config.help                               |  415 +-
 b/arch/ppc/Makefile                                  |    2 
 b/arch/ppc/boot/simple/embed_config.c                |   18 
 b/arch/ppc/config.in                                 |   30 
 b/arch/ppc/configs/apus_defconfig                    |    1 
 b/arch/ppc/configs/common_defconfig                  |    2 
 b/arch/ppc/configs/cpci405_defconfig                 |    1 
 b/arch/ppc/configs/k2_defconfig                      |    1 
 b/arch/ppc/configs/menf1_defconfig                   |    1 
 b/arch/ppc/configs/mvme5100_defconfig                |    1 
 b/arch/ppc/configs/pmac_defconfig                    |    2 
 b/arch/ppc/configs/pplus_defconfig                   |    1 
 b/arch/ppc/configs/sandpoint_defconfig               |    1 
 b/arch/ppc/defconfig                                 |    2 
 b/arch/ppc/kernel/Makefile                           |   23 
 b/arch/ppc/kernel/align.c                            |    2 
 b/arch/ppc/kernel/asm-offsets.head                   |    3 
 b/arch/ppc/kernel/btext.c                            |    9 
 b/arch/ppc/kernel/cputable.c                         |   58 
 b/arch/ppc/kernel/entry.S                            |  730 ++--
 b/arch/ppc/kernel/head.S                             |  573 ++-
 b/arch/ppc/kernel/head_4xx.S                         |  919 ++---
 b/arch/ppc/kernel/head_8xx.S                         |    2 
 b/arch/ppc/kernel/i8259.c                            |   17 
 b/arch/ppc/kernel/iSeries_head.S                     |    2 
 b/arch/ppc/kernel/iSeries_misc.S                     |    2 
 b/arch/ppc/kernel/idle.c                             |    6 
 b/arch/ppc/kernel/l2cr.S                             |  154 
 b/arch/ppc/kernel/misc.S                             |   42 
 b/arch/ppc/kernel/mk_defs.c                          |    5 
 b/arch/ppc/kernel/open_pic.c                         |  103 
 b/arch/ppc/kernel/pci.c                              |   37 
 b/arch/ppc/kernel/ppc4xx_setup.c                     |    4 
 b/arch/ppc/kernel/ppc_ksyms.c                        |    8 
 b/arch/ppc/kernel/process.c                          |   37 
 b/arch/ppc/kernel/prom.c                             |    7 
 b/arch/ppc/kernel/ptrace.c                           |   15 
 b/arch/ppc/kernel/setup.c                            |  145 
 b/arch/ppc/kernel/signal.c                           |  161 -
 b/arch/ppc/kernel/traps.c                            |   18 
 b/arch/ppc/mm/Makefile                               |    2 
 b/arch/ppc/mm/fault.c                                |   11 
 b/arch/ppc/mm/hashtable.S                            |   76 
 b/arch/ppc/mm/init.c                                 |    2 
 b/arch/ppc/mm/mmu_context.c                          |    7 
 b/arch/ppc/platforms/chrp_setup.c                    |   15 
 b/arch/ppc/platforms/lopec_setup.c                   |  142 
 b/arch/ppc/platforms/pmac_feature.c                  |  153 
 b/arch/ppc/platforms/pmac_nvram.c                    |   26 
 b/arch/ppc/platforms/pmac_pci.c                      |   50 
 b/arch/ppc/platforms/pmac_pic.c                      |   19 
 b/arch/ppc/platforms/pmac_setup.c                    |   85 
 b/arch/ppc/platforms/pmac_smp.c                      |  157 
 b/arch/ppc/platforms/prep_pci.c                      |   30 
 b/arch/ppc/platforms/prep_setup.c                    |   13 
 b/arch/ppc/xmon/start.c                              |   10 
 b/arch/ppc/xmon/xmon.c                               |   44 
 b/arch/ppc64/kernel/ioctl32.c                        |    4 
 b/arch/ppc64/kernel/pci.c                            |    3 
 b/arch/ppc64/kernel/setup.c                          |   89 
 b/arch/sh/kernel/pci_st40.c                          |    4 
 b/arch/sh/kernel/pcibios.c                           |    3 
 b/arch/sparc/kernel/pcic.c                           |    3 
 b/arch/sparc/kernel/sys_sunos.c                      |    3 
 b/arch/sparc/mm/sun4c.c                              |   29 
 b/arch/sparc64/defconfig                             |   66 
 b/arch/sparc64/kernel/Makefile                       |   12 
 b/arch/sparc64/kernel/ioctl32.c                      |   16 
 b/arch/sparc64/kernel/pci.c                          |    7 
 b/arch/sparc64/kernel/setup.c                        |    3 
 b/arch/sparc64/kernel/signal.c                       |    4 
 b/arch/sparc64/kernel/signal32.c                     |    8 
 b/arch/sparc64/kernel/sparc64_ksyms.c                |    2 
 b/arch/sparc64/kernel/sys_sunos32.c                  |    3 
 b/arch/sparc64/lib/Makefile                          |    9 
 b/arch/sparc64/mm/Makefile                           |   12 
 b/arch/sparc64/mm/init.c                             |   12 
 b/arch/sparc64/prom/Makefile                         |   14 
 b/arch/sparc64/solaris/Makefile                      |   11 
 b/arch/x86_64/defconfig                              |    1 
 b/arch/x86_64/ia32/ia32_ioctl.c                      |    4 
 b/arch/x86_64/kernel/mtrr.c                          |   18 
 b/arch/x86_64/kernel/pci-x86_64.c                    |    3 
 b/arch/x86_64/lib/mmx.c                              |   27 
 b/drivers/Makefile                                   |   11 
 b/drivers/acorn/block/mfmhd.c                        |   13 
 b/drivers/acorn/scsi/arxescsi.c                      |   14 
 b/drivers/acorn/scsi/cumana_2.c                      |    9 
 b/drivers/acorn/scsi/oak.c                           |    3 
 b/drivers/acpi/acpi_osl.c                            |    3 
 b/drivers/block/amiflop.c                            |   37 
 b/drivers/block/cciss.c                              |   20 
 b/drivers/block/cpqarray.c                           |    6 
 b/drivers/block/floppy.c                             |   22 
 b/drivers/block/genhd.c                              |    4 
 b/drivers/block/ll_rw_blk.c                          |    4 
 b/drivers/block/ps2esdi.c                            |    7 
 b/drivers/block/swim3.c                              |    2 
 b/drivers/block/swim_iop.c                           |    2 
 b/drivers/block/z2ram.c                              |   14 
 b/drivers/cdrom/cdu31a.c                             |    3 
 b/drivers/char/Config.in                             |    5 
 b/drivers/char/Makefile                              |   31 
 b/drivers/char/acquirewdt.c                          |   14 
 b/drivers/char/advantechwdt.c                        |   16 
 b/drivers/char/agp/agp.h                             |   11 
 b/drivers/char/agp/agpgart_be.c                      |  776 ++++
 b/drivers/char/amiserial.c                           |    2 
 b/drivers/char/drm/drm_agpsupport.h                  |    2 
 b/drivers/char/ip2main.c                             |    2 
 b/drivers/char/moxa.c                                |    2 
 b/drivers/char/mxser.c                               |    2 
 b/drivers/char/pcmcia/Config.in                      |    8 
 b/drivers/char/pcmcia/Makefile                       |    9 
 b/drivers/char/random.c                              |    2 
 b/drivers/char/rio/rio_linux.c                       |    2 
 b/drivers/char/rocket.c                              |    4 
 b/drivers/char/serial.c                              |    3 
 b/drivers/char/serial167.c                           |    2 
 b/drivers/char/sonypi.c                              |   15 
 b/drivers/char/sonypi.h                              |    2 
 b/drivers/char/tty_io.c                              |    8 
 b/drivers/char/vt.c                                  |   12 
 b/drivers/char/wdt285.c                              |    8 
 b/drivers/hotplug/cpqphp_core.c                      |    2 
 b/drivers/hotplug/cpqphp_pci.c                       |    2 
 b/drivers/hotplug/ibmphp.h                           |   18 
 b/drivers/hotplug/ibmphp_core.c                      |  210 -
 b/drivers/hotplug/ibmphp_ebda.c                      |   65 
 b/drivers/hotplug/ibmphp_hpc.c                       |   29 
 b/drivers/hotplug/pci_hotplug_core.c                 |    8 
 b/drivers/i2c/i2c-adap-ite.c                         |    2 
 b/drivers/ide/Config.help                            |    5 
 b/drivers/ide/Config.in                              |   98 
 b/drivers/ide/Makefile                               |    4 
 b/drivers/ide/aec62xx.c                              |   96 
 b/drivers/ide/alim15x3.c                             |   53 
 b/drivers/ide/amd74xx.c                              |   96 
 b/drivers/ide/buddha.c                               |   26 
 b/drivers/ide/cmd64x.c                               |   82 
 b/drivers/ide/cs5530.c                               |   29 
 b/drivers/ide/cy82c693.c                             |   36 
 b/drivers/ide/falconide.c                            |    2 
 b/drivers/ide/hpt34x.c                               |   40 
 b/drivers/ide/hpt366.c                               |  782 +++-
 b/drivers/ide/hptraid.c                              |   16 
 b/drivers/ide/ide-cd.c                               |    3 
 b/drivers/ide/ide-disk.c                             |  333 --
 b/drivers/ide/ide-dma.c                              |   29 
 b/drivers/ide/ide-features.c                         |  100 
 b/drivers/ide/ide-floppy.c                           |   21 
 b/drivers/ide/ide-geometry.c                         |    2 
 b/drivers/ide/ide-pci.c                              |  489 +--
 b/drivers/ide/ide-pmac.c                             |  285 +
 b/drivers/ide/ide-probe.c                            |    2 
 b/drivers/ide/ide-tape.c                             |   44 
 b/drivers/ide/ide-taskfile.c                         |   54 
 b/drivers/ide/ide.c                                  |  327 +-
 b/drivers/ide/it8172.c                               |   38 
 b/drivers/ide/ns87415.c                              |   21 
 b/drivers/ide/opti621.c                              |   36 
 b/drivers/ide/pcihost.h                              |  136 
 b/drivers/ide/pdc202xx.c                             |  190 +
 b/drivers/ide/pdc4030.c                              |   48 
 b/drivers/ide/pdcadma.c                              |   32 
 b/drivers/ide/pdcraid.c                              |   13 
 b/drivers/ide/piix.c                                 |  178 +
 b/drivers/ide/rz1000.c                               |   46 
 b/drivers/ide/serverworks.c                          |   64 
 b/drivers/ide/sis5513.c                              |   31 
 b/drivers/ide/sl82c105.c                             |   27 
 b/drivers/ide/tcq.c                                  |    8 
 b/drivers/ide/trm290.c                               |   24 
 b/drivers/ide/via82cxxx.c                            |   56 
 b/drivers/isdn/capi/capi.c                           |   63 
 b/drivers/isdn/capi/kcapi.c                          |  635 ++-
 b/drivers/isdn/hardware/avm/b1.c                     |    4 
 b/drivers/isdn/hardware/avm/b1dma.c                  |    4 
 b/drivers/isdn/hardware/avm/b1isa.c                  |   48 
 b/drivers/isdn/hardware/avm/b1pci.c                  |   91 
 b/drivers/isdn/hardware/avm/b1pcmcia.c               |   48 
 b/drivers/isdn/hardware/avm/c4.c                     |   84 
 b/drivers/isdn/hardware/avm/t1isa.c                  |   55 
 b/drivers/isdn/hardware/avm/t1pci.c                  |   45 
 b/drivers/isdn/hysdn/hycapi.c                        |   42 
 b/drivers/media/video/meye.c                         |   23 
 b/drivers/media/video/meye.h                         |    2 
 b/drivers/media/video/zr36120.c                      |    6 
 b/drivers/message/Makefile                           |   20 
 b/drivers/message/fusion/Config.in                   |   22 
 b/drivers/net/Makefile                               |   84 
 b/drivers/net/acenic.c                               |    2 
 b/drivers/net/tg3.c                                  |   15 
 b/drivers/net/tg3.h                                  |    3 
 b/drivers/pci/Makefile                               |   10 
 b/drivers/pci/access.c                               |   46 
 b/drivers/pci/hotplug.c                              |  132 
 b/drivers/pci/pci-driver.c                           |  136 
 b/drivers/pci/pci.c                                  | 1526 ---------
 b/drivers/pci/pool.c                                 |  336 ++
 b/drivers/pci/power.c                                |  164 +
 b/drivers/pci/probe.c                                |  605 +++
 b/drivers/pci/proc.c                                 |   13 
 b/drivers/pci/search.c                               |  110 
 b/drivers/pci/setup-bus.c                            |  391 +-
 b/drivers/pci/setup-res.c                            |   59 
 b/drivers/pcmcia/Config.in                           |   17 
 b/drivers/pcmcia/Makefile                            |   55 
 b/drivers/pcmcia/ds.c                                |    2 
 b/drivers/s390/char/tubtty.c                         |    2 
 b/drivers/scsi/53c7xx.c                              |   17 
 b/drivers/scsi/NCR53C9x.c                            |    5 
 b/drivers/scsi/a2091.c                               |   15 
 b/drivers/scsi/a3000.c                               |   21 
 b/drivers/scsi/aha1542.c                             |   85 
 b/drivers/scsi/aha1542.h                             |    4 
 b/drivers/scsi/amiga7xx.c                            |    2 
 b/drivers/scsi/atari_NCR5380.c                       |    5 
 b/drivers/scsi/atari_scsi.c                          |    2 
 b/drivers/scsi/blz1230.c                             |    2 
 b/drivers/scsi/blz2060.c                             |    2 
 b/drivers/scsi/bvme6000.c                            |    4 
 b/drivers/scsi/cpqfcTSinit.c                         |    2 
 b/drivers/scsi/cyberstorm.c                          |    2 
 b/drivers/scsi/cyberstormII.c                        |    2 
 b/drivers/scsi/fastlane.c                            |    2 
 b/drivers/scsi/g_NCR5380.c                           | 1346 +++-----
 b/drivers/scsi/gvp11.c                               |   14 
 b/drivers/scsi/ide-scsi.c                            |   27 
 b/drivers/scsi/mac_NCR5380.c                         |    5 
 b/drivers/scsi/mac_esp.c                             |    2 
 b/drivers/scsi/mvme16x.c                             |    4 
 b/drivers/scsi/oktagon_esp.c                         |    6 
 b/drivers/scsi/osst.c                                |  208 -
 b/drivers/scsi/osst.h                                |    4 
 b/drivers/scsi/sd.c                                  |   37 
 b/drivers/scsi/sg.c                                  |   57 
 b/drivers/scsi/sgiwd93.c                             |   43 
 b/drivers/scsi/sun3_scsi.c                           |    1 
 b/drivers/scsi/wd33c93.c                             |    8 
 b/drivers/usb/Config.in                              |    2 
 b/drivers/usb/Makefile                               |    2 
 b/drivers/usb/class/printer.c                        |   14 
 b/drivers/usb/core/hub.h                             |    1 
 b/drivers/usb/core/usb.c                             |    5 
 b/drivers/usb/host/ehci-hcd.c                        |    8 
 b/drivers/usb/host/ehci-q.c                          |  165 -
 b/drivers/usb/host/ehci-sched.c                      |   28 
 b/drivers/usb/host/usb-ohci.c                        |   23 
 b/drivers/usb/input/hid-core.c                       |   18 
 b/drivers/usb/net/rtl8150.c                          |    1 
 b/drivers/usb/net/usbnet.c                           |  197 -
 b/drivers/usb/serial/pl2303.c                        |    1 
 b/drivers/usb/serial/pl2303.h                        |    3 
 b/drivers/usb/serial/usbserial.c                     |    2 
 b/drivers/zorro/zorro.c                              |    6 
 b/drivers/zorro/zorro.ids                            |    5 
 b/fs/affs/Changes                                    |    6 
 b/fs/affs/bitmap.c                                   |    2 
 b/fs/affs/file.c                                     |  101 
 b/fs/affs/super.c                                    |    4 
 b/fs/dcache.c                                        |    2 
 b/fs/dnotify.c                                       |   75 
 b/fs/exportfs/expfs.c                                |  104 
 b/fs/ext3/namei.c                                    |   39 
 b/fs/ext3/super.c                                    |    7 
 b/fs/fat/inode.c                                     |   72 
 b/fs/jffs/Makefile                                   |    9 
 b/fs/jfs/jfs_logmgr.c                                |   47 
 b/fs/jfs/jfs_logmgr.h                                |    1 
 b/fs/jfs/jfs_umount.c                                |   45 
 b/fs/lockd/svc4proc.c                                |   46 
 b/fs/lockd/svcproc.c                                 |   52 
 b/fs/msdos/namei.c                                   |   13 
 b/fs/nfs/pagelist.c                                  |    2 
 b/fs/nfsd/nfssvc.c                                   |    3 
 b/fs/nls/nls_base.c                                  |    3 
 b/fs/nls/nls_koi8-ru.c                               |    5 
 b/fs/ntfs/aops.c                                     |   18 
 b/fs/open.c                                          |    2 
 b/fs/proc/proc_misc.c                                |   26 
 b/fs/reiserfs/inode.c                                |   88 
 b/fs/reiserfs/namei.c                                |   45 
 b/fs/reiserfs/super.c                                |   11 
 b/fs/ufs/balloc.c                                    |    2 
 b/fs/vfat/namei.c                                    |   18 
 b/include/asm-alpha/ide.h                            |   31 
 b/include/asm-arm/ide.h                              |   27 
 b/include/asm-cris/ide.h                             |   27 
 b/include/asm-i386/ide.h                             |   33 
 b/include/asm-ia64/ide.h                             |   33 
 b/include/asm-m68k/bitops.h                          |   23 
 b/include/asm-m68k/cacheflush.h                      |  156 
 b/include/asm-m68k/entry.h                           |    7 
 b/include/asm-m68k/ide.h                             |  120 
 b/include/asm-m68k/machdep.h                         |    6 
 b/include/asm-m68k/motorola_pgalloc.h                |   86 
 b/include/asm-m68k/page.h                            |    4 
 b/include/asm-m68k/pgalloc.h                         |  152 
 b/include/asm-m68k/resource.h                        |   28 
 b/include/asm-m68k/rtc.h                             |   12 
 b/include/asm-m68k/sun3_pgalloc.h                    |  111 
 b/include/asm-m68k/tlbflush.h                        |  215 +
 b/include/asm-m68k/uaccess.h                         |    1 
 b/include/asm-mips/ide.h                             |  131 
 b/include/asm-mips64/ide.h                           |   82 
 b/include/asm-parisc/ide.h                           |   31 
 b/include/asm-ppc/cacheflush.h                       |    4 
 b/include/asm-ppc/cputable.h                         |    2 
 b/include/asm-ppc/hardirq.h                          |    9 
 b/include/asm-ppc/heathrow.h                         |    8 
 b/include/asm-ppc/i8259.h                            |    2 
 b/include/asm-ppc/ide.h                              |   36 
 b/include/asm-ppc/mediabay.h                         |    1 
 b/include/asm-ppc/mpc10x.h                           |    2 
 b/include/asm-ppc/open_pic.h                         |   15 
 b/include/asm-ppc/page.h                             |   28 
 b/include/asm-ppc/pgtable.h                          |   33 
 b/include/asm-ppc/pmac_feature.h                     |    6 
 b/include/asm-ppc/ppc_asm.h                          |    5 
 b/include/asm-ppc/processor.h                        |   37 
 b/include/asm-ppc/ptrace.h                           |   23 
 b/include/asm-ppc/smplock.h                          |   30 
 b/include/asm-ppc/softirq.h                          |    6 
 b/include/asm-ppc/thread_info.h                      |    5 
 b/include/asm-ppc/tlbflush.h                         |    6 
 b/include/asm-ppc/unistd.h                           |   31 
 b/include/asm-ppc/zorro.h                            |   30 
 b/include/asm-ppc64/ide.h                            |   30 
 b/include/asm-s390/ide.h                             |   27 
 b/include/asm-s390x/ide.h                            |   31 
 b/include/asm-sh/ide.h                               |   31 
 b/include/asm-sparc/ide.h                            |  105 
 b/include/asm-sparc64/ide.h                          |  105 
 b/include/asm-sparc64/page.h                         |   15 
 b/include/asm-sparc64/pgtable.h                      |   21 
 b/include/asm-sparc64/thread_info.h                  |    3 
 b/include/asm-x86_64/ide.h                           |   33 
 b/include/linux/agp_backend.h                        |    3 
 b/include/linux/dnotify.h                            |    6 
 b/include/linux/hdreg.h                              |    5 
 b/include/linux/ide.h                                |  135 
 b/include/linux/ioport.h                             |    3 
 b/include/linux/isdn/capilli.h                       |   65 
 b/include/linux/kd.h                                 |   13 
 b/include/linux/kernelcapi.h                         |   11 
 b/include/linux/pagemap.h                            |   48 
 b/include/linux/pci.h                                |    9 
 b/include/linux/pci_ids.h                            |    2 
 b/include/linux/reiserfs_fs.h                        |   11 
 b/include/linux/zorro.h                              |    3 
 b/include/math-emu/op-1.h                            |    1 
 b/include/math-emu/op-2.h                            |    1 
 b/include/math-emu/op-4.h                            |    1 
 b/include/math-emu/op-common.h                       |    6 
 b/include/net/route.h                                |    4 
 b/include/scsi/sg.h                                  |    8 
 b/kernel/fork.c                                      |    6 
 b/kernel/ptrace.c                                    |    1 
 b/kernel/resource.c                                  |    8 
 b/kernel/signal.c                                    |    3 
 b/mm/filemap.c                                       |   31 
 b/mm/page_io.c                                       |    5 
 b/mm/slab.c                                          |    9 
 b/mm/swapfile.c                                      |    2 
 b/net/core/neighbour.c                               |   11 
 b/net/ipv4/arp.c                                     |  217 -
 b/net/ipv4/netfilter/ipt_ULOG.c                      |   20 
 b/net/ipv4/route.c                                   |   20 
 b/net/ipv4/tcp.c                                     |  548 +--
 b/net/ipv6/Makefile                                  |    4 
 b/net/ipv6/ipv6_syms.c                               |   12 
 b/net/netsyms.c                                      |   14 
 b/net/sunrpc/svcsock.c                               |    6 
 b/sound/oss/dmasound/dmasound_atari.c                |   79 
 b/sound/oss/dmasound/dmasound_awacs.c                | 3058 ++++++++++++-------
 b/sound/oss/dmasound/dmasound_core.c                 | 1451 ++++++---
 b/sound/oss/dmasound/dmasound_paula.c                |   46 
 b/sound/oss/dmasound/dmasound_q40.c                  |  278 +
 drivers/ide/ide-proc.c                               |  636 ---
 include/linux/isdn/capidev.h                         |   27 
 488 files changed, 18814 insertions(+), 15804 deletions(-)

