From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.14 released
Date: Sun, 5 May 2002 20:44:02 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200205060344.g463i2c26820@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.14 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.14.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.14.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               193857            836551
Full source                       34175314         152453120

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/filesystems/Locking        |   64 
 b/Documentation/filesystems/ntfs.txt       |    7 
 b/Documentation/i810_rng.txt               |    3 
 b/Makefile                                 |    2 
 b/arch/alpha/config.in                     |    4 
 b/arch/alpha/kernel/core_irongate.c        |   11 
 b/arch/alpha/mm/init.c                     |   20 
 b/arch/alpha/mm/numa.c                     |    1 
 b/arch/arm/config.in                       |    4 
 b/arch/arm/mach-arc/mm.c                   |    2 
 b/arch/arm/mach-arc/small_page.c           |    4 
 b/arch/arm/mm/fault-armv.c                 |    8 
 b/arch/arm/mm/init.c                       |   12 
 b/arch/arm/mm/ioremap.c                    |    2 
 b/arch/arm/mm/minicache.c                  |    2 
 b/arch/arm/mm/mm-armv.c                    |    2 
 b/arch/cris/drivers/ide.c                  |   48 
 b/arch/cris/mm/init.c                      |   14 
 b/arch/cris/mm/ioremap.c                   |   10 
 b/arch/i386/config.in                      |    4 
 b/arch/i386/kernel/acpi.c                  |    2 
 b/arch/i386/mm/init.c                      |   20 
 b/arch/i386/mm/ioremap.c                   |    6 
 b/arch/ia64/config.in                      |    4 
 b/arch/ia64/kernel/efi.c                   |    2 
 b/arch/ia64/mm/init.c                      |   27 
 b/arch/ia64/sn/kernel/misctest.c           |    2 
 b/arch/m68k/mm/init.c                      |   17 
 b/arch/m68k/mm/motorola.c                  |    1 
 b/arch/mips/gt64120/momenco_ocelot/setup.c |    2 
 b/arch/mips/mm/init.c                      |   15 
 b/arch/mips/mm/ioremap.c                   |    6 
 b/arch/mips/mm/umap.c                      |    8 
 b/arch/mips64/mm/init.c                    |   16 
 b/arch/mips64/mm/umap.c                    |    8 
 b/arch/mips64/sgi-ip27/ip27-memory.c       |    1 
 b/arch/parisc/mm/init.c                    |   27 
 b/arch/ppc/config.in                       |    4 
 b/arch/ppc/mm/init.c                       |   13 
 b/arch/ppc/mm/pgtable.c                    |    2 
 b/arch/ppc64/mm/init.c                     |   14 
 b/arch/s390/mm/init.c                      |   24 
 b/arch/s390/mm/ioremap.c                   |    7 
 b/arch/s390x/mm/init.c                     |   26 
 b/arch/s390x/mm/ioremap.c                  |    7 
 b/arch/sh/mm/cache-sh4.c                   |    4 
 b/arch/sh/mm/fault.c                       |   14 
 b/arch/sh/mm/init.c                        |   15 
 b/arch/sh/mm/ioremap.c                     |    6 
 b/arch/sparc/kernel/sun4d_smp.c            |    2 
 b/arch/sparc/kernel/sun4m_smp.c            |    2 
 b/arch/sparc/mm/generic.c                  |    8 
 b/arch/sparc/mm/init.c                     |   14 
 b/arch/sparc/mm/srmmu.c                    |    3 
 b/arch/sparc/mm/sun4c.c                    |    6 
 b/arch/sparc64/config.in                   |    4 
 b/arch/sparc64/kernel/traps.c              |    6 
 b/arch/sparc64/mm/generic.c                |    8 
 b/arch/sparc64/mm/init.c                   |   30 
 b/arch/x86_64/config.in                    |    4 
 b/arch/x86_64/mm/init.c                    |   16 
 b/arch/x86_64/mm/ioremap.c                 |    6 
 b/drivers/block/ll_rw_blk.c                |    8 
 b/drivers/bluetooth/Config.help            |   53 
 b/drivers/bluetooth/Config.in              |   15 
 b/drivers/bluetooth/Makefile               |   13 
 b/drivers/bluetooth/bluecard_cs.c          | 1124 ++++++++++++++
 b/drivers/bluetooth/dtl1_cs.c              |  939 +++++++++++
 b/drivers/bluetooth/hci_h4.c               |  273 +++
 b/drivers/bluetooth/hci_h4.h               |   43 
 b/drivers/bluetooth/hci_ldisc.c            |  554 ++++++
 b/drivers/bluetooth/hci_uart.h             |   80 +
 b/drivers/bluetooth/hci_usb.c              |  919 ++++++-----
 b/drivers/bluetooth/hci_usb.h              |   79 
 b/drivers/bluetooth/hci_vhci.c             |   63 
 b/drivers/bluetooth/hci_vhci.h             |   50 
 b/drivers/char/i810-tco.c                  |   70 
 b/drivers/char/i810-tco.h                  |   12 
 b/drivers/char/i810_rng.c                  |    3 
 b/drivers/ide/Config.help                  |   31 
 b/drivers/ide/Config.in                    |   17 
 b/drivers/ide/Makefile                     |    3 
 b/drivers/ide/aec62xx.c                    |  100 -
 b/drivers/ide/alim15x3.c                   |   79 
 b/drivers/ide/amd74xx.c                    |   29 
 b/drivers/ide/ata-timing.h                 |    4 
 b/drivers/ide/cmd64x.c                     |  298 +--
 b/drivers/ide/cs5530.c                     |   32 
 b/drivers/ide/cy82c693.c                   |  109 -
 b/drivers/ide/hpt34x.c                     |  148 +
 b/drivers/ide/hpt366.c                     |  226 +-
 b/drivers/ide/icside.c                     |   24 
 b/drivers/ide/ide-cd.c                     |   16 
 b/drivers/ide/ide-disk.c                   |  211 ++
 b/drivers/ide/ide-dma.c                    |  733 +++++----
 b/drivers/ide/ide-features.c               |   55 
 b/drivers/ide/ide-floppy.c                 |   21 
 b/drivers/ide/ide-pci.c                    |   85 -
 b/drivers/ide/ide-pmac.c                   |   13 
 b/drivers/ide/ide-probe.c                  |  426 ++---
 b/drivers/ide/ide-tape.c                   |   19 
 b/drivers/ide/ide-taskfile.c               |   60 
 b/drivers/ide/ide.c                        |  399 +---
 b/drivers/ide/ns87415.c                    |   80 -
 b/drivers/ide/pdc202xx.c                   |  250 ++-
 b/drivers/ide/pdcadma.c                    |   14 
 b/drivers/ide/piix.c                       |   36 
 b/drivers/ide/serverworks.c                |  123 -
 b/drivers/ide/sis5513.c                    |   67 
 b/drivers/ide/sl82c105.c                   |   49 
 b/drivers/ide/tcq.c                        |  635 +++++++
 b/drivers/ide/trm290.c                     |  104 -
 b/drivers/ide/via82cxxx.c                  |   35 
 b/drivers/net/appletalk/Config.in          |    8 
 b/drivers/net/wan/Config.in                |   13 
 b/drivers/pci/pci.ids                      |   45 
 b/drivers/scsi/ide-scsi.c                  |   12 
 b/drivers/scsi/scsi_debug.c                |    3 
 b/drivers/scsi/sd.c                        |    2 
 b/drivers/video/Makefile                   |    4 
 b/drivers/video/atafb.c                    |    6 
 b/drivers/video/aty/atyfb_base.c           |   10 
 b/drivers/video/aty128fb.c                 |   41 
 b/drivers/video/chipsfb.c                  |    6 
 b/drivers/video/controlfb.c                |    6 
 b/drivers/video/cyber2000fb.c              |    2 
 b/drivers/video/cyberfb.c                  |    1 
 b/drivers/video/fbgen.c                    |  200 ++
 b/drivers/video/fbmem.c                    |    2 
 b/drivers/video/imsttfb.c                  |    2 
 b/drivers/video/neofb.c                    |   81 -
 b/drivers/video/offb.c                     |   40 
 b/drivers/video/platinumfb.c               |    8 
 b/drivers/video/valkyriefb.c               |    2 
 b/fs/buffer.c                              |  240 +--
 b/fs/fs-writeback.c                        |    3 
 b/fs/jbd/commit.c                          |    2 
 b/fs/jbd/transaction.c                     |   14 
 b/fs/nfs/nfsroot.c                         |    4 
 b/fs/ntfs/ChangeLog                        |   23 
 b/fs/ntfs/Makefile                         |    2 
 b/fs/ntfs/compress.c                       |    7 
 b/fs/ntfs/dir.c                            |   14 
 b/fs/ntfs/super.c                          |   39 
 b/fs/proc/array.c                          |    8 
 b/fs/reiserfs/inode.c                      |    6 
 b/fs/reiserfs/journal.c                    |    4 
 b/fs/ufs/super.c                           |    8 
 b/include/asm-cris/processor.h             |    2 
 b/include/asm-i386/page.h                  |    8 
 b/include/asm-i386/pgtable-2level.h        |    5 
 b/include/asm-i386/pgtable-3level.h        |    5 
 b/include/asm-i386/pgtable.h               |    5 
 b/include/asm-m68k/processor.h             |    2 
 b/include/asm-sh/pgalloc.h                 |   11 
 b/include/linux/buffer_head.h              |   64 
 b/include/linux/ide.h                      |  213 +-
 b/include/linux/kd.h                       |    8 
 b/include/linux/list.h                     |    8 
 b/include/linux/page-flags.h               |    1 
 b/include/linux/reiserfs_fs_sb.h           |    1 
 b/include/linux/sched.h                    |    1 
 b/include/linux/sunrpc/xprt.h              |   29 
 b/include/linux/swap.h                     |    2 
 b/include/linux/watchdog.h                 |    4 
 b/include/net/bluetooth/bluetooth.h        |  133 +
 b/include/net/bluetooth/hci.h              |  459 ++++-
 b/include/net/bluetooth/hci_core.h         |  462 +++--
 b/include/net/bluetooth/l2cap.h            |  121 +
 b/include/net/bluetooth/sco.h              |   81 +
 b/init/do_mounts.c                         |    4 
 b/mm/filemap.c                             |   22 
 b/mm/memory.c                              |   59 
 b/mm/msync.c                               |   12 
 b/mm/page-writeback.c                      |    9 
 b/mm/page_alloc.c                          |   33 
 b/mm/slab.c                                |   15 
 b/mm/swapfile.c                            |    4 
 b/mm/vmalloc.c                             |    8 
 b/mm/vmscan.c                              |    6 
 b/net/bluetooth/Config.help                |   17 
 b/net/bluetooth/Config.in                  |    1 
 b/net/bluetooth/Makefile                   |   11 
 b/net/bluetooth/af_bluetooth.c             |  255 ++-
 b/net/bluetooth/hci_conn.c                 |  437 +++++
 b/net/bluetooth/hci_core.c                 | 1795 +++++++---------------
 b/net/bluetooth/hci_event.c                |  874 ++++++++++
 b/net/bluetooth/hci_sock.c                 |  390 ++--
 b/net/bluetooth/l2cap.c                    | 2048 +++++++++++++++++++++++++
 b/net/bluetooth/lib.c                      |    2 
 b/net/bluetooth/sco.c                      | 1011 ++++++++++++
 b/net/bluetooth/syms.c                     |   16 
 b/net/sunrpc/sched.c                       |    5 
 b/net/sunrpc/xprt.c                        |  533 ++----
 b/sound/core/Config.in                     |    2 
 drivers/bluetooth/hci_uart.c               |  580 -------
 include/net/bluetooth/bluez.h              |  124 -
 include/net/bluetooth/hci_uart.h           |   62 
 include/net/bluetooth/hci_usb.h            |   68 
 include/net/bluetooth/hci_vhci.h           |   50 
 include/net/bluetooth/l2cap_core.h         |  144 -
 net/bluetooth/l2cap_core.c                 | 2316 -----------------------------
 net/bluetooth/l2cap_proc.c                 |  165 --
 203 files changed, 14374 insertions(+), 8659 deletions(-)

