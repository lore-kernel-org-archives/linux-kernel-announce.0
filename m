From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.48 released
Date: Sun, 17 Nov 2002 20:38:03 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200211180438.gAI4c3r04581@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.48 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.48.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.48.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               831400           3287873
Full source                       38833894         174745600

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/README.nsp_cs.eng                   |  128 -
 Documentation/scsi-generic.txt                    |  101 -
 Documentation/scsi.txt                            |   44 
 arch/sparc64/mm/modutil.c                         |  117 -
 b/Documentation/00-INDEX                          |    8 
 b/Documentation/DocBook/procfs_example.c          |   17 
 b/Documentation/scsi/00-INDEX                     |   68 
 b/Documentation/scsi/53c700.txt                   |  154 +
 b/Documentation/scsi/AM53C974.txt                 |  246 ++
 b/Documentation/scsi/BusLogic.txt                 |  613 ++++++
 b/Documentation/scsi/ChangeLog                    | 2023 ++++++++++++++++++++
 b/Documentation/scsi/ChangeLog.ips                |  122 +
 b/Documentation/scsi/ChangeLog.ncr53c8xx          |  495 ++++
 b/Documentation/scsi/ChangeLog.sym53c8xx          |  593 +++++
 b/Documentation/scsi/ChangeLog.sym53c8xx_2        |  144 +
 b/Documentation/scsi/FlashPoint.txt               |  163 +
 b/Documentation/scsi/LICENSE.FlashPoint           |   60 
 b/Documentation/scsi/Mylex.txt                    |    5 
 b/Documentation/scsi/NinjaSCSI.txt                |  130 +
 b/Documentation/scsi/aha152x.txt                  |  183 +
 b/Documentation/scsi/aic7xxx.txt                  |  477 ++++
 b/Documentation/scsi/aic7xxx_old.txt              |  511 +++++
 b/Documentation/scsi/cpqfc.txt                    |  273 ++
 b/Documentation/scsi/dpti.txt                     |   83 
 b/Documentation/scsi/dtc3x80.txt                  |   43 
 b/Documentation/scsi/g_NCR5380.txt                |   63 
 b/Documentation/scsi/ibmmca.txt                   | 1402 +++++++++++++
 b/Documentation/scsi/in2000.txt                   |  202 ++
 b/Documentation/scsi/ncr53c7xx.txt                |   40 
 b/Documentation/scsi/ncr53c8xx.txt                | 1854 ++++++++++++++++++
 b/Documentation/scsi/osst.txt                     |  219 ++
 b/Documentation/scsi/ppa.txt                      |   16 
 b/Documentation/scsi/qlogicfas.txt                |   79 
 b/Documentation/scsi/qlogicisp.txt                |   30 
 b/Documentation/scsi/scsi-generic.txt             |  101 +
 b/Documentation/scsi/scsi.txt                     |   44 
 b/Documentation/scsi/scsi_mid_low_api.txt         |  977 +++++++++
 b/Documentation/scsi/st.txt                       |  447 ++++
 b/Documentation/scsi/sym53c8xx_2.txt              | 1149 +++++++++++
 b/Documentation/scsi/tmscsim.txt                  |  449 ++++
 b/Makefile                                        |   19 
 b/arch/alpha/Kconfig                              |    2 
 b/arch/alpha/kernel/srm_env.c                     |   47 
 b/arch/alpha/kernel/sys_jensen.c                  |    2 
 b/arch/alpha/kernel/sys_nautilus.c                |    1 
 b/arch/arm/Kconfig                                |    9 
 b/arch/arm/Makefile                               |  178 -
 b/arch/arm/boot/Makefile                          |  158 -
 b/arch/arm/boot/bootp/Makefile                    |    4 
 b/arch/arm/boot/compressed/Makefile               |   24 
 b/arch/arm/kernel/dma-isa.c                       |    1 
 b/arch/arm/kernel/dma.c                           |    1 
 b/arch/arm/kernel/ecard.c                         |   48 
 b/arch/arm/kernel/irq.c                           |    3 
 b/arch/arm/kernel/plx90x0.c                       |    1 
 b/arch/arm/kernel/setup.c                         |   12 
 b/arch/arm/kernel/time-acorn.c                    |    1 
 b/arch/arm/kernel/time.c                          |    1 
 b/arch/arm/kernel/via82c505.c                     |    1 
 b/arch/arm/mach-adifcc/arch.c                     |    2 
 b/arch/arm/mach-adifcc/irq.c                      |    1 
 b/arch/arm/mach-anakin/irq.c                      |    1 
 b/arch/arm/mach-arc/dma.c                         |    1 
 b/arch/arm/mach-arc/oldlatches.c                  |    1 
 b/arch/arm/mach-clps711x/autcpu12.c               |    1 
 b/arch/arm/mach-clps711x/cdb89712.c               |    1 
 b/arch/arm/mach-clps711x/dma.c                    |    8 
 b/arch/arm/mach-clps711x/fortunet.c               |    3 
 b/arch/arm/mach-clps711x/mm.c                     |    1 
 b/arch/arm/mach-clps711x/p720t.c                  |    1 
 b/arch/arm/mach-clps711x/time.c                   |    2 
 b/arch/arm/mach-ebsa110/time.c                    |    1 
 b/arch/arm/mach-epxa10db/arch.c                   |    3 
 b/arch/arm/mach-epxa10db/dma.c                    |    8 
 b/arch/arm/mach-epxa10db/time.c                   |    2 
 b/arch/arm/mach-footbridge/cats-hw.c              |    1 
 b/arch/arm/mach-footbridge/dc21285.c              |    1 
 b/arch/arm/mach-footbridge/dma.c                  |    1 
 b/arch/arm/mach-footbridge/irq.c                  |    2 
 b/arch/arm/mach-footbridge/isa-irq.c              |    3 
 b/arch/arm/mach-footbridge/mm.c                   |    1 
 b/arch/arm/mach-footbridge/netwinder-hw.c         |    1 
 b/arch/arm/mach-ftvpci/core.c                     |    1 
 b/arch/arm/mach-integrator/arch.c                 |    2 
 b/arch/arm/mach-integrator/dma.c                  |    1 
 b/arch/arm/mach-integrator/pci.c                  |    1 
 b/arch/arm/mach-integrator/pci_v3.c               |    1 
 b/arch/arm/mach-integrator/time.c                 |    2 
 b/arch/arm/mach-iop310/arch.c                     |    2 
 b/arch/arm/mach-iop310/iop310-irq.c               |    1 
 b/arch/arm/mach-iop310/iop310-pci.c               |    2 
 b/arch/arm/mach-iop310/iq80310-irq.c              |    4 
 b/arch/arm/mach-iop310/iq80310-time.c             |    3 
 b/arch/arm/mach-iop310/xs80200-irq.c              |    2 
 b/arch/arm/mach-pxa/dma.c                         |    1 
 b/arch/arm/mach-pxa/idp.c                         |    2 
 b/arch/arm/mach-pxa/irq.c                         |    1 
 b/arch/arm/mach-pxa/lubbock.c                     |    2 
 b/arch/arm/mach-pxa/pm.c                          |    1 
 b/arch/arm/mach-rpc/dma.c                         |    1 
 b/arch/arm/mach-sa1100/adsbitsy.c                 |    2 
 b/arch/arm/mach-sa1100/assabet.c                  |    1 
 b/arch/arm/mach-sa1100/dma.c                      |    2 
 b/arch/arm/mach-sa1100/flexanet.c                 |    1 
 b/arch/arm/mach-sa1100/graphicsclient.c           |    2 
 b/arch/arm/mach-sa1100/graphicsmaster.c           |    2 
 b/arch/arm/mach-sa1100/h3600.c                    |    1 
 b/arch/arm/mach-sa1100/irq.c                      |    2 
 b/arch/arm/mach-sa1100/neponset.c                 |    2 
 b/arch/arm/mach-sa1100/pm.c                       |    2 
 b/arch/arm/mach-sa1100/sa1111.c                   |    2 
 b/arch/arm/mach-sa1100/stork.c                    |    1 
 b/arch/arm/mach-sa1100/system3.c                  |    1 
 b/arch/arm/mach-shark/dma.c                       |    3 
 b/arch/arm/mach-tbox/core.c                       |    1 
 b/arch/arm/mm/Makefile                            |   23 
 b/arch/arm/mm/alignment.c                         |    2 
 b/arch/arm/mm/discontig.c                         |    8 
 b/arch/arm/mm/fault-armv.c                        |   72 
 b/arch/arm/mm/init.c                              |    1 
 b/arch/arm/mm/mm-armv.c                           |   29 
 b/arch/arm/mm/proc-arm1020.S                      |    8 
 b/arch/arm/mm/proc-arm6_7.S                       |   30 
 b/arch/arm/mm/proc-arm720.S                       |   10 
 b/arch/arm/mm/proc-arm920.S                       |    8 
 b/arch/arm/mm/proc-arm922.S                       |    8 
 b/arch/arm/mm/proc-arm926.S                       |    8 
 b/arch/arm/mm/proc-sa110.S                        |   12 
 b/arch/arm/mm/proc-syms.c                         |    6 
 b/arch/arm/mm/proc-xscale.S                       |    8 
 b/arch/arm/mm/tlb-v4wb.S                          |   57 
 b/arch/arm/mm/tlb-v4wbi.S                         |   68 
 b/arch/arm/tools/Makefile                         |    5 
 b/arch/cris/Kconfig                               |    2 
 b/arch/cris/drivers/axisflashmap.c                |   80 
 b/arch/cris/drivers/ds1302.c                      |    4 
 b/arch/cris/drivers/eeprom.c                      |   10 
 b/arch/cris/drivers/gpio.c                        |   12 
 b/arch/cris/drivers/i2c.c                         |    8 
 b/arch/cris/drivers/sync_serial.c                 |   12 
 b/arch/cris/kernel/debugport.c                    |   20 
 b/arch/cris/kernel/setup.c                        |    8 
 b/arch/i386/Kconfig                               |   17 
 b/arch/i386/kernel/Makefile                       |    3 
 b/arch/i386/kernel/acpi_wakeup.S                  |   42 
 b/arch/i386/kernel/apm.c                          |    8 
 b/arch/i386/kernel/cpu/amd.c                      |   16 
 b/arch/i386/kernel/cpu/intel.c                    |   72 
 b/arch/i386/kernel/cpu/nexgen.c                   |    7 
 b/arch/i386/kernel/cpu/rise.c                     |   12 
 b/arch/i386/kernel/cpu/umc.c                      |    8 
 b/arch/i386/kernel/entry.S                        |   31 
 b/arch/i386/kernel/module.c                       |  124 +
 b/arch/i386/kernel/suspend.c                      |  184 -
 b/arch/i386/kernel/suspend_asm.S                  |   80 
 b/arch/i386/kernel/sys_i386.c                     |    3 
 b/arch/i386/kernel/timers/timer_tsc.c             |    2 
 b/arch/i386/kernel/traps.c                        |    7 
 b/arch/i386/kernel/vm86.c                         |    1 
 b/arch/i386/mm/extable.c                          |   14 
 b/arch/i386/mm/hugetlbpage.c                      |  315 +--
 b/arch/i386/pci/numa.c                            |    4 
 b/arch/i386/vmlinux.lds.S                         |    1 
 b/arch/ia64/Kconfig                               |   16 
 b/arch/ia64/hp/sim/simscsi.c                      |    3 
 b/arch/ia64/ia32/sys_ia32.c                       |    2 
 b/arch/m68k/Kconfig                               |   16 
 b/arch/mips/Kconfig                               |    2 
 b/arch/mips/au1000/common/serial.c                |   12 
 b/arch/mips/baget/vacserial.c                     |   12 
 b/arch/mips/dec/promcon.c                         |   12 
 b/arch/mips/kernel/gdb-stub.c                     |   10 
 b/arch/mips/kernel/sysirix.c                      |    2 
 b/arch/mips/lib/rtc-no.c                          |    6 
 b/arch/mips64/Kconfig                             |    2 
 b/arch/mips64/sgi-ip27/ip27-console.c             |   10 
 b/arch/mips64/sgi-ip27/ip27-rtc.c                 |    8 
 b/arch/parisc/Kconfig                             |    2 
 b/arch/parisc/kernel/sys_parisc32.c               |    2 
 b/arch/ppc/Kconfig                                |    8 
 b/arch/ppc64/Kconfig                              |    2 
 b/arch/ppc64/kernel/LparData.c                    |   10 
 b/arch/ppc64/kernel/pci_dma.c                     |    8 
 b/arch/ppc64/kernel/rtas_flash.c                  |    8 
 b/arch/ppc64/kernel/setup.c                       |    8 
 b/arch/s390/kernel/debug.c                        |   13 
 b/arch/s390/kernel/setup.c                        |    8 
 b/arch/s390x/kernel/debug.c                       |   13 
 b/arch/s390x/kernel/setup.c                       |    8 
 b/arch/sh/Kconfig                                 |    2 
 b/arch/sparc/Kconfig                              |   22 
 b/arch/sparc/Makefile                             |    3 
 b/arch/sparc/kernel/Makefile                      |    1 
 b/arch/sparc/kernel/module.c                      |  139 +
 b/arch/sparc/kernel/systbls.S                     |    4 
 b/arch/sparc/mm/extable.c                         |   18 
 b/arch/sparc/mm/io-unit.c                         |    6 
 b/arch/sparc/mm/iommu.c                           |    8 
 b/arch/sparc/mm/sun4c.c                           |    8 
 b/arch/sparc/vmlinux.lds.S                        |    3 
 b/arch/sparc64/Kconfig                            |   34 
 b/arch/sparc64/kernel/Makefile                    |    1 
 b/arch/sparc64/kernel/head.S                      |    2 
 b/arch/sparc64/kernel/ioctl32.c                   |    2 
 b/arch/sparc64/kernel/module.c                    |  260 ++
 b/arch/sparc64/kernel/setup.c                     |    2 
 b/arch/sparc64/kernel/sys_sparc32.c               |  398 ---
 b/arch/sparc64/kernel/systbls.S                   |    8 
 b/arch/sparc64/mm/Makefile                        |    2 
 b/arch/sparc64/mm/extable.c                       |   18 
 b/arch/sparc64/mm/init.c                          |    2 
 b/arch/sparc64/solaris/timod.c                    |    5 
 b/arch/sparc64/vmlinux.lds.S                      |    3 
 b/arch/um/Makefile                                |    8 
 b/arch/um/Makefile-i386                           |   10 
 b/arch/um/defconfig                               |    8 
 b/arch/um/drivers/Makefile                        |    4 
 b/arch/um/drivers/mconsole_kern.c                 |    2 
 b/arch/um/drivers/port_kern.c                     |   70 
 b/arch/um/drivers/ssl.c                           |    1 
 b/arch/um/drivers/stdio_console.c                 |    1 
 b/arch/um/drivers/ubd_kern.c                      |  341 +--
 b/arch/um/drivers/xterm.c                         |   26 
 b/arch/um/drivers/xterm.h                         |   22 
 b/arch/um/drivers/xterm_kern.c                    |   77 
 b/arch/um/include/chan_user.h                     |    1 
 b/arch/um/include/kern_util.h                     |    2 
 b/arch/um/kernel/Makefile                         |    4 
 b/arch/um/kernel/irq_user.c                       |    1 
 b/arch/um/kernel/ksyms.c                          |   27 
 b/arch/um/kernel/process_kern.c                   |    2 
 b/arch/um/kernel/reboot.c                         |   19 
 b/arch/um/kernel/signal_user.c                    |   24 
 b/arch/um/kernel/smp.c                            |    4 
 b/arch/um/kernel/sys_call_table.c                 |   14 
 b/arch/um/kernel/sysrq.c                          |   10 
 b/arch/um/kernel/trap_kern.c                      |    1 
 b/arch/um/os-Linux/Makefile                       |    4 
 b/arch/um/os-Linux/file.c                         |    7 
 b/arch/um/sys-i386/Makefile                       |   11 
 b/arch/um/uml.lds.S                               |    7 
 b/arch/v850/kernel/memcons.c                      |   10 
 b/arch/v850/kernel/procfs.c                       |    8 
 b/arch/v850/kernel/rte_cb_leds.c                  |   12 
 b/arch/x86_64/Kconfig                             |   16 
 b/arch/x86_64/ia32/sys_ia32.c                     |    2 
 b/crypto/api.c                                    |    3 
 b/drivers/acorn/block/fd1772.c                    |    8 
 b/drivers/acorn/block/mfmhd.c                     |  126 -
 b/drivers/acorn/net/ether1.c                      |    5 
 b/drivers/acorn/net/ether3.c                      |    6 
 b/drivers/acorn/net/etherh.c                      |    4 
 b/drivers/acorn/scsi/acornscsi.c                  |  282 +-
 b/drivers/acorn/scsi/arxescsi.c                   |  264 +-
 b/drivers/acorn/scsi/cumana_1.c                   |  308 +--
 b/drivers/acorn/scsi/cumana_2.c                   |  313 +--
 b/drivers/acorn/scsi/ecoscsi.c                    |    1 
 b/drivers/acorn/scsi/eesox.c                      |  337 +--
 b/drivers/acorn/scsi/fas216.c                     | 1565 +++++++++------
 b/drivers/acorn/scsi/fas216.h                     |   14 
 b/drivers/acorn/scsi/oak.c                        |  256 --
 b/drivers/acorn/scsi/powertec.c                   |  348 +--
 b/drivers/acorn/scsi/queue.c                      |   22 
 b/drivers/acorn/scsi/queue.h                      |    9 
 b/drivers/acpi/ac.c                               |   21 
 b/drivers/acpi/battery.c                          |   21 
 b/drivers/acpi/bus.c                              |    1 
 b/drivers/acpi/button.c                           |   19 
 b/drivers/acpi/dispatcher/dsmethod.c              |    4 
 b/drivers/acpi/dispatcher/dswstate.c              |    6 
 b/drivers/acpi/ec.c                               |   31 
 b/drivers/acpi/events/evevent.c                   |    8 
 b/drivers/acpi/events/evmisc.c                    |    4 
 b/drivers/acpi/events/evxface.c                   |    4 
 b/drivers/acpi/executer/exdump.c                  |    3 
 b/drivers/acpi/executer/exfield.c                 |  124 +
 b/drivers/acpi/executer/exfldio.c                 |   37 
 b/drivers/acpi/executer/exoparg1.c                |   24 
 b/drivers/acpi/executer/exoparg2.c                |    6 
 b/drivers/acpi/executer/exoparg3.c                |    6 
 b/drivers/acpi/executer/exprep.c                  |   18 
 b/drivers/acpi/executer/exstore.c                 |    6 
 b/drivers/acpi/executer/exsystem.c                |   10 
 b/drivers/acpi/executer/exutils.c                 |    4 
 b/drivers/acpi/fan.c                              |   25 
 b/drivers/acpi/include/acconfig.h                 |    8 
 b/drivers/acpi/include/acdisasm.h                 |    5 
 b/drivers/acpi/include/acevents.h                 |    4 
 b/drivers/acpi/include/acinterp.h                 |    7 
 b/drivers/acpi/include/aclocal.h                  |    4 
 b/drivers/acpi/include/acpiosxf.h                 |    2 
 b/drivers/acpi/include/acpixf.h                   |    2 
 b/drivers/acpi/include/actypes.h                  |    3 
 b/drivers/acpi/include/amlcode.h                  |    5 
 b/drivers/acpi/namespace/nsdump.c                 |    4 
 b/drivers/acpi/namespace/nsobject.c               |   40 
 b/drivers/acpi/namespace/nsutils.c                |   10 
 b/drivers/acpi/namespace/nsxfeval.c               |   19 
 b/drivers/acpi/osl.c                              |    4 
 b/drivers/acpi/power.c                            |   13 
 b/drivers/acpi/processor.c                        |   26 
 b/drivers/acpi/scan.c                             |    2 
 b/drivers/acpi/tables/tbconvrt.c                  |   26 
 b/drivers/acpi/tables/tbxfroot.c                  |    9 
 b/drivers/acpi/thermal.c                          |   26 
 b/drivers/acpi/utilities/utmisc.c                 |    4 
 b/drivers/atm/idt77252.c                          |    4 
 b/drivers/base/bus.c                              |    1 
 b/drivers/base/class.c                            |    1 
 b/drivers/base/core.c                             |    8 
 b/drivers/base/driver.c                           |    1 
 b/drivers/base/interface.c                        |    1 
 b/drivers/base/intf.c                             |    1 
 b/drivers/base/power.c                            |    1 
 b/drivers/base/sys.c                              |    3 
 b/drivers/block/DAC960.c                          |    2 
 b/drivers/block/amiflop.c                         |    3 
 b/drivers/block/cciss.c                           |    1 
 b/drivers/block/cpqarray.c                        |    5 
 b/drivers/block/floppy.c                          |    3 
 b/drivers/block/ll_rw_blk.c                       |   27 
 b/drivers/block/loop.c                            |   11 
 b/drivers/block/paride/aten.c                     |   13 
 b/drivers/block/paride/bpck.c                     |   13 
 b/drivers/block/paride/bpck6.c                    |   29 
 b/drivers/block/paride/comm.c                     |   13 
 b/drivers/block/paride/dstr.c                     |   13 
 b/drivers/block/paride/epat.c                     |   13 
 b/drivers/block/paride/epia.c                     |   13 
 b/drivers/block/paride/fit2.c                     |   13 
 b/drivers/block/paride/fit3.c                     |   13 
 b/drivers/block/paride/friq.c                     |   14 
 b/drivers/block/paride/frpw.c                     |   14 
 b/drivers/block/paride/kbic.c                     |   16 
 b/drivers/block/paride/ktti.c                     |   13 
 b/drivers/block/paride/on20.c                     |   13 
 b/drivers/block/paride/on26.c                     |   13 
 b/drivers/block/paride/paride.c                   |  430 ++--
 b/drivers/block/paride/paride.h                   |    3 
 b/drivers/block/paride/pseudo.h                   |   95 
 b/drivers/block/ps2esdi.c                         |    7 
 b/drivers/block/xd.c                              |    3 
 b/drivers/bluetooth/bluecard_cs.c                 |    1 
 b/drivers/bluetooth/bt3c_cs.c                     |    1 
 b/drivers/bluetooth/dtl1_cs.c                     |    1 
 b/drivers/cdrom/aztcd.c                           |    4 
 b/drivers/cdrom/cm206.c                           |    1 
 b/drivers/cdrom/gscd.c                            |    2 
 b/drivers/cdrom/mcd.c                             |    3 
 b/drivers/cdrom/mcdx.c                            |    3 
 b/drivers/cdrom/optcd.c                           |    2 
 b/drivers/cdrom/sbpcd.c                           |    4 
 b/drivers/cdrom/sjcd.c                            |    2 
 b/drivers/cdrom/sonycd535.c                       |    3 
 b/drivers/char/agp/agp.c                          |    2 
 b/drivers/char/agp/ali-agp.c                      |    2 
 b/drivers/char/agp/amd-agp.c                      |    2 
 b/drivers/char/agp/hp-agp.c                       |    2 
 b/drivers/char/agp/i810-agp.c                     |    6 
 b/drivers/char/agp/i8x0-agp.c                     |    2 
 b/drivers/char/agp/sis-agp.c                      |    2 
 b/drivers/char/agp/sworks-agp.c                   |    2 
 b/drivers/char/agp/via-agp.c                      |    2 
 b/drivers/char/applicom.c                         |    8 
 b/drivers/char/drm/Makefile                       |    4 
 b/drivers/char/drm/drm_sarea.h                    |   57 
 b/drivers/char/drm/drm_vm.h                       |    2 
 b/drivers/char/drm/i810_dma.c                     |   50 
 b/drivers/char/drm/i810_drv.h                     |    2 
 b/drivers/char/drm/i830_dma.c                     |   33 
 b/drivers/char/drm/i830_drv.h                     |    2 
 b/drivers/char/drm/mga.h                          |   12 
 b/drivers/char/drm/mga_dma.c                      |    4 
 b/drivers/char/drm/mga_drm.h                      |   13 
 b/drivers/char/drm/mga_drv.h                      |   12 
 b/drivers/char/drm/mga_irq.c                      |   99 
 b/drivers/char/drm/mga_state.c                    |   35 
 b/drivers/char/drm/r128.h                         |   10 
 b/drivers/char/drm/r128_drm.h                     |   11 
 b/drivers/char/drm/r128_drv.h                     |    6 
 b/drivers/char/drm/r128_irq.c                     |   99 
 b/drivers/char/drm/r128_state.c                   |   33 
 b/drivers/char/drm/radeon.h                       |    6 
 b/drivers/char/drm/radeon_drm.h                   |   17 
 b/drivers/char/drm/radeon_drv.h                   |   45 
 b/drivers/char/drm/radeon_state.c                 |   59 
 b/drivers/char/ftape/compressor/zftape-compress.c |    9 
 b/drivers/char/ftape/zftape/zftape-init.c         |   20 
 b/drivers/char/mwave/mwavedd.c                    |    2 
 b/drivers/char/mwave/tp3780i.c                    |    1 
 b/drivers/char/pcmcia/synclink_cs.c               |    1 
 b/drivers/char/random.c                           |    4 
 b/drivers/char/raw.c                              |    7 
 b/drivers/char/rtc.c                              |    4 
 b/drivers/char/sonypi.c                           |    3 
 b/drivers/char/sx.c                               |    1 
 b/drivers/char/tpqic02.c                          |   25 
 b/drivers/char/tty_io.c                           |    9 
 b/drivers/char/vc_screen.c                        |   41 
 b/drivers/char/wdt.c                              |   10 
 b/drivers/fc4/fc.c                                |    3 
 b/drivers/hotplug/pci_hotplug_core.c              |    1 
 b/drivers/ide/ide-probe.c                         |    5 
 b/drivers/ide/ide-tape.c                          |    3 
 b/drivers/ide/legacy/ide-cs.c                     |    1 
 b/drivers/ide/pci/adma100.h                       |   34 
 b/drivers/ide/pci/aec62xx.h                       |  138 -
 b/drivers/ide/pci/alim15x3.h                      |   40 
 b/drivers/ide/pci/amd74xx.h                       |  136 -
 b/drivers/ide/pci/cmd640.h                        |   32 
 b/drivers/ide/pci/cmd64x.h                        |  112 -
 b/drivers/ide/pci/cs5530.h                        |   40 
 b/drivers/ide/pci/cy82c693.h                      |   32 
 b/drivers/ide/pci/generic.h                       |  256 +-
 b/drivers/ide/pci/hpt34x.h                        |   40 
 b/drivers/ide/pci/hpt366.h                        |  146 -
 b/drivers/ide/pci/it8172.h                        |   34 
 b/drivers/ide/pci/ns87415.h                       |   32 
 b/drivers/ide/pci/nvidia.h                        |   32 
 b/drivers/ide/pci/opti621.h                       |   60 
 b/drivers/ide/pci/pdc202xx_new.h                  |  202 +-
 b/drivers/ide/pci/pdc202xx_old.h                  |  154 -
 b/drivers/ide/pci/pdcadma.h                       |   42 
 b/drivers/ide/pci/piix.h                          |  434 ++--
 b/drivers/ide/pci/rz1000.h                        |   56 
 b/drivers/ide/pci/serverworks.c                   |    4 
 b/drivers/ide/pci/serverworks.h                   |  120 -
 b/drivers/ide/pci/siimage.h                       |   64 
 b/drivers/ide/pci/sis5513.h                       |   40 
 b/drivers/ide/pci/sl82c105.h                      |   32 
 b/drivers/ide/pci/slc90e66.h                      |   40 
 b/drivers/ide/pci/trm290.h                        |   32 
 b/drivers/ide/pci/via82cxxx.h                     |   64 
 b/drivers/ieee1394/dv1394.c                       |  151 -
 b/drivers/input/Kconfig                           |    4 
 b/drivers/input/evbug.c                           |    9 
 b/drivers/input/evdev.c                           |    9 
 b/drivers/input/gameport/emu10k1-gp.c             |    4 
 b/drivers/input/joydev.c                          |    7 
 b/drivers/input/keyboard/Kconfig                  |   12 
 b/drivers/input/keyboard/atkbd.c                  |   27 
 b/drivers/input/misc/uinput.c                     |    9 
 b/drivers/input/mouse/Kconfig                     |    2 
 b/drivers/input/mouse/psmouse.c                   |   22 
 b/drivers/input/mouse/rpcmouse.c                  |    2 
 b/drivers/input/mousedev.c                        |   14 
 b/drivers/input/serio/Kconfig                     |    5 
 b/drivers/input/serio/i8042.c                     |    6 
 b/drivers/input/serio/rpckbd.c                    |    8 
 b/drivers/input/serio/serio.c                     |    7 
 b/drivers/isdn/Kconfig                            |    2 
 b/drivers/isdn/capi/capi.c                        |    2 
 b/drivers/isdn/hardware/avm/Kconfig               |    2 
 b/drivers/isdn/hardware/eicon/adapter.h           |   13 
 b/drivers/isdn/hardware/eicon/capifunc.c          | 1891 +++++++++---------
 b/drivers/isdn/hardware/eicon/capifunc.h          |    2 
 b/drivers/isdn/hardware/eicon/capimain.c          |  156 -
 b/drivers/isdn/hardware/eicon/diddfunc.c          |  117 -
 b/drivers/isdn/hardware/eicon/diva.c              |  942 ++++-----
 b/drivers/isdn/hardware/eicon/diva.h              |   34 
 b/drivers/isdn/hardware/eicon/diva_didd.c         |  168 -
 b/drivers/isdn/hardware/eicon/diva_pci.h          |   23 
 b/drivers/isdn/hardware/eicon/divamnt.c           |  632 +++---
 b/drivers/isdn/hardware/eicon/divasfunc.c         |  244 +-
 b/drivers/isdn/hardware/eicon/divasi.c            |  681 +++---
 b/drivers/isdn/hardware/eicon/divasmain.c         | 1198 ++++++-----
 b/drivers/isdn/hardware/eicon/divasproc.c         |  560 ++---
 b/drivers/isdn/hardware/eicon/dlist.c             |  118 -
 b/drivers/isdn/hardware/eicon/dlist.h             |   36 
 b/drivers/isdn/hardware/eicon/dqueue.c            |  147 -
 b/drivers/isdn/hardware/eicon/dqueue.h            |   42 
 b/drivers/isdn/hardware/eicon/dsp_tst.h           |    4 
 b/drivers/isdn/hardware/eicon/entity.h            |   26 
 b/drivers/isdn/hardware/eicon/idifunc.c           |  354 +--
 b/drivers/isdn/hardware/eicon/mntfunc.c           |  499 ++--
 b/drivers/isdn/hardware/eicon/os_4bri.c           | 1861 +++++++++---------
 b/drivers/isdn/hardware/eicon/os_4bri.h           |    4 
 b/drivers/isdn/hardware/eicon/os_bri.c            | 1356 ++++++-------
 b/drivers/isdn/hardware/eicon/os_bri.h            |    4 
 b/drivers/isdn/hardware/eicon/os_pri.c            | 1659 ++++++++--------
 b/drivers/isdn/hardware/eicon/os_pri.h            |    4 
 b/drivers/isdn/hardware/eicon/platform.h          |    2 
 b/drivers/isdn/hardware/eicon/s_4bri.c            |   28 
 b/drivers/isdn/hardware/eicon/s_bri.c             |    4 
 b/drivers/isdn/hardware/eicon/s_pri.c             |    8 
 b/drivers/isdn/hardware/eicon/um_idi.c            | 1010 +++++-----
 b/drivers/isdn/hardware/eicon/um_idi.h            |   58 
 b/drivers/isdn/hardware/eicon/um_xdi.h            |   41 
 b/drivers/isdn/hardware/eicon/xdi_adapter.h       |   76 
 b/drivers/isdn/hardware/eicon/xdi_msg.h           |   37 
 b/drivers/isdn/hisax/Kconfig                      |   83 
 b/drivers/isdn/i4l/Kconfig                        |   34 
 b/drivers/isdn/i4l/isdn_net_lib.c                 |    2 
 b/drivers/isdn/i4l/isdn_ppp.c                     |   13 
 b/drivers/macintosh/adb.c                         |   10 
 b/drivers/macintosh/adbhid.c                      |    2 
 b/drivers/macintosh/ans-lcd.c                     |    6 
 b/drivers/macintosh/apm_emu.c                     |   12 
 b/drivers/macintosh/macserial.c                   |   12 
 b/drivers/macintosh/mediabay.c                    |   36 
 b/drivers/macintosh/nvram.c                       |   10 
 b/drivers/macintosh/via-pmu.c                     |   12 
 b/drivers/macintosh/via-pmu68k.c                  |    8 
 b/drivers/md/dm-ioctl.c                           |   33 
 b/drivers/md/dm-linear.c                          |    2 
 b/drivers/md/dm-stripe.c                          |    2 
 b/drivers/md/dm.c                                 |   10 
 b/drivers/md/dm.h                                 |    2 
 b/drivers/md/md.c                                 |  279 --
 b/drivers/media/dvb/dvb-core/dvbdev.c             |    6 
 b/drivers/media/radio/miropcm20-rds.c             |    8 
 b/drivers/media/video/bttv-driver.c               |    1 
 b/drivers/message/fusion/mptscsih.h               |    4 
 b/drivers/mtd/devices/blkmtd.c                    |    2 
 b/drivers/net/3c59x.c                             |    2 
 b/drivers/net/eepro100.c                          |    2 
 b/drivers/net/irda/old_belkin.c                   |    1 
 b/drivers/net/rrunner.c                           |  604 +++---
 b/drivers/net/rrunner.h                           |   37 
 b/drivers/net/sk98lin/skge.c                      |    2 
 b/drivers/net/skfp/skfddi.c                       |    2 
 b/drivers/net/tg3.c                               |   46 
 b/drivers/net/tg3.h                               |    2 
 b/drivers/net/tulip/de4x5.c                       |    2 
 b/drivers/pci/names.c                             |    9 
 b/drivers/pci/probe.c                             |    9 
 b/drivers/pci/proc.c                              |    2 
 b/drivers/pci/quirks.c                            |    2 
 b/drivers/pci/setup-bus.c                         |    2 
 b/drivers/pci/setup-irq.c                         |    2 
 b/drivers/pci/setup-res.c                         |    6 
 b/drivers/pcmcia/cardbus.c                        |    1 
 b/drivers/pcmcia/cs.c                             |    2 
 b/drivers/pcmcia/i82092.c                         |    1 
 b/drivers/pcmcia/i82365.c                         |   15 
 b/drivers/pcmcia/rsrc_mgr.c                       |    2 
 b/drivers/pcmcia/yenta.c                          |   89 
 b/drivers/pnp/isapnp/core.c                       |    2 
 b/drivers/pnp/resource.c                          |    1 
 b/drivers/s390/block/dasd.c                       |   11 
 b/drivers/s390/block/dasd_devmap.c                |   15 
 b/drivers/s390/block/dasd_int.h                   |    1 
 b/drivers/s390/block/dasd_ioctl.c                 |    7 
 b/drivers/s390/block/dasd_proc.c                  |    9 
 b/drivers/s390/char/tape.c                        |    5 
 b/drivers/s390/char/tapechar.c                    |    5 
 b/drivers/s390/char/tubfs.c                       |   16 
 b/drivers/scsi/53c700.c                           |    4 
 b/drivers/scsi/Kconfig                            |   54 
 b/drivers/scsi/Makefile                           |    9 
 b/drivers/scsi/NCR53C9x.c                         |    4 
 b/drivers/scsi/aacraid/linit.c                    |    3 
 b/drivers/scsi/aha152x.c                          |    4 
 b/drivers/scsi/aic7xxx/aic7xxx_linux.c            |    2 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.h              |    1 
 b/drivers/scsi/aic7xxx_old.c                      |   21 
 b/drivers/scsi/dpt/dpti_ioctl.h                   |    3 
 b/drivers/scsi/dpt_i2o.c                          |    5 
 b/drivers/scsi/dpti.h                             |    3 
 b/drivers/scsi/gdth.c                             |    9 
 b/drivers/scsi/hosts.c                            |  256 +-
 b/drivers/scsi/hosts.h                            |   23 
 b/drivers/scsi/ibmmca.c                           |    5 
 b/drivers/scsi/ibmmca.h                           |    5 
 b/drivers/scsi/megaraid.c                         |   25 
 b/drivers/scsi/ncr53c8xx.c                        |    2 
 b/drivers/scsi/osst.c                             |   42 
 b/drivers/scsi/pcmcia/Kconfig                     |    2 
 b/drivers/scsi/pcmcia/nsp_cs.c                    |    3 
 b/drivers/scsi/qla1280.c                          |    6 
 b/drivers/scsi/scsi.c                             |  859 ++------
 b/drivers/scsi/scsi.h                             |   95 
 b/drivers/scsi/scsi_debug.c                       |  279 +-
 b/drivers/scsi/scsi_debug.h                       |   15 
 b/drivers/scsi/scsi_error.c                       |   84 
 b/drivers/scsi/scsi_lib.c                         |  295 +-
 b/drivers/scsi/scsi_proc.c                        |  772 +++++--
 b/drivers/scsi/scsi_scan.c                        |  102 -
 b/drivers/scsi/scsi_syms.c                        |    3 
 b/drivers/scsi/sd.c                               |   43 
 b/drivers/scsi/sg.c                               |   46 
 b/drivers/scsi/sr.c                               |   22 
 b/drivers/scsi/st.c                               |   29 
 b/drivers/scsi/tmscsim.c                          |   29 
 b/drivers/scsi/wd33c93.c                          |    2 
 b/drivers/serial/Kconfig                          |   44 
 b/drivers/serial/Makefile                         |    1 
 b/drivers/serial/mux.c                            |  499 ++++
 b/drivers/usb/Makefile                            |    7 
 b/drivers/usb/class/Kconfig                       |   16 
 b/drivers/usb/class/usblp.c                       |   67 
 b/drivers/usb/core/driverfs.c                     |    8 
 b/drivers/usb/core/hcd-pci.c                      |    5 
 b/drivers/usb/core/hcd.c                          |   79 
 b/drivers/usb/core/hcd.h                          |    2 
 b/drivers/usb/core/inode.c                        |    1 
 b/drivers/usb/core/usb.c                          |   63 
 b/drivers/usb/host/Kconfig                        |    2 
 b/drivers/usb/host/Makefile                       |    2 
 b/drivers/usb/host/ehci-dbg.c                     |   17 
 b/drivers/usb/host/ehci-hcd.c                     |    4 
 b/drivers/usb/host/ehci-mem.c                     |   41 
 b/drivers/usb/host/ehci-q.c                       |   84 
 b/drivers/usb/host/ehci.h                         |    6 
 b/drivers/usb/host/ohci-dbg.c                     |   15 
 b/drivers/usb/host/ohci-hcd.c                     |    4 
 b/drivers/usb/host/ohci-pci.c                     |    2 
 b/drivers/usb/host/ohci-q.c                       |   28 
 b/drivers/usb/host/ohci-sa1111.c                  |    4 
 b/drivers/usb/host/ohci.h                         |    5 
 b/drivers/usb/image/scanner.c                     |   19 
 b/drivers/usb/image/scanner.h                     |    8 
 b/drivers/usb/input/hid-core.c                    |    4 
 b/drivers/usb/input/hid-debug.h                   |   92 
 b/drivers/usb/input/hid-input.c                   |    2 
 b/drivers/usb/input/hid.h                         |    2 
 b/drivers/usb/input/hiddev.c                      |   15 
 b/drivers/usb/input/usbkbd.c                      |    4 
 b/drivers/usb/input/usbmouse.c                    |    4 
 b/drivers/usb/media/vicam.c                       |   35 
 b/drivers/usb/misc/usbtest.c                      |  107 -
 b/drivers/usb/net/Kconfig                         |   15 
 b/drivers/usb/storage/freecom.c                   |   52 
 b/drivers/usb/storage/isd200.c                    |  205 --
 b/drivers/usb/storage/raw_bulk.c                  |   11 
 b/drivers/usb/storage/scsiglue.c                  |    2 
 b/drivers/usb/storage/transport.c                 |   79 
 b/drivers/usb/storage/transport.h                 |    1 
 b/drivers/usb/storage/usb.c                       |   35 
 b/fs/Kconfig                                      |   17 
 b/fs/adfs/dir_f.c                                 |    1 
 b/fs/adfs/dir_fplus.c                             |    1 
 b/fs/adfs/inode.c                                 |    9 
 b/fs/affs/inode.c                                 |    7 
 b/fs/affs/super.c                                 |    5 
 b/fs/afs/inode.c                                  |    5 
 b/fs/afs/vlclient.c                               |    6 
 b/fs/attr.c                                       |    2 
 b/fs/autofs/autofs_i.h                            |    1 
 b/fs/autofs/inode.c                               |    3 
 b/fs/autofs/root.c                                |    2 
 b/fs/autofs4/expire.c                             |    1 
 b/fs/befs/datastream.c                            |    1 
 b/fs/befs/linuxvfs.c                              |    5 
 b/fs/bfs/inode.c                                  |   15 
 b/fs/binfmt_misc.c                                |    1 
 b/fs/binfmt_som.c                                 |   36 
 b/fs/block_dev.c                                  |   12 
 b/fs/buffer.c                                     |   33 
 b/fs/char_dev.c                                   |    1 
 b/fs/cifs/cifsfs.c                                |    1 
 b/fs/cifs/cifsproto.h                             |    4 
 b/fs/cifs/md5.c                                   |    2 
 b/fs/cifs/netmisc.c                               |   12 
 b/fs/coda/coda_linux.c                            |   19 
 b/fs/dcache.c                                     |   73 
 b/fs/devfs/base.c                                 |   30 
 b/fs/devfs/util.c                                 |   28 
 b/fs/devpts/inode.c                               |    1 
 b/fs/direct-io.c                                  |    7 
 b/fs/dquot.c                                      |   13 
 b/fs/efs/inode.c                                  |    7 
 b/fs/eventpoll.c                                  |  534 +++--
 b/fs/exec.c                                       |    1 
 b/fs/ext2/inode.c                                 |   16 
 b/fs/ext2/super.c                                 |   10 
 b/fs/ext2/xattr.c                                 |    4 
 b/fs/ext3/inode.c                                 |   16 
 b/fs/ext3/super.c                                 |   16 
 b/fs/ext3/xattr.c                                 |    4 
 b/fs/fat/dir.c                                    |    2 
 b/fs/fat/inode.c                                  |   20 
 b/fs/fifo.c                                       |    1 
 b/fs/file_table.c                                 |   10 
 b/fs/filesystems.c                                |   16 
 b/fs/freevxfs/vxfs_fshead.c                       |    1 
 b/fs/freevxfs/vxfs_inode.c                        |    9 
 b/fs/hfs/file.c                                   |    2 
 b/fs/hfs/file_cap.c                               |    2 
 b/fs/hfs/file_hdr.c                               |    5 
 b/fs/hfs/inode.c                                  |    7 
 b/fs/hfs/sysdep.c                                 |    6 
 b/fs/hpfs/dir.c                                   |   13 
 b/fs/hpfs/inode.c                                 |   18 
 b/fs/hpfs/namei.c                                 |   30 
 b/fs/hpfs/super.c                                 |    9 
 b/fs/hugetlbfs/inode.c                            |    1 
 b/fs/inode.c                                      |   44 
 b/fs/intermezzo/file.c                            |    2 
 b/fs/intermezzo/journal.c                         |    6 
 b/fs/intermezzo/psdev.c                           |    4 
 b/fs/intermezzo/super.c                           |    5 
 b/fs/intermezzo/vfs.c                             |    2 
 b/fs/isofs/inode.c                                |    5 
 b/fs/isofs/rock.c                                 |   24 
 b/fs/jffs/inode-v23.c                             |   39 
 b/fs/jffs/intrep.c                                |    2 
 b/fs/jffs2/dir.c                                  |   18 
 b/fs/jffs2/file.c                                 |   22 
 b/fs/jffs2/fs.c                                   |   11 
 b/fs/jffs2/os-linux.h                             |    6 
 b/fs/jffs2/super.c                                |    1 
 b/fs/jffs2/write.c                                |    4 
 b/fs/jfs/acl.c                                    |  301 +++
 b/fs/jfs/jfs_imap.c                               |   21 
 b/fs/jfs/jfs_inode.c                              |    2 
 b/fs/lockd/clntproc.c                             |   46 
 b/fs/lockd/mon.c                                  |   79 
 b/fs/lockd/xdr.c                                  |   78 
 b/fs/lockd/xdr4.c                                 |   68 
 b/fs/locks.c                                      |    7 
 b/fs/mbcache.c                                    |  207 --
 b/fs/minix/inode.c                                |   22 
 b/fs/mpage.c                                      |   20 
 b/fs/msdos/namei.c                                |    2 
 b/fs/namei.c                                      |    2 
 b/fs/namespace.c                                  |   52 
 b/fs/ncpfs/inode.c                                |   15 
 b/fs/nfs/inode.c                                  |   22 
 b/fs/nfs/mount_clnt.c                             |   18 
 b/fs/nfs/nfs2xdr.c                                |   73 
 b/fs/nfs/nfs3proc.c                               |   51 
 b/fs/nfs/nfs3xdr.c                                |   83 
 b/fs/nfs/nfs4proc.c                               |   17 
 b/fs/nfs/nfs4xdr.c                                |   46 
 b/fs/nfs/proc.c                                   |   34 
 b/fs/nfs/unlink.c                                 |    6 
 b/fs/nfsctl.c                                     |    1 
 b/fs/nfsd/export.c                                |   15 
 b/fs/nfsd/lockd.c                                 |    2 
 b/fs/nfsd/nfs3xdr.c                               |   51 
 b/fs/nfsd/nfs4xdr.c                               |   32 
 b/fs/nfsd/nfsfh.c                                 |    1 
 b/fs/nfsd/nfsxdr.c                                |   20 
 b/fs/nfsd/vfs.c                                   |   18 
 b/fs/ntfs/inode.c                                 |   10 
 b/fs/ntfs/time.c                                  |    3 
 b/fs/open.c                                       |   13 
 b/fs/partitions/check.c                           |   43 
 b/fs/pipe.c                                       |    3 
 b/fs/proc/base.c                                  |    1 
 b/fs/proc/generic.c                               |    5 
 b/fs/proc/proc_misc.c                             |   12 
 b/fs/qnx4/inode.c                                 |   15 
 b/fs/quota_v2.c                                   |    1 
 b/fs/reiserfs/inode.c                             |   30 
 b/fs/reiserfs/journal.c                           |   16 
 b/fs/reiserfs/namei.c                             |   11 
 b/fs/romfs/inode.c                                |    3 
 b/fs/select.c                                     |   35 
 b/fs/smbfs/cache.c                                |    1 
 b/fs/smbfs/dir.c                                  |    3 
 b/fs/smbfs/file.c                                 |    1 
 b/fs/smbfs/getopt.c                               |    1 
 b/fs/smbfs/inode.c                                |    6 
 b/fs/smbfs/ioctl.c                                |    1 
 b/fs/smbfs/proc.c                                 |   70 
 b/fs/smbfs/request.c                              |    1 
 b/fs/smbfs/smbiod.c                               |    1 
 b/fs/smbfs/sock.c                                 |    1 
 b/fs/smbfs/symlink.c                              |    1 
 b/fs/stat.c                                       |   28 
 b/fs/super.c                                      |    1 
 b/fs/sysfs/inode.c                                |    2 
 b/fs/sysv/balloc.c                                |    1 
 b/fs/sysv/inode.c                                 |   17 
 b/fs/sysv/itree.c                                 |    2 
 b/fs/udf/balloc.c                                 |   30 
 b/fs/udf/dir.c                                    |   65 
 b/fs/udf/directory.c                              |   61 
 b/fs/udf/file.c                                   |   98 
 b/fs/udf/ialloc.c                                 |   19 
 b/fs/udf/inode.c                                  |  450 +---
 b/fs/udf/lowlevel.c                               |    7 
 b/fs/udf/misc.c                                   |   12 
 b/fs/udf/namei.c                                  |  296 +-
 b/fs/udf/osta_udf.h                               |    2 
 b/fs/udf/super.c                                  |   57 
 b/fs/udf/symlink.c                                |   19 
 b/fs/udf/truncate.c                               |   18 
 b/fs/udf/udf_i.h                                  |    9 
 b/fs/udf/udfdecl.h                                |   53 
 b/fs/udf/unicode.c                                |   90 
 b/fs/ufs/balloc.c                                 |    4 
 b/fs/ufs/ialloc.c                                 |    2 
 b/fs/ufs/inode.c                                  |   15 
 b/fs/ufs/super.c                                  |    4 
 b/fs/umsdos/namei.c                               |    4 
 b/fs/vfat/namei.c                                 |    2 
 b/fs/xfs/linux/xfs_ioctl.c                        |    1 
 b/fs/xfs/linux/xfs_iops.c                         |    9 
 b/fs/xfs/linux/xfs_super.c                        |   10 
 b/fs/xfs/linux/xfs_vnode.c                        |    9 
 b/fs/xfs/xfs_dquot.c                              |    4 
 b/fs/xfs/xfs_inode.c                              |   12 
 b/fs/xfs/xfs_trans_dquot.c                        |    4 
 b/include/asm-arm/arch-pxa/pxa-regs.h             |    2 
 b/include/asm-arm/ecard.h                         |   17 
 b/include/asm-arm/proc-armv/cache.h               |    8 
 b/include/asm-arm/proc-armv/pgalloc.h             |   20 
 b/include/asm-arm/proc-armv/pgtable.h             |   11 
 b/include/asm-arm/stat.h                          |   14 
 b/include/asm-cris/stat.h                         |   14 
 b/include/asm-i386/module.h                       |   15 
 b/include/asm-i386/stat.h                         |   12 
 b/include/asm-i386/suspend.h                      |    9 
 b/include/asm-i386/unistd.h                       |    1 
 b/include/asm-ia64/stat.h                         |    8 
 b/include/asm-m68k/stat.h                         |    6 
 b/include/asm-mips/stat.h                         |    6 
 b/include/asm-mips64/stat.h                       |    8 
 b/include/asm-parisc/stat.h                       |    8 
 b/include/asm-ppc/stat.h                          |   14 
 b/include/asm-ppc64/stat.h                        |   14 
 b/include/asm-s390/stat.h                         |   14 
 b/include/asm-s390x/stat.h                        |    8 
 b/include/asm-sh/stat.h                           |   14 
 b/include/asm-sparc/elf.h                         |    1 
 b/include/asm-sparc/module.h                      |   13 
 b/include/asm-sparc/stat.h                        |   14 
 b/include/asm-sparc64/module.h                    |   13 
 b/include/asm-sparc64/stat.h                      |    6 
 b/include/asm-um/irq.h                            |    3 
 b/include/asm-um/system-generic.h                 |   12 
 b/include/asm-um/unistd.h                         |    2 
 b/include/asm-x86_64/stat.h                       |    8 
 b/include/linux/amigaffs.h                        |    1 
 b/include/linux/atmdev.h                          |    2 
 b/include/linux/blkdev.h                          |    1 
 b/include/linux/buffer_head.h                     |    1 
 b/include/linux/coda_linux.h                      |    1 
 b/include/linux/cpu.h                             |    3 
 b/include/linux/dcache.h                          |    6 
 b/include/linux/devfs_fs_kernel.h                 |   16 
 b/include/linux/device.h                          |   19 
 b/include/linux/elf.h                             |   46 
 b/include/linux/eventpoll.h                       |    5 
 b/include/linux/ext3_fs.h                         |    1 
 b/include/linux/file.h                            |    7 
 b/include/linux/fs.h                              |   64 
 b/include/linux/fs_struct.h                       |   74 
 b/include/linux/ftape.h                           |    2 
 b/include/linux/hfs_sysdep.h                      |    2 
 b/include/linux/hiddev.h                          |    1 
 b/include/linux/hugetlb.h                         |    2 
 b/include/linux/i2c.h                             |    1 
 b/include/linux/if_pppox.h                        |    1 
 b/include/linux/in.h                              |    1 
 b/include/linux/init.h                            |  121 -
 b/include/linux/input.h                           |    3 
 b/include/linux/intermezzo_fs.h                   |    1 
 b/include/linux/interrupt.h                       |   15 
 b/include/linux/kernel.h                          |    3 
 b/include/linux/kmod.h                            |    1 
 b/include/linux/lockd/debug.h                     |    4 
 b/include/linux/major.h                           |    1 
 b/include/linux/mbcache.h                         |    2 
 b/include/linux/module.h                          |  715 ++-----
 b/include/linux/moduleloader.h                    |   61 
 b/include/linux/msdos_fs.h                        |    1 
 b/include/linux/ncp_fs_sb.h                       |    3 
 b/include/linux/netlink.h                         |    3 
 b/include/linux/nfs_fs.h                          |    8 
 b/include/linux/nfsd/cache.h                      |    3 
 b/include/linux/nfsd/nfsfh.h                      |   10 
 b/include/linux/parport.h                         |    8 
 b/include/linux/pci.h                             |    1 
 b/include/linux/poll.h                            |   42 
 b/include/linux/sched.h                           |  163 -
 b/include/linux/smb.h                             |    6 
 b/include/linux/stat.h                            |    7 
 b/include/linux/string.h                          |    2 
 b/include/linux/sunrpc/clnt.h                     |   11 
 b/include/linux/sunrpc/sched.h                    |    3 
 b/include/linux/suspend.h                         |    4 
 b/include/linux/time.h                            |   16 
 b/include/linux/udf_fs.h                          |   16 
 b/include/linux/udf_fs_i.h                        |   55 
 b/include/linux/udp.h                             |    3 
 b/include/linux/wait.h                            |  144 +
 b/include/linux/xfrm.h                            |  215 ++
 b/include/net/ip_fib.h                            |    3 
 b/include/net/route.h                             |   11 
 b/include/net/sock.h                              |   15 
 b/include/net/udp.h                               |    2 
 b/include/net/xfrm.h                              |  121 -
 b/include/scsi/sg.h                               |    2 
 b/include/sound/initval.h                         |    2 
 b/init/Kconfig                                    |   31 
 b/init/do_mounts.c                                |  402 +++-
 b/init/initramfs.c                                |    1 
 b/init/main.c                                     |    7 
 b/ipc/msg.c                                       |   10 
 b/ipc/sem.c                                       |   12 
 b/ipc/shm.c                                       |    8 
 b/kernel/Makefile                                 |    8 
 b/kernel/exec_domain.c                            |    4 
 b/kernel/exit.c                                   |    1 
 b/kernel/fork.c                                   |   49 
 b/kernel/futex.c                                  |    1 
 b/kernel/intermodule.c                            |  183 +
 b/kernel/kmod.c                                   |    4 
 b/kernel/ksyms.c                                  |   15 
 b/kernel/module.c                                 | 2204 ++++++++++------------
 b/kernel/suspend.c                                |    6 
 b/kernel/sys.c                                    |    2 
 b/kernel/time.c                                   |   12 
 b/kernel/timer.c                                  |   11 
 b/lib/string.c                                    |   23 
 b/lib/zlib_deflate/deflate_syms.c                 |    2 
 b/lib/zlib_inflate/inflate_syms.c                 |    2 
 b/mm/filemap.c                                    |    8 
 b/mm/page-writeback.c                             |    1 
 b/mm/page_io.c                                    |    3 
 b/mm/rmap.c                                       |    2 
 b/mm/shmem.c                                      |    1 
 b/mm/slab.c                                       |   32 
 b/mm/swapfile.c                                   |   14 
 b/net/802/tr.c                                    |    2 
 b/net/atm/mpc.c                                   |    2 
 b/net/core/neighbour.c                            |    2 
 b/net/ipv4/Kconfig                                |    8 
 b/net/ipv4/Makefile                               |    1 
 b/net/ipv4/af_inet.c                              |   16 
 b/net/ipv4/ah.c                                   |    2 
 b/net/ipv4/arp.c                                  |  153 -
 b/net/ipv4/esp.c                                  |   25 
 b/net/ipv4/fib_hash.c                             |   12 
 b/net/ipv4/inetpeer.c                             |    1 
 b/net/ipv4/ip_output.c                            |   10 
 b/net/ipv4/ip_sockglue.c                          |    1 
 b/net/ipv4/netfilter/ip_nat_helper.c              |   14 
 b/net/ipv4/netfilter/ipt_TCPMSS.c                 |    2 
 b/net/ipv4/proc.c                                 |  248 +-
 b/net/ipv4/raw.c                                  |  216 +-
 b/net/ipv4/tcp_ipv4.c                             |    6 
 b/net/ipv4/udp.c                                  |   18 
 b/net/ipv4/xfrm_input.c                           |    2 
 b/net/ipv4/xfrm_policy.c                          |   84 
 b/net/ipv4/xfrm_state.c                           |   23 
 b/net/ipv4/xfrm_user.c                            | 1045 ++++++++++
 b/net/ipv6/af_inet6.c                             |    4 
 b/net/ipv6/mcast.c                                |    1 
 b/net/irda/af_irda.c                              |    1 
 b/net/key/af_key.c                                |   93 
 b/net/llc/llc_main.c                              |    5 
 b/net/netsyms.c                                   |    1 
 b/net/sched/sch_sfq.c                             |    2 
 b/net/socket.c                                    |   24 
 b/net/sunrpc/cache.c                              |   29 
 b/net/sunrpc/clnt.c                               |   25 
 b/net/sunrpc/pmap_clnt.c                          |   26 
 b/net/sunrpc/sched.c                              |    3 
 b/net/sunrpc/svcsock.c                            |    6 
 b/net/sunrpc/xprt.c                               |    6 
 b/net/unix/af_unix.c                              |    3 
 b/scripts/Makefile.build                          |   36 
 b/scripts/Makefile.lib                            |   21 
 b/scripts/Makefile.modinst                        |    4 
 b/scripts/Makefile.modver                         |    7 
 b/sound/core/info.c                               |   14 
 b/sound/core/pcm_native.c                         |    1 
 b/sound/core/sound.c                              |   13 
 b/sound/drivers/dummy.c                           |    1 
 b/sound/drivers/mpu401/mpu401_uart.c              |    3 
 b/sound/drivers/mtpav.c                           |    5 
 b/sound/drivers/opl3/opl3_seq.c                   |    1 
 b/sound/drivers/serial-u16550.c                   |    4 
 b/sound/isa/ad1848/ad1848_lib.c                   |    6 
 b/sound/isa/cs423x/cs4231_lib.c                   |    8 
 b/sound/isa/es1688/es1688_lib.c                   |    6 
 b/sound/isa/gus/gus_main.c                        |    4 
 b/sound/isa/opl3sa2.c                             |    4 
 b/sound/isa/sb/sb8_midi.c                         |    1 
 b/sound/isa/sb/sb_common.c                        |    6 
 b/sound/isa/wavefront/wavefront.c                 |    1 
 b/sound/isa/wavefront/wavefront_midi.c            |    1 
 b/sound/oss/ad1816.c                              |    1 
 b/sound/oss/ad1848.c                              |    1 
 b/sound/oss/cmpci.c                               |   62 
 b/sound/oss/es1370.c                              |   10 
 b/sound/oss/es1371.c                              |    8 
 b/sound/oss/esssolo1.c                            |   10 
 b/sound/oss/gus_card.c                            |    1 
 b/sound/oss/i810_audio.c                          |   10 
 b/sound/oss/mpu401.c                              |    1 
 b/sound/oss/nm256_audio.c                         |    1 
 b/sound/oss/pas2_card.c                           |    1 
 b/sound/oss/sb_common.c                           |    1 
 b/sound/oss/sonicvibes.c                          |   11 
 b/sound/oss/soundcard.c                           |   61 
 b/sound/oss/trident.c                             |    1 
 b/sound/oss/uart401.c                             |    1 
 b/sound/oss/uart6850.c                            |    1 
 b/sound/oss/via82cxxx_audio.c                     |    2 
 b/sound/oss/ymfpci.c                              |    1 
 b/sound/synth/emux/emux.c                         |    1 
 drivers/scsi/ChangeLog                            | 2023 --------------------
 drivers/scsi/ChangeLog.ips                        |  122 -
 drivers/scsi/ChangeLog.ncr53c8xx                  |  495 ----
 drivers/scsi/ChangeLog.serverraid                 |  103 -
 drivers/scsi/ChangeLog.sym53c8xx                  |  593 -----
 drivers/scsi/LICENSE.FlashPoint                   |   60 
 drivers/scsi/README.53c700                        |  152 -
 drivers/scsi/README.AM53C974                      |  228 --
 drivers/scsi/README.BusLogic                      |  613 ------
 drivers/scsi/README.FlashPoint                    |  163 -
 drivers/scsi/README.Mylex                         |    5 
 drivers/scsi/README.aha152x                       |  175 -
 drivers/scsi/README.aic7xxx                       |  476 ----
 drivers/scsi/README.dpti                          |   83 
 drivers/scsi/README.dtc3x80                       |   45 
 drivers/scsi/README.g_NCR5380                     |   63 
 drivers/scsi/README.ibmmca                        | 1401 -------------
 drivers/scsi/README.in2000                        |  199 -
 drivers/scsi/README.ncr53c7xx                     |   40 
 drivers/scsi/README.ncr53c8xx                     | 1806 ------------------
 drivers/scsi/README.osst                          |  209 --
 drivers/scsi/README.ppa                           |   15 
 drivers/scsi/README.qlogicfas                     |   79 
 drivers/scsi/README.qlogicisp                     |   34 
 drivers/scsi/README.st                            |  444 ----
 drivers/scsi/README.tmscsim                       |  437 ----
 drivers/scsi/aic7xxx_old/README.aic7xxx           |  510 -----
 drivers/scsi/cpqfc.Readme                         |  275 --
 drivers/scsi/scsi_mid_low_api.txt                 |  536 -----
 drivers/scsi/sym53c8xx_2/ChangeLog.txt            |  148 -
 drivers/scsi/sym53c8xx_2/Documentation.txt        | 1110 -----------
 include/linux/logibusmouse.h                      |  104 -
 1029 files changed, 37932 insertions(+), 34260 deletions(-)

