From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.27 released
Date: Sat, 20 Jul 2002 12:16:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200207201916.g6KJG4i09774@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.27 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.27.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.27.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               260654           1167776
Full source                       34873599         155453440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/usb/ov511.txt          |   25 
 b/Makefile                             |    7 
 b/arch/arm/kernel/isa.c                |    2 
 b/arch/i386/config.in                  |    1 
 b/arch/i386/kernel/entry.S             |    2 
 b/arch/i386/kernel/ptrace.c            |    4 
 b/drivers/char/agp/Config.help         |   88 
 b/drivers/char/agp/Config.in           |   14 
 b/drivers/char/agp/Makefile            |   15 
 b/drivers/char/agp/agp.c               | 1662 ++++++++++
 b/drivers/char/agp/agp.h               |  348 +-
 b/drivers/char/agp/ali-agp.c           |  265 +
 b/drivers/char/agp/amd-agp.c           |  408 ++
 b/drivers/char/agp/frontend.c          | 1086 +++++++
 b/drivers/char/agp/hp-agp.c            |  394 ++
 b/drivers/char/agp/i460-agp.c          |  595 +++
 b/drivers/char/agp/i810-agp.c          |  594 +++
 b/drivers/char/agp/i8x0-agp.c          |  726 ++++
 b/drivers/char/agp/sis-agp.c           |  142 
 b/drivers/char/agp/sworks-agp.c        |  626 ++++
 b/drivers/char/agp/via-agp.c           |  151 
 b/drivers/ide/Config.help              |    9 
 b/drivers/ide/Config.in                |    2 
 b/drivers/ide/aec62xx.c                |  167 -
 b/drivers/ide/ali14xx.c                |   52 
 b/drivers/ide/alim15x3.c               |   45 
 b/drivers/ide/amd74xx.c                |   89 
 b/drivers/ide/atapi.c                  |   61 
 b/drivers/ide/ataraid.c                |  177 -
 b/drivers/ide/cmd64x.c                 |   67 
 b/drivers/ide/cs5530.c                 |   12 
 b/drivers/ide/cy82c693.c               |   12 
 b/drivers/ide/device.c                 |   40 
 b/drivers/ide/dtc2278.c                |    5 
 b/drivers/ide/gayle.c                  |    8 
 b/drivers/ide/hd.c                     |   39 
 b/drivers/ide/hpt34x.c                 |   19 
 b/drivers/ide/hpt366.c                 |   48 
 b/drivers/ide/hptraid.c                |  305 +
 b/drivers/ide/ht6560b.c                |    5 
 b/drivers/ide/ide-cd.c                 |   64 
 b/drivers/ide/ide-disk.c               |   55 
 b/drivers/ide/ide-floppy.c             |   40 
 b/drivers/ide/ide-m8xx.c               |   27 
 b/drivers/ide/ide-pci.c                |  229 -
 b/drivers/ide/ide-pmac.c               |    6 
 b/drivers/ide/ide-tape.c               |   41 
 b/drivers/ide/ide-taskfile.c           |  155 -
 b/drivers/ide/ide.c                    |  930 ++----
 b/drivers/ide/it8172.c                 |   12 
 b/drivers/ide/main.c                   |  193 -
 b/drivers/ide/ns87415.c                |   13 
 b/drivers/ide/opti621.c                |   20 
 b/drivers/ide/pcidma.c                 |    4 
 b/drivers/ide/pdc202xx.c               |  610 ++-
 b/drivers/ide/pdc4030.c                |   20 
 b/drivers/ide/pdcraid.c                |  510 +--
 b/drivers/ide/piix.c                   |  251 -
 b/drivers/ide/probe.c                  |   41 
 b/drivers/ide/q40ide.c                 |   11 
 b/drivers/ide/rz1000.c                 |   19 
 b/drivers/ide/serverworks.c            |   24 
 b/drivers/ide/sis5513.c                |   12 
 b/drivers/ide/sl82c105.c               |   14 
 b/drivers/ide/tcq.c                    |    5 
 b/drivers/ide/trm290.c                 |   18 
 b/drivers/ide/umc8672.c                |   19 
 b/drivers/ide/via82cxxx.c              |   31 
 b/drivers/md/linear.c                  |   19 
 b/drivers/md/md.c                      | 1147 ++-----
 b/drivers/md/multipath.c               |  639 ----
 b/drivers/md/raid0.c                   |   22 
 b/drivers/md/raid1.c                   |  271 -
 b/drivers/md/raid5.c                   |  236 -
 b/drivers/scsi/ide-scsi.c              |   11 
 b/drivers/usb/class/audio.c            |   38 
 b/drivers/usb/class/bluetty.c          |   56 
 b/drivers/usb/class/cdc-acm.c          |   60 
 b/drivers/usb/class/printer.c          |   29 
 b/drivers/usb/class/usb-midi.c         |   36 
 b/drivers/usb/core/devices.c           |   22 
 b/drivers/usb/core/devio.c             |   62 
 b/drivers/usb/core/drivers.c           |    6 
 b/drivers/usb/core/file.c              |   11 
 b/drivers/usb/core/hcd.c               |   10 
 b/drivers/usb/core/hub.c               |   14 
 b/drivers/usb/core/inode.c             |   38 
 b/drivers/usb/core/usb.c               |  195 -
 b/drivers/usb/host/Config.in           |    1 
 b/drivers/usb/host/Makefile            |    2 
 b/drivers/usb/host/ehci-hcd.c          |   56 
 b/drivers/usb/host/hc_simple.c         |   10 
 b/drivers/usb/host/ohci-hcd.c          |    2 
 b/drivers/usb/host/ohci-pci.c          |   56 
 b/drivers/usb/host/ohci-sa1111.c       |   26 
 b/drivers/usb/host/uhci-debug.c        |    8 
 b/drivers/usb/host/uhci-hcd.c          |   56 
 b/drivers/usb/image/hpusbscsi.c        |    8 
 b/drivers/usb/image/mdc800.c           |   20 
 b/drivers/usb/image/microtek.c         |   40 
 b/drivers/usb/image/scanner.c          |   18 
 b/drivers/usb/input/aiptek.c           |    8 
 b/drivers/usb/input/hid-core.c         |    8 
 b/drivers/usb/input/hiddev.c           |   20 
 b/drivers/usb/input/powermate.c        |    8 
 b/drivers/usb/input/usbkbd.c           |    8 
 b/drivers/usb/input/usbmouse.c         |    8 
 b/drivers/usb/input/wacom.c            |    8 
 b/drivers/usb/input/xpad.c             |    8 
 b/drivers/usb/media/dabusb.c           |   20 
 b/drivers/usb/media/dsbr100.c          |   28 
 b/drivers/usb/media/ov511.c            |  511 +--
 b/drivers/usb/media/ov511.h            |    8 
 b/drivers/usb/media/pwc-if.c           |   59 
 b/drivers/usb/media/se401.c            |   26 
 b/drivers/usb/media/stv680.c           |   32 
 b/drivers/usb/media/usbvideo.c         |   22 
 b/drivers/usb/media/vicam.c            |   34 
 b/drivers/usb/misc/auerswald.c         |   22 
 b/drivers/usb/misc/brlvger.c           |   26 
 b/drivers/usb/misc/rio500.c            |   18 
 b/drivers/usb/misc/tiglusb.c           |   24 
 b/drivers/usb/misc/uss720.c            |    8 
 b/drivers/usb/net/catc.c               |    8 
 b/drivers/usb/net/cdc-ether.c          |    8 
 b/drivers/usb/net/kaweth.c             |   10 
 b/drivers/usb/net/pegasus.c            |    8 
 b/drivers/usb/net/rtl8150.c            |    8 
 b/drivers/usb/net/usbnet.c             |  118 
 b/drivers/usb/serial/belkin_sa.c       |   30 
 b/drivers/usb/serial/cyberjack.c       |   30 
 b/drivers/usb/serial/digi_acceleport.c |   84 
 b/drivers/usb/serial/empeg.c           |   40 
 b/drivers/usb/serial/ftdi_sio.c        |   72 
 b/drivers/usb/serial/ipaq.c            |   32 
 b/drivers/usb/serial/ir-usb.c          |   28 
 b/drivers/usb/serial/keyspan.c         |   36 
 b/drivers/usb/serial/keyspan_pda.c     |   74 
 b/drivers/usb/serial/kl5kusb105.c      |   40 
 b/drivers/usb/serial/mct_u232.c        |   34 
 b/drivers/usb/serial/omninet.c         |   28 
 b/drivers/usb/serial/pl2303.c          |   36 
 b/drivers/usb/serial/safe_serial.c     |   22 
 b/drivers/usb/serial/usbserial.c       |  136 
 b/drivers/usb/serial/visor.c           |   80 
 b/drivers/usb/serial/whiteheat.c       |   46 
 b/drivers/usb/storage/scsiglue.c       |   38 
 b/drivers/usb/storage/usb.c            |   18 
 b/drivers/usb/usb-skeleton.c           |   20 
 b/fs/block_dev.c                       |   20 
 b/fs/buffer.c                          |   51 
 b/fs/direct-io.c                       |   31 
 b/fs/exec.c                            |   73 
 b/fs/fat/file.c                        |    2 
 b/fs/fat/inode.c                       |    6 
 b/fs/fcntl.c                           |   22 
 b/fs/file_table.c                      |    3 
 b/fs/fs-writeback.c                    |  104 
 b/fs/jfs/inode.c                       |    7 
 b/fs/mpage.c                           |    2 
 b/fs/open.c                            |   18 
 b/fs/proc/proc_misc.c                  |   32 
 b/include/asm-alpha/ide.h              |    2 
 b/include/asm-alpha/rmap.h             |    7 
 b/include/asm-arm/ide.h                |    2 
 b/include/asm-arm/proc-armv/rmap.h     |   51 
 b/include/asm-arm/rmap.h               |    6 
 b/include/asm-cris/ide.h               |    2 
 b/include/asm-cris/rmap.h              |    7 
 b/include/asm-generic/rmap.h           |   54 
 b/include/asm-i386/ide.h               |    2 
 b/include/asm-i386/rmap.h              |    7 
 b/include/asm-ia64/ide.h               |    2 
 b/include/asm-ia64/rmap.h              |    7 
 b/include/asm-m68k/ide.h               |   31 
 b/include/asm-m68k/rmap.h              |    7 
 b/include/asm-mips/ide.h               |    2 
 b/include/asm-mips/rmap.h              |    7 
 b/include/asm-mips64/ide.h             |    2 
 b/include/asm-mips64/rmap.h            |    7 
 b/include/asm-parisc/ide.h             |    2 
 b/include/asm-parisc/rmap.h            |    7 
 b/include/asm-ppc/ide.h                |    2 
 b/include/asm-ppc/rmap.h               |    9 
 b/include/asm-ppc64/ide.h              |    6 
 b/include/asm-s390/ide.h               |    2 
 b/include/asm-s390/rmap.h              |    7 
 b/include/asm-s390x/rmap.h             |    7 
 b/include/asm-sh/ide.h                 |    2 
 b/include/asm-sh/rmap.h                |    7 
 b/include/asm-sparc/ide.h              |    2 
 b/include/asm-sparc/rmap.h             |    7 
 b/include/asm-sparc64/ide.h            |    2 
 b/include/asm-sparc64/rmap.h           |    7 
 b/include/asm-x86_64/ide.h             |    2 
 b/include/linux/adfs_fs_i.h            |    2 
 b/include/linux/affs_fs_i.h            |    2 
 b/include/linux/agp_backend.h          |    6 
 b/include/linux/agpgart.h              |   10 
 b/include/linux/atapi.h                |   26 
 b/include/linux/binfmts.h              |    1 
 b/include/linux/buffer_head.h          |    2 
 b/include/linux/fs.h                   |    5 
 b/include/linux/hfs_fs_i.h             |    2 
 b/include/linux/hpfs_fs_i.h            |    2 
 b/include/linux/ide.h                  |   62 
 b/include/linux/kernel_stat.h          |   12 
 b/include/linux/mm.h                   |   13 
 b/include/linux/mpage.h                |    5 
 b/include/linux/msdos_fs_i.h           |    2 
 b/include/linux/msg.h                  |   29 
 b/include/linux/page-flags.h           |   41 
 b/include/linux/pagemap.h              |    2 
 b/include/linux/pci_ids.h              |    1 
 b/include/linux/qnx4_fs.h              |    2 
 b/include/linux/raid/md.h              |    1 
 b/include/linux/raid/md_k.h            |   64 
 b/include/linux/raid/multipath.h       |   31 
 b/include/linux/raid/raid1.h           |    3 
 b/include/linux/raid/raid5.h           |    2 
 b/include/linux/sched.h                |   10 
 b/include/linux/security.h             |  383 ++
 b/include/linux/shm.h                  |   13 
 b/include/linux/sunrpc/xprt.h          |    2 
 b/include/linux/swap.h                 |   14 
 b/include/linux/sysctl.h               |    2 
 b/include/linux/usb.h                  |    4 
 b/init/main.c                          |    5 
 b/ipc/msg.c                            |   34 
 b/ipc/sem.c                            |    7 
 b/ipc/shm.c                            |   21 
 b/kernel/capability.c                  |   19 
 b/kernel/exit.c                        |   11 
 b/kernel/fork.c                        |   17 
 b/kernel/kmod.c                        |    2 
 b/kernel/ptrace.c                      |    8 
 b/kernel/sched.c                       |   41 
 b/kernel/signal.c                      |    3 
 b/kernel/sys.c                         |  178 -
 b/kernel/uid16.c                       |    8 
 b/mm/Makefile                          |    2 
 b/mm/filemap.c                         |  301 -
 b/mm/memory.c                          |   30 
 b/mm/mremap.c                          |    8 
 b/mm/page-writeback.c                  |   23 
 b/mm/page_alloc.c                      |   54 
 b/mm/page_io.c                         |    1 
 b/mm/readahead.c                       |  146 
 b/mm/rmap.c                            |  455 ++
 b/mm/swap.c                            |    1 
 b/mm/swap_state.c                      |   66 
 b/mm/swapfile.c                        |    1 
 b/mm/vmscan.c                          |  468 ---
 b/net/sunrpc/clnt.c                    |    2 
 b/net/sunrpc/xprt.c                    |    2 
 b/security/Config.help                 |    4 
 b/security/Config.in                   |    7 
 b/security/Makefile                    |   13 
 b/security/capability.c                |  471 +++
 b/security/dummy.c                     |  236 +
 b/security/security.c                  |  249 +
 drivers/char/agp/agpgart_be.c          | 5114 ---------------------------------
 drivers/char/agp/agpgart_fe.c          | 1099 -------
 drivers/usb/host/usb-ohci-pci.c        |  456 --
 drivers/usb/host/usb-ohci-sa1111.c     |  153 
 drivers/usb/host/usb-ohci.c            | 2537 ----------------
 drivers/usb/host/usb-ohci.h            |  648 ----
 include/asm-s390x/ide.h                |   29 
 268 files changed, 14431 insertions(+), 16816 deletions(-)

