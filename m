From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.57 released
Date: Mon, 13 Jan 2003 10:38:03 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200301131838.h0DIc3A32370@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.57 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.57.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.57.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               214285            969943
Full source                       39306745         176302080

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/arm/SA1100/DMA                      |  240 ------
 b/CREDITS                                         |    3 
 b/Documentation/arm/00-INDEX                      |   20 
 b/Documentation/arm/Booting                       |  137 +++
 b/Documentation/driver-model/binding.txt          |    4 
 b/Documentation/driver-model/bus.txt              |    4 
 b/Documentation/driver-model/class.txt            |    8 
 b/Documentation/driver-model/device.txt           |    6 
 b/Documentation/driver-model/driver.txt           |    6 
 b/Documentation/driver-model/interface.txt        |    2 
 b/Documentation/driver-model/overview.txt         |   12 
 b/Documentation/driver-model/porting.txt          |  445 +++++++++++
 b/Documentation/filesystems/sysfs.txt             |  409 +++++-----
 b/Documentation/rpc-cache.txt                     |    2 
 b/Documentation/vm/locking                        |    7 
 b/Makefile                                        |    2 
 b/arch/alpha/mm/init.c                            |    2 
 b/arch/alpha/vmlinux.lds.S                        |    7 
 b/arch/arm/boot/compressed/head.S                 |   19 
 b/arch/arm/kernel/ecard.c                         |    2 
 b/arch/arm/kernel/setup.c                         |   15 
 b/arch/arm/mach-integrator/cpu.c                  |   57 -
 b/arch/arm/mach-sa1100/cpu-sa1100.c               |    2 
 b/arch/arm/mach-sa1100/cpu-sa1110.c               |    2 
 b/arch/arm/mm/consistent.c                        |  348 +++++++-
 b/arch/arm/mm/extable.c                           |   51 -
 b/arch/arm/mm/fault-common.c                      |   12 
 b/arch/arm/mm/init.c                              |    2 
 b/arch/arm/mm/proc-arm1020.S                      |   12 
 b/arch/arm/mm/proc-arm2_3.S                       |   28 
 b/arch/arm/mm/proc-arm6_7.S                       |   42 -
 b/arch/arm/mm/proc-arm720.S                       |   12 
 b/arch/arm/mm/proc-arm920.S                       |   12 
 b/arch/arm/mm/proc-arm922.S                       |   12 
 b/arch/arm/mm/proc-arm926.S                       |   10 
 b/arch/arm/mm/proc-sa110.S                        |   25 
 b/arch/arm/mm/proc-xscale.S                       |   27 
 b/arch/arm/vmlinux-armo.lds.in                    |    6 
 b/arch/arm/vmlinux-armv.lds.in                    |    6 
 b/arch/cris/vmlinux.lds.S                         |    4 
 b/arch/i386/Kconfig                               |   46 -
 b/arch/i386/Makefile                              |    1 
 b/arch/i386/kernel/cpu/cpufreq/elanfreq.c         |   83 --
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c      |   97 --
 b/arch/i386/kernel/cpu/cpufreq/powernow-k6.c      |  122 ---
 b/arch/i386/kernel/cpu/cpufreq/speedstep.c        |   59 -
 b/arch/i386/kernel/edd.c                          |   55 -
 b/arch/i386/kernel/i386_ksyms.c                   |    6 
 b/arch/i386/kernel/ptrace.c                       |   91 ++
 b/arch/i386/kernel/signal.c                       |   13 
 b/arch/i386/kernel/traps.c                        |   30 
 b/arch/i386/lib/usercopy.c                        |   20 
 b/arch/i386/mm/extable.c                          |   28 
 b/arch/i386/mm/fault.c                            |    5 
 b/arch/i386/mm/init.c                             |   16 
 b/arch/i386/vmlinux.lds.S                         |    4 
 b/arch/ia64/mm/init.c                             |    2 
 b/arch/ia64/vmlinux.lds.S                         |    5 
 b/arch/m68k/mac/iop.c                             |    2 
 b/arch/m68k/mm/init.c                             |    2 
 b/arch/m68k/vmlinux-std.lds                       |    4 
 b/arch/m68k/vmlinux-sun3.lds                      |    3 
 b/arch/m68knommu/platform/5206/ARNEWSH/ram.ld     |    5 
 b/arch/m68knommu/platform/5206e/MOTOROLA/ram.ld   |    5 
 b/arch/m68knommu/platform/5206e/eLITE/ram.ld      |    5 
 b/arch/m68knommu/platform/5249/MOTOROLA/ram.ld    |    5 
 b/arch/m68knommu/platform/5272/MOTOROLA/ram.ld    |    5 
 b/arch/m68knommu/platform/5272/NETtel/ram.ld      |    5 
 b/arch/m68knommu/platform/5307/ARNEWSH/ram.ld     |    5 
 b/arch/m68knommu/platform/5307/CLEOPATRA/ram.ld   |    5 
 b/arch/m68knommu/platform/5307/MOTOROLA/ram.ld    |    5 
 b/arch/m68knommu/platform/5307/MP3/ram.ld         |    5 
 b/arch/m68knommu/platform/5307/NETtel/ram.ld      |    5 
 b/arch/m68knommu/platform/5407/CLEOPATRA/ram.ld   |    5 
 b/arch/m68knommu/platform/5407/MOTOROLA/ram.ld    |    5 
 b/arch/m68knommu/platform/68360/uCquicc/ram.ld    |    3 
 b/arch/m68knommu/platform/68360/uCquicc/rom.ld    |    3 
 b/arch/m68knommu/platform/68EZ328/ucsimm/fixed.ld |    4 
 b/arch/m68knommu/platform/68EZ328/ucsimm/ram.ld   |    4 
 b/arch/m68knommu/platform/68VZ328/de2/fixed.ld    |    4 
 b/arch/m68knommu/platform/68VZ328/de2/ram.ld      |    4 
 b/arch/m68knommu/platform/68VZ328/ucdimm/fixed.ld |    4 
 b/arch/m68knommu/platform/68VZ328/ucdimm/ram.ld   |    4 
 b/arch/mips/mm/init.c                             |    2 
 b/arch/mips/vmlinux.lds.S                         |    4 
 b/arch/mips64/mm/init.c                           |    2 
 b/arch/parisc/mm/init.c                           |    2 
 b/arch/parisc/vmlinux.lds.S                       |    4 
 b/arch/ppc/lib/string.S                           |   39 
 b/arch/ppc/mm/init.c                              |    2 
 b/arch/ppc/mm/tlb.c                               |    2 
 b/arch/ppc/platforms/k2_pci.c                     |    7 
 b/arch/ppc/syslib/cpc710.h                        |    6 
 b/arch/ppc/syslib/mpc10x_common.c                 |   24 
 b/arch/ppc/syslib/todc_time.c                     |    4 
 b/arch/ppc/vmlinux.lds.S                          |    4 
 b/arch/ppc64/kernel/entry.S                       |    4 
 b/arch/ppc64/kernel/misc.S                        |    4 
 b/arch/ppc64/kernel/signal32.c                    |   15 
 b/arch/ppc64/kernel/sys_ppc32.c                   |   63 -
 b/arch/ppc64/mm/extable.c                         |   51 -
 b/arch/ppc64/mm/fault.c                           |    8 
 b/arch/ppc64/mm/init.c                            |   66 -
 b/arch/ppc64/vmlinux.lds.S                        |    4 
 b/arch/s390/mm/init.c                             |    2 
 b/arch/s390/vmlinux.lds.S                         |    4 
 b/arch/s390x/kernel/entry.S                       |    4 
 b/arch/s390x/kernel/linux32.c                     |   55 -
 b/arch/s390x/kernel/linux32.h                     |   13 
 b/arch/s390x/kernel/wrapper32.S                   |   16 
 b/arch/s390x/mm/init.c                            |    2 
 b/arch/s390x/vmlinux.lds.S                        |    4 
 b/arch/sh/mm/init.c                               |    2 
 b/arch/sh/vmlinux.lds.S                           |    4 
 b/arch/sparc/mm/init.c                            |    2 
 b/arch/sparc/vmlinux.lds.S                        |    4 
 b/arch/sparc64/kernel/sys_sparc32.c               |   55 -
 b/arch/sparc64/kernel/systbls.S                   |    4 
 b/arch/sparc64/mm/init.c                          |    2 
 b/arch/sparc64/vmlinux.lds.S                      |    3 
 b/arch/um/kernel/mem.c                            |    2 
 b/arch/v850/README                                |    3 
 b/arch/v850/kernel/as85ep1.c                      |   30 
 b/arch/v850/kernel/module.c                       |   50 -
 b/arch/v850/vmlinux.lds.S                         |    7 
 b/arch/x86_64/mm/init.c                           |    2 
 b/arch/x86_64/vmlinux.lds.S                       |    3 
 b/drivers/acorn/scsi/cumana_2.c                   |   10 
 b/drivers/acorn/scsi/eesox.c                      |   10 
 b/drivers/acorn/scsi/powertec.c                   |   10 
 b/drivers/base/bus.c                              |   55 -
 b/drivers/base/class.c                            |   22 
 b/drivers/base/core.c                             |   10 
 b/drivers/base/driver.c                           |    2 
 b/drivers/base/interface.c                        |   15 
 b/drivers/base/intf.c                             |    5 
 b/drivers/base/sys.c                              |    2 
 b/drivers/block/genhd.c                           |   26 
 b/drivers/block/umem.c                            |    9 
 b/drivers/char/rio/rioctrl.c                      |    2 
 b/drivers/char/watchdog/Kconfig                   |   13 
 b/drivers/char/watchdog/Makefile                  |    1 
 b/drivers/char/watchdog/sa1100_wdt.c              |  217 +++++
 b/drivers/ide/Kconfig                             |   17 
 b/drivers/ide/ide-pnp.c                           |   44 -
 b/drivers/ide/pci/Makefile                        |    2 
 b/drivers/ide/pci/adma100.c                       |    2 
 b/drivers/ide/pci/aec62xx.c                       |    4 
 b/drivers/ide/pci/amd74xx.c                       |  672 +++++++++--------
 b/drivers/ide/pci/amd74xx.h                       |   23 
 b/drivers/ide/pci/cs5520.c                        |    6 
 b/drivers/ide/pci/cs5530.c                        |   11 
 b/drivers/ide/pci/hpt34x.c                        |    2 
 b/drivers/ide/pci/hpt366.c                        |    5 
 b/drivers/ide/pci/pdc202xx_new.c                  |    6 
 b/drivers/ide/pci/pdc202xx_old.c                  |   18 
 b/drivers/ide/pci/pdcadma.c                       |    2 
 b/drivers/ide/pci/piix.c                          |  116 ++
 b/drivers/ide/pci/sc1200.c                        |    6 
 b/drivers/ide/pci/serverworks.c                   |    6 
 b/drivers/ide/pci/slc90e66.c                      |    2 
 b/drivers/ide/pci/triflex.c                       |  252 ++++++
 b/drivers/ide/pci/triflex.h                       |   55 +
 b/drivers/ide/setup-pci.c                         |    4 
 b/drivers/input/gameport/gameport.c               |    1 
 b/drivers/input/gameport/ns558.c                  |    2 
 b/drivers/input/serio/Kconfig                     |    1 
 b/drivers/isdn/divert/divert_init.c               |    3 
 b/drivers/isdn/hisax/Kconfig                      |   13 
 b/drivers/isdn/hisax/Makefile                     |   12 
 b/drivers/isdn/hisax/amd7930.c                    |   39 
 b/drivers/isdn/hisax/amd7930_fn.c                 |   38 
 b/drivers/isdn/hisax/amd7930_fn.h                 |    6 
 b/drivers/isdn/hisax/asuscom.c                    |  288 ++-----
 b/drivers/isdn/hisax/avm_a1.c                     |  149 ---
 b/drivers/isdn/hisax/avm_a1p.c                    |   71 -
 b/drivers/isdn/hisax/avm_pci.c                    |  277 ++-----
 b/drivers/isdn/hisax/bkm_a4t.c                    |  166 +---
 b/drivers/isdn/hisax/bkm_a8.c                     |  292 +------
 b/drivers/isdn/hisax/callc.c                      |   70 +
 b/drivers/isdn/hisax/config.c                     |  144 +++
 b/drivers/isdn/hisax/diva.c                       |  818 +++++---------------
 b/drivers/isdn/hisax/elsa.c                       |  518 +++++--------
 b/drivers/isdn/hisax/elsa_ser.c                   |   33 
 b/drivers/isdn/hisax/enternow_pci.c               |  187 +---
 b/drivers/isdn/hisax/gazel.c                      |  745 +++++++------------
 b/drivers/isdn/hisax/hfc_2bds0.c                  |   28 
 b/drivers/isdn/hisax/hfc_2bs0.c                   |   13 
 b/drivers/isdn/hisax/hfc_2bs0.h                   |    1 
 b/drivers/isdn/hisax/hfc_pci.c                    |  214 ++---
 b/drivers/isdn/hisax/hfc_sx.c                     |  225 ++---
 b/drivers/isdn/hisax/hfcscard.c                   |  110 +-
 b/drivers/isdn/hisax/hisax.h                      |  115 ++
 b/drivers/isdn/hisax/hisax_fcpcipnp.c             |   66 -
 b/drivers/isdn/hisax/hisax_hfcpci.c               |    3 
 b/drivers/isdn/hisax/hscx.c                       |   94 --
 b/drivers/isdn/hisax/hscx.h                       |    6 
 b/drivers/isdn/hisax/hscx_irq.c                   |  145 +--
 b/drivers/isdn/hisax/icc.c                        |   79 --
 b/drivers/isdn/hisax/icc.h                        |    2 
 b/drivers/isdn/hisax/ipac.c                       |  105 ++
 b/drivers/isdn/hisax/ipac.h                       |   73 +
 b/drivers/isdn/hisax/ipacx.c                      |  244 +-----
 b/drivers/isdn/hisax/ipacx.h                      |    4 
 b/drivers/isdn/hisax/isac.c                       |   77 -
 b/drivers/isdn/hisax/isac.h                       |    2 
 b/drivers/isdn/hisax/isar.c                       |   23 
 b/drivers/isdn/hisax/isar.h                       |    2 
 b/drivers/isdn/hisax/isdnl1.c                     |   16 
 b/drivers/isdn/hisax/isdnl1.h                     |  192 ++++
 b/drivers/isdn/hisax/isurf.c                      |  144 +--
 b/drivers/isdn/hisax/ix1_micro.c                  |  150 +--
 b/drivers/isdn/hisax/jade.c                       |   80 --
 b/drivers/isdn/hisax/jade.h                       |    6 
 b/drivers/isdn/hisax/jade_irq.c                   |   81 --
 b/drivers/isdn/hisax/mic.c                        |  108 --
 b/drivers/isdn/hisax/netjet.c                     |   21 
 b/drivers/isdn/hisax/netjet.h                     |    2 
 b/drivers/isdn/hisax/niccy.c                      |  175 +---
 b/drivers/isdn/hisax/nj_s.c                       |   80 --
 b/drivers/isdn/hisax/nj_u.c                       |   84 --
 b/drivers/isdn/hisax/s0box.c                      |  101 --
 b/drivers/isdn/hisax/saphir.c                     |  108 --
 b/drivers/isdn/hisax/sedlbauer.c                  |  459 ++++-------
 b/drivers/isdn/hisax/sportster.c                  |  114 +-
 b/drivers/isdn/hisax/tei.c                        |   26 
 b/drivers/isdn/hisax/teleint.c                    |   79 --
 b/drivers/isdn/hisax/teles0.c                     |  160 ----
 b/drivers/isdn/hisax/teles3.c                     |  263 +-----
 b/drivers/isdn/hisax/telespci.c                   |   83 --
 b/drivers/isdn/hisax/w6692.c                      |  310 ++-----
 b/drivers/isdn/hisax/w6692.h                      |    3 
 b/drivers/isdn/i4l/isdn_tty.c                     |    4 
 b/drivers/md/md.c                                 |    6 
 b/drivers/media/radio/radio-cadet.c               |   25 
 b/drivers/media/radio/radio-sf16fmi.c             |   25 
 b/drivers/mtd/devices/blkmtd.c                    |    2 
 b/drivers/mtd/maps/sa1100-flash.c                 |  862 +++++++++++-----------
 b/drivers/net/3c501.c                             |   19 
 b/drivers/net/3c505.c                             |    3 
 b/drivers/net/3c507.c                             |   11 
 b/drivers/net/3c509.c                             |   42 -
 b/drivers/net/3c515.c                             |   37 
 b/drivers/net/3c523.c                             |    5 
 b/drivers/net/3c527.c                             |    7 
 b/drivers/net/7990.c                              |    2 
 b/drivers/net/8139too.c                           |    2 
 b/drivers/net/82596.c                             |    8 
 b/drivers/net/8390.c                              |   20 
 b/drivers/net/a2065.c                             |    9 
 b/drivers/net/aironet4500_card.c                  |   49 -
 b/drivers/net/aironet4500_proc.c                  |    2 
 b/drivers/net/am79c961a.c                         |   10 
 b/drivers/net/ariadne.c                           |   13 
 b/drivers/net/at1700.c                            |   13 
 b/drivers/net/atarilance.c                        |   20 
 b/drivers/net/atp.c                               |   20 
 b/drivers/net/bagetlance.c                        |   18 
 b/drivers/net/de600.c                             |    5 
 b/drivers/net/de620.c                             |    7 
 b/drivers/net/declance.c                          |    9 
 b/drivers/net/depca.c                             |    6 
 b/drivers/net/eepro.c                             |    8 
 b/drivers/net/eexpress.c                          |   10 
 b/drivers/net/epic100.c                           |    6 
 b/drivers/net/eth16i.c                            |    8 
 b/drivers/net/fmv18x.c                            |   10 
 b/drivers/net/hp100.c                             |   12 
 b/drivers/net/irda/sa1100_ir.c                    |  120 +--
 b/drivers/net/lance.c                             |   11 
 b/drivers/net/lasi_82596.c                        |    9 
 b/drivers/net/lp486e.c                            |   10 
 b/drivers/net/ne.c                                |   31 
 b/drivers/net/ni5010.c                            |   13 
 b/drivers/net/ni52.c                              |    6 
 b/drivers/net/ni65.c                              |    2 
 b/drivers/net/pcmcia/axnet_cs.c                   |   14 
 b/drivers/net/pcmcia/fmvj18x_cs.c                 |   10 
 b/drivers/net/pcmcia/ray_cs.c                     |   10 
 b/drivers/net/pcmcia/xirc2ps_cs.c                 |    7 
 b/drivers/net/r8169.c                             |    6 
 b/drivers/net/sb1000.c                            |   45 -
 b/drivers/net/seeq8005.c                          |    8 
 b/drivers/net/sgiseeq.c                           |    2 
 b/drivers/net/sk_g16.c                            |    3 
 b/drivers/net/smc-ultra.c                         |   36 
 b/drivers/net/smc9194.c                           |   10 
 b/drivers/net/sun3_82586.c                        |    6 
 b/drivers/net/sun3lance.c                         |    3 
 b/drivers/net/wireless/wavelan.c                  |    6 
 b/drivers/net/yellowfin.c                         |   25 
 b/drivers/net/znet.c                              |    9 
 b/drivers/pci/Kconfig                             |    1 
 b/drivers/pci/pool.c                              |    9 
 b/drivers/pci/probe.c                             |   12 
 b/drivers/pci/proc.c                              |   21 
 b/drivers/pcmcia/cardbus.c                        |    2 
 b/drivers/pcmcia/i82365.c                         |   14 
 b/drivers/pnp/card.c                              |   58 +
 b/drivers/pnp/core.c                              |    9 
 b/drivers/pnp/driver.c                            |   37 
 b/drivers/pnp/interface.c                         |   75 -
 b/drivers/pnp/isapnp/compat.c                     |   13 
 b/drivers/pnp/isapnp/core.c                       |   76 -
 b/drivers/pnp/isapnp/proc.c                       |    6 
 b/drivers/pnp/pnpbios/core.c                      |   81 +-
 b/drivers/pnp/resource.c                          |  121 +--
 b/drivers/pnp/system.c                            |   57 -
 b/drivers/scsi/NCR53C9x.c                         |    2 
 b/drivers/scsi/aha152x.c                          |   29 
 b/drivers/scsi/aha1542.c                          |   22 
 b/drivers/scsi/esp.c                              |    2 
 b/drivers/scsi/fdomain.c                          |    2 
 b/drivers/scsi/g_NCR5380.c                        |   28 
 b/drivers/scsi/ips.c                              |    3 
 b/drivers/scsi/scsi_sysfs.c                       |   29 
 b/drivers/scsi/sg.c                               |   12 
 b/drivers/scsi/sym53c416.c                        |   17 
 b/drivers/serial/sunzilog.c                       |  154 ++-
 b/drivers/telephony/ixj.c                         |   37 
 b/drivers/telephony/ixj.h                         |    4 
 b/drivers/usb/core/driverfs.c                     |   31 
 b/drivers/usb/host/ohci-sa1111.c                  |    3 
 b/drivers/video/sa1100fb.c                        |  193 ++--
 b/fs/bio.c                                        |    6 
 b/fs/compat.c                                     |   58 +
 b/fs/direct-io.c                                  |    2 
 b/fs/hugetlbfs/inode.c                            |    4 
 b/fs/inode.c                                      |    2 
 b/fs/namei.c                                      |    4 
 b/fs/nfsd/nfsproc.c                               |    4 
 b/fs/nfsd/vfs.c                                   |    8 
 b/fs/partitions/check.c                           |   32 
 b/fs/sysfs/inode.c                                |  306 +++++--
 b/include/asm-arm/dma-mapping.h                   |    6 
 b/include/asm-arm/ecard.h                         |    1 
 b/include/asm-arm/pci.h                           |    4 
 b/include/asm-arm/proc-armv/uaccess.h             |   52 -
 b/include/asm-arm/procinfo.h                      |    7 
 b/include/asm-arm/tlb.h                           |   14 
 b/include/asm-arm/uaccess.h                       |  139 +--
 b/include/asm-generic/tlb.h                       |   31 
 b/include/asm-i386/ptrace.h                       |    3 
 b/include/asm-i386/uaccess.h                      |  174 +++-
 b/include/asm-ia64/tlb.h                          |   22 
 b/include/asm-m68k/motorola_pgalloc.h             |    4 
 b/include/asm-m68k/sun3_pgalloc.h                 |    2 
 b/include/asm-ppc/mpc10x.h                        |    1 
 b/include/asm-ppc/tlb.h                           |   10 
 b/include/asm-ppc64/cacheflush.h                  |    2 
 b/include/asm-ppc64/compat.h                      |   13 
 b/include/asm-ppc64/ppc32.h                       |   13 
 b/include/asm-ppc64/tlb.h                         |    7 
 b/include/asm-s390x/compat.h                      |   13 
 b/include/asm-sparc64/compat.h                    |   13 
 b/include/asm-sparc64/statfs.h                    |   14 
 b/include/asm-v850/module.h                       |   30 
 b/include/asm-v850/stat.h                         |   15 
 b/include/asm-v850/system.h                       |    5 
 b/include/linux/cpufreq.h                         |   23 
 b/include/linux/device.h                          |   16 
 b/include/linux/fs.h                              |    2 
 b/include/linux/ide.h                             |    2 
 b/include/linux/isapnp.h                          |   17 
 b/include/linux/ixjuser.h                         |    4 
 b/include/linux/kobject.h                         |    4 
 b/include/linux/mm.h                              |   28 
 b/include/linux/module.h                          |    8 
 b/include/linux/msg.h                             |    1 
 b/include/linux/nfsd/nfsd.h                       |    3 
 b/include/linux/pci_ids.h                         |    4 
 b/include/linux/pnp.h                             |  118 +--
 b/include/linux/pnpbios.h                         |   18 
 b/include/linux/sched.h                           |   18 
 b/include/linux/security.h                        |  244 ++++++
 b/include/linux/skbuff.h                          |   21 
 b/include/linux/spinlock.h                        |   56 -
 b/include/linux/sunrpc/svcauth.h                  |   43 -
 b/include/linux/sunrpc/svcsock.h                  |    1 
 b/include/linux/sysfs.h                           |    4 
 b/include/linux/videodev.h                        |    2 
 b/ipc/msg.c                                       |   41 -
 b/ipc/sem.c                                       |   32 
 b/ipc/shm.c                                       |   41 -
 b/kernel/cpufreq.c                                |  125 +++
 b/kernel/fork.c                                   |    4 
 b/kernel/ksyms.c                                  |    4 
 b/kernel/module.c                                 |   24 
 b/kernel/ptrace.c                                 |    2 
 b/kernel/sched.c                                  |   47 +
 b/lib/kobject.c                                   |   40 -
 b/mm/filemap.c                                    |    5 
 b/mm/memory.c                                     |  148 ++-
 b/mm/mmap.c                                       |  137 +--
 b/mm/page-writeback.c                             |   20 
 b/mm/slab.c                                       |    2 
 b/mm/swap.c                                       |    1 
 b/mm/swap_state.c                                 |    1 
 b/net/bridge/netfilter/ebtables.c                 |  286 +++----
 b/net/core/dev.c                                  |   13 
 b/net/core/skbuff.c                               |   29 
 b/net/ipv4/arp.c                                  |    1 
 b/net/ipv4/raw.c                                  |    1 
 b/net/ipv4/route.c                                |    2 
 b/net/ipv4/tcp_ipv4.c                             |    3 
 b/net/sunrpc/svc.c                                |   27 
 b/net/sunrpc/svcauth.c                            |   40 -
 b/net/sunrpc/svcauth_unix.c                       |    8 
 b/net/sunrpc/svcsock.c                            |   83 +-
 b/security/dummy.c                                |   77 +
 b/sound/oss/ad1848.c                              |    2 
 b/sound/oss/opl3sa2.c                             |    4 
 b/sound/pci/ali5451/ali5451.c                     |    2 
 drivers/ide/pci/nvidia.c                          |  370 ---------
 drivers/ide/pci/nvidia.h                          |   50 -
 415 files changed, 9970 insertions(+), 9651 deletions(-)

