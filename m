From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.31 released
Date: Sat, 17 Aug 2002 13:49:25 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200208172049.g7HKnPW17737@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.31 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.31.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.31.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               578503           2443385
Full source                       34925142         155688960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/alpha/kernel/irq_smp.c                |  250 --
 b/CREDITS                                  |   10 
 b/Documentation/filesystems/driverfs.txt   |  365 ++-
 b/Documentation/filesystems/jfs.txt        |    7 
 b/Documentation/filesystems/ntfs.txt       |   13 
 b/Documentation/networking/e1000.txt       |   26 
 b/Documentation/usb/auerswald.txt          |    2 
 b/MAINTAINERS                              |   16 
 b/Makefile                                 |   12 
 b/arch/alpha/Config.help                   |    6 
 b/arch/alpha/boot/Makefile                 |    1 
 b/arch/alpha/config.in                     |    7 
 b/arch/alpha/kernel/Makefile               |    2 
 b/arch/alpha/kernel/alpha_ksyms.c          |    8 
 b/arch/alpha/kernel/core_cia.c             |   39 
 b/arch/alpha/kernel/entry.S                |    5 
 b/arch/alpha/kernel/irq.c                  |   65 
 b/arch/alpha/kernel/irq_alpha.c            |    5 
 b/arch/alpha/kernel/osf_sys.c              |   73 
 b/arch/alpha/kernel/pci.c                  |    8 
 b/arch/alpha/kernel/setup.c                |    2 
 b/arch/alpha/kernel/signal.c               |    1 
 b/arch/alpha/kernel/smp.c                  |  121 -
 b/arch/alpha/kernel/traps.c                |    4 
 b/arch/alpha/lib/ev6-strncpy_from_user.S   |    2 
 b/arch/alpha/lib/ev6-stxcpy.S              |    2 
 b/arch/alpha/lib/ev6-stxncpy.S             |    2 
 b/arch/alpha/lib/ev67-strchr.S             |    2 
 b/arch/alpha/lib/ev67-strlen_user.S        |    2 
 b/arch/alpha/lib/ev67-strrchr.S            |    2 
 b/arch/alpha/lib/strchr.S                  |    2 
 b/arch/alpha/lib/strlen_user.S             |    2 
 b/arch/alpha/lib/strncpy_from_user.S       |    2 
 b/arch/alpha/lib/strrchr.S                 |    2 
 b/arch/alpha/lib/stxcpy.S                  |    2 
 b/arch/alpha/lib/stxncpy.S                 |    2 
 b/arch/alpha/vmlinux.lds.in                |    5 
 b/arch/arm/Makefile                        |    4 
 b/arch/arm/boot/Makefile                   |    4 
 b/arch/arm/config.in                       |   23 
 b/arch/arm/def-configs/lubbock             |  881 ++++++++
 b/arch/arm/kernel/debug.S                  |    4 
 b/arch/arm/kernel/dma-isa.c                |    8 
 b/arch/arm/kernel/ecard.c                  |    8 
 b/arch/arm/kernel/entry-armo.S             |    8 
 b/arch/arm/kernel/entry-armv.S             |    2 
 b/arch/arm/kernel/fiq.c                    |    4 
 b/arch/arm/kernel/irq.c                    |   12 
 b/arch/arm/kernel/setup.c                  |    8 
 b/arch/arm/kernel/time.c                   |    2 
 b/arch/arm/mach-anakin/irq.c               |    6 
 b/arch/arm/mach-arc/dma.c                  |   32 
 b/arch/arm/mach-clps711x/irq.c             |   12 
 b/arch/arm/mach-ebsa110/core.c             |    6 
 b/arch/arm/mach-epxa10db/irq.c             |   12 
 b/arch/arm/mach-footbridge/cats-pci.c      |   14 
 b/arch/arm/mach-footbridge/dma.c           |    8 
 b/arch/arm/mach-footbridge/ebsa285-pci.c   |   14 
 b/arch/arm/mach-footbridge/irq.c           |    6 
 b/arch/arm/mach-footbridge/isa-irq.c       |   12 
 b/arch/arm/mach-footbridge/netwinder-pci.c |   14 
 b/arch/arm/mach-footbridge/personal-pci.c  |   12 
 b/arch/arm/mach-ftvpci/pci.c               |    6 
 b/arch/arm/mach-integrator/arch.c          |   16 
 b/arch/arm/mach-integrator/irq.c           |    6 
 b/arch/arm/mach-integrator/pci.c           |   14 
 b/arch/arm/mach-integrator/pci_v3.c        |   28 
 b/arch/arm/mach-iop310/iop310-irq.c        |    6 
 b/arch/arm/mach-iop310/iq80310-irq.c       |    6 
 b/arch/arm/mach-iop310/iq80310-pci.c       |   10 
 b/arch/arm/mach-iop310/iq80310-time.c      |    4 
 b/arch/arm/mach-iop310/xs80200-irq.c       |    6 
 b/arch/arm/mach-pxa/Makefile               |    3 
 b/arch/arm/mach-pxa/generic.c              |    7 
 b/arch/arm/mach-pxa/irq.c                  |   26 
 b/arch/arm/mach-pxa/lubbock.c              |   17 
 b/arch/arm/mach-pxa/pm.c                   |  265 ++
 b/arch/arm/mach-pxa/sleep.S                |  150 +
 b/arch/arm/mach-rpc/dma.c                  |   28 
 b/arch/arm/mach-rpc/irq.c                  |   24 
 b/arch/arm/mach-sa1100/adsbitsy.c          |    2 
 b/arch/arm/mach-sa1100/assabet.c           |    6 
 b/arch/arm/mach-sa1100/cpu-sa1100.c        |    2 
 b/arch/arm/mach-sa1100/cpu-sa1110.c        |   70 
 b/arch/arm/mach-sa1100/generic.c           |    2 
 b/arch/arm/mach-sa1100/graphicsclient.c    |   18 
 b/arch/arm/mach-sa1100/graphicsmaster.c    |   18 
 b/arch/arm/mach-sa1100/h3600.c             |    8 
 b/arch/arm/mach-sa1100/irq.c               |   32 
 b/arch/arm/mach-sa1100/neponset.c          |    8 
 b/arch/arm/mach-sa1100/sa1111.c            |   24 
 b/arch/arm/mach-sa1100/simpad.c            |    2 
 b/arch/arm/mach-sa1100/system3.c           |    8 
 b/arch/arm/mach-shark/irq.c                |    6 
 b/arch/arm/mach-shark/pci.c                |   12 
 b/arch/arm/mm/fault.h                      |    2 
 b/arch/arm/mm/proc-xscale.S                |    2 
 b/arch/i386/config.in                      |    1 
 b/arch/i386/kernel/cpu/intel.c             |   32 
 b/arch/i386/kernel/process.c               |    5 
 b/arch/i386/mm/fault.c                     |    6 
 b/arch/m68k/config.in                      |    1 
 b/arch/mips/config.in                      |    1 
 b/arch/mips64/config.in                    |    1 
 b/arch/parisc/config.in                    |    1 
 b/arch/ppc/config.in                       |    1 
 b/arch/ppc/configs/lopec_defconfig         |  512 +++-
 b/arch/ppc/configs/sandpoint_defconfig     |  487 +++-
 b/arch/ppc/kernel/i8259.c                  |    3 
 b/arch/ppc/kernel/irq.c                    |   12 
 b/arch/ppc/kernel/misc.S                   |    3 
 b/arch/ppc/kernel/open_pic.c               |    9 
 b/arch/ppc/kernel/ppc4xx_pic.c             |    3 
 b/arch/ppc/kernel/ppc8260_pic.c            |    3 
 b/arch/ppc/kernel/ppc8xx_pic.c             |    3 
 b/arch/ppc/kernel/process.c                |   28 
 b/arch/ppc/kernel/ptrace.c                 |    4 
 b/arch/ppc/kernel/setup.c                  |    2 
 b/arch/ppc/kernel/smp.c                    |  269 --
 b/arch/ppc/mm/init.c                       |   10 
 b/arch/ppc/platforms/apus_setup.c          |    5 
 b/arch/ppc/platforms/chrp_smp.c            |   21 
 b/arch/ppc/platforms/lopec_setup.c         |    7 
 b/arch/ppc/platforms/pmac_pic.c            |    3 
 b/arch/ppc/platforms/pplus_setup.c         |    5 
 b/arch/ppc/platforms/prep_setup.c          |   60 
 b/arch/ppc/platforms/spruce_setup.c        |    7 
 b/arch/sh/config.in                        |    1 
 b/arch/sparc/Config.help                   |   55 
 b/arch/sparc/Makefile                      |    7 
 b/arch/sparc/boot/Makefile                 |    6 
 b/arch/sparc/config.in                     |   16 
 b/arch/sparc/kernel/apc.c                  |    6 
 b/arch/sparc/kernel/entry.S                |   57 
 b/arch/sparc/kernel/etrap.S                |   20 
 b/arch/sparc/kernel/head.S                 |   13 
 b/arch/sparc/kernel/init_task.c            |    6 
 b/arch/sparc/kernel/ioport.c               |   21 
 b/arch/sparc/kernel/irq.c                  |   23 
 b/arch/sparc/kernel/process.c              |   67 
 b/arch/sparc/kernel/ptrace.c               |   19 
 b/arch/sparc/kernel/rtrap.S                |   22 
 b/arch/sparc/kernel/sclow.S                |    6 
 b/arch/sparc/kernel/semaphore.c            |    1 
 b/arch/sparc/kernel/setup.c                |   29 
 b/arch/sparc/kernel/signal.c               |   16 
 b/arch/sparc/kernel/sparc-stub.c           |    2 
 b/arch/sparc/kernel/sparc_ksyms.c          |    1 
 b/arch/sparc/kernel/sun4d_irq.c            |    6 
 b/arch/sparc/kernel/sun4d_smp.c            |    1 
 b/arch/sparc/kernel/sun4m_smp.c            |    1 
 b/arch/sparc/kernel/trampoline.S           |    8 
 b/arch/sparc/kernel/traps.c                |   17 
 b/arch/sparc/kernel/windows.c              |    2 
 b/arch/sparc/kernel/wof.S                  |   28 
 b/arch/sparc/kernel/wuf.S                  |   10 
 b/arch/sparc/mm/btfixup.c                  |    1 
 b/arch/sparc/mm/fault.c                    |    8 
 b/arch/sparc/mm/generic.c                  |    9 
 b/arch/sparc/mm/init.c                     |   22 
 b/arch/sparc/mm/io-unit.c                  |    7 
 b/arch/sparc/mm/iommu.c                    |   11 
 b/arch/sparc/mm/srmmu.c                    |  110 -
 b/arch/sparc/mm/sun4c.c                    |  148 -
 b/arch/sparc/prom/misc.c                   |    6 
 b/arch/sparc64/Config.help                 |   55 
 b/arch/sparc64/config.in                   |    9 
 b/arch/sparc64/defconfig                   |  104 -
 b/arch/sparc64/kernel/devices.c            |    6 
 b/arch/sparc64/kernel/etrap.S              |   10 
 b/arch/sparc64/kernel/ioctl32.c            |    4 
 b/arch/sparc64/kernel/irq.c                |  328 +--
 b/arch/sparc64/kernel/pci.c                |    2 
 b/arch/sparc64/kernel/process.c            |   34 
 b/arch/sparc64/kernel/rtrap.S              |    7 
 b/arch/sparc64/kernel/setup.c              |   84 
 b/arch/sparc64/kernel/smp.c                |  399 +--
 b/arch/sparc64/kernel/sparc64_ksyms.c      |   17 
 b/arch/sparc64/kernel/sys_sparc32.c        |    8 
 b/arch/sparc64/kernel/systbls.S            |    2 
 b/arch/sparc64/kernel/unaligned.c          |   10 
 b/arch/sparc64/prom/misc.c                 |   79 
 b/arch/sparc64/solaris/fs.c                |   16 
 b/arch/sparc64/solaris/misc.c              |   16 
 b/arch/sparc64/solaris/socksys.c           |    4 
 b/arch/sparc64/solaris/systbl.S            |    4 
 b/drivers/acorn/block/fd1772.c             |   44 
 b/drivers/acorn/block/mfmhd.c              |   82 
 b/drivers/acorn/char/i2c.c                 |   32 
 b/drivers/acorn/char/mouse_ps2.c           |   12 
 b/drivers/acorn/char/pcf8583.c             |   26 
 b/drivers/acorn/net/etherh.c               |    4 
 b/drivers/acorn/scsi/acornscsi.c           |   32 
 b/drivers/acorn/scsi/cumana_1.c            |   30 
 b/drivers/acorn/scsi/cumana_2.c            |   36 
 b/drivers/acorn/scsi/ecoscsi.c             |   26 
 b/drivers/acorn/scsi/eesox.c               |   36 
 b/drivers/acorn/scsi/oak.c                 |   28 
 b/drivers/acorn/scsi/powertec.c            |   36 
 b/drivers/atm/ambassador.c                 |   12 
 b/drivers/atm/atmtcp.c                     |   18 
 b/drivers/atm/eni.c                        |   30 
 b/drivers/atm/firestream.c                 |   16 
 b/drivers/atm/fore200e.c                   |   18 
 b/drivers/atm/horizon.c                    |   12 
 b/drivers/atm/idt77252.c                   |   24 
 b/drivers/atm/iphase.c                     |   24 
 b/drivers/atm/lanai.c                      |   30 
 b/drivers/atm/nicstar.c                    |   16 
 b/drivers/atm/suni.c                       |    8 
 b/drivers/atm/uPD98402.c                   |    8 
 b/drivers/atm/zatm.c                       |   20 
 b/drivers/base/Makefile                    |    6 
 b/drivers/base/base.h                      |    7 
 b/drivers/base/bus.c                       |   38 
 b/drivers/base/driver.c                    |   12 
 b/drivers/base/fs/Makefile                 |    5 
 b/drivers/base/fs/bus.c                    |  123 +
 b/drivers/base/fs/device.c                 |  234 ++
 b/drivers/base/fs/driver.c                 |  100 
 b/drivers/base/fs/fs.h                     |    2 
 b/drivers/block/acsi.c                     |   37 
 b/drivers/block/amiflop.c                  |    2 
 b/drivers/block/ataflop.c                  |   23 
 b/drivers/block/blkpg.c                    |    6 
 b/drivers/block/cciss.c                    |   23 
 b/drivers/block/cpqarray.c                 |  174 -
 b/drivers/block/elevator.c                 |    1 
 b/drivers/block/floppy.c                   |   22 
 b/drivers/block/genhd.c                    |    2 
 b/drivers/block/paride/pd.c                |   40 
 b/drivers/block/ps2esdi.c                  |   86 
 b/drivers/block/swim3.c                    |    2 
 b/drivers/block/swim_iop.c                 |    2 
 b/drivers/block/umem.c                     |   34 
 b/drivers/block/xd.c                       |   28 
 b/drivers/block/xd.h                       |    1 
 b/drivers/cdrom/cdrom.c                    |    7 
 b/drivers/cdrom/sonycd535.c                |    4 
 b/drivers/char/Makefile                    |   20 
 b/drivers/char/drm/drm.h                   |   30 
 b/drivers/char/drm/drmP.h                  |    4 
 b/drivers/char/drm/drm_drv.h               |   16 
 b/drivers/char/drm/drm_os_linux.h          |   56 
 b/drivers/char/drm/gamma.h                 |   25 
 b/drivers/char/drm/gamma_drv.c             |   45 
 b/drivers/char/drm/i810.h                  |   41 
 b/drivers/char/drm/i810_drv.c              |   61 
 b/drivers/char/drm/i830.h                  |   27 
 b/drivers/char/drm/i830_drv.c              |   47 
 b/drivers/char/drm/mga.h                   |   27 
 b/drivers/char/drm/mga_dma.c               |  149 -
 b/drivers/char/drm/mga_drv.c               |   51 
 b/drivers/char/drm/mga_drv.h               |   64 
 b/drivers/char/drm/mga_state.c             |  117 -
 b/drivers/char/drm/mga_warp.c              |   10 
 b/drivers/char/drm/r128.h                  |   29 
 b/drivers/char/drm/r128_cce.c              |  201 -
 b/drivers/char/drm/r128_drv.c              |   59 
 b/drivers/char/drm/r128_drv.h              |   80 
 b/drivers/char/drm/r128_state.c            |  375 +--
 b/drivers/char/drm/radeon.h                |   55 
 b/drivers/char/drm/radeon_cp.c             |  605 ++++-
 b/drivers/char/drm/radeon_drm.h            |   59 
 b/drivers/char/drm/radeon_drv.c            |   63 
 b/drivers/char/drm/radeon_drv.h            |  218 +-
 b/drivers/char/drm/radeon_state.c          |  881 +++++---
 b/drivers/char/drm/sis.h                   |   25 
 b/drivers/char/drm/sis_drv.c               |   25 
 b/drivers/char/drm/tdfx_drv.c              |   19 
 b/drivers/char/rtc.c                       |    2 
 b/drivers/char/wdt977.c                    |    2 
 b/drivers/ide/hd.c                         |   37 
 b/drivers/ide/ide-cd.c                     |   20 
 b/drivers/ide/ide-disk.c                   |    9 
 b/drivers/ide/ide-floppy.c                 |   10 
 b/drivers/ide/ide-pmac.c                   |    2 
 b/drivers/ide/ide-tape.c                   |   16 
 b/drivers/ide/ide.c                        |    4 
 b/drivers/ide/ioctl.c                      |    3 
 b/drivers/ide/main.c                       |   82 
 b/drivers/ide/probe.c                      |   12 
 b/drivers/ieee1394/Makefile                |    2 
 b/drivers/input/keybdev.c                  |    3 
 b/drivers/isdn/act2000/capi.h              |    2 
 b/drivers/isdn/i4l/isdn_audio.c            |    8 
 b/drivers/isdn/i4l/isdn_common.c           |  730 ++++---
 b/drivers/isdn/i4l/isdn_common.h           |   68 
 b/drivers/isdn/i4l/isdn_net.c              | 1342 ++++++------
 b/drivers/isdn/i4l/isdn_net.h              |    7 
 b/drivers/isdn/i4l/isdn_ppp.c              |   39 
 b/drivers/isdn/i4l/isdn_tty.c              |  320 +--
 b/drivers/isdn/i4l/isdn_tty.h              |    5 
 b/drivers/isdn/i4l/isdn_ttyfax.c           |   49 
 b/drivers/isdn/i4l/isdn_v110.c             |   36 
 b/drivers/isdn/i4l/isdn_v110.h             |   12 
 b/drivers/isdn/isdnloop/isdnloop.c         |    8 
 b/drivers/mtd/ftl.c                        |  122 -
 b/drivers/mtd/nftlcore.c                   |   80 
 b/drivers/net/3c501.c                      |    6 
 b/drivers/net/3c503.c                      |    1 
 b/drivers/net/3c59x.c                      |   23 
 b/drivers/net/8139cp.c                     |   62 
 b/drivers/net/8139too.c                    |   18 
 b/drivers/net/8390.h                       |    5 
 b/drivers/net/Space.c                      |  248 +-
 b/drivers/net/arcnet/com20020-pci.c        |    8 
 b/drivers/net/bonding.c                    |    2 
 b/drivers/net/defxx.c                      |    8 
 b/drivers/net/dl2k.c                       |   20 
 b/drivers/net/e100/e100.h                  |   48 
 b/drivers/net/e100/e100_config.c           |   85 
 b/drivers/net/e100/e100_config.h           |    2 
 b/drivers/net/e100/e100_eeprom.c           |    3 
 b/drivers/net/e100/e100_main.c             |  560 +++--
 b/drivers/net/e100/e100_phy.c              |   47 
 b/drivers/net/e100/e100_phy.h              |   21 
 b/drivers/net/e100/e100_proc.c             |  413 ---
 b/drivers/net/e100/e100_test.c             |    9 
 b/drivers/net/e100/e100_vendor.h           |   13 
 b/drivers/net/e1000/e1000.h                |   10 
 b/drivers/net/e1000/e1000_ethtool.c        |   83 
 b/drivers/net/e1000/e1000_hw.c             |  279 ++
 b/drivers/net/e1000/e1000_hw.h             |   25 
 b/drivers/net/e1000/e1000_main.c           |  205 +
 b/drivers/net/e1000/e1000_osdep.h          |    5 
 b/drivers/net/e1000/e1000_param.c          |  140 -
 b/drivers/net/eepro.c                      |   22 
 b/drivers/net/eepro100.c                   |   42 
 b/drivers/net/epic100.c                    |   32 
 b/drivers/net/ewrk3.c                      |    6 
 b/drivers/net/fealnx.c                     |    8 
 b/drivers/net/hamachi.c                    |    8 
 b/drivers/net/hamradio/6pack.c             |   16 
 b/drivers/net/hamradio/baycom_epp.c        |    4 
 b/drivers/net/hamradio/bpqether.c          |    6 
 b/drivers/net/hp-plus.c                    |    2 
 b/drivers/net/ioc3-eth.c                   |    8 
 b/drivers/net/irda/irda-usb.c              |    8 
 b/drivers/net/irda/vlsi_ir.c               |   18 
 b/drivers/net/lasi_82596.c                 |    4 
 b/drivers/net/myri_sbus.c                  |   10 
 b/drivers/net/myri_sbus.h                  |    1 
 b/drivers/net/natsemi.c                    |   12 
 b/drivers/net/ne2k-pci.c                   |    8 
 b/drivers/net/ns83820.c                    |   18 
 b/drivers/net/pci-skeleton.c               |   12 
 b/drivers/net/plip.c                       |    6 
 b/drivers/net/ppp_async.c                  |   22 
 b/drivers/net/ppp_generic.c                |   14 
 b/drivers/net/ppp_synctty.c                |   22 
 b/drivers/net/pppoe.c                      |   46 
 b/drivers/net/rcpci45.c                    |    8 
 b/drivers/net/setup.c                      |    4 
 b/drivers/net/sis900.c                     |    8 
 b/drivers/net/sk98lin/skge.c               |   14 
 b/drivers/net/smc-ultra.c                  |    4 
 b/drivers/net/smc-ultra32.c                |    4 
 b/drivers/net/starfire.c                   |    8 
 b/drivers/net/strip.c                      |   16 
 b/drivers/net/sundance.c                   |    8 
 b/drivers/net/sungem.c                     |   12 
 b/drivers/net/sunhme.c                     |    2 
 b/drivers/net/tc35815.c                    |    8 
 b/drivers/net/tg3.c                        |   84 
 b/drivers/net/tg3.h                        |   21 
 b/drivers/net/tlan.c                       |    8 
 b/drivers/net/tokenring/3c359.c            |    8 
 b/drivers/net/tokenring/abyss.c            |    8 
 b/drivers/net/tokenring/lanstreamer.c      |    8 
 b/drivers/net/tokenring/olympic.c          |    8 
 b/drivers/net/tokenring/tmspci.c           |    8 
 b/drivers/net/tulip/de2104x.c              |   12 
 b/drivers/net/tulip/dmfe.c                 |   10 
 b/drivers/net/tulip/tulip_core.c           |   15 
 b/drivers/net/tulip/winbond-840.c          |   12 
 b/drivers/net/tulip/xircom_cb.c            |   12 
 b/drivers/net/tulip/xircom_tulip_cb.c      |   12 
 b/drivers/net/tun.c                        |   22 
 b/drivers/net/via-rhine.c                  |    8 
 b/drivers/net/wan/comx-proto-fr.c          |   30 
 b/drivers/net/wan/comx.c                   |    8 
 b/drivers/net/wan/cosa.c                   |   18 
 b/drivers/net/wan/dscc4.c                  |    8 
 b/drivers/net/wan/farsync.c                |   12 
 b/drivers/net/wan/lapbether.c              |    6 
 b/drivers/net/wan/pc300_drv.c              |   12 
 b/drivers/net/wan/sdlamain.c               |    4 
 b/drivers/net/wan/syncppp.c                |    4 
 b/drivers/net/wd.c                         |    4 
 b/drivers/net/wireless/airo.c              |   78 
 b/drivers/net/wireless/netwave_cs.c        |   12 
 b/drivers/net/wireless/orinoco_pci.c       |   10 
 b/drivers/net/wireless/orinoco_plx.c       |   11 
 b/drivers/net/wireless/wavelan.c           |   12 
 b/drivers/net/wireless/wavelan_cs.c        |   12 
 b/drivers/net/yellowfin.c                  |    8 
 b/drivers/pci/Makefile                     |    3 
 b/drivers/pci/compat.c                     |   14 
 b/drivers/pci/names.c                      |   10 
 b/drivers/pci/pci-driver.c                 |    6 
 b/drivers/pci/pci.c                        |   12 
 b/drivers/pcmcia/Makefile                  |    2 
 b/drivers/pcmcia/sa1100_generic.c          |    4 
 b/drivers/pnp/pnpbios_core.c               |    4 
 b/drivers/s390/block/dasd_ioctl.c          |   26 
 b/drivers/s390/block/xpram.c               |   41 
 b/drivers/sbus/audio/audio.c               |   22 
 b/drivers/sbus/char/Config.help            |    4 
 b/drivers/sbus/char/Config.in              |    3 
 b/drivers/sbus/char/Makefile               |    6 
 b/drivers/sbus/char/bpp.c                  |   12 
 b/drivers/sbus/char/cpwatchdog.c           |   12 
 b/drivers/sbus/char/display7seg.c          |    8 
 b/drivers/sbus/char/envctrl.c              |   10 
 b/drivers/sbus/char/flash.c                |   12 
 b/drivers/sbus/char/jsflash.c              |   24 
 b/drivers/sbus/char/openprom.c             |   40 
 b/drivers/sbus/char/riowatchdog.c          |   12 
 b/drivers/sbus/char/rtc.c                  |   10 
 b/drivers/sbus/char/uctrl.c                |    8 
 b/drivers/sbus/char/vfc_dev.c              |   12 
 b/drivers/sbus/sbus.c                      |   15 
 b/drivers/scsi/aic7xxx/aic7xxx_linux.c     |    4 
 b/drivers/scsi/esp.c                       |    3 
 b/drivers/scsi/qlogicpti.c                 |   40 
 b/drivers/scsi/sd.c                        |   62 
 b/drivers/scsi/sr.c                        |    2 
 b/drivers/serial/Config.help               |   13 
 b/drivers/serial/Config.in                 |   19 
 b/drivers/serial/Makefile                  |    6 
 b/drivers/serial/suncore.c                 |  218 ++
 b/drivers/serial/suncore.h                 |   29 
 b/drivers/serial/sunsab.c                  | 1170 +++++++++++
 b/drivers/serial/sunsab.h                  |  321 +++
 b/drivers/serial/sunsu.c                   | 1678 ++++++++++++++++
 b/drivers/serial/sunzilog.c                | 1730 ++++++++++++++++
 b/drivers/serial/sunzilog.h                |  272 ++
 b/drivers/usb/core/hub.c                   |    5 
 b/drivers/usb/core/inode.c                 |  284 +-
 b/drivers/usb/core/usb.c                   |    2 
 b/drivers/usb/input/aiptek.c               |    2 
 b/drivers/usb/media/dabusb.c               |   12 
 b/drivers/usb/media/se401.c                |    6 
 b/drivers/usb/media/vicamurbs.h            |    2 
 b/drivers/usb/misc/auerswald.c             |    4 
 b/drivers/usb/net/kaweth.c                 |    1 
 b/drivers/usb/serial/ipaq.c                |   41 
 b/drivers/usb/serial/keyspan.c             |    1 
 b/drivers/video/sa1100fb.c                 |   31 
 b/fs/adfs/dir.c                            |   14 
 b/fs/adfs/file.c                           |   14 
 b/fs/adfs/inode.c                          |   12 
 b/fs/adfs/super.c                          |   22 
 b/fs/block_dev.c                           |  238 +-
 b/fs/devfs/base.c                          |   13 
 b/fs/direct-io.c                           |    7 
 b/fs/driverfs/inode.c                      |   10 
 b/fs/exec.c                                |   60 
 b/fs/ext3/super.c                          |   26 
 b/fs/jfs/Makefile                          |    2 
 b/fs/jfs/file.c                            |   12 
 b/fs/jfs/inode.c                           |   14 
 b/fs/jfs/jfs_dmap.c                        |    5 
 b/fs/jfs/jfs_extent.c                      |   39 
 b/fs/jfs/jfs_imap.c                        |   45 
 b/fs/jfs/jfs_imap.h                        |    9 
 b/fs/jfs/jfs_incore.h                      |   30 
 b/fs/jfs/jfs_inode.c                       |   37 
 b/fs/jfs/jfs_lock.h                        |   56 
 b/fs/jfs/jfs_logmgr.c                      |  133 -
 b/fs/jfs/jfs_logmgr.h                      |   17 
 b/fs/jfs/jfs_metapage.c                    |  204 -
 b/fs/jfs/jfs_mount.c                       |    9 
 b/fs/jfs/jfs_txnmgr.c                      |  136 -
 b/fs/jfs/jfs_txnmgr.h                      |    3 
 b/fs/jfs/jfs_xtree.c                       |   11 
 b/fs/jfs/namei.c                           |  222 +-
 b/fs/jfs/resize.c                          |  532 +++++
 b/fs/jfs/super.c                           |  113 -
 b/fs/ntfs/ChangeLog                        |   37 
 b/fs/ntfs/Makefile                         |    2 
 b/fs/ntfs/aops.c                           |   20 
 b/fs/ntfs/attrib.c                         |   23 
 b/fs/ntfs/compress.c                       |   26 
 b/fs/ntfs/dir.c                            |  274 +-
 b/fs/ntfs/file.c                           |   17 
 b/fs/ntfs/inode.c                          |   65 
 b/fs/ntfs/inode.h                          |    5 
 b/fs/ntfs/malloc.h                         |   17 
 b/fs/ntfs/mft.c                            |  207 -
 b/fs/ntfs/mft.h                            |    6 
 b/fs/ntfs/namei.c                          |   40 
 b/fs/ntfs/super.c                          |   89 
 b/fs/ntfs/volume.h                         |    2 
 b/fs/openpromfs/inode.c                    |    5 
 b/fs/partitions/check.c                    |  150 -
 b/fs/proc/proc_misc.c                      |    8 
 b/fs/reiserfs/bitmap.c                     |    4 
 b/fs/reiserfs/file.c                       |   18 
 b/fs/reiserfs/item_ops.c                   |   96 
 b/fs/reiserfs/namei.c                      |    6 
 b/fs/reiserfs/super.c                      |   10 
 b/fs/seq_file.c                            |    2 
 b/fs/super.c                               |    1 
 b/include/asm-alpha/a.out.h                |    4 
 b/include/asm-alpha/bitops.h               |   14 
 b/include/asm-alpha/hardirq.h              |  138 -
 b/include/asm-alpha/linkage.h              |    6 
 b/include/asm-alpha/mmu_context.h          |    5 
 b/include/asm-alpha/page.h                 |   12 
 b/include/asm-alpha/param.h                |    2 
 b/include/asm-alpha/percpu.h               |    6 
 b/include/asm-alpha/pgalloc.h              |    1 
 b/include/asm-alpha/pgtable.h              |   42 
 b/include/asm-alpha/regdef.h               |   44 
 b/include/asm-alpha/rwsem.h                |   64 
 b/include/asm-alpha/smp.h                  |   17 
 b/include/asm-alpha/smplock.h              |   14 
 b/include/asm-alpha/softirq.h              |   32 
 b/include/asm-alpha/system.h               |   32 
 b/include/asm-alpha/thread_info.h          |    4 
 b/include/asm-alpha/tlb.h                  |   14 
 b/include/asm-arm/arch-pxa/hardware.h      |   31 
 b/include/asm-arm/arch-pxa/pxa-regs.h      |  219 ++
 b/include/asm-arm/arch-sa1100/irqs.h       |   24 
 b/include/asm-arm/linkage.h                |    7 
 b/include/asm-cris/linkage.h               |    6 
 b/include/asm-generic/tlb.h                |    2 
 b/include/asm-i386/linkage.h               |   12 
 b/include/asm-i386/rwsem.h                 |    2 
 b/include/asm-ia64/linkage.h               |    6 
 b/include/asm-m68k/linkage.h               |    7 
 b/include/asm-mips/linkage.h               |    6 
 b/include/asm-mips64/linkage.h             |    6 
 b/include/asm-parisc/linkage.h             |    6 
 b/include/asm-ppc/bitops.h                 |    8 
 b/include/asm-ppc/bootinfo.h               |    1 
 b/include/asm-ppc/linkage.h                |    6 
 b/include/asm-ppc/processor.h              |   14 
 b/include/asm-ppc/rwsem.h                  |   26 
 b/include/asm-ppc/smplock.h                |    2 
 b/include/asm-ppc/unistd.h                 |    2 
 b/include/asm-ppc64/linkage.h              |    6 
 b/include/asm-s390/linkage.h               |    6 
 b/include/asm-s390x/linkage.h              |    6 
 b/include/asm-sh/linkage.h                 |    7 
 b/include/asm-sparc/bitops.h               |   92 
 b/include/asm-sparc/cacheflush.h           |   69 
 b/include/asm-sparc/current.h              |   41 
 b/include/asm-sparc/elf.h                  |    2 
 b/include/asm-sparc/highmem.h              |    2 
 b/include/asm-sparc/kmap_types.h           |    2 
 b/include/asm-sparc/linkage.h              |    6 
 b/include/asm-sparc/mmu_context.h          |   23 
 b/include/asm-sparc/page.h                 |    9 
 b/include/asm-sparc/pgalloc.h              |  103 
 b/include/asm-sparc/pgtable.h              |   50 
 b/include/asm-sparc/pgtsrmmu.h             |    3 
 b/include/asm-sparc/processor.h            |   33 
 b/include/asm-sparc/spinlock.h             |   42 
 b/include/asm-sparc/system.h               |   64 
 b/include/asm-sparc/thread_info.h          |  138 +
 b/include/asm-sparc/tlb.h                  |   23 
 b/include/asm-sparc/tlbflush.h             |   63 
 b/include/asm-sparc/uaccess.h              |    1 
 b/include/asm-sparc64/auxio.h              |    9 
 b/include/asm-sparc64/hardirq.h            |  132 -
 b/include/asm-sparc64/irq.h                |    2 
 b/include/asm-sparc64/keyboard.h           |   39 
 b/include/asm-sparc64/linkage.h            |    6 
 b/include/asm-sparc64/ns87303.h            |   10 
 b/include/asm-sparc64/rwsem.h              |  102 
 b/include/asm-sparc64/smp.h                |   12 
 b/include/asm-sparc64/smplock.h            |    7 
 b/include/asm-sparc64/softirq.h            |   23 
 b/include/asm-sparc64/system.h             |   46 
 b/include/asm-sparc64/thread_info.h        |    3 
 b/include/asm-x86_64/linkage.h             |    6 
 b/include/linux/atalk.h                    |  168 -
 b/include/linux/blkdev.h                   |    1 
 b/include/linux/brlock.h                   |    1 
 b/include/linux/device.h                   |   36 
 b/include/linux/fs.h                       |   32 
 b/include/linux/ide.h                      |    2 
 b/include/linux/if_ether.h                 |    2 
 b/include/linux/init.h                     |   14 
 b/include/linux/ipx.h                      |   24 
 b/include/linux/isdn.h                     |   36 
 b/include/linux/isdnif.h                   |    2 
 b/include/linux/linkage.h                  |   41 
 b/include/linux/mm.h                       |    1 
 b/include/linux/mtd/nftl.h                 |    1 
 b/include/linux/pagemap.h                  |   12 
 b/include/linux/personality.h              |    1 
 b/include/linux/pkt_sched.h                |   42 
 b/include/linux/preempt.h                  |   24 
 b/include/linux/reiserfs_fs.h              |    6 
 b/include/linux/serial_core.h              |    4 
 b/include/linux/skbuff.h                   |    2 
 b/include/linux/smp.h                      |    2 
 b/include/linux/stringify.h                |    4 
 b/include/linux/swap.h                     |    1 
 b/include/linux/threads.h                  |    3 
 b/include/linux/usb.h                      |    6 
 b/include/net/ipx.h                        |   33 
 b/include/net/llc_pdu.h                    |   19 
 b/include/net/tcp.h                        |    3 
 b/kernel/Makefile                          |    5 
 b/kernel/dma.c                             |   89 
 b/kernel/fork.c                            |    4 
 b/kernel/ksyms.c                           |   11 
 b/kernel/panic.c                           |    2 
 b/kernel/resource.c                        |    2 
 b/kernel/signal.c                          |    8 
 b/kernel/suspend.c                         |    4 
 b/kernel/timer.c                           |    2 
 b/mm/filemap.c                             |   19 
 b/mm/memory.c                              |   48 
 b/mm/mmap.c                                |   70 
 b/mm/page-writeback.c                      |   12 
 b/mm/swap_state.c                          |    4 
 b/mm/vmscan.c                              |    2 
 b/net/802/Makefile                         |   29 
 b/net/802/p8022.c                          |    8 
 b/net/802/psnap.c                          |  105 -
 b/net/802/sysctl_net_802.c                 |   23 
 b/net/8021q/vlan.c                         |   52 
 b/net/8021q/vlan_dev.c                     |   50 
 b/net/8021q/vlanproc.c                     |   16 
 b/net/Config.help                          |    9 
 b/net/appletalk/aarp.c                     |  426 ++--
 b/net/appletalk/ddp.c                      |  648 +++---
 b/net/appletalk/sysctl_net_atalk.c         |   62 
 b/net/atm/clip.c                           |   18 
 b/net/atm/mpc.c                            |    4 
 b/net/atm/mpoa_proc.c                      |    4 
 b/net/atm/pppoatm.c                        |    4 
 b/net/atm/proc.c                           |    4 
 b/net/atm/pvc.c                            |   38 
 b/net/atm/signaling.c                      |    4 
 b/net/atm/svc.c                            |   38 
 b/net/ax25/af_ax25.c                       |   44 
 b/net/bluetooth/hci_sock.c                 |   40 
 b/net/bluetooth/l2cap.c                    |   54 
 b/net/bluetooth/sco.c                      |   50 
 b/net/core/datagram.c                      |    4 
 b/net/core/dev.c                           |   52 
 b/net/core/ext8022.c                       |    8 
 b/net/core/neighbour.c                     |  188 -
 b/net/decnet/af_decnet.c                   |   48 
 b/net/decnet/dn_dev.c                      |  110 -
 b/net/decnet/dn_neigh.c                    |   88 
 b/net/decnet/dn_route.c                    |   20 
 b/net/decnet/dn_rules.c                    |   10 
 b/net/econet/af_econet.c                   |   44 
 b/net/ipv4/af_inet.c                       |  114 -
 b/net/ipv4/arp.c                           |  108 -
 b/net/ipv4/devinet.c                       |  230 +-
 b/net/ipv4/fib_frontend.c                  |    4 
 b/net/ipv4/fib_rules.c                     |   28 
 b/net/ipv4/icmp.c                          |  200 -
 b/net/ipv4/ip_gre.c                        |    8 
 b/net/ipv4/ip_output.c                     |   14 
 b/net/ipv4/ipconfig.c                      |    8 
 b/net/ipv4/ipip.c                          |   16 
 b/net/ipv4/netfilter/ip_queue.c            |  889 ++++----
 b/net/ipv4/protocol.c                      |   36 
 b/net/ipv4/raw.c                           |   28 
 b/net/ipv4/route.c                         |  241 +-
 b/net/ipv4/tcp_ipv4.c                      |   76 
 b/net/ipv4/udp.c                           |   26 
 b/net/ipv6/af_inet6.c                      |   86 
 b/net/ipv6/ndisc.c                         |   90 
 b/net/ipv6/netfilter/ip6_tables.c          |    2 
 b/net/ipv6/raw.c                           |   30 
 b/net/ipv6/sit.c                           |    4 
 b/net/ipv6/tcp_ipv6.c                      |  149 -
 b/net/ipv6/udp.c                           |   50 
 b/net/ipx/Config.help                      |   22 
 b/net/ipx/Config.in                        |    3 
 b/net/ipx/Makefile                         |    1 
 b/net/ipx/af_ipx.c                         |  358 +--
 b/net/ipx/sysctl_net_ipx.c                 |   37 
 b/net/irda/af_irda.c                       |  140 -
 b/net/llc/llc_c_ac.c                       |   93 
 b/net/llc/llc_c_ev.c                       |   82 
 b/net/llc/llc_c_st.c                       |   76 
 b/net/llc/llc_conn.c                       |   18 
 b/net/llc/llc_evnt.c                       |    8 
 b/net/llc/llc_if.c                         |    4 
 b/net/llc/llc_mac.c                        |   34 
 b/net/llc/llc_main.c                       |    6 
 b/net/llc/llc_pdu.c                        |   97 
 b/net/llc/llc_s_ev.c                       |   10 
 b/net/llc/llc_s_st.c                       |    8 
 b/net/llc/llc_sap.c                        |    7 
 b/net/netlink/af_netlink.c                 |   38 
 b/net/netlink/netlink_dev.c                |   16 
 b/net/netrom/af_netrom.c                   |   40 
 b/net/netsyms.c                            |    1 
 b/net/packet/af_packet.c                   |   78 
 b/net/rose/af_rose.c                       |   40 
 b/net/sched/Config.help                    |   14 
 b/net/sched/Config.in                      |    1 
 b/net/sched/Makefile                       |    1 
 b/net/sched/sch_api.c                      |    3 
 b/net/sched/sch_htb.c                      | 1648 +++++++++++++++
 b/net/socket.c                             |   38 
 b/net/sysctl_net.c                         |   50 
 b/net/unix/af_unix.c                       |   72 
 b/net/wanrouter/af_wanpipe.c               |   36 
 b/net/wanrouter/wanproc.c                  |   44 
 b/net/x25/af_x25.c                         |   44 
 b/sound/arm/sa11xx-uda1341.c               |  110 -
 b/sound/oss/es1371.c                       |    5 
 b/sound/oss/esssolo1.c                     |   12 
 drivers/base/fs.c                          |  234 --
 drivers/sbus/char/pcikbd.c                 | 1430 -------------
 drivers/sbus/char/pcikbd.h                 |  123 -
 drivers/sbus/char/sab82532.c               | 2668 -------------------------
 drivers/sbus/char/su.c                     | 3010 -----------------------------
 drivers/sbus/char/sunkbd.c                 | 1623 ---------------
 drivers/sbus/char/sunkbd.h                 |   52 
 drivers/sbus/char/sunkbdmap.c              |   33 
 drivers/sbus/char/sunkeymap.c              |  265 --
 drivers/sbus/char/sunkeymap.map            |  375 ---
 drivers/sbus/char/sunmouse.c               |  614 -----
 drivers/sbus/char/sunmouse.h               |   13 
 drivers/sbus/char/sunserial.c              |  457 ----
 drivers/sbus/char/sunserial.h              |   53 
 drivers/sbus/char/zs.c                     | 2892 ---------------------------
 drivers/sbus/char/zs.h                     |  427 ----
 drivers/usb/core/drivers.c                 |  127 -
 include/asm-sparc64/sab82532.h             |  380 ---
 include/net/llc.h                          |  135 -
 include/net/spx.h                          |   95 
 net/802/TODO                               |   29 
 net/802/cl2llc.pre                         |  615 -----
 net/802/llc_macinit.c                      |  214 --
 net/802/llc_sendpdu.c                      |  357 ---
 net/802/llc_utility.c                      |  253 --
 net/802/pseudo/actionnm.awk                |   27 
 net/802/pseudo/compile.awk                 |   57 
 net/802/pseudo/opcd2num.sed                |   72 
 net/802/pseudo/opcodes                     |   72 
 net/802/pseudo/opcodesnm.h                 |   23 
 net/802/pseudo/pseudocode                  |  780 -------
 net/802/transit/compile.awk                |   81 
 net/802/transit/pdutr.pre                  | 1121 ----------
 net/802/transit/timertr.pre                |  527 -----
 net/ipx/af_spx.c                           |  897 --------
 752 files changed, 24719 insertions(+), 33779 deletions(-)

