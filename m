From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.50 released
Date: Wed, 27 Nov 2002 14:57:03 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200211272257.gARMv3w17827@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.50 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.50.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.50.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               437352           1998049
Full source                       38854280         174735360

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/networking/soundmodem.txt         |   90 
 b/CREDITS                                       |   17 
 b/Documentation/BK-usage/unbz64wrap             |    2 
 b/Documentation/DocBook/journal-api.tmpl        |    6 
 b/Documentation/DocBook/lsm.tmpl                |   23 
 b/Documentation/DocBook/mousedrivers.tmpl       |   24 
 b/Documentation/kernel-parameters.txt           |  833 +++++--
 b/Documentation/magic-number.txt                |   92 
 b/Documentation/networking/00-INDEX             |    2 
 b/Documentation/sysctl/kernel.txt               |   67 
 b/Documentation/usb/ov511.txt                   |    9 
 b/Documentation/usb/usb-serial.txt              |   43 
 b/Makefile                                      |    7 
 b/arch/alpha/kernel/systbls.S                   |    2 
 b/arch/arm/boot/compressed/ofw-shark.c          |    2 
 b/arch/arm/def-configs/shark                    |  158 +
 b/arch/arm/kernel/arthur.c                      |   19 
 b/arch/arm/kernel/calls.S                       |    2 
 b/arch/arm/kernel/ptrace.c                      |    3 
 b/arch/arm/kernel/via82c505.c                   |    6 
 b/arch/arm/mach-sa1100/cpu-sa1110.c             |    2 
 b/arch/arm/mach-sa1100/generic.h                |    2 
 b/arch/arm/mach-sa1100/sa1111-pcibuf.c          |  293 +-
 b/arch/i386/Kconfig                             |   14 
 b/arch/i386/kernel/cpu/cyrix.c                  |   88 
 b/arch/i386/kernel/cpu/mcheck/non-fatal.c       |    4 
 b/arch/i386/kernel/entry.S                      |    2 
 b/arch/i386/kernel/io_apic.c                    |   20 
 b/arch/i386/kernel/ptrace.c                     |    3 
 b/arch/i386/kernel/semaphore.c                  |   24 
 b/arch/i386/pci/direct.c                        |    1 
 b/arch/ia64/kernel/entry.S                      |    2 
 b/arch/ia64/kernel/ptrace.c                     |    3 
 b/arch/m68k/lib/checksum.c                      |    2 
 b/arch/mips64/Kconfig                           |    2 
 b/arch/ppc/kernel/entry.S                       |    2 
 b/arch/ppc/kernel/misc.S                        |    3 
 b/arch/ppc/kernel/process.c                     |   17 
 b/arch/ppc/kernel/ptrace.c                      |    3 
 b/arch/ppc64/kernel/misc.S                      |    4 
 b/arch/ppc64/kernel/ptrace.c                    |    3 
 b/arch/ppc64/kernel/ptrace32.c                  |    3 
 b/arch/ppc64/kernel/sys_ppc32.c                 |    8 
 b/arch/s390/kernel/entry.S                      |    2 
 b/arch/s390/kernel/ptrace.c                     |    3 
 b/arch/s390x/kernel/entry.S                     |    2 
 b/arch/s390x/kernel/ptrace.c                    |    4 
 b/arch/sh/kernel/hd64465_gpio.c                 |   17 
 b/arch/sparc/Kconfig                            |    6 
 b/arch/sparc/kernel/ptrace.c                    |    3 
 b/arch/sparc/kernel/signal.c                    |    2 
 b/arch/sparc/kernel/systbls.S                   |    2 
 b/arch/sparc64/Kconfig                          |    6 
 b/arch/sparc64/kernel/binfmt_elf32.c            |    2 
 b/arch/sparc64/kernel/ptrace.c                  |    3 
 b/arch/sparc64/kernel/signal.c                  |    2 
 b/arch/sparc64/kernel/signal32.c                |    2 
 b/arch/sparc64/kernel/sys_sparc32.c             |    7 
 b/arch/sparc64/kernel/systbls.S                 |    4 
 b/arch/um/kernel/ptrace.c                       |    3 
 b/arch/um/kernel/sys_call_table.c               |    2 
 b/arch/v850/Kconfig                             |    2 
 b/arch/v850/Makefile                            |    7 
 b/arch/v850/anna-rom.ld                         |    5 
 b/arch/v850/anna.ld                             |    6 
 b/arch/v850/as85ep1.ld                          |  147 +
 b/arch/v850/kernel/Makefile                     |    3 
 b/arch/v850/kernel/anna.c                       |   23 
 b/arch/v850/kernel/as85ep1.c                    |  241 ++
 b/arch/v850/kernel/bug.c                        |   73 
 b/arch/v850/kernel/entry.S                      |   76 
 b/arch/v850/kernel/fpga85e2c.c                  |    2 
 b/arch/v850/kernel/gbus_int.c                   |   15 
 b/arch/v850/kernel/head.S                       |    2 
 b/arch/v850/kernel/intv.S                       |    4 
 b/arch/v850/kernel/irq.c                        |    2 
 b/arch/v850/kernel/module.c                     |  225 +
 b/arch/v850/kernel/nb85e_intc.c                 |    2 
 b/arch/v850/kernel/nb85e_utils.c                |    6 
 b/arch/v850/kernel/process.c                    |   45 
 b/arch/v850/kernel/procfs.c                     |    2 
 b/arch/v850/kernel/rte_cb.c                     |   22 
 b/arch/v850/kernel/rte_cb_leds.c                |    8 
 b/arch/v850/kernel/rte_mb_a_pci.c               |    2 
 b/arch/v850/kernel/setup.c                      |   13 
 b/arch/v850/kernel/signal.c                     |    7 
 b/arch/v850/kernel/sim.c                        |    2 
 b/arch/v850/kernel/sim85e2c.c                   |    2 
 b/arch/v850/kernel/simcons.c                    |    2 
 b/arch/v850/kernel/v850_ksyms.c                 |    4 
 b/arch/v850/rte_ma1_cb-ksram.ld                 |    5 
 b/arch/v850/rte_ma1_cb-rom.ld                   |    7 
 b/arch/v850/rte_ma1_cb.ld                       |    9 
 b/arch/v850/sim.ld                              |    6 
 b/arch/v850/sim85e2c.ld                         |    6 
 b/arch/v850/vmlinux.lds.S                       |    4 
 b/arch/x86_64/kernel/ptrace.c                   |    3 
 b/drivers/Makefile                              |    4 
 b/drivers/acorn/char/Makefile                   |    1 
 b/drivers/acorn/scsi/acornscsi.c                |    2 
 b/drivers/acorn/scsi/cumana_2.c                 |    4 
 b/drivers/acorn/scsi/eesox.c                    |    4 
 b/drivers/acorn/scsi/fas216.c                   |    2 
 b/drivers/acorn/scsi/powertec.c                 |    4 
 b/drivers/acpi/ac.c                             |   57 
 b/drivers/acpi/button.c                         |   45 
 b/drivers/acpi/dispatcher/dsmthdat.c            |   49 
 b/drivers/acpi/events/evevent.c                 |   78 
 b/drivers/acpi/events/evrgnini.c                |    7 
 b/drivers/acpi/include/acconfig.h               |    4 
 b/drivers/acpi/include/aclocal.h                |    5 
 b/drivers/acpi/include/acpiosxf.h               |    8 
 b/drivers/acpi/namespace/nsxfobj.c              |    2 
 b/drivers/acpi/osl.c                            |   39 
 b/drivers/acpi/parser/psopcode.c                |    4 
 b/drivers/acpi/power.c                          |   63 
 b/drivers/acpi/processor.c                      |  336 +-
 b/drivers/acpi/sleep.c                          |  100 
 b/drivers/acpi/thermal.c                        |  247 --
 b/drivers/acpi/toshiba_acpi.c                   |  234 +
 b/drivers/acpi/utilities/utcopy.c               |   64 
 b/drivers/acpi/utilities/utmisc.c               |   17 
 b/drivers/base/base.h                           |    2 
 b/drivers/base/hotplug.c                        |    6 
 b/drivers/block/DAC960.c                        | 2851 ++++++++++++------------
 b/drivers/block/DAC960.h                        |  285 +-
 b/drivers/block/ll_rw_blk.c                     |   27 
 b/drivers/block/nbd.c                           |   69 
 b/drivers/block/scsi_ioctl.c                    |   12 
 b/drivers/char/Makefile                         |    2 
 b/drivers/char/agp/agp.h                        |    9 
 b/drivers/char/cyclades.c                       |    4 
 b/drivers/char/ftape/lowlevel/ftape-init.h      |   11 
 b/drivers/char/ftape/zftape/zftape-ctl.c        |   44 
 b/drivers/char/ftape/zftape/zftape-init.c       |   25 
 b/drivers/char/ftape/zftape/zftape-init.h       |    7 
 b/drivers/char/ip2main.c                        |    4 
 b/drivers/char/keyboard.c                       |    4 
 b/drivers/char/mem.c                            |    3 
 b/drivers/char/rio/riocmd.c                     |    4 
 b/drivers/char/rocket.c                         |   12 
 b/drivers/char/sx.c                             |   52 
 b/drivers/char/sx.h                             |    2 
 b/drivers/char/sxboards.h                       |   24 
 b/drivers/char/synclink.c                       |    8 
 b/drivers/char/tpqic02.c                        |   12 
 b/drivers/char/watchdog/Makefile                |   32 
 b/drivers/char/watchdog/i810-tco.h              |   42 
 b/drivers/char/watchdog/sbc60xxwdt.c            |    7 
 b/drivers/char/watchdog/scx200_wdt.c            |    7 
 b/drivers/char/watchdog/wd501p.h                |   91 
 b/drivers/hotplug/cpqphp_nvram.c                |   12 
 b/drivers/i2c/i2c-dev.c                         |    6 
 b/drivers/ide/Kconfig                           |   26 
 b/drivers/ide/Makefile                          |    4 
 b/drivers/ide/ide-cd.c                          |    2 
 b/drivers/ide/ide-disk.c                        |   71 
 b/drivers/ide/ide-dma.c                         |  211 +
 b/drivers/ide/ide-floppy.c                      |   97 
 b/drivers/ide/ide-io.c                          | 1320 +++++++++++
 b/drivers/ide/ide-iops.c                        |   25 
 b/drivers/ide/ide-lib.c                         |   36 
 b/drivers/ide/ide-probe.c                       |   39 
 b/drivers/ide/ide-tape.c                        |   13 
 b/drivers/ide/ide-taskfile.c                    |   10 
 b/drivers/ide/ide-tcq.c                         |   32 
 b/drivers/ide/ide.c                             | 1328 +----------
 b/drivers/ide/legacy/ide-cs.c                   |    2 
 b/drivers/ide/pci/Makefile                      |    2 
 b/drivers/ide/pci/aec62xx.c                     |    6 
 b/drivers/ide/pci/aec62xx.h                     |    4 
 b/drivers/ide/pci/alim15x3.c                    |   12 
 b/drivers/ide/pci/amd74xx.c                     |   14 
 b/drivers/ide/pci/cmd640.c                      |    4 
 b/drivers/ide/pci/cmd64x.c                      |   20 
 b/drivers/ide/pci/cs5520.c                      |  323 ++
 b/drivers/ide/pci/cs5520.h                      |   66 
 b/drivers/ide/pci/cs5530.c                      |    5 
 b/drivers/ide/pci/cy82c693.c                    |    5 
 b/drivers/ide/pci/generic.c                     |    2 
 b/drivers/ide/pci/hpt34x.c                      |    5 
 b/drivers/ide/pci/hpt366.c                      |   10 
 b/drivers/ide/pci/it8172.c                      |    6 
 b/drivers/ide/pci/ns87415.c                     |    4 
 b/drivers/ide/pci/nvidia.c                      |   12 
 b/drivers/ide/pci/opti621.c                     |    3 
 b/drivers/ide/pci/pdc202xx_new.c                |   30 
 b/drivers/ide/pci/pdc202xx_new.h                |   35 
 b/drivers/ide/pci/pdc202xx_old.c                |   30 
 b/drivers/ide/pci/pdcadma.c                     |    3 
 b/drivers/ide/pci/piix.c                        |   11 
 b/drivers/ide/pci/sc1200.c                      |  593 ++++
 b/drivers/ide/pci/sc1200.h                      |   54 
 b/drivers/ide/pci/serverworks.c                 |   24 
 b/drivers/ide/pci/siimage.c                     |    8 
 b/drivers/ide/pci/siimage.h                     |   12 
 b/drivers/ide/pci/sis5513.c                     |    7 
 b/drivers/ide/pci/trm290.c                      |    4 
 b/drivers/ide/pci/via82cxxx.c                   |    6 
 b/drivers/ide/setup-pci.c                       |  257 +-
 b/drivers/input/gameport/fm801-gp.c             |    2 
 b/drivers/input/gameport/ns558.c                |    2 
 b/drivers/input/gameport/vortex.c               |    4 
 b/drivers/isdn/act2000/module.c                 |   34 
 b/drivers/isdn/capi/capi.c                      |    6 
 b/drivers/isdn/capi/capidrv.c                   |   39 
 b/drivers/isdn/eicon/divas.h                    |    3 
 b/drivers/isdn/eicon/eicon_mod.c                |   34 
 b/drivers/isdn/eicon/lincfg.c                   |  409 +--
 b/drivers/isdn/eicon/linio.c                    |   22 
 b/drivers/isdn/eicon/uxio.h                     |    3 
 b/drivers/isdn/hardware/eicon/i4lididrv.c       |   34 
 b/drivers/isdn/hardware/eicon/mi_pc.h           |    2 
 b/drivers/isdn/hisax/amd7930.c                  |    9 
 b/drivers/isdn/hisax/amd7930_fn.c               |   28 
 b/drivers/isdn/hisax/asuscom.c                  |    8 
 b/drivers/isdn/hisax/avm_a1.c                   |    9 
 b/drivers/isdn/hisax/avm_a1p.c                  |   11 
 b/drivers/isdn/hisax/avm_pci.c                  |  157 -
 b/drivers/isdn/hisax/bkm_a4t.c                  |    8 
 b/drivers/isdn/hisax/bkm_a8.c                   |   11 
 b/drivers/isdn/hisax/callc.c                    |   76 
 b/drivers/isdn/hisax/config.c                   |   58 
 b/drivers/isdn/hisax/diva.c                     |  125 -
 b/drivers/isdn/hisax/elsa.c                     |   12 
 b/drivers/isdn/hisax/elsa_ser.c                 |   34 
 b/drivers/isdn/hisax/enternow_pci.c             |   29 
 b/drivers/isdn/hisax/gazel.c                    |    8 
 b/drivers/isdn/hisax/hfc_2bds0.c                |  302 --
 b/drivers/isdn/hisax/hfc_2bs0.c                 |   69 
 b/drivers/isdn/hisax/hfc_pci.c                  |  335 --
 b/drivers/isdn/hisax/hfc_sx.c                   |  349 --
 b/drivers/isdn/hisax/hisax.h                    |   18 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c           |    3 
 b/drivers/isdn/hisax/hisax_hfcpci.c             |    3 
 b/drivers/isdn/hisax/hisax_hscx.c               |    3 
 b/drivers/isdn/hisax/hscx.c                     |   87 
 b/drivers/isdn/hisax/hscx.h                     |    5 
 b/drivers/isdn/hisax/hscx_irq.c                 |  101 
 b/drivers/isdn/hisax/icc.c                      |  190 -
 b/drivers/isdn/hisax/icc.h                      |    1 
 b/drivers/isdn/hisax/ipacx.c                    |  291 --
 b/drivers/isdn/hisax/ipacx.h                    |    1 
 b/drivers/isdn/hisax/isac.c                     |  194 -
 b/drivers/isdn/hisax/isac.h                     |    1 
 b/drivers/isdn/hisax/isar.c                     |  108 
 b/drivers/isdn/hisax/isdnl1.c                   |   12 
 b/drivers/isdn/hisax/isdnl1.h                   |  382 +++
 b/drivers/isdn/hisax/isdnl2.c                   |   14 
 b/drivers/isdn/hisax/isurf.c                    |   14 
 b/drivers/isdn/hisax/ix1_micro.c                |    8 
 b/drivers/isdn/hisax/jade.c                     |   69 
 b/drivers/isdn/hisax/jade.h                     |    1 
 b/drivers/isdn/hisax/jade_irq.c                 |   93 
 b/drivers/isdn/hisax/mic.c                      |    9 
 b/drivers/isdn/hisax/netjet.c                   |   38 
 b/drivers/isdn/hisax/niccy.c                    |   10 
 b/drivers/isdn/hisax/nj_s.c                     |   34 
 b/drivers/isdn/hisax/nj_u.c                     |   32 
 b/drivers/isdn/hisax/s0box.c                    |    8 
 b/drivers/isdn/hisax/saphir.c                   |    8 
 b/drivers/isdn/hisax/sedlbauer.c                |   14 
 b/drivers/isdn/hisax/sportster.c                |    9 
 b/drivers/isdn/hisax/st5481_b.c                 |    7 
 b/drivers/isdn/hisax/teleint.c                  |   10 
 b/drivers/isdn/hisax/teles0.c                   |    8 
 b/drivers/isdn/hisax/teles3.c                   |    8 
 b/drivers/isdn/hisax/telespci.c                 |    8 
 b/drivers/isdn/hisax/w6692.c                    |  268 --
 b/drivers/isdn/i4l/isdn_common.c                |  456 +--
 b/drivers/isdn/icn/icn.c                        |   33 
 b/drivers/isdn/isdnloop/isdnloop.c              |   33 
 b/drivers/isdn/pcbit/capi.h                     |    3 
 b/drivers/isdn/pcbit/drv.c                      |   22 
 b/drivers/isdn/sc/command.c                     |  128 -
 b/drivers/isdn/sc/init.c                        |    2 
 b/drivers/isdn/tpam/tpam_commands.c             |   33 
 b/drivers/isdn/tpam/tpam_main.c                 |    2 
 b/drivers/macintosh/via-pmu.c                   |    2 
 b/drivers/md/dm-ioctl.c                         |   10 
 b/drivers/md/dm-table.c                         |   26 
 b/drivers/md/dm.c                               |   61 
 b/drivers/media/dvb/av7110/Makefile             |    2 
 b/drivers/media/dvb/av7110/av7110.c             |  290 +-
 b/drivers/media/dvb/av7110/av7110.h             |   18 
 b/drivers/media/dvb/av7110/saa7146.c            |    2 
 b/drivers/media/dvb/av7110/saa7146_core.c       |   62 
 b/drivers/media/dvb/av7110/saa7146_core.h       |   25 
 b/drivers/media/dvb/av7110/saa7146_v4l.c        |    1 
 b/drivers/media/dvb/dvb-core/dmxdev.c           |  237 -
 b/drivers/media/dvb/dvb-core/dmxdev.h           |   10 
 b/drivers/media/dvb/dvb-core/dvb_demux.c        |  154 -
 b/drivers/media/dvb/dvb-core/dvb_demux.h        |   42 
 b/drivers/media/dvb/dvb-core/dvb_filter.c       | 1045 ++++----
 b/drivers/media/dvb/dvb-core/dvb_filter.h       |   41 
 b/drivers/media/dvb/dvb-core/dvb_frontend.c     |   68 
 b/drivers/media/dvb/dvb-core/dvb_frontend.h     |    8 
 b/drivers/media/dvb/dvb-core/dvb_i2c.c          |    6 
 b/drivers/media/dvb/dvb-core/dvb_i2c.h          |    6 
 b/drivers/media/dvb/dvb-core/dvb_ksyms.c        |   26 
 b/drivers/media/dvb/dvb-core/dvb_net.c          |   27 
 b/drivers/media/dvb/dvb-core/dvb_net.h          |    4 
 b/drivers/media/dvb/dvb-core/dvbdev.c           |  133 -
 b/drivers/media/dvb/dvb-core/dvbdev.h           |   43 
 b/drivers/media/dvb/frontends/Kconfig           |   24 
 b/drivers/media/dvb/frontends/Makefile          |    2 
 b/drivers/media/dvb/frontends/alps_bsru6.c      |  117 
 b/drivers/media/dvb/frontends/alps_bsrv2.c      |    2 
 b/drivers/media/dvb/frontends/alps_tdlb7.c      |  437 +++
 b/drivers/media/dvb/frontends/alps_tdmb7.c      |  468 +++
 b/drivers/media/dvb/frontends/ves1820.c         |   13 
 b/drivers/media/radio/radio-sf16fmi.c           |   17 
 b/drivers/media/video/bttv-cards.c              |    2 
 b/drivers/media/video/bw-qcam.c                 |   12 
 b/drivers/media/video/pms.c                     |    4 
 b/drivers/media/video/saa7111.c                 |  192 -
 b/drivers/media/video/saa7185.c                 |  174 -
 b/drivers/media/video/stradis.c                 |    3 
 b/drivers/media/video/w9966.c                   |    2 
 b/drivers/media/video/zr36067.c                 |    4 
 b/drivers/message/fusion/mptbase.c              |   67 
 b/drivers/message/fusion/mptbase.h              |   12 
 b/drivers/message/fusion/mptctl.c               |  804 ++----
 b/drivers/message/fusion/mptctl.h               |  166 -
 b/drivers/message/fusion/mptlan.c               |    2 
 b/drivers/message/fusion/mptlan.h               |    1 
 b/drivers/message/fusion/mptscsih.c             |  318 +-
 b/drivers/message/fusion/mptscsih.h             |   27 
 b/drivers/message/i2o/i2o_block.c               |    4 
 b/drivers/message/i2o/i2o_core.c                |    3 
 b/drivers/message/i2o/i2o_scsi.c                |   75 
 b/drivers/net/appletalk/ltpc.c                  |   29 
 b/drivers/net/arcnet/com20020-pci.c             |    2 
 b/drivers/net/de600.c                           |    5 
 b/drivers/net/depca.c                           |    2 
 b/drivers/net/ewrk3.c                           |   43 
 b/drivers/net/fc/iph5526.c                      |    4 
 b/drivers/net/hamradio/Kconfig                  |  114 
 b/drivers/net/hamradio/Makefile                 |    1 
 b/drivers/net/hamradio/baycom_epp.c             |   24 
 b/drivers/net/hamradio/dmascc.c                 |   67 
 b/drivers/net/irda/ali-ircc.c                   |    4 
 b/drivers/net/irda/vlsi_ir.c                    |   20 
 b/drivers/net/macsonic.c                        |    1 
 b/drivers/net/myri_sbus.c                       |    2 
 b/drivers/net/pcmcia/aironet4500_cs.c           |    5 
 b/drivers/net/pcmcia/pcnet_cs.c                 |    3 
 b/drivers/net/pcmcia/smc91c92_cs.c              |    1 
 b/drivers/net/pppoe.c                           |    6 
 b/drivers/net/sk98lin/h/skgehw.h                |    2 
 b/drivers/net/skfp/h/skfbi.h                    |    4 
 b/drivers/net/slip.c                            |   26 
 b/drivers/net/sunbmac.c                         |    1 
 b/drivers/net/tokenring/3c359.c                 |    2 
 b/drivers/net/tokenring/madgemc.c               |    6 
 b/drivers/net/tokenring/olympic.c               |    6 
 b/drivers/net/wan/cosa.c                        |   15 
 b/drivers/net/wan/hostess_sv11.c                |   16 
 b/drivers/net/wan/pc300_drv.c                   |    6 
 b/drivers/net/wan/sbni.c                        |    9 
 b/drivers/net/wan/sdla_fr.c                     |   11 
 b/drivers/net/wan/sealevel.c                    |   11 
 b/drivers/net/wireless/airo_cs.c                |    5 
 b/drivers/oprofile/cpu_buffer.c                 |    1 
 b/drivers/parport/ChangeLog                     |   39 
 b/drivers/parport/parport_pc.c                  |    3 
 b/drivers/parport/parport_serial.c              |   56 
 b/drivers/pci/pci.c                             |    1 
 b/drivers/pci/pci.ids                           |   16 
 b/drivers/pci/quirks.c                          |   90 
 b/drivers/pcmcia/cardbus.c                      |    3 
 b/drivers/pcmcia/sa1100_assabet.c               |    3 
 b/drivers/pcmcia/sa1100_badge4.c                |   54 
 b/drivers/pcmcia/sa1111_generic.c               |    2 
 b/drivers/pcmcia/tcic.c                         |   13 
 b/drivers/pnp/core.c                            |    2 
 b/drivers/pnp/interface.c                       |    1 
 b/drivers/pnp/isapnp/core.c                     |    2 
 b/drivers/pnp/system.c                          |    2 
 b/drivers/sbus/char/bpp.c                       |    2 
 b/drivers/scsi/3w-xxxx.c                        |    1 
 b/drivers/scsi/53c700.c                         |   16 
 b/drivers/scsi/BusLogic.c                       |    5 
 b/drivers/scsi/BusLogic.h                       |    4 
 b/drivers/scsi/NCR53C9x.c                       |   10 
 b/drivers/scsi/NCR53c406a.c                     |    1 
 b/drivers/scsi/aacraid/linit.c                  |    8 
 b/drivers/scsi/advansys.c                       |   14 
 b/drivers/scsi/advansys.h                       |    4 
 b/drivers/scsi/aha152x.h                        |    1 
 b/drivers/scsi/aic7xxx/aic7770.c                |    8 
 b/drivers/scsi/aic7xxx/aic7xxx_linux.c          |    4 
 b/drivers/scsi/aic7xxx/aic7xxx_linux_host.h     |    2 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.h            |    1 
 b/drivers/scsi/aic7xxx_old.c                    |  219 -
 b/drivers/scsi/aic7xxx_old/aic7xxx.h            |   10 
 b/drivers/scsi/aic7xxx_old/aic7xxx_proc.c       |    2 
 b/drivers/scsi/cpqfcTSinit.c                    |    2 
 b/drivers/scsi/cpqfcTSworker.c                  |    1 
 b/drivers/scsi/dmx3191d.c                       |    1 
 b/drivers/scsi/dpt_i2o.c                        |   21 
 b/drivers/scsi/dpti.h                           |    4 
 b/drivers/scsi/dtc.c                            |    7 
 b/drivers/scsi/eata.c                           |   15 
 b/drivers/scsi/eata.h                           |    4 
 b/drivers/scsi/eata_dma_proc.c                  |    4 
 b/drivers/scsi/eata_pio.c                       |    5 
 b/drivers/scsi/eata_pio_proc.c                  |    4 
 b/drivers/scsi/esp.c                            |   49 
 b/drivers/scsi/fcal.c                           |    8 
 b/drivers/scsi/fcal.h                           |    4 
 b/drivers/scsi/g_NCR5380.c                      |    2 
 b/drivers/scsi/gdth.c                           |    4 
 b/drivers/scsi/gdth_proc.c                      |    4 
 b/drivers/scsi/hosts.c                          |  120 -
 b/drivers/scsi/hosts.h                          |  108 
 b/drivers/scsi/i60uscsi.c                       |   24 
 b/drivers/scsi/in2000.c                         |    4 
 b/drivers/scsi/ini9100u.h                       |    1 
 b/drivers/scsi/inia100.c                        |   69 
 b/drivers/scsi/inia100.h                        |   19 
 b/drivers/scsi/ips.c                            |   22 
 b/drivers/scsi/ips.h                            |    4 
 b/drivers/scsi/megaraid.h                       |    2 
 b/drivers/scsi/ncr53c8xx.c                      |    2 
 b/drivers/scsi/ncr53c8xx.h                      |    4 
 b/drivers/scsi/pas16.c                          |    6 
 b/drivers/scsi/pcmcia/aha152x_stub.c            |    2 
 b/drivers/scsi/pcmcia/fdomain_stub.c            |    2 
 b/drivers/scsi/pcmcia/nsp_cs.c                  |    2 
 b/drivers/scsi/pcmcia/qlogic_stub.c             |    2 
 b/drivers/scsi/pluto.c                          |    2 
 b/drivers/scsi/pluto.h                          |    4 
 b/drivers/scsi/qla1280.c                        |    6 
 b/drivers/scsi/qla1280.h                        |    4 
 b/drivers/scsi/scsi.c                           |  329 +-
 b/drivers/scsi/scsi.h                           |   40 
 b/drivers/scsi/scsi_debug.c                     |    8 
 b/drivers/scsi/scsi_debug.h                     |    8 
 b/drivers/scsi/scsi_error.c                     |   15 
 b/drivers/scsi/scsi_lib.c                       |  121 -
 b/drivers/scsi/scsi_proc.c                      |   82 
 b/drivers/scsi/scsi_scan.c                      |  307 +-
 b/drivers/scsi/scsi_syms.c                      |    2 
 b/drivers/scsi/sg.c                             |    4 
 b/drivers/scsi/st.c                             |   64 
 b/drivers/scsi/sym53c8xx.c                      |    2 
 b/drivers/scsi/sym53c8xx.h                      |    4 
 b/drivers/scsi/sym53c8xx_2/sym53c8xx.h          |    4 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c           |    2 
 b/drivers/scsi/t128.c                           |   12 
 b/drivers/scsi/u14-34f.c                        |    2 
 b/drivers/scsi/u14-34f.h                        |    4 
 b/drivers/scsi/ultrastor.c                      |    2 
 b/drivers/scsi/wd7000.c                         |   26 
 b/drivers/serial/8250_acorn.c                   |    6 
 b/drivers/serial/Kconfig                        |    2 
 b/drivers/serial/nb85e_uart.c                   |    6 
 b/drivers/usb/core/Kconfig                      |   12 
 b/drivers/usb/core/devio.c                      |   67 
 b/drivers/usb/host/ohci-mem.c                   |  130 -
 b/drivers/usb/host/ohci.h                       |   21 
 b/drivers/usb/media/Kconfig                     |   27 
 b/drivers/usb/media/ov511.c                     |  227 +
 b/drivers/usb/media/ov511.h                     |    4 
 b/drivers/usb/media/pwc-ctrl.c                  |   28 
 b/drivers/usb/media/pwc-if.c                    |  307 +-
 b/drivers/usb/media/pwc-misc.c                  |    2 
 b/drivers/usb/media/pwc-uncompress.c            |   26 
 b/drivers/usb/media/pwc-uncompress.h            |    2 
 b/drivers/usb/media/pwc.h                       |    9 
 b/drivers/usb/media/vicam.c                     |  303 +-
 b/drivers/usb/misc/tiglusb.c                    |   11 
 b/drivers/usb/serial/Kconfig                    |    5 
 b/drivers/usb/serial/Makefile                   |    5 
 b/drivers/usb/serial/ezusb.c                    |   67 
 b/drivers/usb/serial/generic.c                  |  304 ++
 b/drivers/usb/serial/ipaq.c                     |   23 
 b/drivers/usb/serial/keyspan.c                  |    2 
 b/drivers/usb/serial/usb-serial.c               |  357 ---
 b/drivers/usb/serial/usb-serial.h               |   28 
 b/drivers/usb/serial/visor.c                    |    2 
 b/drivers/usb/serial/visor.h                    |    1 
 b/drivers/usb/serial/whiteheat.c                |  469 +++
 b/drivers/video/68328fb.c                       |  986 ++++++++
 b/drivers/video/fbcon.c                         |    5 
 b/drivers/video/vga16fb.c                       |  185 -
 b/fs/attr.c                                     |    5 
 b/fs/binfmt_elf.c                               |   14 
 b/fs/block_dev.c                                |    2 
 b/fs/dquot.c                                    |    4 
 b/fs/exec.c                                     |   16 
 b/fs/fcntl.c                                    |   11 
 b/fs/file_table.c                               |   10 
 b/fs/hpfs/hpfs_fn.h                             |   36 
 b/fs/inode.c                                    |    6 
 b/fs/ioctl.c                                    |    3 
 b/fs/locks.c                                    |   13 
 b/fs/namei.c                                    |   58 
 b/fs/namespace.c                                |   23 
 b/fs/nfsd/export.c                              |    1 
 b/fs/open.c                                     |    3 
 b/fs/partitions/ldm.c                           |   16 
 b/fs/proc/array.c                               |   26 
 b/fs/proc/base.c                                |   14 
 b/fs/proc/inode.c                               |    6 
 b/fs/proc/proc_misc.c                           |    2 
 b/fs/qnx4/inode.c                               |    4 
 b/fs/quota.c                                    |    2 
 b/fs/read_write.c                               |    6 
 b/fs/readdir.c                                  |    4 
 b/fs/stat.c                                     |    6 
 b/fs/super.c                                    |    6 
 b/fs/xattr.c                                    |   14 
 b/include/asm-alpha/processor.h                 |    1 
 b/include/asm-alpha/unistd.h                    |    2 
 b/include/asm-arm/arch-shark/ide.h              |    2 
 b/include/asm-arm/arch-shark/irqs.h             |    1 
 b/include/asm-arm/arch-shark/memory.h           |    2 
 b/include/asm-arm/arch-shark/timex.h            |    2 
 b/include/asm-arm/proc-armv/elf.h               |    2 
 b/include/asm-arm/suspend.h                     |    2 
 b/include/asm-arm/unistd.h                      |    2 
 b/include/asm-cris/unistd.h                     |    2 
 b/include/asm-i386/io_apic.h                    |    7 
 b/include/asm-i386/pgtable.h                    |    2 
 b/include/asm-i386/processor.h                  |    4 
 b/include/asm-i386/string.h                     |    7 
 b/include/asm-i386/system.h                     |    7 
 b/include/asm-i386/unistd.h                     |    2 
 b/include/asm-ia64/processor.h                  |    1 
 b/include/asm-ia64/unistd.h                     |    2 
 b/include/asm-ppc/unistd.h                      |    2 
 b/include/asm-ppc64/unistd.h                    |    2 
 b/include/asm-s390/unistd.h                     |    4 
 b/include/asm-s390x/unistd.h                    |    4 
 b/include/asm-sh/processor.h                    |    1 
 b/include/asm-sparc/elf.h                       |    5 
 b/include/asm-sparc/processor.h                 |    1 
 b/include/asm-sparc/system.h                    |    9 
 b/include/asm-sparc/unistd.h                    |    2 
 b/include/asm-sparc64/elf.h                     |    5 
 b/include/asm-sparc64/parport.h                 |    2 
 b/include/asm-sparc64/processor.h               |    1 
 b/include/asm-sparc64/unistd.h                  |    2 
 b/include/asm-v850/anna.h                       |   16 
 b/include/asm-v850/as85ep1.h                    |  160 +
 b/include/asm-v850/asm.h                        |    7 
 b/include/asm-v850/clinkage.h                   |    1 
 b/include/asm-v850/elf.h                        |    3 
 b/include/asm-v850/fpga85e2c.h                  |    7 
 b/include/asm-v850/gbus_int.h                   |    2 
 b/include/asm-v850/hardirq.h                    |    1 
 b/include/asm-v850/irq.h                        |   11 
 b/include/asm-v850/machdep.h                    |    5 
 b/include/asm-v850/module.h                     |   28 
 b/include/asm-v850/nb85e_uart.h                 |    4 
 b/include/asm-v850/percpu.h                     |    8 
 b/include/asm-v850/processor.h                  |    6 
 b/include/asm-v850/sim.h                        |    5 
 b/include/asm-v850/sim85e2c.h                   |    7 
 b/include/asm-v850/stat.h                       |    6 
 b/include/asm-v850/unistd.h                     |   45 
 b/include/asm-x86_64/unistd.h                   |    3 
 b/include/linux/dvb/ca.h                        |   14 
 b/include/linux/dvb/osd.h                       |    3 
 b/include/linux/ide.h                           |   23 
 b/include/linux/isdnif.h                        |   11 
 b/include/linux/kernel.h                        |    2 
 b/include/linux/kernel_stat.h                   |   13 
 b/include/linux/page-flags.h                    |    3 
 b/include/linux/pci_ids.h                       |   27 
 b/include/linux/profile.h                       |    1 
 b/include/linux/sched.h                         |   11 
 b/include/linux/security.h                      | 1050 ++++++++
 b/include/linux/serial_core.h                   |    4 
 b/include/linux/serio.h                         |    1 
 b/include/linux/swap.h                          |    1 
 b/include/linux/usb.h                           |   11 
 b/include/net/irda/vlsi_ir.h                    |   20 
 b/init/do_mounts.c                              |    6 
 b/ipc/msg.c                                     |    7 
 b/ipc/sem.c                                     |    7 
 b/ipc/shm.c                                     |    7 
 b/ipc/util.c                                    |    2 
 b/kernel/acct.c                                 |    4 
 b/kernel/capability.c                           |   11 
 b/kernel/exit.c                                 |   12 
 b/kernel/fork.c                                 |   16 
 b/kernel/kmod.c                                 |    3 
 b/kernel/ksyms.c                                |    2 
 b/kernel/profile.c                              |    8 
 b/kernel/ptrace.c                               |    4 
 b/kernel/sched.c                                |   17 
 b/kernel/signal.c                               |    4 
 b/kernel/sys.c                                  |   52 
 b/kernel/timer.c                                |    2 
 b/kernel/uid16.c                                |    3 
 b/mm/filemap.c                                  |   17 
 b/mm/mmap.c                                     |    3 
 b/mm/mprotect.c                                 |    3 
 b/mm/page-writeback.c                           |    4 
 b/mm/swapfile.c                                 |   39 
 b/mm/vmscan.c                                   |   14 
 b/net/atm/common.c                              |    2 
 b/net/atm/proc.c                                |    7 
 b/net/core/scm.c                                |    3 
 b/net/decnet/af_decnet.c                        |    2 
 b/net/unix/af_unix.c                            |    1 
 b/net/wanrouter/wanmain.c                       |    8 
 b/scripts/lxdialog/util.c                       |    2 
 b/security/Kconfig                              |   15 
 b/security/Makefile                             |   10 
 b/security/capability.c                         |  323 +-
 b/security/dummy.c                              |    7 
 b/security/security.c                           |   18 
 b/sound/oss/Kconfig                             |   78 
 b/sound/oss/Makefile                            |    2 
 b/sound/oss/cmpci.c                             |    4 
 b/sound/oss/cs4232.c                            |    3 
 b/sound/oss/es1370.c                            |    6 
 b/sound/oss/es1371.c                            |    7 
 b/sound/oss/esssolo1.c                          |    4 
 b/sound/oss/i810_audio.c                        |   39 
 b/sound/oss/maestro.c                           |    4 
 b/sound/oss/maestro3.c                          |    4 
 b/sound/oss/mpu401.c                            |   70 
 b/sound/oss/nm256_audio.c                       |    2 
 b/sound/oss/pss.c                               |    2 
 b/sound/oss/sb_audio.c                          |    4 
 b/sound/oss/sb_card.c                           |    2 
 b/sound/oss/sonicvibes.c                        |    2 
 b/sound/oss/vidc_fill.S                         |    1 
 b/sound/oss/ymfpci.c                            |    2 
 b/sound/pci/cs4281.c                            |    4 
 b/sound/pci/cs46xx/cs46xx_lib.c                 |    5 
 drivers/acorn/scsi/arxescsi.h                   |   80 
 drivers/char/i810-tco.h                         |   42 
 drivers/char/wd501p.h                           |   91 
 drivers/net/hamradio/soundmodem/Makefile        |   42 
 drivers/net/hamradio/soundmodem/gentbl.c        |  689 -----
 drivers/net/hamradio/soundmodem/sm.c            |  759 ------
 drivers/net/hamradio/soundmodem/sm.h            |  383 ---
 drivers/net/hamradio/soundmodem/sm_afsk1200.c   |  272 --
 drivers/net/hamradio/soundmodem/sm_afsk2400_7.c |  296 --
 drivers/net/hamradio/soundmodem/sm_afsk2400_8.c |  296 --
 drivers/net/hamradio/soundmodem/sm_afsk2666.c   |  356 --
 drivers/net/hamradio/soundmodem/sm_fsk9600.c    |  391 ---
 drivers/net/hamradio/soundmodem/sm_hapn4800.c   |  560 ----
 drivers/net/hamradio/soundmodem/sm_psk4800.c    |  418 ---
 drivers/net/hamradio/soundmodem/sm_sbc.c        |  942 -------
 drivers/net/hamradio/soundmodem/sm_wss.c        |  968 --------
 drivers/net/hamradio/soundmodem/smdma.h         |  217 -
 include/asm-i386/string-486.h                   |  617 -----
 include/linux/soundmodem.h                      |   90 
 655 files changed, 18241 insertions(+), 21485 deletions(-)

