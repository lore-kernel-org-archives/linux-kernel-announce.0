From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.16 released
Date: Sat, 18 May 2002 00:52:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205180752.g4I7q3d14838@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.16 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.16.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.16.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               296879           1190508
Full source                       34261700         152821760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/arm/mm/copypage-v4.S                   |   77 
 b/Documentation/filesystems/devfs/ChangeLog |   19 
 b/Documentation/filesystems/porting         |    6 
 b/Documentation/networking/8139too.txt      |    1 
 b/Documentation/networking/cs89x0.txt       |   14 
 b/MAINTAINERS                               |   10 
 b/Makefile                                  |    2 
 b/arch/alpha/boot/Makefile                  |    9 
 b/arch/alpha/defconfig                      |    1 
 b/arch/alpha/kernel/Makefile                |    7 
 b/arch/alpha/kernel/process.c               |   12 
 b/arch/alpha/kernel/smp.c                   |   11 
 b/arch/alpha/lib/Makefile                   |    7 
 b/arch/alpha/vmlinux.lds.in                 |    1 
 b/arch/arm/boot/Makefile                    |   11 
 b/arch/arm/boot/bootp/Makefile              |    1 
 b/arch/arm/boot/bootp/init.S                |    4 
 b/arch/arm/boot/compressed/head.S           |   18 
 b/arch/arm/config.in                        |   14 
 b/arch/arm/def-configs/neponset             |    2 
 b/arch/arm/kernel/armksyms.c                |    1 
 b/arch/arm/kernel/compat.c                  |  123 +
 b/arch/arm/kernel/entry-armv.S              |    6 
 b/arch/arm/kernel/ptrace.c                  |    2 
 b/arch/arm/kernel/setup.c                   |   71 
 b/arch/arm/kernel/sys_arm.c                 |   12 
 b/arch/arm/kernel/traps.c                   |   12 
 b/arch/arm/lib/csumpartialcopygeneric.S     |   62 
 b/arch/arm/mach-adifcc/arch.c               |    2 
 b/arch/arm/mach-anakin/arch.c               |    2 
 b/arch/arm/mach-clps711x/cdb89712.c         |    2 
 b/arch/arm/mach-clps711x/clep7312.c         |    2 
 b/arch/arm/mach-clps711x/edb7211-arch.c     |    2 
 b/arch/arm/mach-clps711x/fortunet.c         |    2 
 b/arch/arm/mach-clps711x/p720t.c            |    4 
 b/arch/arm/mach-epxa10db/arch.c             |    2 
 b/arch/arm/mach-footbridge/arch.c           |   35 
 b/arch/arm/mach-integrator/arch.c           |    2 
 b/arch/arm/mach-integrator/mm.c             |   10 
 b/arch/arm/mach-integrator/pci_v3.c         |   32 
 b/arch/arm/mach-iop310/arch.c               |    2 
 b/arch/arm/mach-l7200/core.c                |    2 
 b/arch/arm/mach-pxa/idp.c                   |    2 
 b/arch/arm/mach-pxa/lubbock.c               |    2 
 b/arch/arm/mach-rpc/riscpc.c                |    2 
 b/arch/arm/mach-sa1100/adsbitsy.c           |    2 
 b/arch/arm/mach-sa1100/assabet.c            |   30 
 b/arch/arm/mach-sa1100/badge4.c             |    8 
 b/arch/arm/mach-sa1100/brutus.c             |    2 
 b/arch/arm/mach-sa1100/cerf.c               |    2 
 b/arch/arm/mach-sa1100/empeg.c              |    2 
 b/arch/arm/mach-sa1100/flexanet.c           |    6 
 b/arch/arm/mach-sa1100/freebird.c           |    2 
 b/arch/arm/mach-sa1100/graphicsclient.c     |    2 
 b/arch/arm/mach-sa1100/graphicsmaster.c     |    2 
 b/arch/arm/mach-sa1100/huw_webpanel.c       |    2 
 b/arch/arm/mach-sa1100/irq.c                |   10 
 b/arch/arm/mach-sa1100/itsy.c               |    2 
 b/arch/arm/mach-sa1100/jornada720.c         |    2 
 b/arch/arm/mach-sa1100/nanoengine.c         |    2 
 b/arch/arm/mach-sa1100/neponset.c           |  124 -
 b/arch/arm/mach-sa1100/omnimeter.c          |    2 
 b/arch/arm/mach-sa1100/pangolin.c           |    2 
 b/arch/arm/mach-sa1100/pfs168.c             |    2 
 b/arch/arm/mach-sa1100/pleb.c               |    2 
 b/arch/arm/mach-sa1100/sherman.c            |    2 
 b/arch/arm/mach-sa1100/simpad.c             |    2 
 b/arch/arm/mach-sa1100/system3.c            |    6 
 b/arch/arm/mach-sa1100/victor.c             |    2 
 b/arch/arm/mach-sa1100/xp860.c              |    2 
 b/arch/arm/mm/Makefile                      |   20 
 b/arch/arm/mm/consistent.c                  |    3 
 b/arch/arm/mm/copypage-v4wb.S               |   77 
 b/arch/arm/mm/copypage-v4wt.S               |   71 
 b/arch/arm/mm/proc-arm1020.S                |    2 
 b/arch/arm/mm/proc-arm720.S                 |    2 
 b/arch/arm/mm/proc-arm920.S                 |    2 
 b/arch/arm/mm/proc-arm922.S                 |    2 
 b/arch/arm/mm/proc-arm926.S                 |    2 
 b/arch/arm/mm/proc-sa110.S                  |    6 
 b/arch/arm/mm/tlb-v4.S                      |   27 
 b/arch/arm/vmlinux-armo.lds.in              |    1 
 b/arch/arm/vmlinux-armv.lds.in              |    1 
 b/arch/cris/cris.ld                         |    1 
 b/arch/cris/kernel/Makefile                 |    5 
 b/arch/cris/kernel/process.c                |   12 
 b/arch/cris/lib/Makefile                    |    6 
 b/arch/i386/defconfig                       |    1 
 b/arch/i386/kernel/process.c                |   14 
 b/arch/i386/kernel/setup.c                  |    5 
 b/arch/i386/kernel/smpboot.c                |   11 
 b/arch/i386/pci/Makefile                    |    2 
 b/arch/i386/vmlinux.lds                     |    1 
 b/arch/ia64/defconfig                       |    1 
 b/arch/ia64/ia32/ia32_entry.S               |    4 
 b/arch/ia64/kernel/entry.S                  |    4 
 b/arch/ia64/kernel/smpboot.c                |   11 
 b/arch/ia64/vmlinux.lds.S                   |    1 
 b/arch/m68k/fpsp040/Makefile                |    5 
 b/arch/m68k/ifpsp060/Makefile               |    5 
 b/arch/m68k/kernel/Makefile                 |    5 
 b/arch/m68k/kernel/process.c                |   12 
 b/arch/m68k/lib/Makefile                    |    5 
 b/arch/m68k/math-emu/Makefile               |    8 
 b/arch/m68k/sun3/Makefile                   |    5 
 b/arch/m68k/vmlinux-sun3.lds                |    1 
 b/arch/m68k/vmlinux.lds                     |    1 
 b/arch/mips/au1000/common/Makefile          |    7 
 b/arch/mips/au1000/pb1000/Makefile          |    5 
 b/arch/mips/boot/Makefile                   |    5 
 b/arch/mips/ddb5074/Makefile                |    7 
 b/arch/mips/ddb5476/Makefile                |    7 
 b/arch/mips/ddb5xxx/common/Makefile         |    5 
 b/arch/mips/ddb5xxx/ddb5477/Makefile        |    7 
 b/arch/mips/dec/Makefile                    |    5 
 b/arch/mips/dec/boot/Makefile               |    5 
 b/arch/mips/dec/prom/Makefile               |    7 
 b/arch/mips/gt64120/common/Makefile         |    5 
 b/arch/mips/gt64120/momenco_ocelot/Makefile |    7 
 b/arch/mips/ite-boards/generic/Makefile     |    7 
 b/arch/mips/ite-boards/ivr/Makefile         |    5 
 b/arch/mips/ite-boards/qed-4n-s01b/Makefile |    5 
 b/arch/mips/jazz/Makefile                   |    7 
 b/arch/mips/kernel/Makefile                 |    7 
 b/arch/mips/kernel/smp.c                    |    5 
 b/arch/mips/kernel/syscall.c                |   12 
 b/arch/mips/lib/Makefile                    |    7 
 b/arch/mips/math-emu/Makefile               |    5 
 b/arch/mips/mips-boards/atlas/Makefile      |    5 
 b/arch/mips/mips-boards/generic/Makefile    |    7 
 b/arch/mips/mips-boards/malta/Makefile      |    5 
 b/arch/mips/philips/nino/Makefile           |    5 
 b/arch/mips/sgi/kernel/Makefile             |    7 
 b/arch/mips/sni/Makefile                    |    7 
 b/arch/mips/tools/Makefile                  |    7 
 b/arch/mips64/boot/Makefile                 |    5 
 b/arch/mips64/kernel/Makefile               |    9 
 b/arch/mips64/kernel/syscall.c              |   12 
 b/arch/mips64/ld.script.elf64               |    1 
 b/arch/mips64/lib/Makefile                  |    7 
 b/arch/mips64/math-emu/Makefile             |    5 
 b/arch/mips64/mips-boards/atlas/Makefile    |    5 
 b/arch/mips64/mips-boards/generic/Makefile  |    7 
 b/arch/mips64/mips-boards/malta/Makefile    |    5 
 b/arch/mips64/sgi-ip22/Makefile             |    7 
 b/arch/mips64/sgi-ip27/Makefile             |    7 
 b/arch/mips64/sgi-ip27/ip27-init.c          |    2 
 b/arch/mips64/sgi-ip32/Makefile             |    7 
 b/arch/mips64/tools/Makefile                |    7 
 b/arch/parisc/kernel/entry.S                |    2 
 b/arch/parisc/kernel/process.c              |    9 
 b/arch/parisc/lib/Makefile                  |    6 
 b/arch/parisc/tools/Makefile                |    5 
 b/arch/parisc/vmlinux.lds                   |    1 
 b/arch/ppc/kernel/process.c                 |   12 
 b/arch/ppc/kernel/smp.c                     |    6 
 b/arch/ppc/vmlinux.lds                      |    1 
 b/arch/ppc64/kernel/process.c               |   12 
 b/arch/ppc64/kernel/smp.c                   |    6 
 b/arch/ppc64/vmlinux.lds                    |    1 
 b/arch/s390/boot/Makefile                   |    7 
 b/arch/s390/kernel/Makefile                 |    5 
 b/arch/s390/kernel/process.c                |   13 
 b/arch/s390/kernel/smp.c                    |   10 
 b/arch/s390/lib/Makefile                    |   10 
 b/arch/s390/vmlinux-shared.lds              |    1 
 b/arch/s390/vmlinux.lds                     |    1 
 b/arch/s390x/boot/Makefile                  |    5 
 b/arch/s390x/kernel/Makefile                |    5 
 b/arch/s390x/kernel/process.c               |   13 
 b/arch/s390x/kernel/smp.c                   |   10 
 b/arch/s390x/lib/Makefile                   |   10 
 b/arch/s390x/vmlinux-shared.lds             |    1 
 b/arch/s390x/vmlinux.lds                    |    1 
 b/arch/sh/kernel/process.c                  |   12 
 b/arch/sh/vmlinux.lds.S                     |    2 
 b/arch/sparc/kernel/Makefile                |   10 
 b/arch/sparc/kernel/entry.S                 |    9 
 b/arch/sparc/kernel/ptrace.c                |   32 
 b/arch/sparc/kernel/sun4d_smp.c             |    2 
 b/arch/sparc/kernel/sun4m_smp.c             |    2 
 b/arch/sparc/kernel/sys_sunos.c             |    4 
 b/arch/sparc/lib/Makefile                   |    8 
 b/arch/sparc/math-emu/Makefile              |    9 
 b/arch/sparc/mm/Makefile                    |    4 
 b/arch/sparc/vmlinux.lds                    |    1 
 b/arch/sparc64/defconfig                    |    1 
 b/arch/sparc64/kernel/entry.S               |    2 
 b/arch/sparc64/kernel/pci.c                 |    6 
 b/arch/sparc64/kernel/process.c             |    7 
 b/arch/sparc64/kernel/ptrace.c              |   32 
 b/arch/sparc64/kernel/smp.c                 |    2 
 b/arch/sparc64/kernel/sparc64_ksyms.c       |    4 
 b/arch/sparc64/kernel/sys_sunos32.c         |    4 
 b/arch/sparc64/vmlinux.lds                  |    1 
 b/arch/x86_64/defconfig                     |    1 
 b/arch/x86_64/ia32/sys_ia32.c               |   12 
 b/arch/x86_64/kernel/entry.S                |    2 
 b/arch/x86_64/kernel/process.c              |   12 
 b/arch/x86_64/kernel/smpboot.c              |   11 
 b/arch/x86_64/vmlinux.lds                   |    1 
 b/drivers/base/Makefile                     |    2 
 b/drivers/block/Config.help                 |   18 
 b/drivers/block/Config.in                   |    1 
 b/drivers/block/Makefile                    |    1 
 b/drivers/block/swim3.c                     |   74 
 b/drivers/block/umem.c                      | 1331 ++++++++++++++
 b/drivers/char/misc.c                       |   11 
 b/drivers/char/rtc.c                        |    4 
 b/drivers/ide/Config.help                   |    3 
 b/drivers/ide/Config.in                     |    1 
 b/drivers/ide/Makefile                      |    8 
 b/drivers/ide/ata-timing.c                  |    4 
 b/drivers/ide/cmd640.c                      |  113 -
 b/drivers/ide/hpt366.c                      |    4 
 b/drivers/ide/ide-cd.c                      |   26 
 b/drivers/ide/ide-disk.c                    |  214 +-
 b/drivers/ide/ide-features.c                |   98 -
 b/drivers/ide/ide-floppy.c                  |   20 
 b/drivers/ide/ide-geometry.c                |   18 
 b/drivers/ide/ide-pci.c                     |   33 
 b/drivers/ide/ide-pmac.c                    |  174 -
 b/drivers/ide/ide-probe.c                   |   53 
 b/drivers/ide/ide-tape.c                    |   52 
 b/drivers/ide/ide-taskfile.c                |  216 +-
 b/drivers/ide/ide.c                         |  908 ++++-----
 b/drivers/ide/pcidma.c                      |  555 +++++
 b/drivers/ide/pcihost.h                     |    7 
 b/drivers/ide/pdc202xx.c                    |  504 -----
 b/drivers/ide/pdc4030.c                     |  217 +-
 b/drivers/ide/quirks.c                      |  231 ++
 b/drivers/ide/sl82c105.c                    |    2 
 b/drivers/ide/tcq.c                         |   94 
 b/drivers/ide/umc8672.c                     |   23 
 b/drivers/isdn/capi/Makefile                |    4 
 b/drivers/isdn/capi/capilib.c               |  200 ++
 b/drivers/isdn/capi/kcapi.c                 |  328 ---
 b/drivers/isdn/hardware/avm/avmcard.h       |    7 
 b/drivers/isdn/hardware/avm/b1.c            |   57 
 b/drivers/isdn/hardware/avm/b1dma.c         |   28 
 b/drivers/isdn/hardware/avm/b1isa.c         |   87 
 b/drivers/isdn/hardware/avm/b1pci.c         |  144 -
 b/drivers/isdn/hardware/avm/b1pcmcia.c      |   28 
 b/drivers/isdn/hardware/avm/c4.c            |  108 -
 b/drivers/isdn/hardware/avm/t1isa.c         |  164 +
 b/drivers/isdn/hardware/avm/t1pci.c         |   56 
 b/drivers/isdn/hysdn/hycapi.c               |   52 
 b/drivers/isdn/hysdn/hysdn_defs.h           |    4 
 b/drivers/macintosh/Makefile                |    2 
 b/drivers/macintosh/adb.c                   |   68 
 b/drivers/macintosh/adbhid.c                |  102 -
 b/drivers/macintosh/ans-lcd.c               |  171 +
 b/drivers/macintosh/apm_emu.c               |  554 +++++
 b/drivers/macintosh/mac_hid.c               |    9 
 b/drivers/macintosh/macserial.c             |  284 ++-
 b/drivers/macintosh/macserial.h             |    2 
 b/drivers/macintosh/mediabay.c              |  640 ++++--
 b/drivers/macintosh/rtc.c                   |    8 
 b/drivers/macintosh/via-cuda.c              |   10 
 b/drivers/macintosh/via-pmu.c               |  833 +++++++-
 b/drivers/media/video/planb.c               |    1 
 b/drivers/net/3c509.c                       |   62 
 b/drivers/net/8139too.c                     |    2 
 b/drivers/net/cs89x0.c                      |   82 
 b/drivers/net/cs89x0.h                      |    4 
 b/drivers/net/irda/smc-ircc.c               |   13 
 b/drivers/net/mii.c                         |    2 
 b/drivers/net/tulip/21142.c                 |    3 
 b/drivers/net/tulip/ChangeLog               |   10 
 b/drivers/net/tulip/tulip_core.c            |    5 
 b/drivers/net/via-rhine.c                   |   87 
 b/drivers/net/wan/pc300_drv.c               |    2 
 b/drivers/net/wan/pc300_tty.c               |    2 
 b/drivers/net/wireless/Config.help          |    1 
 b/drivers/net/wireless/airport.c            |   10 
 b/drivers/net/wireless/orinoco.c            |   16 
 b/drivers/net/wireless/orinoco_cs.c         |    9 
 b/drivers/net/wireless/orinoco_plx.c        |   14 
 b/drivers/pci/Makefile                      |    4 
 b/drivers/scsi/ide-scsi.c                   |   33 
 b/drivers/scsi/mesh.c                       |  319 +--
 b/drivers/scsi/mesh.h                       |   33 
 b/drivers/scsi/scsi_lib.c                   |   19 
 b/drivers/scsi/scsi_merge.c                 |   15 
 b/drivers/usb/core/hcd.c                    |    7 
 b/drivers/usb/core/hcd.h                    |    3 
 b/drivers/usb/core/hub.c                    |   99 +
 b/drivers/usb/core/hub.h                    |   28 
 b/drivers/usb/core/usb.c                    |  111 -
 b/drivers/usb/host/Config.in                |    9 
 b/drivers/usb/host/Makefile                 |    3 
 b/drivers/usb/host/ehci-hcd.c               |   97 -
 b/drivers/usb/host/ehci-q.c                 |   19 
 b/drivers/usb/host/uhci-debug.c             |  580 ++++++
 b/drivers/usb/host/uhci-hcd.c               | 2633 ++++++++++++++++++++++++++++
 b/drivers/usb/host/uhci-hcd.h               |  389 ++++
 b/drivers/usb/host/uhci-hub.c               |  184 +
 b/drivers/usb/host/uhci.c                   |   96 -
 b/drivers/usb/host/uhci.h                   |    6 
 b/drivers/usb/host/usb-ohci.c               |   24 
 b/drivers/usb/host/usb-uhci-dbg.c           |  151 +
 b/drivers/usb/host/usb-uhci-hcd.c           |  645 ++++++
 b/drivers/usb/host/usb-uhci-hcd.h           |  247 ++
 b/drivers/usb/host/usb-uhci-hub.c           |  213 ++
 b/drivers/usb/host/usb-uhci-mem.c           |  722 +++++++
 b/drivers/usb/host/usb-uhci-q.c             | 1320 ++++++++++++++
 b/drivers/usb/host/usb-uhci.c               |   14 
 b/drivers/usb/media/usbvideo.c              |    4 
 b/drivers/usb/net/cdc-ether.c               |    4 
 b/drivers/usb/net/pegasus.c                 |    4 
 b/drivers/usb/net/usbnet.c                  |    4 
 b/drivers/usb/storage/Config.help           |    4 
 b/drivers/usb/storage/Config.in             |    1 
 b/drivers/usb/storage/Makefile              |    1 
 b/drivers/usb/storage/datafab.c             |   38 
 b/drivers/usb/storage/debug.c               |   11 
 b/drivers/usb/storage/freecom.c             |    2 
 b/drivers/usb/storage/isd200.c              |  364 +--
 b/drivers/usb/storage/jumpshot.c            |   43 
 b/drivers/usb/storage/protocol.c            |   68 
 b/drivers/usb/storage/scsiglue.c            |  157 -
 b/drivers/usb/storage/sddr09.c              |   33 
 b/drivers/usb/storage/sddr55.c              | 1135 ++++++++++++
 b/drivers/usb/storage/sddr55.h              |   34 
 b/drivers/usb/storage/shuttle_usbat.c       |   21 
 b/drivers/usb/storage/transport.c           |  583 +++---
 b/drivers/usb/storage/transport.h           |    8 
 b/drivers/usb/storage/unusual_devs.h        |   96 -
 b/drivers/usb/storage/usb.c                 |   82 
 b/drivers/usb/storage/usb.h                 |   27 
 b/drivers/video/aty/mach64_gx.c             |    1 
 b/fs/adfs/adfs.h                            |    2 
 b/fs/adfs/dir.c                             |    2 
 b/fs/adfs/map.c                             |  100 -
 b/fs/adfs/super.c                           |   34 
 b/fs/devfs/base.c                           |  119 -
 b/fs/devfs/util.c                           |   18 
 b/fs/fat/dir.c                              |   22 
 b/fs/isofs/inode.c                          |   16 
 b/fs/jfs/jfs_txnmgr.c                       |   35 
 b/fs/nfsd/export.c                          |    9 
 b/fs/nfsd/nfsfh.c                           |  554 -----
 b/fs/nls/Makefile                           |    7 
 b/fs/ntfs/ChangeLog                         |    9 
 b/fs/ntfs/Makefile                          |    2 
 b/fs/ntfs/aops.c                            |    6 
 b/fs/ntfs/attraops.c                        |    1 
 b/fs/ntfs/file.c                            |  120 -
 b/fs/ntfs/mft.c                             |    9 
 b/fs/ntfs/namei.c                           |   37 
 b/fs/ntfs/ntfs.h                            |    9 
 b/fs/ntfs/super.c                           |   32 
 b/fs/super.c                                |    1 
 b/include/asm-alpha/ide.h                   |    4 
 b/include/asm-arm/arch-clps711x/memory.h    |   57 
 b/include/asm-arm/arch-integrator/time.h    |    1 
 b/include/asm-arm/arch-sa1100/SA-1100.h     |   10 
 b/include/asm-arm/arch-sa1100/hardware.h    |    9 
 b/include/asm-arm/arch-sa1100/irqs.h        |    5 
 b/include/asm-arm/arch-sa1100/memory.h      |   41 
 b/include/asm-arm/glue.h                    |   19 
 b/include/asm-arm/ide.h                     |    4 
 b/include/asm-arm/io.h                      |   18 
 b/include/asm-arm/memory.h                  |   87 
 b/include/asm-arm/page.h                    |   13 
 b/include/asm-arm/pgtable.h                 |   26 
 b/include/asm-arm/setup.h                   |   72 
 b/include/asm-cris/ide.h                    |    7 
 b/include/asm-generic/tlb.h                 |  110 -
 b/include/asm-i386/ide.h                    |    4 
 b/include/asm-i386/pgalloc.h                |    4 
 b/include/asm-ia64/ide.h                    |    4 
 b/include/asm-m68k/ide.h                    |   14 
 b/include/asm-mips/ide.h                    |    7 
 b/include/asm-mips64/ide.h                  |    4 
 b/include/asm-parisc/ide.h                  |    4 
 b/include/asm-ppc/ide.h                     |    8 
 b/include/asm-ppc64/ide.h                   |    4 
 b/include/asm-s390/ide.h                    |    8 
 b/include/asm-s390x/ide.h                   |    4 
 b/include/asm-sh/ide.h                      |    4 
 b/include/asm-sparc/ide.h                   |    8 
 b/include/asm-sparc64/bitops.h              |  142 -
 b/include/asm-sparc64/ide.h                 |    7 
 b/include/asm-sparc64/visasm.h              |    2 
 b/include/asm-x86_64/ide.h                  |    4 
 b/include/linux/b1lli.h                     |    4 
 b/include/linux/cuda.h                      |    1 
 b/include/linux/fs.h                        |   33 
 b/include/linux/ide.h                       |  244 +-
 b/include/linux/init_task.h                 |    4 
 b/include/linux/input.h                     |    3 
 b/include/linux/isdn/capilli.h              |   24 
 b/include/linux/kernelcapi.h                |    4 
 b/include/linux/mm.h                        |    2 
 b/include/linux/pmu.h                       |   41 
 b/include/linux/sched.h                     |   26 
 b/include/linux/umem.h                      |  130 +
 b/include/linux/usb.h                       |   68 
 b/include/math-emu/op-common.h              |   12 
 b/include/net/irda/irlmp.h                  |   38 
 b/include/net/irda/irttp.h                  |    2 
 b/include/net/iw_handler.h                  |    3 
 b/kernel/fork.c                             |   33 
 b/kernel/ksyms.c                            |    1 
 b/kernel/sched.c                            |   20 
 b/kernel/sys.c                              |    4 
 b/kernel/timer.c                            |    9 
 b/lib/zlib_inflate/inflate.c                |    2 
 b/mm/memory.c                               |  109 -
 b/mm/mmap.c                                 |  395 ++--
 b/net/core/wireless.c                       |   12 
 b/net/ipv4/syncookies.c                     |    3 
 b/net/ipv4/tcp_ipv4.c                       |    1 
 b/net/irda/irlmp.c                          |   24 
 b/net/irda/irlmp_frame.c                    |   34 
 b/net/irda/irnet/irnet.h                    |    4 
 b/net/irda/irnet/irnet_ppp.c                |    2 
 b/net/sched/sch_ingress.c                   |    4 
 b/sound/oss/ac97_codec.c                    |   51 
 drivers/ide/ide-dma.c                       |  866 ---------
 drivers/ide/pdcadma.c                       |  128 -
 422 files changed, 18421 insertions(+), 7616 deletions(-)

