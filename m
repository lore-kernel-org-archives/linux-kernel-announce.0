From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.9 released
Date: Mon, 22 Apr 2002 16:15:31 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200204222315.g3MNFVs01167@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.9 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.9.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.9.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               681153           2621606
Full source                       33772446         151326720

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/usb/dc2xx.txt                  |  111 
 arch/ia64/hp/hpsim_console.c                 |   64 
 arch/ia64/hp/hpsim_irq.c                     |   46 
 arch/ia64/hp/hpsim_machvec.c                 |    2 
 arch/ia64/hp/hpsim_setup.c                   |   58 
 arch/ia64/hp/hpsim_ssc.h                     |   36 
 arch/ia64/hp/simeth.c                        |  533 ---
 arch/ia64/hp/simscsi.c                       |  368 --
 arch/ia64/hp/simscsi.h                       |   39 
 arch/ia64/hp/simserial.c                     | 1104 -------
 b/Documentation/BK-usage/bk-kernel-howto.txt |    2 
 b/Documentation/DocBook/kernel-hacking.tmpl  |    2 
 b/Documentation/filesystems/Exporting        |  176 +
 b/Documentation/filesystems/devfs/ChangeLog  |    7 
 b/Documentation/filesystems/devfs/README     |   16 
 b/Documentation/filesystems/porting          |   20 
 b/Documentation/ide.txt                      |  295 -
 b/Makefile                                   |    8 
 b/Rules.make                                 |    6 
 b/arch/alpha/config.in                       |    9 
 b/arch/alpha/kernel/osf_sys.c                |    2 
 b/arch/alpha/kernel/process.c                |    8 
 b/arch/alpha/kernel/ptrace.c                 |    2 
 b/arch/alpha/kernel/semaphore.c              |    2 
 b/arch/alpha/kernel/signal.c                 |    6 
 b/arch/alpha/math-emu/Makefile               |    3 
 b/arch/alpha/mm/init.c                       |    2 
 b/arch/arm/Config.help                       |  150 
 b/arch/arm/boot/Makefile                     |   77 
 b/arch/arm/boot/compressed/Makefile          |   10 
 b/arch/arm/boot/compressed/head-clps7500.S   |    2 
 b/arch/arm/boot/compressed/head-epxa10db.S   |    2 
 b/arch/arm/boot/compressed/head-ftvpci.S     |    2 
 b/arch/arm/boot/compressed/head-integrator.S |    2 
 b/arch/arm/boot/compressed/head-l7200.S      |    2 
 b/arch/arm/boot/compressed/head-netwinder.S  |   45 
 b/arch/arm/boot/compressed/head-sa1100.S     |    2 
 b/arch/arm/boot/compressed/head-shark.S      |    2 
 b/arch/arm/boot/compressed/head-xscale.S     |    2 
 b/arch/arm/boot/compressed/head.S            |  246 +
 b/arch/arm/boot/compressed/vmlinux.lds.in    |   31 
 b/arch/arm/config.in                         |   15 
 b/arch/arm/def-configs/iq80310               |    3 
 b/arch/arm/def-configs/lusl7200              |    3 
 b/arch/arm/def-configs/shark                 |  227 -
 b/arch/arm/def-configs/sherman               |    3 
 b/arch/arm/def-configs/victor                |    3 
 b/arch/arm/kernel/armksyms.c                 |    1 
 b/arch/arm/kernel/bios32.c                   |    3 
 b/arch/arm/kernel/dma.c                      |    1 
 b/arch/arm/kernel/entry-armv.S               |   15 
 b/arch/arm/kernel/entry-common.S             |    3 
 b/arch/arm/kernel/irq.c                      |    1 
 b/arch/arm/kernel/process.c                  |   22 
 b/arch/arm/kernel/semaphore.c                |    1 
 b/arch/arm/kernel/setup.c                    |    5 
 b/arch/arm/kernel/signal.c                   |    4 
 b/arch/arm/kernel/time.c                     |    1 
 b/arch/arm/kernel/traps.c                    |   12 
 b/arch/arm/mach-clps711x/edb7211-mm.c        |   11 
 b/arch/arm/mach-footbridge/isa-irq.c         |   10 
 b/arch/arm/mach-sa1100/Makefile              |    8 
 b/arch/arm/mach-sa1100/adsbitsy.c            |   32 
 b/arch/arm/mach-sa1100/badge4.c              |   37 
 b/arch/arm/mach-sa1100/graphicsmaster.c      |   31 
 b/arch/arm/mach-sa1100/neponset.c            |   49 
 b/arch/arm/mach-sa1100/pfs168.c              |   35 
 b/arch/arm/mach-sa1100/sa1111.c              |  149 
 b/arch/arm/mach-sa1100/sa1111.h              |   10 
 b/arch/arm/mach-sa1100/system3.c             |   35 
 b/arch/arm/mach-shark/pci.c                  |    2 
 b/arch/arm/mm/abort-ev5ej.S                  |    2 
 b/arch/arm/mm/consistent.c                   |   57 
 b/arch/arm/mm/minicache.c                    |    2 
 b/arch/arm/mm/proc-xscale.S                  |    2 
 b/arch/arm/mm/tlb-v3.S                       |    2 
 b/arch/arm/mm/tlb-v4.S                       |   24 
 b/arch/arm/mm/tlb-v4wb.S                     |   59 
 b/arch/arm/nwfpe/Makefile                    |    7 
 b/arch/arm/nwfpe/fpmodule.c                  |    1 
 b/arch/arm/tools/mach-types                  |    3 
 b/arch/cris/config.in                        |   10 
 b/arch/cris/drivers/ide.c                    |   50 
 b/arch/i386/config.in                        |   14 
 b/arch/i386/defconfig                        |    5 
 b/arch/i386/kernel/bluesmoke.c               |    8 
 b/arch/i386/kernel/i387.c                    |   20 
 b/arch/i386/kernel/io_apic.c                 |  100 
 b/arch/i386/kernel/irq.c                     |    2 
 b/arch/i386/kernel/microcode.c               |    2 
 b/arch/i386/kernel/mpparse.c                 |   19 
 b/arch/i386/kernel/pci-pc.c                  |    3 
 b/arch/i386/kernel/process.c                 |    1 
 b/arch/i386/kernel/setup.c                   |    5 
 b/arch/i386/kernel/traps.c                   |    9 
 b/arch/ia64/Config.help                      |   34 
 b/arch/ia64/Makefile                         |   22 
 b/arch/ia64/config.in                        |   12 
 b/arch/ia64/defconfig                        |   80 
 b/arch/ia64/dig/setup.c                      |   15 
 b/arch/ia64/hp/Config.in                     |    9 
 b/arch/ia64/hp/Makefile                      |   26 
 b/arch/ia64/hp/common/Makefile               |   28 
 b/arch/ia64/hp/common/sba_iommu.c            | 3700 ++++++++++++++++++++++++
 b/arch/ia64/hp/sim/Makefile                  |   19 
 b/arch/ia64/hp/sim/hpsim_console.c           |   64 
 b/arch/ia64/hp/sim/hpsim_irq.c               |   46 
 b/arch/ia64/hp/sim/hpsim_machvec.c           |    2 
 b/arch/ia64/hp/sim/hpsim_setup.c             |   58 
 b/arch/ia64/hp/sim/hpsim_ssc.h               |   36 
 b/arch/ia64/hp/sim/simeth.c                  |  533 +++
 b/arch/ia64/hp/sim/simscsi.c                 |  368 ++
 b/arch/ia64/hp/sim/simscsi.h                 |   39 
 b/arch/ia64/hp/sim/simserial.c               | 1104 +++++++
 b/arch/ia64/hp/zx1/Makefile                  |   26 
 b/arch/ia64/hp/zx1/hpzx1_machvec.c           |    4 
 b/arch/ia64/hp/zx1/hpzx1_misc.c              |  800 +++++
 b/arch/ia64/ia32/binfmt_elf32.c              |    2 
 b/arch/ia64/ia32/sys_ia32.c                  |    2 
 b/arch/ia64/kernel/Makefile                  |    1 
 b/arch/ia64/kernel/acpi.c                    |  913 ++----
 b/arch/ia64/kernel/brl_emu.c                 |    6 
 b/arch/ia64/kernel/efi.c                     |   60 
 b/arch/ia64/kernel/entry.S                   |  148 
 b/arch/ia64/kernel/head.S                    |  239 -
 b/arch/ia64/kernel/ia64_ksyms.c              |   15 
 b/arch/ia64/kernel/iosapic.c                 |  116 
 b/arch/ia64/kernel/irq.c                     |   17 
 b/arch/ia64/kernel/ivt.S                     |    4 
 b/arch/ia64/kernel/mca.c                     |    6 
 b/arch/ia64/kernel/minstate.h                |   78 
 b/arch/ia64/kernel/pci.c                     |  178 -
 b/arch/ia64/kernel/process.c                 |    6 
 b/arch/ia64/kernel/semaphore.c               |    5 
 b/arch/ia64/kernel/setup.c                   |   67 
 b/arch/ia64/kernel/signal.c                  |    6 
 b/arch/ia64/kernel/smp.c                     |    3 
 b/arch/ia64/kernel/smpboot.c                 |    6 
 b/arch/ia64/kernel/sys_ia64.c                |    6 
 b/arch/ia64/kernel/traps.c                   |    3 
 b/arch/ia64/kernel/unwind_i.h                |    2 
 b/arch/ia64/lib/Makefile                     |    3 
 b/arch/ia64/lib/copy_page_mck.S              |  185 +
 b/arch/ia64/lib/do_csum.S                    |  102 
 b/arch/ia64/lib/memset.S                     |   23 
 b/arch/ia64/lib/swiotlb.c                    |   11 
 b/arch/ia64/mm/fault.c                       |    8 
 b/arch/ia64/mm/init.c                        |   11 
 b/arch/ia64/mm/tlb.c                         |    5 
 b/arch/ia64/vmlinux.lds.S                    |   12 
 b/arch/mips/config.in                        |   10 
 b/arch/mips64/config.in                      |   11 
 b/arch/ppc/config.in                         |    9 
 b/arch/ppc64/config.in                       |    9 
 b/arch/sparc/config.in                       |    9 
 b/arch/sparc64/solaris/Makefile              |   14 
 b/arch/x86_64/Config.help                    |   90 
 b/arch/x86_64/Makefile                       |   43 
 b/arch/x86_64/boot/setup.S                   |   91 
 b/arch/x86_64/boot/video.S                   |   13 
 b/arch/x86_64/config.in                      |   70 
 b/arch/x86_64/defconfig                      |  183 -
 b/arch/x86_64/ia32/Makefile                  |    6 
 b/arch/x86_64/ia32/fpu32.c                   |  172 +
 b/arch/x86_64/ia32/ia32_binfmt.c             |  130 
 b/arch/x86_64/ia32/ia32_ioctl.c              |  178 +
 b/arch/x86_64/ia32/ia32_signal.c             |   53 
 b/arch/x86_64/ia32/ia32entry.S               |   36 
 b/arch/x86_64/ia32/ptrace32.c                |  101 
 b/arch/x86_64/ia32/sys_ia32.c                |  693 +++-
 b/arch/x86_64/kernel/Makefile                |    7 
 b/arch/x86_64/kernel/apic.c                  |   82 
 b/arch/x86_64/kernel/bluesmoke.c             |  223 +
 b/arch/x86_64/kernel/bootflag.c              |  253 +
 b/arch/x86_64/kernel/cpuid.c                 |    1 
 b/arch/x86_64/kernel/early_printk.c          |   10 
 b/arch/x86_64/kernel/entry.S                 |  291 +
 b/arch/x86_64/kernel/head.S                  |  130 
 b/arch/x86_64/kernel/head64.c                |    2 
 b/arch/x86_64/kernel/i387.c                  |  465 ---
 b/arch/x86_64/kernel/i8259.c                 |   58 
 b/arch/x86_64/kernel/init_task.c             |   10 
 b/arch/x86_64/kernel/io_apic.c               |    2 
 b/arch/x86_64/kernel/irq.c                   |    7 
 b/arch/x86_64/kernel/ldt.c                   |   45 
 b/arch/x86_64/kernel/mpparse.c               |   36 
 b/arch/x86_64/kernel/mtrr.c                  | 1818 ++----------
 b/arch/x86_64/kernel/pci-dma.c               |    2 
 b/arch/x86_64/kernel/pci-irq.c               |   94 
 b/arch/x86_64/kernel/pci-pc.c                |    9 
 b/arch/x86_64/kernel/pci-x86_64.h            |    4 
 b/arch/x86_64/kernel/process.c               |  198 -
 b/arch/x86_64/kernel/ptrace.c                |  101 
 b/arch/x86_64/kernel/semaphore.c             |   56 
 b/arch/x86_64/kernel/setup.c                 |   81 
 b/arch/x86_64/kernel/setup64.c               |   98 
 b/arch/x86_64/kernel/signal.c                |   84 
 b/arch/x86_64/kernel/smp.c                   |  129 
 b/arch/x86_64/kernel/smpboot.c               |   70 
 b/arch/x86_64/kernel/sys_x86_64.c            |   27 
 b/arch/x86_64/kernel/syscall.c               |    7 
 b/arch/x86_64/kernel/time.c                  |  107 
 b/arch/x86_64/kernel/trampoline.S            |   12 
 b/arch/x86_64/kernel/traps.c                 |  283 +
 b/arch/x86_64/kernel/vsyscall.c              |   33 
 b/arch/x86_64/kernel/x8664_ksyms.c           |   60 
 b/arch/x86_64/lib/Makefile                   |    3 
 b/arch/x86_64/lib/mmx.c                      |  240 -
 b/arch/x86_64/lib/thunk.S                    |   81 
 b/arch/x86_64/mm/Makefile                    |    2 
 b/arch/x86_64/mm/fault.c                     |  117 
 b/arch/x86_64/mm/init.c                      |  178 -
 b/arch/x86_64/mm/ioremap.c                   |   10 
 b/arch/x86_64/mm/modutil.c                   |   68 
 b/arch/x86_64/tools/offset.c                 |    4 
 b/arch/x86_64/vmlinux.lds                    |   36 
 b/drivers/acorn/block/Makefile               |   14 
 b/drivers/acorn/scsi/Makefile                |    4 
 b/drivers/acorn/scsi/acornscsi.c             |   29 
 b/drivers/atm/Makefile                       |    5 
 b/drivers/block/ll_rw_blk.c                  |    4 
 b/drivers/block/nbd.c                        |   28 
 b/drivers/char/Makefile                      |    9 
 b/drivers/char/agp/Makefile                  |    4 
 b/drivers/char/console.c                     |    3 
 b/drivers/char/drm/Makefile                  |   22 
 b/drivers/char/logibusmouse.c                |   13 
 b/drivers/char/msbusmouse.c                  |    8 
 b/drivers/char/n_hdlc.c                      |   39 
 b/drivers/char/nvram.c                       |    2 
 b/drivers/char/rtc.c                         |    2 
 b/drivers/char/serial.c                      |   12 
 b/drivers/char/synclink.c                    |   18 
 b/drivers/char/tty_io.c                      |    6 
 b/drivers/char/wdt977.c                      |    8 
 b/drivers/fc4/Makefile                       |    5 
 b/drivers/ide/Config.help                    |   44 
 b/drivers/ide/Config.in                      |    8 
 b/drivers/ide/Makefile                       |    4 
 b/drivers/ide/amd74xx.c                      |    5 
 b/drivers/ide/cmd640.c                       |   32 
 b/drivers/ide/dtc2278.c                      |   12 
 b/drivers/ide/ht6560b.c                      |    6 
 b/drivers/ide/ide-cd.c                       |  753 ++---
 b/drivers/ide/ide-cd.h                       |   61 
 b/drivers/ide/ide-disk.c                     |   95 
 b/drivers/ide/ide-dma.c                      |   38 
 b/drivers/ide/ide-features.c                 |    6 
 b/drivers/ide/ide-floppy.c                   |   28 
 b/drivers/ide/ide-m8xx.c                     |   10 
 b/drivers/ide/ide-probe.c                    |   38 
 b/drivers/ide/ide-proc.c                     |    1 
 b/drivers/ide/ide-tape.c                     |   12 
 b/drivers/ide/ide-taskfile.c                 |  318 +-
 b/drivers/ide/ide-tcq.c                      |  272 +
 b/drivers/ide/ide.c                          |  532 +--
 b/drivers/ide/it8172.c                       |   45 
 b/drivers/ide/pdc202xx.c                     |   12 
 b/drivers/ide/pdc4030.c                      |   38 
 b/drivers/ide/piix.c                         |    5 
 b/drivers/ide/qd65xx.c                       |    8 
 b/drivers/ide/rz1000.c                       |    3 
 b/drivers/ide/via82cxxx.c                    |    4 
 b/drivers/ieee1394/Makefile                  |    4 
 b/drivers/isdn/Config.help                   |  527 ---
 b/drivers/isdn/Config.in                     |  156 -
 b/drivers/isdn/Makefile                      |   28 
 b/drivers/isdn/act2000/Config.help           |    7 
 b/drivers/isdn/act2000/Config.in             |    6 
 b/drivers/isdn/avmb1/Config.help             |   64 
 b/drivers/isdn/avmb1/Config.in               |   33 
 b/drivers/isdn/eicon/Config.help             |   30 
 b/drivers/isdn/eicon/Config.in               |   20 
 b/drivers/isdn/hisax/Config.help             |  267 +
 b/drivers/isdn/hisax/Config.in               |   60 
 b/drivers/isdn/hysdn/Config.help             |    9 
 b/drivers/isdn/hysdn/Config.in               |    6 
 b/drivers/isdn/i4l/Config.help               |   88 
 b/drivers/isdn/i4l/Config.in                 |   46 
 b/drivers/isdn/i4l/Makefile                  |   34 
 b/drivers/isdn/i4l/isdn_audio.c              |  720 ++++
 b/drivers/isdn/i4l/isdn_audio.h              |   44 
 b/drivers/isdn/i4l/isdn_bsdcomp.c            |  940 ++++++
 b/drivers/isdn/i4l/isdn_common.c             | 2371 +++++++++++++++
 b/drivers/isdn/i4l/isdn_common.h             |   49 
 b/drivers/isdn/i4l/isdn_concap.c             |  108 
 b/drivers/isdn/i4l/isdn_concap.h             |   14 
 b/drivers/isdn/i4l/isdn_net.c                | 3238 +++++++++++++++++++++
 b/drivers/isdn/i4l/isdn_net.h                |  180 +
 b/drivers/isdn/i4l/isdn_ppp.c                | 2829 ++++++++++++++++++
 b/drivers/isdn/i4l/isdn_ppp.h                |   38 
 b/drivers/isdn/i4l/isdn_tty.c                | 4052 +++++++++++++++++++++++++++
 b/drivers/isdn/i4l/isdn_tty.h                |  121 
 b/drivers/isdn/i4l/isdn_ttyfax.c             | 1122 +++++++
 b/drivers/isdn/i4l/isdn_ttyfax.h             |   18 
 b/drivers/isdn/i4l/isdn_v110.c               |  614 ++++
 b/drivers/isdn/i4l/isdn_v110.h               |   29 
 b/drivers/isdn/i4l/isdn_x25iface.c           |  341 ++
 b/drivers/isdn/i4l/isdn_x25iface.h           |   39 
 b/drivers/isdn/icn/Config.help               |   10 
 b/drivers/isdn/icn/Config.in                 |    5 
 b/drivers/isdn/icn/Makefile                  |    2 
 b/drivers/isdn/pcbit/Config.help             |    8 
 b/drivers/isdn/pcbit/Config.in               |    5 
 b/drivers/isdn/sc/Config.help                |    8 
 b/drivers/isdn/sc/Config.in                  |    5 
 b/drivers/isdn/tpam/Config.help              |    8 
 b/drivers/isdn/tpam/Config.in                |    7 
 b/drivers/md/Makefile                        |    4 
 b/drivers/media/radio/Makefile               |   12 
 b/drivers/media/video/Makefile               |   37 
 b/drivers/message/fusion/Makefile            |   17 
 b/drivers/mtd/Makefile                       |   11 
 b/drivers/net/dl2k.c                         |    4 
 b/drivers/net/eepro100.c                     |    4 
 b/drivers/net/sis900.c                       |    2 
 b/drivers/net/tokenring/olympic.c            |    3 
 b/drivers/net/wan/dscc4.c                    | 1033 +++---
 b/drivers/parport/Makefile                   |    6 
 b/drivers/pci/pci.ids                        |    3 
 b/drivers/pcmcia/Makefile                    |   18 
 b/drivers/pcmcia/sa1100.h                    |    3 
 b/drivers/pcmcia/sa1100_generic.c            |    3 
 b/drivers/pcmcia/sa1100_trizeps.c            |  214 +
 b/drivers/pnp/Makefile                       |   13 
 b/drivers/pnp/pnpbios_core.c                 |   88 
 b/drivers/s390/block/Makefile                |   14 
 b/drivers/s390/char/Makefile                 |    8 
 b/drivers/s390/net/Makefile                  |    5 
 b/drivers/sbus/char/Makefile                 |    7 
 b/drivers/scsi/Makefile                      |   22 
 b/drivers/scsi/advansys.c                    |   38 
 b/drivers/scsi/aic7xxx/Makefile              |   33 
 b/drivers/scsi/ide-scsi.c                    |   12 
 b/drivers/scsi/ips.c                         |   83 
 b/drivers/scsi/ips.h                         |    3 
 b/drivers/scsi/pcmcia/Makefile               |   12 
 b/drivers/scsi/scsi_debug.c                  |  665 ++--
 b/drivers/scsi/scsi_debug.h                  |   21 
 b/drivers/scsi/scsicam.c                     |    2 
 b/drivers/scsi/st.c                          |    4 
 b/drivers/scsi/sym53c8xx_2/Makefile          |    7 
 b/drivers/usb/class/audio.c                  |    6 
 b/drivers/usb/class/cdc-acm.c                |   82 
 b/drivers/usb/core/devio.c                   |   20 
 b/drivers/usb/core/hcd.c                     |   39 
 b/drivers/usb/core/hcd.h                     |    2 
 b/drivers/usb/core/hub.c                     |   22 
 b/drivers/usb/core/usb.c                     |   62 
 b/drivers/usb/host/ehci-dbg.c                |    2 
 b/drivers/usb/host/ehci-hcd.c                |   23 
 b/drivers/usb/host/ehci-hub.c                |    8 
 b/drivers/usb/host/ehci-mem.c                |    8 
 b/drivers/usb/host/ehci-q.c                  |   18 
 b/drivers/usb/host/ehci-sched.c              |   10 
 b/drivers/usb/host/ohci-dbg.c                |    6 
 b/drivers/usb/host/ohci-hcd.c                |   42 
 b/drivers/usb/host/ohci-hub.c                |    4 
 b/drivers/usb/host/uhci.c                    |    1 
 b/drivers/usb/host/usb-ohci.c                |    1 
 b/drivers/usb/host/usb-uhci.c                |    1 
 b/drivers/usb/image/Config.help              |   11 
 b/drivers/usb/image/Config.in                |    5 
 b/drivers/usb/image/Makefile                 |    1 
 b/drivers/usb/misc/tiglusb.c                 |    5 
 b/drivers/usb/net/Config.in                  |    6 
 b/drivers/usb/net/catc.c                     |   14 
 b/drivers/usb/net/kaweth.c                   |  273 +
 b/drivers/usb/net/pegasus.c                  |  971 +++---
 b/drivers/usb/net/pegasus.h                  |   11 
 b/drivers/usb/net/rtl8150.c                  |  499 +--
 b/drivers/usb/net/usbnet.c                   |   62 
 b/drivers/usb/serial/ftdi_sio.c              |    1 
 b/drivers/usb/serial/keyspan_pda.c           |   17 
 b/drivers/usb/serial/usbserial.c             |   49 
 b/drivers/usb/storage/Makefile               |   18 
 b/drivers/video/anakinfb.c                   |   14 
 b/drivers/video/cyber2000fb.c                |    4 
 b/drivers/video/neofb.c                      |    2 
 b/fs/Config.in                               |    1 
 b/fs/Makefile                                |    1 
 b/fs/bfs/bfs_defs.h                          |   11 
 b/fs/bfs/dir.c                               |   11 
 b/fs/bfs/file.c                              |   17 
 b/fs/bfs/inode.c                             |  100 
 b/fs/binfmt_misc.c                           |    2 
 b/fs/dcache.c                                |  172 +
 b/fs/devfs/util.c                            |    4 
 b/fs/exec.c                                  |    3 
 b/fs/exportfs/Makefile                       |   11 
 b/fs/exportfs/expfs.c                        |  516 +++
 b/fs/ext2/inode.c                            |    1 
 b/fs/ext2/namei.c                            |   27 
 b/fs/ext2/super.c                            |   11 
 b/fs/ext3/inode.c                            |    1 
 b/fs/fat/inode.c                             |   23 
 b/fs/fcntl.c                                 |    4 
 b/fs/intermezzo/dir.c                        |    2 
 b/fs/jffs/Makefile                           |    7 
 b/fs/jfs/jfs_metapage.c                      |   52 
 b/fs/minix/itree_common.c                    |    1 
 b/fs/nfsd/export.c                           |    9 
 b/fs/nfsd/nfsctl.c                           |    6 
 b/fs/nfsd/nfsfh.c                            |  178 -
 b/fs/nls/nls_base.c                          |    4 
 b/fs/proc/base.c                             |  267 +
 b/fs/reiserfs/inode.c                        |   17 
 b/fs/super.c                                 |    2 
 b/fs/sysv/itree.c                            |    1 
 b/include/asm-alpha/mman.h                   |    1 
 b/include/asm-alpha/pgalloc.h                |    2 
 b/include/asm-alpha/siginfo.h                |    1 
 b/include/asm-alpha/thread_info.h            |    3 
 b/include/asm-alpha/unistd.h                 |    3 
 b/include/asm-arm/arch-adifcc/system.h       |    3 
 b/include/asm-arm/arch-anakin/system.h       |    3 
 b/include/asm-arm/arch-arc/system.h          |    3 
 b/include/asm-arm/arch-cl7500/system.h       |    6 
 b/include/asm-arm/arch-clps711x/system.h     |    2 
 b/include/asm-arm/arch-ebsa110/system.h      |   29 
 b/include/asm-arm/arch-ebsa285/system.h      |   21 
 b/include/asm-arm/arch-epxa10db/system.h     |    4 
 b/include/asm-arm/arch-integrator/system.h   |    4 
 b/include/asm-arm/arch-iop310/system.h       |    5 
 b/include/asm-arm/arch-l7200/system.h        |    3 
 b/include/asm-arm/arch-nexuspci/system.h     |    5 
 b/include/asm-arm/arch-pxa/system.h          |    8 
 b/include/asm-arm/arch-rpc/system.h          |   21 
 b/include/asm-arm/arch-sa1100/system.h       |    8 
 b/include/asm-arm/arch-shark/memory.h        |    2 
 b/include/asm-arm/arch-shark/system.h        |    2 
 b/include/asm-arm/arch-tbox/system.h         |   21 
 b/include/asm-arm/cacheflush.h               |   15 
 b/include/asm-arm/cpu-multi26.h              |    2 
 b/include/asm-arm/cpu-multi32.h              |   13 
 b/include/asm-arm/cpu-single.h               |    9 
 b/include/asm-arm/hardware/sa1111.h          |   62 
 b/include/asm-arm/io.h                       |   18 
 b/include/asm-arm/mmu_context.h              |    2 
 b/include/asm-arm/pci.h                      |   27 
 b/include/asm-arm/pgalloc.h                  |    5 
 b/include/asm-arm/proc-armo/cache.h          |   63 
 b/include/asm-arm/proc-armo/tlbflush.h       |   63 
 b/include/asm-arm/proc-armv/cache.h          |  105 
 b/include/asm-arm/proc-armv/tlbflush.h       |  125 
 b/include/asm-arm/thread_info.h              |    2 
 b/include/asm-arm/tlbflush.h                 |   15 
 b/include/asm-i386/bitops.h                  |   40 
 b/include/asm-i386/bugs.h                    |    8 
 b/include/asm-i386/errno.h                   |    2 
 b/include/asm-i386/hardirq.h                 |    1 
 b/include/asm-i386/i387.h                    |    2 
 b/include/asm-i386/ioctls.h                  |    2 
 b/include/asm-i386/pgtable.h                 |    4 
 b/include/asm-i386/tlbflush.h                |    7 
 b/include/asm-ia64/acpi.h                    |   49 
 b/include/asm-ia64/cacheflush.h              |   37 
 b/include/asm-ia64/efi.h                     |    3 
 b/include/asm-ia64/hw_irq.h                  |    2 
 b/include/asm-ia64/ide.h                     |   32 
 b/include/asm-ia64/machvec.h                 |    4 
 b/include/asm-ia64/machvec_hpzx1.h           |   74 
 b/include/asm-ia64/machvec_init.h            |    5 
 b/include/asm-ia64/module.h                  |    3 
 b/include/asm-ia64/offsets.h                 |    6 
 b/include/asm-ia64/pci.h                     |    5 
 b/include/asm-ia64/percpu.h                  |   24 
 b/include/asm-ia64/pgalloc.h                 |   67 
 b/include/asm-ia64/pgtable.h                 |   52 
 b/include/asm-ia64/processor.h               |   11 
 b/include/asm-ia64/string.h                  |   20 
 b/include/asm-ia64/system.h                  |    8 
 b/include/asm-ia64/thread_info.h             |    7 
 b/include/asm-ia64/tlbflush.h                |   83 
 b/include/asm-ia64/uaccess.h                 |    5 
 b/include/asm-ia64/unistd.h                  |    3 
 b/include/asm-ppc/bitops.h                   |   34 
 b/include/asm-x86_64/apic.h                  |   19 
 b/include/asm-x86_64/apicdef.h               |   12 
 b/include/asm-x86_64/bitops.h                |  137 
 b/include/asm-x86_64/bugs.h                  |   20 
 b/include/asm-x86_64/cacheflush.h            |   18 
 b/include/asm-x86_64/calling.h               |  176 -
 b/include/asm-x86_64/checksum.h              |    1 
 b/include/asm-x86_64/current.h               |    7 
 b/include/asm-x86_64/desc.h                  |   57 
 b/include/asm-x86_64/elf.h                   |   18 
 b/include/asm-x86_64/fixmap.h                |   20 
 b/include/asm-x86_64/fpu32.h                 |   10 
 b/include/asm-x86_64/hw_irq.h                |   61 
 b/include/asm-x86_64/i387.h                  |  144 
 b/include/asm-x86_64/ia32.h                  |   33 
 b/include/asm-x86_64/ia32_unistd.h           |    6 
 b/include/asm-x86_64/io.h                    |   33 
 b/include/asm-x86_64/io_apic.h               |    4 
 b/include/asm-x86_64/ipc.h                   |    2 
 b/include/asm-x86_64/kdebug.h                |   19 
 b/include/asm-x86_64/ldt.h                   |   11 
 b/include/asm-x86_64/mman.h                  |    1 
 b/include/asm-x86_64/mmu_context.h           |   11 
 b/include/asm-x86_64/module.h                |    7 
 b/include/asm-x86_64/mpspec.h                |    3 
 b/include/asm-x86_64/msr.h                   |   53 
 b/include/asm-x86_64/page.h                  |   47 
 b/include/asm-x86_64/pda.h                   |   15 
 b/include/asm-x86_64/percpu.h                |    6 
 b/include/asm-x86_64/pgalloc.h               |   80 
 b/include/asm-x86_64/pgtable.h               |  226 -
 b/include/asm-x86_64/processor.h             |  113 
 b/include/asm-x86_64/ptrace.h                |    6 
 b/include/asm-x86_64/rwlock.h                |   26 
 b/include/asm-x86_64/rwsem.h                 |   50 
 b/include/asm-x86_64/segment.h               |    2 
 b/include/asm-x86_64/semaphore.h             |   19 
 b/include/asm-x86_64/sigcontext.h            |   93 
 b/include/asm-x86_64/sigcontext32.h          |   71 
 b/include/asm-x86_64/siginfo.h               |    1 
 b/include/asm-x86_64/smp.h                   |   18 
 b/include/asm-x86_64/system.h                |  109 
 b/include/asm-x86_64/thread_info.h           |   12 
 b/include/asm-x86_64/timex.h                 |    4 
 b/include/asm-x86_64/tlbflush.h              |  128 
 b/include/asm-x86_64/types.h                 |    2 
 b/include/asm-x86_64/unistd.h                |   17 
 b/include/asm-x86_64/user.h                  |   50 
 b/include/asm-x86_64/user32.h                |   23 
 b/include/asm-x86_64/vsyscall.h              |    6 
 b/include/linux/acpi_serial.h                |    2 
 b/include/linux/auto_fs.h                    |    2 
 b/include/linux/bfs_fs.h                     |    6 
 b/include/linux/capability.h                 |    1 
 b/include/linux/dcache.h                     |   21 
 b/include/linux/fb.h                         |   76 
 b/include/linux/fs.h                         |  112 
 b/include/linux/hdreg.h                      |    2 
 b/include/linux/ide.h                        |  183 -
 b/include/linux/interrupt.h                  |    2 
 b/include/linux/nls.h                        |    2 
 b/include/linux/pci_ids.h                    |    3 
 b/include/linux/prctl.h                      |    6 
 b/include/linux/proc_fs.h                    |    1 
 b/include/linux/raid/md.h                    |    2 
 b/include/linux/sched.h                      |   11 
 b/include/linux/signal.h                     |    4 
 b/include/linux/smp.h                        |    1 
 b/include/linux/thread_info.h                |    2 
 b/include/linux/tqueue.h                     |    2 
 b/include/linux/usb.h                        |   33 
 b/include/sound/asound.h                     |    1 
 b/include/sound/core.h                       |    1 
 b/init/main.c                                |   11 
 b/kernel/exit.c                              |   34 
 b/kernel/fork.c                              |    1 
 b/kernel/ksyms.c                             |    4 
 b/kernel/printk.c                            |   13 
 b/kernel/sched.c                             |   84 
 b/kernel/sys.c                               |   33 
 b/kernel/time.c                              |    5 
 b/lib/radix-tree.c                           |   27 
 b/mm/filemap.c                               |   58 
 b/mm/page_alloc.c                            |    2 
 b/mm/swapfile.c                              |    3 
 b/mm/vmalloc.c                               |    6 
 b/mm/vmscan.c                                |   25 
 b/net/atm/Makefile                           |    9 
 b/net/bluetooth/Makefile                     |    8 
 b/net/ipv4/netfilter/Makefile                |   20 
 b/net/irda/ircomm/Makefile                   |   12 
 b/scripts/Configure                          |    9 
 b/sound/core/device.c                        |    1 
 b/sound/core/memory.c                        |    1 
 b/sound/core/seq/seq_dummy.c                 |    1 
 b/sound/core/seq/seq_midi.c                  |    2 
 b/sound/core/seq/seq_midi_event.c            |    1 
 b/sound/core/seq/seq_queue.c                 |    6 
 b/sound/core/seq/seq_queue.h                 |    2 
 b/sound/drivers/mpu401/mpu401_uart.c         |    2 
 drivers/isdn/isdn_audio.c                    |  720 ----
 drivers/isdn/isdn_audio.h                    |   44 
 drivers/isdn/isdn_bsdcomp.c                  |  940 ------
 drivers/isdn/isdn_common.c                   | 2371 ---------------
 drivers/isdn/isdn_common.h                   |   49 
 drivers/isdn/isdn_concap.c                   |  108 
 drivers/isdn/isdn_concap.h                   |   14 
 drivers/isdn/isdn_net.c                      | 3238 ---------------------
 drivers/isdn/isdn_net.h                      |  180 -
 drivers/isdn/isdn_ppp.c                      | 2829 ------------------
 drivers/isdn/isdn_ppp.h                      |   38 
 drivers/isdn/isdn_tty.c                      | 4052 ---------------------------
 drivers/isdn/isdn_tty.h                      |  121 
 drivers/isdn/isdn_ttyfax.c                   | 1122 -------
 drivers/isdn/isdn_ttyfax.h                   |   18 
 drivers/isdn/isdn_v110.c                     |  614 ----
 drivers/isdn/isdn_v110.h                     |   29 
 drivers/isdn/isdn_x25iface.c                 |  341 --
 drivers/isdn/isdn_x25iface.h                 |   39 
 drivers/usb/image/dc2xx.c                    |  538 ---
 include/asm-ia64/acpi-ext.h                  |  323 --
 include/asm-ia64/acpikcfg.h                  |   30 
 599 files changed, 38266 insertions(+), 32239 deletions(-)

