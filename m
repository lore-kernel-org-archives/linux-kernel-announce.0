From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.33 released
Date: Sat, 31 Aug 2002 15:08:05 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200208312208.g7VM85X20815@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.33 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.33.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.33.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               498639           2266775
Full source                       35315064         157245440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/DocBook/kernel-hacking.tmpl          |   13 
 b/Documentation/cciss.txt                            |    2 
 b/Documentation/cdrom/sonycd535                      |    8 
 b/Documentation/filesystems/devfs/ChangeLog          |    8 
 b/Documentation/filesystems/devfs/README             |   14 
 b/Documentation/filesystems/ntfs.txt                 |    6 
 b/Documentation/networking/8139too.txt               |   17 
 b/Documentation/networking/bonding.txt               |    2 
 b/Documentation/networking/e1000.txt                 |   78 
 b/Documentation/networking/sctp.txt                  |   38 
 b/Documentation/preempt-locking.txt                  |   25 
 b/Documentation/usb/ehci.txt                         |   69 
 b/Documentation/usb/ohci.txt                         |  121 
 b/Documentation/watchdog-api.txt                     |    2 
 b/MAINTAINERS                                        |    3 
 b/Makefile                                           |    2 
 b/arch/alpha/config.in                               |    2 
 b/arch/alpha/defconfig                               |    1 
 b/arch/alpha/kernel/core_apecs.c                     |  102 
 b/arch/alpha/kernel/core_cia.c                       |  101 
 b/arch/alpha/kernel/core_irongate.c                  |   81 
 b/arch/alpha/kernel/core_lca.c                       |  100 
 b/arch/alpha/kernel/core_polaris.c                   |   79 
 b/arch/alpha/kernel/core_t2.c                        |  101 
 b/arch/arm/def-configs/a5k                           |    1 
 b/arch/arm/def-configs/adi_evb                       |    1 
 b/arch/arm/def-configs/adsbitsy                      |    1 
 b/arch/arm/def-configs/anakin                        |    1 
 b/arch/arm/def-configs/assabet                       |    1 
 b/arch/arm/def-configs/badge4                        |    1 
 b/arch/arm/def-configs/brutus                        |    1 
 b/arch/arm/def-configs/cerfcube                      |    1 
 b/arch/arm/def-configs/cerfpda                       |    1 
 b/arch/arm/def-configs/cerfpod                       |    1 
 b/arch/arm/def-configs/clps7500                      |    2 
 b/arch/arm/def-configs/ebsa110                       |    1 
 b/arch/arm/def-configs/edb7211                       |    1 
 b/arch/arm/def-configs/empeg                         |    1 
 b/arch/arm/def-configs/epxa10db                      |    1 
 b/arch/arm/def-configs/flexanet                      |    1 
 b/arch/arm/def-configs/footbridge                    |    1 
 b/arch/arm/def-configs/fortunet                      |    1 
 b/arch/arm/def-configs/freebird                      |    1 
 b/arch/arm/def-configs/freebird_new                  |    1 
 b/arch/arm/def-configs/graphicsclient                |    1 
 b/arch/arm/def-configs/graphicsmaster                |    1 
 b/arch/arm/def-configs/h3600                         |    1 
 b/arch/arm/def-configs/huw_webpanel                  |    1 
 b/arch/arm/def-configs/integrator                    |    1 
 b/arch/arm/def-configs/iq80310                       |    1 
 b/arch/arm/def-configs/jornada720                    |    1 
 b/arch/arm/def-configs/lart                          |    1 
 b/arch/arm/def-configs/lubbock                       |    1 
 b/arch/arm/def-configs/lusl7200                      |    1 
 b/arch/arm/def-configs/neponset                      |    1 
 b/arch/arm/def-configs/omnimeter                     |    1 
 b/arch/arm/def-configs/pangolin                      |    1 
 b/arch/arm/def-configs/pfs168_mqtft                  |    1 
 b/arch/arm/def-configs/pfs168_mqvga                  |    1 
 b/arch/arm/def-configs/pfs168_sastn                  |    1 
 b/arch/arm/def-configs/pfs168_satft                  |    1 
 b/arch/arm/def-configs/pleb                          |    1 
 b/arch/arm/def-configs/rpc                           |    1 
 b/arch/arm/def-configs/shannon                       |    2 
 b/arch/arm/def-configs/shark                         |    1 
 b/arch/arm/def-configs/sherman                       |    2 
 b/arch/arm/def-configs/stork                         |    1 
 b/arch/arm/def-configs/system3                       |    1 
 b/arch/arm/defconfig                                 |    1 
 b/arch/cris/defconfig                                |    1 
 b/arch/i386/defconfig                                |   77 
 b/arch/i386/kernel/cpu/common.c                      |    2 
 b/arch/i386/kernel/i386_ksyms.c                      |    7 
 b/arch/i386/kernel/ioport.c                          |   17 
 b/arch/i386/kernel/ldt.c                             |   14 
 b/arch/i386/kernel/process.c                         |   28 
 b/arch/i386/kernel/setup.c                           |   14 
 b/arch/i386/kernel/smpboot.c                         |    4 
 b/arch/i386/kernel/traps.c                           |   33 
 b/arch/i386/pci/common.c                             |    3 
 b/arch/i386/pci/direct.c                             |  165 
 b/arch/i386/pci/numa.c                               |   34 
 b/arch/i386/pci/pcbios.c                             |   73 
 b/arch/ia64/Makefile                                 |    3 
 b/arch/ia64/defconfig                                |    1 
 b/arch/ia64/hp/common/sba_iommu.c                    |    2 
 b/arch/ia64/hp/sim/simeth.c                          |    2 
 b/arch/ia64/hp/sim/simserial.c                       |    2 
 b/arch/ia64/hp/zx1/hpzx1_misc.c                      |    2 
 b/arch/ia64/ia32/sys_ia32.c                          |    1 
 b/arch/ia64/kernel/acpi.c                            |  127 
 b/arch/ia64/kernel/efi.c                             |    2 
 b/arch/ia64/kernel/efivars.c                         |    2 
 b/arch/ia64/kernel/entry.S                           |   10 
 b/arch/ia64/kernel/fw-emu.c                          |    2 
 b/arch/ia64/kernel/ia64_ksyms.c                      |    2 
 b/arch/ia64/kernel/iosapic.c                         |  670 +--
 b/arch/ia64/kernel/irq.c                             |   23 
 b/arch/ia64/kernel/irq_ia64.c                        |   15 
 b/arch/ia64/kernel/palinfo.c                         |    2 
 b/arch/ia64/kernel/pci.c                             |   80 
 b/arch/ia64/kernel/process.c                         |    2 
 b/arch/ia64/kernel/setup.c                           |   13 
 b/arch/ia64/kernel/smp.c                             |    4 
 b/arch/ia64/kernel/smpboot.c                         |    2 
 b/arch/ia64/kernel/time.c                            |    2 
 b/arch/ia64/kernel/traps.c                           |    5 
 b/arch/ia64/lib/memcpy.S                             |    2 
 b/arch/ia64/mm/init.c                                |    2 
 b/arch/ia64/mm/tlb.c                                 |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-mp       |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-sp       |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-dig-mp          |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-dig-sp          |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-generic-mp      |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-generic-sp      |    1 
 b/arch/ia64/sn/configs/sn1/defconfig-hp-sp           |    1 
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
 b/arch/ia64/sn/fakeprom/fpmem.c                      |    2 
 b/arch/ia64/sn/fakeprom/fw-emu.c                     |    2 
 b/arch/ia64/sn/io/efi-rtc.c                          |    2 
 b/arch/ia64/sn/io/pci.c                              |  157 
 b/arch/ia64/sn/io/sn1/pcibr.c                        |    2 
 b/arch/ia64/sn/kernel/llsc4.c                        |    2 
 b/arch/ia64/vmlinux.lds.S                            |    2 
 b/arch/m68k/defconfig                                |    2 
 b/arch/mips/config.in                                |    3 
 b/arch/mips/ddb5074/pci.c                            |  219 -
 b/arch/mips/ddb5476/pci.c                            |  215 -
 b/arch/mips/ddb5xxx/ddb5477/pci_ops.c                |  253 -
 b/arch/mips/defconfig                                |    1 
 b/arch/mips/defconfig-atlas                          |    1 
 b/arch/mips/defconfig-ddb5476                        |    1 
 b/arch/mips/defconfig-ddb5477                        |    1 
 b/arch/mips/defconfig-decstation                     |    1 
 b/arch/mips/defconfig-ip22                           |    1 
 b/arch/mips/defconfig-it8172                         |    1 
 b/arch/mips/defconfig-malta                          |    1 
 b/arch/mips/defconfig-nino                           |    1 
 b/arch/mips/defconfig-ocelot                         |    1 
 b/arch/mips/defconfig-pb1000                         |    1 
 b/arch/mips/defconfig-rm200                          |    1 
 b/arch/mips/gt64120/common/pci.c                     |  258 -
 b/arch/mips/ite-boards/generic/it8172_pci.c          |  133 
 b/arch/mips/kernel/irixelf.c                         |   13 
 b/arch/mips/kernel/setup.c                           |    2 
 b/arch/mips/mips-boards/generic/pci.c                |  119 
 b/arch/mips/sni/pci.c                                |  124 
 b/arch/mips64/config.in                              |    3 
 b/arch/mips64/defconfig                              |    1 
 b/arch/mips64/defconfig-ip22                         |    1 
 b/arch/mips64/defconfig-ip27                         |    1 
 b/arch/mips64/defconfig-ip32                         |    1 
 b/arch/mips64/kernel/binfmt_elf32.c                  |    1 
 b/arch/parisc/defconfig                              |    1 
 b/arch/ppc/configs/FADS_defconfig                    |    1 
 b/arch/ppc/configs/IVMS8_defconfig                   |    1 
 b/arch/ppc/configs/SM850_defconfig                   |    1 
 b/arch/ppc/configs/SPD823TS_defconfig                |    1 
 b/arch/ppc/configs/TQM823L_defconfig                 |    1 
 b/arch/ppc/configs/TQM8260_defconfig                 |    1 
 b/arch/ppc/configs/TQM850L_defconfig                 |    1 
 b/arch/ppc/configs/TQM860L_defconfig                 |    1 
 b/arch/ppc/configs/adir_defconfig                    |    1 
 b/arch/ppc/configs/apus_defconfig                    |    1 
 b/arch/ppc/configs/ash_defconfig                     |    1 
 b/arch/ppc/configs/bseip_defconfig                   |    1 
 b/arch/ppc/configs/ceder_defconfig                   |    1 
 b/arch/ppc/configs/common_defconfig                  |    1 
 b/arch/ppc/configs/cpci405_defconfig                 |    1 
 b/arch/ppc/configs/ep405_defconfig                   |    1 
 b/arch/ppc/configs/est8260_defconfig                 |    1 
 b/arch/ppc/configs/ev64260_defconfig                 |    1 
 b/arch/ppc/configs/gemini_defconfig                  |    1 
 b/arch/ppc/configs/iSeries_defconfig                 |    1 
 b/arch/ppc/configs/ibmchrp_defconfig                 |    1 
 b/arch/ppc/configs/k2_defconfig                      |    1 
 b/arch/ppc/configs/lopec_defconfig                   |    1 
 b/arch/ppc/configs/mbx_defconfig                     |    1 
 b/arch/ppc/configs/mcpn765_defconfig                 |    1 
 b/arch/ppc/configs/menf1_defconfig                   |    1 
 b/arch/ppc/configs/mvme5100_defconfig                |    1 
 b/arch/ppc/configs/oak_defconfig                     |    1 
 b/arch/ppc/configs/pcore_defconfig                   |    1 
 b/arch/ppc/configs/pmac_defconfig                    |    1 
 b/arch/ppc/configs/power3_defconfig                  |    1 
 b/arch/ppc/configs/pplus_defconfig                   |    1 
 b/arch/ppc/configs/prpmc750_defconfig                |    1 
 b/arch/ppc/configs/prpmc800_defconfig                |    1 
 b/arch/ppc/configs/redwood5_defconfig                |    1 
 b/arch/ppc/configs/redwood_defconfig                 |    1 
 b/arch/ppc/configs/rpxcllf_defconfig                 |    1 
 b/arch/ppc/configs/rpxlite_defconfig                 |    1 
 b/arch/ppc/configs/sandpoint_defconfig               |    1 
 b/arch/ppc/configs/spruce_defconfig                  |    1 
 b/arch/ppc/configs/walnut_defconfig                  |    1 
 b/arch/ppc/configs/zx4500_defconfig                  |    1 
 b/arch/ppc/defconfig                                 |    1 
 b/arch/ppc/mm/tlb.c                                  |    2 
 b/arch/ppc64/defconfig                               |    1 
 b/arch/ppc64/kernel/iSeries_IoMmTable.c              |    2 
 b/arch/s390/defconfig                                |    1 
 b/arch/s390x/defconfig                               |    1 
 b/arch/s390x/kernel/binfmt_elf32.c                   |    1 
 b/arch/sh/defconfig                                  |    1 
 b/arch/sh/kernel/irq_intc2.c                         |    2 
 b/arch/sh/kernel/pci-dc.c                            |  105 
 b/arch/sh/kernel/pci-sh7751.c                        |  180 
 b/arch/sh/kernel/pci_st40.c                          |  112 
 b/arch/sparc/config.in                               |    1 
 b/arch/sparc/defconfig                               |    1 
 b/arch/sparc64/config.in                             |    1 
 b/arch/sparc64/defconfig                             |   77 
 b/arch/sparc64/kernel/binfmt_elf32.c                 |    1 
 b/arch/sparc64/kernel/cpu.c                          |   31 
 b/arch/sparc64/kernel/entry.S                        |   18 
 b/arch/sparc64/kernel/etrap.S                        |   33 
 b/arch/sparc64/kernel/head.S                         |   92 
 b/arch/sparc64/kernel/irq.c                          |    1 
 b/arch/sparc64/kernel/setup.c                        |   14 
 b/arch/sparc64/kernel/trampoline.S                   |   73 
 b/arch/sparc64/kernel/traps.c                        |   57 
 b/arch/sparc64/lib/blockops.S                        |    9 
 b/arch/x86_64/defconfig                              |    1 
 b/arch/x86_64/ia32/ia32_binfmt.c                     |    1 
 b/arch/x86_64/pci/direct.c                           |  165 
 b/drivers/acpi/Config.in                             |    9 
 b/drivers/acpi/Makefile                              |    1 
 b/drivers/acpi/bus.c                                 |   12 
 b/drivers/acpi/dispatcher/dsopcode.c                 |    4 
 b/drivers/acpi/dispatcher/dswload.c                  |   75 
 b/drivers/acpi/events/evevent.c                      |    3 
 b/drivers/acpi/events/evmisc.c                       |   63 
 b/drivers/acpi/include/acconfig.h                    |    4 
 b/drivers/acpi/include/acglobal.h                    |    3 
 b/drivers/acpi/include/aclocal.h                     |    4 
 b/drivers/acpi/include/acparser.h                    |    3 
 b/drivers/acpi/include/actbl2.h                      |    6 
 b/drivers/acpi/include/platform/aclinux.h            |    3 
 b/drivers/acpi/numa.c                                |  187 
 b/drivers/acpi/osl.c                                 |   41 
 b/drivers/acpi/system.c                              |    1 
 b/drivers/acpi/tables.c                              |   30 
 b/drivers/acpi/utilities/utglobal.c                  |   20 
 b/drivers/block/floppy.c                             |   35 
 b/drivers/bluetooth/hci_ldisc.c                      |    1 
 b/drivers/char/Config.help                           |    7 
 b/drivers/char/Makefile                              |    2 
 b/drivers/char/console.c                             |    4 
 b/drivers/char/drm/drmP.h                            |   10 
 b/drivers/char/drm/drm_agpsupport.h                  |    4 
 b/drivers/char/drm/drm_drv.h                         |   18 
 b/drivers/char/drm/drm_stub.h                        |    4 
 b/drivers/char/drm/drm_vm.h                          |   32 
 b/drivers/char/drm/i810_dma.c                        |   26 
 b/drivers/char/drm/i830_dma.c                        |   24 
 b/drivers/char/drm/mga_dma.c                         |    2 
 b/drivers/char/drm/mga_drv.h                         |   14 
 b/drivers/char/drm/mga_state.c                       |    5 
 b/drivers/char/drm/r128_cce.c                        |    4 
 b/drivers/char/drm/r128_drv.h                        |    4 
 b/drivers/char/drm/r128_state.c                      |   34 
 b/drivers/char/drm/radeon.h                          |    7 
 b/drivers/char/drm/radeon_cp.c                       |   30 
 b/drivers/char/drm/radeon_drv.h                      |    9 
 b/drivers/char/drm/radeon_state.c                    |   39 
 b/drivers/char/efirtc.c                              |    2 
 b/drivers/char/keyboard.c                            |   21 
 b/drivers/char/mxser.c                               |    2 
 b/drivers/char/nvram.c                               |  408 +-
 b/drivers/char/sysrq.c                               |    8 
 b/drivers/hotplug/pci_hotplug_util.c                 |  245 -
 b/drivers/ide/ide-cd.c                               |  133 
 b/drivers/ide/ide-disk.c                             |  100 
 b/drivers/ide/ide-floppy.c                           |  131 
 b/drivers/ide/ide-probe.c                            |   24 
 b/drivers/ide/ide-proc.c                             |   37 
 b/drivers/ide/ide-tape.c                             |  233 -
 b/drivers/ide/ide.c                                  |  368 -
 b/drivers/input/Config.in                            |    2 
 b/drivers/input/input.c                              |  113 
 b/drivers/input/keyboard/atkbd.c                     |  103 
 b/drivers/input/misc/Config.help                     |   11 
 b/drivers/input/misc/Config.in                       |    3 
 b/drivers/input/misc/Makefile                        |    1 
 b/drivers/input/misc/sparcspkr.c                     |  189 
 b/drivers/input/mouse/psmouse.c                      |  145 
 b/drivers/input/mousedev.c                           |   18 
 b/drivers/input/serio/Config.in                      |    5 
 b/drivers/input/serio/i8042-io.h                     |   16 
 b/drivers/input/serio/i8042-sparcio.h                |  102 
 b/drivers/input/serio/i8042.c                        |   65 
 b/drivers/input/serio/i8042.h                        |    2 
 b/drivers/macintosh/via-pmu.c                        |    1 
 b/drivers/md/raid5.c                                 |    2 
 b/drivers/media/video/Config.in                      |    2 
 b/drivers/media/video/bt819.c                        |  199 -
 b/drivers/media/video/bt856.c                        |  112 
 b/drivers/media/video/saa7110.c                      |  267 -
 b/drivers/media/video/videodev.c                     |   16 
 b/drivers/message/i2o/README.ioctl                   |    2 
 b/drivers/mtd/devices/blkmtd.c                       |    1 
 b/drivers/mtd/mtdblock.c                             |    2 
 b/drivers/net/8139cp.c                               |  116 
 b/drivers/net/8139too.c                              |   22 
 b/drivers/net/Config.help                            |   17 
 b/drivers/net/Config.in                              |    5 
 b/drivers/net/bonding.c                              |    2 
 b/drivers/net/e100/LICENSE                           |  339 +
 b/drivers/net/e100/e100.h                            |   92 
 b/drivers/net/e100/e100_config.c                     |   91 
 b/drivers/net/e100/e100_config.h                     |   91 
 b/drivers/net/e100/e100_eeprom.c                     |   95 
 b/drivers/net/e100/e100_main.c                       |  226 -
 b/drivers/net/e100/e100_phy.c                        |  156 
 b/drivers/net/e100/e100_phy.h                        |   97 
 b/drivers/net/e100/e100_proc.c                       |   93 
 b/drivers/net/e100/e100_test.c                       |  154 
 b/drivers/net/e100/e100_ucode.h                      |   91 
 b/drivers/net/e100/e100_vendor.h                     |   91 
 b/drivers/net/e1000/LICENSE                          |  407 +-
 b/drivers/net/e1000/Makefile                         |   91 
 b/drivers/net/e1000/e1000.h                          |  101 
 b/drivers/net/e1000/e1000_ethtool.c                  |  121 
 b/drivers/net/e1000/e1000_hw.c                       |  242 -
 b/drivers/net/e1000/e1000_hw.h                       |   97 
 b/drivers/net/e1000/e1000_main.c                     |  434 +-
 b/drivers/net/e1000/e1000_osdep.h                    |   95 
 b/drivers/net/e1000/e1000_param.c                    |  176 
 b/drivers/net/e1000/e1000_proc.c                     |   94 
 b/drivers/net/loopback.c                             |   79 
 b/drivers/net/pcmcia/3c574_cs.c                      |   24 
 b/drivers/net/pcmcia/ibmtr_cs.c                      |   34 
 b/drivers/net/pcmcia/pcnet_cs.c                      |   43 
 b/drivers/net/pcmcia/ray_cs.c                        |   31 
 b/drivers/net/pcmcia/xirc2ps_cs.c                    |   24 
 b/drivers/net/sb1250-mac.c                           |    2 
 b/drivers/net/tulip/interrupt.c                      |    2 
 b/drivers/net/tulip/xircom_cb.c                      |   34 
 b/drivers/net/wan/sdla_x25.c                         |    2 
 b/drivers/pci/access.c                               |   46 
 b/drivers/pci/pool.c                                 |   74 
 b/drivers/pci/probe.c                                |    1 
 b/drivers/s390/block/dasd_3990_erp.c                 |    4 
 b/drivers/sbus/char/openprom.c                       |    2 
 b/drivers/scsi/Config.in                             |    3 
 b/drivers/scsi/NCR53C9x.c                            |    2 
 b/drivers/scsi/dpt_i2o.c                             |    4 
 b/drivers/scsi/fdomain.c                             |    2 
 b/drivers/scsi/ide-scsi.c                            |   84 
 b/drivers/scsi/imm.c                                 |    2 
 b/drivers/scsi/ppa.c                                 |    2 
 b/drivers/scsi/sd.c                                  |    7 
 b/drivers/scsi/sg.c                                  |    1 
 b/drivers/scsi/st.c                                  |    1 
 b/drivers/scsi/sym53c8xx.c                           |    4 
 b/drivers/scsi/sym53c8xx_2/sym_fw1.h                 |    2 
 b/drivers/scsi/sym53c8xx_2/sym_fw2.h                 |    2 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c                |    2 
 b/drivers/scsi/sym53c8xx_comm.h                      |    2 
 b/drivers/serial/Config.in                           |    2 
 b/drivers/usb/class/bluetty.c                        |  134 
 b/drivers/usb/core/buffer.c                          |   44 
 b/drivers/usb/core/hcd-pci.c                         |   10 
 b/drivers/usb/core/hcd.c                             |    3 
 b/drivers/usb/core/hcd.h                             |   17 
 b/drivers/usb/core/urb.c                             |    1 
 b/drivers/usb/core/usb.c                             |  114 
 b/drivers/usb/host/ehci-dbg.c                        |  270 +
 b/drivers/usb/host/ohci-q.c                          |    8 
 b/drivers/usb/input/aiptek.c                         |   41 
 b/drivers/usb/input/hid-core.c                       |   98 
 b/drivers/usb/input/hid.h                            |   12 
 b/drivers/usb/input/powermate.c                      |  146 
 b/drivers/usb/input/usbkbd.c                         |   93 
 b/drivers/usb/input/usbmouse.c                       |   20 
 b/drivers/usb/input/wacom.c                          |   22 
 b/drivers/usb/input/xpad.c                           |   22 
 b/drivers/usb/media/ibmcam.c                         |   14 
 b/drivers/usb/media/konicawc.c                       |    4 
 b/drivers/usb/media/ultracam.c                       |    4 
 b/drivers/usb/media/usbvideo.c                       |   44 
 b/drivers/usb/media/usbvideo.h                       |   58 
 b/drivers/usb/misc/brlvger.c                         |    4 
 b/drivers/usb/net/kaweth.c                           |   26 
 b/drivers/usb/serial/belkin_sa.c                     |    6 
 b/drivers/usb/serial/cyberjack.c                     |   70 
 b/drivers/usb/serial/digi_acceleport.c               |   33 
 b/drivers/usb/serial/empeg.c                         |   55 
 b/drivers/usb/serial/ftdi_sio.c                      |   86 
 b/drivers/usb/serial/io_edgeport.c                   |  283 -
 b/drivers/usb/serial/io_ti.c                         |   56 
 b/drivers/usb/serial/ipaq.c                          |   44 
 b/drivers/usb/serial/ir-usb.c                        |    2 
 b/drivers/usb/serial/keyspan.c                       |   18 
 b/drivers/usb/serial/keyspan.h                       |    1 
 b/drivers/usb/serial/keyspan_pda.c                   |   10 
 b/drivers/usb/serial/kl5kusb105.c                    |  108 
 b/drivers/usb/serial/mct_u232.c                      |   37 
 b/drivers/usb/serial/omninet.c                       |   24 
 b/drivers/usb/serial/pl2303.c                        |   99 
 b/drivers/usb/serial/pl2303.h                        |    3 
 b/drivers/usb/serial/safe_serial.c                   |   26 
 b/drivers/usb/serial/usbserial.c                     |  117 
 b/drivers/usb/serial/visor.c                         |  100 
 b/drivers/usb/serial/whiteheat.c                     |   66 
 b/drivers/video/cgfourteenfb.c                       |    4 
 b/drivers/video/cgsixfb.c                            |   14 
 b/drivers/video/cgthreefb.c                          |    4 
 b/drivers/video/creatorfb.c                          |   12 
 b/drivers/video/sbusfb.c                             |   41 
 b/fs/Config.help                                     |    9 
 b/fs/Config.in                                       |    1 
 b/fs/binfmt_elf.c                                    |  266 -
 b/fs/block_dev.c                                     |   13 
 b/fs/buffer.c                                        |   35 
 b/fs/devfs/base.c                                    |   30 
 b/fs/exec.c                                          |   63 
 b/fs/ext3/inode.c                                    |  150 
 b/fs/ext3/super.c                                    |    8 
 b/fs/fcntl.c                                         |   41 
 b/fs/jbd/revoke.c                                    |    2 
 b/fs/jfs/Makefile                                    |    2 
 b/fs/jfs/file.c                                      |   13 
 b/fs/jfs/inode.c                                     |   31 
 b/fs/jfs/jfs_dmap.c                                  |    1 
 b/fs/jfs/jfs_imap.c                                  |   27 
 b/fs/jfs/jfs_incore.h                                |    5 
 b/fs/jfs/jfs_logmgr.c                                |    3 
 b/fs/jfs/jfs_metapage.c                              |    3 
 b/fs/jfs/jfs_metapage.h                              |    8 
 b/fs/jfs/jfs_txnmgr.c                                |    1 
 b/fs/jfs/jfs_types.h                                 |    2 
 b/fs/jfs/jfs_umount.c                                |    2 
 b/fs/jfs/jfs_xattr.h                                 |   60 
 b/fs/jfs/namei.c                                     |   36 
 b/fs/jfs/super.c                                     |   29 
 b/fs/jfs/symlink.c                                   |    5 
 b/fs/jfs/xattr.c                                     |  812 ++++
 b/fs/lockd/svc.c                                     |    1 
 b/fs/locks.c                                         |    8 
 b/fs/mpage.c                                         |   11 
 b/fs/nfs/file.c                                      |    6 
 b/fs/nfs/inode.c                                     |    1 
 b/fs/nfsd/vfs.c                                      |    1 
 b/fs/nls/nls_base.c                                  |   10 
 b/fs/nls/nls_big5.c                                  |    4 
 b/fs/nls/nls_cp1250.c                                |   12 
 b/fs/nls/nls_cp1251.c                                |   12 
 b/fs/nls/nls_cp1255.c                                |   12 
 b/fs/nls/nls_cp437.c                                 |   12 
 b/fs/nls/nls_cp737.c                                 |   12 
 b/fs/nls/nls_cp775.c                                 |   12 
 b/fs/nls/nls_cp850.c                                 |   12 
 b/fs/nls/nls_cp852.c                                 |   12 
 b/fs/nls/nls_cp855.c                                 |   12 
 b/fs/nls/nls_cp857.c                                 |   12 
 b/fs/nls/nls_cp860.c                                 |   12 
 b/fs/nls/nls_cp861.c                                 |   12 
 b/fs/nls/nls_cp862.c                                 |   12 
 b/fs/nls/nls_cp863.c                                 |   12 
 b/fs/nls/nls_cp864.c                                 |   12 
 b/fs/nls/nls_cp865.c                                 |   12 
 b/fs/nls/nls_cp866.c                                 |   12 
 b/fs/nls/nls_cp869.c                                 |   12 
 b/fs/nls/nls_cp874.c                                 |   12 
 b/fs/nls/nls_cp932.c                                 |   12 
 b/fs/nls/nls_cp936.c                                 |   12 
 b/fs/nls/nls_cp949.c                                 |   12 
 b/fs/nls/nls_cp950.c                                 |   12 
 b/fs/nls/nls_euc-jp.c                                |    8 
 b/fs/nls/nls_euc-kr.c                                |    4 
 b/fs/nls/nls_gb2312.c                                |    4 
 b/fs/nls/nls_iso8859-1.c                             |   12 
 b/fs/nls/nls_iso8859-13.c                            |   12 
 b/fs/nls/nls_iso8859-14.c                            |   12 
 b/fs/nls/nls_iso8859-15.c                            |   12 
 b/fs/nls/nls_iso8859-2.c                             |   12 
 b/fs/nls/nls_iso8859-3.c                             |   12 
 b/fs/nls/nls_iso8859-4.c                             |   12 
 b/fs/nls/nls_iso8859-5.c                             |   12 
 b/fs/nls/nls_iso8859-6.c                             |   12 
 b/fs/nls/nls_iso8859-7.c                             |   12 
 b/fs/nls/nls_iso8859-8.c                             |    4 
 b/fs/nls/nls_iso8859-9.c                             |   12 
 b/fs/nls/nls_koi8-r.c                                |   12 
 b/fs/nls/nls_koi8-ru.c                               |    8 
 b/fs/nls/nls_koi8-u.c                                |   12 
 b/fs/nls/nls_sjis.c                                  |    4 
 b/fs/nls/nls_tis-620.c                               |    4 
 b/fs/nls/nls_utf8.c                                  |   12 
 b/fs/ntfs/ChangeLog                                  |   49 
 b/fs/ntfs/Makefile                                   |    8 
 b/fs/ntfs/aops.c                                     | 1339 ++++++
 b/fs/ntfs/attrib.c                                   |    9 
 b/fs/ntfs/compress.c                                 |    8 
 b/fs/ntfs/dir.c                                      |    6 
 b/fs/ntfs/file.c                                     |   10 
 b/fs/ntfs/inode.c                                    |   97 
 b/fs/ntfs/inode.h                                    |   12 
 b/fs/ntfs/mft.c                                      |    9 
 b/fs/ntfs/mft.h                                      |   14 
 b/fs/ntfs/namei.c                                    |    4 
 b/fs/openpromfs/inode.c                              |  108 
 b/fs/partitions/efi.h                                |    6 
 b/fs/proc/proc_misc.c                                |   28 
 b/fs/reiserfs/fix_node.c                             |    2 
 b/fs/romfs/inode.c                                   |    2 
 b/fs/smbfs/file.c                                    |    1 
 b/fs/smbfs/inode.c                                   |    1 
 b/fs/udf/inode.c                                     |    3 
 b/include/asm-alpha/cache.h                          |    1 
 b/include/asm-alpha/mmzone.h                         |    2 
 b/include/asm-alpha/tlb.h                            |    6 
 b/include/asm-arm/cache.h                            |    2 
 b/include/asm-arm/tlb.h                              |    6 
 b/include/asm-cris/cache.h                           |    2 
 b/include/asm-generic/tlb.h                          |   41 
 b/include/asm-i386/cache.h                           |    2 
 b/include/asm-i386/desc.h                            |   16 
 b/include/asm-i386/mmu.h                             |    2 
 b/include/asm-i386/mmu_context.h                     |    4 
 b/include/asm-i386/msr.h                             |    5 
 b/include/asm-i386/pci.h                             |    2 
 b/include/asm-i386/pgalloc.h                         |    4 
 b/include/asm-i386/thread_info.h                     |   12 
 b/include/asm-i386/tlb.h                             |    2 
 b/include/asm-i386/xor.h                             |   44 
 b/include/asm-ia64/acpi.h                            |    3 
 b/include/asm-ia64/agp.h                             |    3 
 b/include/asm-ia64/atomic.h                          |    4 
 b/include/asm-ia64/cache.h                           |    2 
 b/include/asm-ia64/fpu.h                             |    4 
 b/include/asm-ia64/hardirq.h                         |   12 
 b/include/asm-ia64/hw_irq.h                          |    8 
 b/include/asm-ia64/ia32.h                            |    1 
 b/include/asm-ia64/ide.h                             |   16 
 b/include/asm-ia64/io.h                              |   34 
 b/include/asm-ia64/iosapic.h                         |   29 
 b/include/asm-ia64/irq.h                             |    2 
 b/include/asm-ia64/kmap_types.h                      |   29 
 b/include/asm-ia64/mc146818rtc.h                     |   10 
 b/include/asm-ia64/mmu_context.h                     |    6 
 b/include/asm-ia64/pci.h                             |    2 
 b/include/asm-ia64/percpu.h                          |   11 
 b/include/asm-ia64/pgalloc.h                         |    4 
 b/include/asm-ia64/processor.h                       |    7 
 b/include/asm-ia64/sal.h                             |    4 
 b/include/asm-ia64/sn/alenlist.h                     |    2 
 b/include/asm-ia64/system.h                          |    6 
 b/include/asm-ia64/tlb.h                             |    2 
 b/include/asm-ia64/types.h                           |   14 
 b/include/asm-ia64/unistd.h                          |   13 
 b/include/asm-m68k/cache.h                           |    2 
 b/include/asm-m68k/motorola_pgalloc.h                |    4 
 b/include/asm-m68k/sun3_pgalloc.h                    |    4 
 b/include/asm-m68k/tlb.h                             |    2 
 b/include/asm-mips/cache.h                           |    1 
 b/include/asm-mips64/cache.h                         |    1 
 b/include/asm-mips64/elf.h                           |    2 
 b/include/asm-mips64/sn/sn0/hubio.h                  |    2 
 b/include/asm-parisc/cache.h                         |    1 
 b/include/asm-ppc/cache.h                            |    1 
 b/include/asm-ppc/elf.h                              |   17 
 b/include/asm-ppc/pgalloc.h                          |    4 
 b/include/asm-ppc/tlb.h                              |    4 
 b/include/asm-ppc64/cache.h                          |    1 
 b/include/asm-ppc64/elf.h                            |   19 
 b/include/asm-ppc64/pgalloc.h                        |    4 
 b/include/asm-ppc64/tlb.h                            |    2 
 b/include/asm-s390/cache.h                           |    1 
 b/include/asm-s390/pgalloc.h                         |    4 
 b/include/asm-s390/tlb.h                             |    2 
 b/include/asm-s390x/cache.h                          |    1 
 b/include/asm-s390x/pgalloc.h                        |    4 
 b/include/asm-s390x/tlb.h                            |    2 
 b/include/asm-sh/cache.h                             |    2 
 b/include/asm-sparc/cache.h                          |    1 
 b/include/asm-sparc/pgalloc.h                        |    4 
 b/include/asm-sparc/tlb.h                            |    2 
 b/include/asm-sparc64/cache.h                        |    1 
 b/include/asm-sparc64/head.h                         |   38 
 b/include/asm-sparc64/kmap_types.h                   |   23 
 b/include/asm-sparc64/pgalloc.h                      |    1 
 b/include/asm-sparc64/tlb.h                          |    6 
 b/include/asm-x86_64/cache.h                         |    1 
 b/include/asm-x86_64/pgalloc.h                       |    4 
 b/include/asm-x86_64/tlb.h                           |    2 
 b/include/asm-x86_64/xor.h                           |   14 
 b/include/linux/acpi.h                               |   17 
 b/include/linux/cache.h                              |    9 
 b/include/linux/cobalt-nvram.h                       |  109 
 b/include/linux/dcache.h                             |    2 
 b/include/linux/devfs_fs_kernel.h                    |    2 
 b/include/linux/efi.h                                |  284 +
 b/include/linux/gfp.h                                |    2 
 b/include/linux/highmem.h                            |    2 
 b/include/linux/ide.h                                |   35 
 b/include/linux/in.h                                 |    5 
 b/include/linux/interrupt.h                          |    4 
 b/include/linux/kernel.h                             |    6 
 b/include/linux/list.h                               |   13 
 b/include/linux/mm.h                                 |   39 
 b/include/linux/mm_inline.h                          |   40 
 b/include/linux/mmzone.h                             |   58 
 b/include/linux/net.h                                |    1 
 b/include/linux/netdevice.h                          |    1 
 b/include/linux/nvram.h                              |   22 
 b/include/linux/page-flags.h                         |    5 
 b/include/linux/pagemap.h                            |   10 
 b/include/linux/pagevec.h                            |    7 
 b/include/linux/pci.h                                |   46 
 b/include/linux/sched.h                              |    3 
 b/include/linux/sctp.h                               |  588 +++
 b/include/linux/skbuff.h                             |    5 
 b/include/linux/smp.h                                |    3 
 b/include/linux/socket.h                             |    1 
 b/include/linux/sunrpc/svcsock.h                     |    2 
 b/include/linux/swap.h                               |   52 
 b/include/linux/sysctl.h                             |   16 
 b/include/linux/tcp.h                                |    3 
 b/include/linux/usb.h                                |    8 
 b/include/linux/writeback.h                          |    9 
 b/include/net/bluetooth/bluetooth.h                  |   10 
 b/include/net/inet_common.h                          |    8 
 b/include/net/inetpeer.h                             |    5 
 b/include/net/ip.h                                   |   16 
 b/include/net/ipv6.h                                 |   10 
 b/include/net/sctp/command.h                         |  211 +
 b/include/net/sctp/constants.h                       |  450 ++
 b/include/net/sctp/sctp.h                            |  507 ++
 b/include/net/sctp/sla1.h                            |   80 
 b/include/net/sctp/sm.h                              |  418 ++
 b/include/net/sctp/structs.h                         | 1541 +++++++
 b/include/net/sctp/tsnmap.h                          |  159 
 b/include/net/sctp/ulpevent.h                        |  135 
 b/include/net/sctp/ulpqueue.h                        |   93 
 b/include/net/sctp/user.h                            |  607 +++
 b/include/net/sock.h                                 |    2 
 b/include/net/tcp.h                                  |   26 
 b/include/net/tcp_ecn.h                              |    5 
 b/include/video/sbusfb.h                             |    2 
 b/init/main.c                                        |    7 
 b/kernel/dma.c                                       |    8 
 b/kernel/exit.c                                      |   14 
 b/kernel/fork.c                                      |   23 
 b/kernel/ksyms.c                                     |    2 
 b/kernel/sched.c                                     |    9 
 b/mm/filemap.c                                       |   56 
 b/mm/msync.c                                         |    5 
 b/mm/page-writeback.c                                |   15 
 b/mm/page_alloc.c                                    |  105 
 b/mm/rmap.c                                          |    6 
 b/mm/swap.c                                          |  141 
 b/mm/swap_state.c                                    |   51 
 b/mm/vmscan.c                                        |  144 
 b/net/Config.in                                      |    3 
 b/net/Makefile                                       |    1 
 b/net/core/dev.c                                     |   13 
 b/net/core/skbuff.c                                  |   23 
 b/net/ipv4/af_inet.c                                 |    6 
 b/net/ipv4/ip_output.c                               |   20 
 b/net/ipv4/netfilter/ip_nat_core.c                   |    2 
 b/net/ipv4/netfilter/ip_tables.c                     |   11 
 b/net/ipv4/route.c                                   |    4 
 b/net/ipv4/tcp.c                                     |   14 
 b/net/ipv4/tcp_input.c                               |   21 
 b/net/ipv4/tcp_ipv4.c                                |    8 
 b/net/ipv4/tcp_minisocks.c                           |    2 
 b/net/ipv4/tcp_output.c                              |   58 
 b/net/ipv6/af_inet6.c                                |   10 
 b/net/ipv6/ipv6_syms.c                               |   14 
 b/net/ipv6/tcp_ipv6.c                                |    6 
 b/net/irda/irlmp_event.c                             |    2 
 b/net/netsyms.c                                      |   14 
 b/net/sctp/Config.help                               |   49 
 b/net/sctp/Config.in                                 |   20 
 b/net/sctp/Makefile                                  |   28 
 b/net/sctp/adler32.c                                 |  148 
 b/net/sctp/associola.c                               | 1033 +++++
 b/net/sctp/bind_addr.c                               |  529 ++
 b/net/sctp/command.c                                 |  104 
 b/net/sctp/crc32c.c                                  |  187 
 b/net/sctp/debug.c                                   |  215 +
 b/net/sctp/endpointola.c                             |  369 +
 b/net/sctp/hashdriver.c                              |  128 
 b/net/sctp/input.c                                   |  662 +++
 b/net/sctp/inqueue.c                                 |  199 +
 b/net/sctp/ipv6.c                                    |  263 +
 b/net/sctp/objcnt.c                                  |  133 
 b/net/sctp/output.c                                  |  558 ++
 b/net/sctp/outqueue.c                                | 1442 +++++++
 b/net/sctp/primitive.c                               |  202 +
 b/net/sctp/protocol.c                                |  591 +++
 b/net/sctp/sla1.c                                    |  281 +
 b/net/sctp/sm_make_chunk.c                           | 1762 +++++++++
 b/net/sctp/sm_sideeffect.c                           | 1168 ++++++
 b/net/sctp/sm_statefuns.c                            | 3697 +++++++++++++++++++
 b/net/sctp/sm_statetable.c                           | 1146 +++++
 b/net/sctp/socket.c                                  | 2702 +++++++++++++
 b/net/sctp/sysctl.c                                  |  104 
 b/net/sctp/transport.c                               |  442 ++
 b/net/sctp/tsnmap.c                                  |  383 +
 b/net/sctp/ulpevent.c                                |  840 ++++
 b/net/sctp/ulpqueue.c                                |  476 ++
 b/net/socket.c                                       |    2 
 b/net/sunrpc/sched.c                                 |    1 
 b/net/sunrpc/svcsock.c                               |   11 
 b/net/sunrpc/xprt.c                                  |   19 
 b/security/security.c                                |   28 
 b/sound/oss/ad1816.c                                 |   69 
 b/sound/oss/ad1848.c                                 |  111 
 b/sound/oss/audio.c                                  |   36 
 b/sound/oss/cmpci.c                                  |    6 
 b/sound/oss/dev_table.h                              |   13 
 b/sound/oss/dmabuf.c                                 |  157 
 b/sound/oss/es1370.c                                 |   10 
 b/sound/oss/esssolo1.c                               |    6 
 b/sound/oss/gus_card.c                               |    2 
 b/sound/oss/ite8172.c                                |   10 
 b/sound/oss/mad16.c                                  |   14 
 b/sound/oss/maestro.c                                |   14 
 b/sound/oss/maestro3.c                               |  118 
 b/sound/oss/midi_synth.c                             |    8 
 b/sound/oss/midibuf.c                                |   41 
 b/sound/oss/mpu401.c                                 |   67 
 b/sound/oss/msnd_pinnacle.c                          |   10 
 b/sound/oss/nec_vrc5477.c                            |   10 
 b/sound/oss/nm256.h                                  |    3 
 b/sound/oss/nm256_audio.c                            |   19 
 b/sound/oss/opl3sa.c                                 |   13 
 b/sound/oss/opl3sa2.c                                |   12 
 b/sound/oss/pas2_card.c                              |    2 
 b/sound/oss/pas2_midi.c                              |   26 
 b/sound/oss/pas2_pcm.c                               |   35 
 b/sound/oss/pss.c                                    |   62 
 b/sound/oss/rme96xx.c                                |    6 
 b/sound/oss/sequencer.c                              |   61 
 b/sound/oss/sonicvibes.c                             |    6 
 b/sound/oss/sound_timer.c                            |   12 
 b/sound/oss/soundcard.c                              |   13 
 b/sound/oss/sscape.c                                 |   78 
 b/sound/oss/sys_timer.c                              |   10 
 b/sound/oss/trident.c                                |    4 
 b/sound/oss/uart401.c                                |   20 
 b/sound/oss/uart6850.c                               |   19 
 b/sound/oss/v_midi.c                                 |   16 
 b/sound/oss/via82cxxx_audio.c                        |    2 
 b/sound/oss/vwsnd.c                                  |    4 
 b/sound/oss/waveartist.c                             |    7 
 b/sound/oss/wavfront.c                               |   11 
 b/sound/ppc/awacs.c                                  |  108 
 b/sound/ppc/burgundy.c                               |   24 
 b/sound/ppc/daca.c                                   |   24 
 b/sound/ppc/keywest.c                                |   10 
 b/sound/ppc/pmac.c                                   |  110 
 b/sound/ppc/tumbler.c                                |  108 
 drivers/acpi/debugger/dbdisasm.c                     |  707 ---
 include/asm-ia64/efi.h                               |  284 -
 770 files changed, 38451 insertions(+), 10579 deletions(-)

