From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.36 released
Date: Tue, 17 Sep 2002 20:22:17 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209180322.g8I3MHp25746@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.36 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.36.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.36.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               984349           4448121
Full source                       36252378         161699840

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/cris/cris.ld                            |  103 
 arch/m68k/vmlinux.lds                        |   75 
 arch/mips/ld.script.in                       |  155 
 arch/parisc/vmlinux.lds                      |   88 
 arch/ppc/vmlinux.lds                         |  160 
 arch/ppc64/vmlinux.lds                       |  140 
 arch/sparc/vmlinux.lds                       |   93 
 arch/sparc64/vmlinux.lds                     |   93 
 arch/x86_64/vmlinux.lds                      |  133 
 b/Documentation/Changes                      |   16 
 b/Documentation/filesystems/00-INDEX         |    2 
 b/Documentation/filesystems/xfs.txt          |  118 
 b/Documentation/usb/ov511.txt                |   35 
 b/Documentation/usb/usb-serial.txt           |    4 
 b/MAINTAINERS                                |    8 
 b/Makefile                                   |    9 
 b/arch/alpha/Makefile                        |    4 
 b/arch/alpha/kernel/traps.c                  |    5 
 b/arch/arm/Makefile                          |   24 
 b/arch/arm/vmlinux.lds.S                     |   25 
 b/arch/cris/Makefile                         |   22 
 b/arch/cris/kernel/traps.c                   |    6 
 b/arch/cris/vmlinux.lds.S                    |  105 
 b/arch/i386/Config.help                      |    9 
 b/arch/i386/Makefile                         |    4 
 b/arch/i386/config.in                        |    2 
 b/arch/i386/kernel/cpu/amd.c                 |   20 
 b/arch/i386/kernel/cpu/common.c              |   11 
 b/arch/i386/kernel/cpu/intel.c               |    1 
 b/arch/i386/kernel/cpu/transmeta.c           |    5 
 b/arch/i386/kernel/entry.S                   |    4 
 b/arch/i386/kernel/sys_i386.c                |   91 
 b/arch/i386/kernel/traps.c                   |    8 
 b/arch/i386/mm/Makefile                      |    1 
 b/arch/i386/mm/hugetlbpage.c                 |  545 ++
 b/arch/i386/mm/init.c                        |   50 
 b/arch/ia64/Makefile                         |    4 
 b/arch/ia64/kernel/perfmon.c                 |   11 
 b/arch/m68k/Makefile                         |    6 
 b/arch/m68k/vmlinux-std.lds                  |   75 
 b/arch/m68k/vmlinux.lds.S                    |    7 
 b/arch/mips/Makefile                         |    5 
 b/arch/mips/au1000/common/serial.c           |    2 
 b/arch/mips/vmlinux.lds.S                    |  155 
 b/arch/mips64/Makefile                       |    4 
 b/arch/parisc/Makefile                       |    1 
 b/arch/parisc/vmlinux.lds.S                  |   88 
 b/arch/ppc/4xx_io/serial_sicc.c              |    2 
 b/arch/ppc/8xx_io/uart.c                     |    2 
 b/arch/ppc/Makefile                          |    2 
 b/arch/ppc/vmlinux.lds.S                     |  160 
 b/arch/ppc64/Makefile                        |    2 
 b/arch/ppc64/vmlinux.lds.S                   |  140 
 b/arch/s390/Makefile                         |    9 
 b/arch/s390/vmlinux.lds.S                    |    7 
 b/arch/s390x/Makefile                        |    9 
 b/arch/s390x/vmlinux.lds.S                   |    7 
 b/arch/sh/Makefile                           |    8 
 b/arch/sparc/Makefile                        |    1 
 b/arch/sparc/vmlinux.lds.S                   |   93 
 b/arch/sparc64/Makefile                      |    2 
 b/arch/sparc64/vmlinux.lds.S                 |   93 
 b/arch/x86_64/Makefile                       |    4 
 b/arch/x86_64/vmlinux.lds.S                  |  133 
 b/drivers/base/core.c                        |    3 
 b/drivers/block/elevator.c                   |   47 
 b/drivers/block/ll_rw_blk.c                  |    2 
 b/drivers/bluetooth/hci_usb.c                |   22 
 b/drivers/char/Makefile                      |    6 
 b/drivers/char/misc.c                        |    1 
 b/drivers/char/tty_ioctl.c                   |    2 
 b/drivers/char/vt.c                          | 3844 ++++++++++++----
 b/drivers/char/vt_ioctl.c                    | 1177 +++++
 b/drivers/ide/Config.in                      |   78 
 b/drivers/ide/Makefile                       |   13 
 b/drivers/ide/ide-dma.c                      |    8 
 b/drivers/ide/ide-lib.c                      |  200 
 b/drivers/ide/ide-probe.c                    |   16 
 b/drivers/ide/ide.c                          |    3 
 b/drivers/ide/ide_modes.h                    |  195 
 b/drivers/ide/legacy/Makefile                |    1 
 b/drivers/ide/legacy/hd.c                    |    1 
 b/drivers/ide/pci/Makefile                   |    4 
 b/drivers/ide/pci/aec62xx.c                  |   63 
 b/drivers/ide/pci/aec62xx.h                  |   15 
 b/drivers/ide/pci/alim15x3.c                 |   66 
 b/drivers/ide/pci/alim15x3.h                 |    4 
 b/drivers/ide/pci/amd74xx.c                  |   51 
 b/drivers/ide/pci/amd74xx.h                  |   16 
 b/drivers/ide/pci/cmd64x.c                   |   62 
 b/drivers/ide/pci/cmd64x.h                   |   11 
 b/drivers/ide/pci/cs5530.c                   |   65 
 b/drivers/ide/pci/cs5530.h                   |    4 
 b/drivers/ide/pci/cy82c693.c                 |   51 
 b/drivers/ide/pci/cy82c693.h                 |    4 
 b/drivers/ide/pci/generic.c                  |   74 
 b/drivers/ide/pci/generic.h                  |   20 
 b/drivers/ide/pci/hpt34x.c                   |   50 
 b/drivers/ide/pci/hpt34x.h                   |    4 
 b/drivers/ide/pci/hpt366.c                   |   64 
 b/drivers/ide/pci/hpt366.h                   |   10 
 b/drivers/ide/pci/it8172.c                   |   46 
 b/drivers/ide/pci/it8172.h                   |    2 
 b/drivers/ide/pci/ns87415.c                  |   48 
 b/drivers/ide/pci/ns87415.h                  |    4 
 b/drivers/ide/pci/nvidia.c                   |   51 
 b/drivers/ide/pci/nvidia.h                   |    8 
 b/drivers/ide/pci/opti621.c                  |   50 
 b/drivers/ide/pci/opti621.h                  |    4 
 b/drivers/ide/pci/pdc202xx_new.c             |   63 
 b/drivers/ide/pci/pdc202xx_new.h             |   14 
 b/drivers/ide/pci/pdc202xx_old.c             |   63 
 b/drivers/ide/pci/pdc202xx_old.h             |   10 
 b/drivers/ide/pci/pdcadma.c                  |   47 
 b/drivers/ide/pci/pdcadma.h                  |    2 
 b/drivers/ide/pci/piix.c                     |   73 
 b/drivers/ide/pci/piix.h                     |   42 
 b/drivers/ide/pci/rz1000.c                   |   48 
 b/drivers/ide/pci/rz1000.h                   |    3 
 b/drivers/ide/pci/serverworks.c              |   69 
 b/drivers/ide/pci/serverworks.h              |    8 
 b/drivers/ide/pci/siimage.c                  |   50 
 b/drivers/ide/pci/siimage.h                  |    7 
 b/drivers/ide/pci/sis5513.c                  |   49 
 b/drivers/ide/pci/sis5513.h                  |    4 
 b/drivers/ide/pci/sl82c105.c                 |   45 
 b/drivers/ide/pci/sl82c105.h                 |    4 
 b/drivers/ide/pci/slc90e66.c                 |   49 
 b/drivers/ide/pci/slc90e66.h                 |    4 
 b/drivers/ide/pci/trm290.c                   |   50 
 b/drivers/ide/pci/trm290.h                   |    4 
 b/drivers/ide/pci/via82cxxx.c                |   63 
 b/drivers/ide/pci/via82cxxx.h                |    7 
 b/drivers/ide/setup-pci.c                    |  206 
 b/drivers/ieee1394/amdtp.c                   |  465 +
 b/drivers/ieee1394/amdtp.h                   |   26 
 b/drivers/ieee1394/cmp.c                     |   10 
 b/drivers/ieee1394/csr.c                     |   44 
 b/drivers/ieee1394/dv1394-private.h          |   77 
 b/drivers/ieee1394/dv1394.c                  |  328 -
 b/drivers/ieee1394/eth1394.c                 |   22 
 b/drivers/ieee1394/highlevel.c               |    4 
 b/drivers/ieee1394/hosts.c                   |   52 
 b/drivers/ieee1394/hosts.h                   |   22 
 b/drivers/ieee1394/ieee1394_core.c           |  139 
 b/drivers/ieee1394/ieee1394_core.h           |    6 
 b/drivers/ieee1394/nodemgr.c                 |  152 
 b/drivers/ieee1394/ohci1394.c                |  702 +-
 b/drivers/ieee1394/ohci1394.h                |   57 
 b/drivers/ieee1394/pcilynx.c                 |  105 
 b/drivers/ieee1394/pcilynx.h                 |    2 
 b/drivers/ieee1394/raw1394.c                 |   22 
 b/drivers/ieee1394/sbp2.c                    |  155 
 b/drivers/ieee1394/sbp2.h                    |   11 
 b/drivers/ieee1394/video1394.c               |  176 
 b/drivers/input/joystick/iforce/iforce-usb.c |   29 
 b/drivers/isdn/hisax/st5481_init.c           |   27 
 b/drivers/media/video/cpia_usb.c             |   31 
 b/drivers/message/fusion/Makefile            |   38 
 b/drivers/message/fusion/linux_compat.h      |   21 
 b/drivers/message/fusion/lsi/mpi.h           |   30 
 b/drivers/message/fusion/lsi/mpi_cnfg.h      |  293 +
 b/drivers/message/fusion/lsi/mpi_fc.h        |   15 
 b/drivers/message/fusion/lsi/mpi_init.h      |   33 
 b/drivers/message/fusion/lsi/mpi_ioc.h       |   19 
 b/drivers/message/fusion/lsi/mpi_lan.h       |    4 
 b/drivers/message/fusion/lsi/mpi_raid.h      |   51 
 b/drivers/message/fusion/lsi/mpi_targ.h      |   28 
 b/drivers/message/fusion/lsi/mpi_type.h      |    2 
 b/drivers/message/fusion/mptbase.c           |  164 
 b/drivers/message/fusion/mptbase.h           |   23 
 b/drivers/message/fusion/mptctl.c            |  110 
 b/drivers/message/fusion/mptscsih.c          |  627 +-
 b/drivers/message/fusion/mptscsih.h          |    4 
 b/drivers/usb/class/audio.c                  |   41 
 b/drivers/usb/class/bluetty.c                |   31 
 b/drivers/usb/class/cdc-acm.c                |   30 
 b/drivers/usb/class/usb-midi.c               |   37 
 b/drivers/usb/class/usblp.c                  |   20 
 b/drivers/usb/core/devices.c                 |    1 
 b/drivers/usb/core/devio.c                   |   61 
 b/drivers/usb/core/hcd.c                     |    8 
 b/drivers/usb/core/hcd.h                     |    8 
 b/drivers/usb/core/hub.c                     |  160 
 b/drivers/usb/core/hub.h                     |    2 
 b/drivers/usb/core/usb.c                     |  567 --
 b/drivers/usb/image/hpusbscsi.c              |   29 
 b/drivers/usb/image/mdc800.c                 |   51 
 b/drivers/usb/image/microtek.c               |   45 
 b/drivers/usb/image/microtek.h               |    2 
 b/drivers/usb/image/scanner.c                |  102 
 b/drivers/usb/input/aiptek.c                 |   62 
 b/drivers/usb/input/hid-core.c               |   36 
 b/drivers/usb/input/hiddev.c                 |    6 
 b/drivers/usb/input/powermate.c              |   50 
 b/drivers/usb/input/usbkbd.c                 |   42 
 b/drivers/usb/input/usbmouse.c               |   56 
 b/drivers/usb/input/wacom.c                  |   33 
 b/drivers/usb/input/xpad.c                   |   31 
 b/drivers/usb/media/dabusb.c                 |   41 
 b/drivers/usb/media/dsbr100.c                |   37 
 b/drivers/usb/media/ibmcam.c                 |   39 
 b/drivers/usb/media/konicawc.c               |   45 
 b/drivers/usb/media/ov511.c                  |  205 
 b/drivers/usb/media/ov511.h                  |   18 
 b/drivers/usb/media/pwc-if.c                 |   43 
 b/drivers/usb/media/se401.c                  |   60 
 b/drivers/usb/media/stv680.c                 |   36 
 b/drivers/usb/media/ultracam.c               |   45 
 b/drivers/usb/media/usbvideo.c               |   15 
 b/drivers/usb/media/usbvideo.h               |    4 
 b/drivers/usb/media/vicam.c                  |   51 
 b/drivers/usb/misc/auerswald.c               |   28 
 b/drivers/usb/misc/brlvger.c                 |   26 
 b/drivers/usb/misc/emi26.c                   |   12 
 b/drivers/usb/misc/rio500.c                  |   51 
 b/drivers/usb/misc/speedtouch.c              |   69 
 b/drivers/usb/misc/tiglusb.c                 |   31 
 b/drivers/usb/misc/usblcd.c                  |   47 
 b/drivers/usb/misc/uss720.c                  |   42 
 b/drivers/usb/net/catc.c                     |   42 
 b/drivers/usb/net/cdc-ether.c                |   32 
 b/drivers/usb/net/kaweth.c                   |   56 
 b/drivers/usb/net/pegasus.c                  |   26 
 b/drivers/usb/net/rtl8150.c                  |   53 
 b/drivers/usb/net/usbnet.c                   |   51 
 b/drivers/usb/serial/belkin_sa.c             |    9 
 b/drivers/usb/serial/cyberjack.c             |    9 
 b/drivers/usb/serial/digi_acceleport.c       |   12 
 b/drivers/usb/serial/empeg.c                 |   15 
 b/drivers/usb/serial/ftdi_sio.c              |   11 
 b/drivers/usb/serial/io_edgeport.c           |    8 
 b/drivers/usb/serial/io_tables.h             |    2 
 b/drivers/usb/serial/io_ti.c                 |   11 
 b/drivers/usb/serial/ipaq.c                  |   10 
 b/drivers/usb/serial/ir-usb.c                |    9 
 b/drivers/usb/serial/keyspan.c               |    2 
 b/drivers/usb/serial/keyspan.h               |    9 
 b/drivers/usb/serial/keyspan_pda.c           |   11 
 b/drivers/usb/serial/kl5kusb105.c            |    8 
 b/drivers/usb/serial/mct_u232.c              |    8 
 b/drivers/usb/serial/omninet.c               |    9 
 b/drivers/usb/serial/pl2303.c                |    8 
 b/drivers/usb/serial/safe_serial.c           |    9 
 b/drivers/usb/serial/usb-serial.h            |    3 
 b/drivers/usb/serial/usbserial.c             |   72 
 b/drivers/usb/serial/visor.c                 |   11 
 b/drivers/usb/serial/whiteheat.c             |   11 
 b/drivers/usb/storage/debug.c                |    2 
 b/drivers/usb/storage/debug.h                |    2 
 b/drivers/usb/storage/freecom.c              |    4 
 b/drivers/usb/storage/isd200.c               |   51 
 b/drivers/usb/storage/protocol.c             |    2 
 b/drivers/usb/storage/raw_bulk.c             |   16 
 b/drivers/usb/storage/scsiglue.c             |   29 
 b/drivers/usb/storage/sddr09.c               |   35 
 b/drivers/usb/storage/shuttle_usbat.c        |    9 
 b/drivers/usb/storage/transport.c            |   95 
 b/drivers/usb/storage/usb.c                  |   42 
 b/drivers/usb/storage/usb.h                  |    5 
 b/fs/Config.help                             |   47 
 b/fs/Config.in                               |    7 
 b/fs/Makefile                                |    1 
 b/fs/bio.c                                   |   50 
 b/fs/block_dev.c                             |   23 
 b/fs/buffer.c                                |    4 
 b/fs/exec.c                                  |   41 
 b/fs/ext3/balloc.c                           |   60 
 b/fs/ext3/dir.c                              |    2 
 b/fs/ext3/ialloc.c                           |   46 
 b/fs/ext3/inode.c                            |   14 
 b/fs/ext3/ioctl.c                            |    6 
 b/fs/ext3/namei.c                            |    6 
 b/fs/ext3/super.c                            |   31 
 b/fs/ntfs/aops.c                             |   24 
 b/fs/proc/array.c                            |   11 
 b/fs/proc/proc_misc.c                        |   35 
 b/fs/xfs/Makefile                            |  160 
 b/fs/xfs/linux/xfs_aops.c                    |  957 ++++
 b/fs/xfs/linux/xfs_behavior.c                |  199 
 b/fs/xfs/linux/xfs_behavior.h                |  211 
 b/fs/xfs/linux/xfs_cred.h                    |   50 
 b/fs/xfs/linux/xfs_file.c                    |  334 +
 b/fs/xfs/linux/xfs_fs_subr.c                 |  169 
 b/fs/xfs/linux/xfs_fs_subr.h                 |   50 
 b/fs/xfs/linux/xfs_globals.c                 |   71 
 b/fs/xfs/linux/xfs_globals.h                 |   50 
 b/fs/xfs/linux/xfs_ioctl.c                   | 1073 ++++
 b/fs/xfs/linux/xfs_iops.c                    |  875 +++
 b/fs/xfs/linux/xfs_iops.h                    |   71 
 b/fs/xfs/linux/xfs_linux.h                   |  290 +
 b/fs/xfs/linux/xfs_lrw.c                     | 1817 +++++++
 b/fs/xfs/linux/xfs_lrw.h                     |   75 
 b/fs/xfs/linux/xfs_stats.c                   |  132 
 b/fs/xfs/linux/xfs_stats.h                   |   46 
 b/fs/xfs/linux/xfs_super.c                   |  904 +++
 b/fs/xfs/linux/xfs_super.h                   |   97 
 b/fs/xfs/linux/xfs_sysctl.c                  |  135 
 b/fs/xfs/linux/xfs_sysctl.h                  |   66 
 b/fs/xfs/linux/xfs_version.h                 |   44 
 b/fs/xfs/linux/xfs_vfs.h                     |  208 
 b/fs/xfs/linux/xfs_vnode.c                   |  468 +
 b/fs/xfs/linux/xfs_vnode.h                   |  765 +++
 b/fs/xfs/pagebuf/page_buf.c                  | 2152 +++++++++
 b/fs/xfs/pagebuf/page_buf.h                  |  408 +
 b/fs/xfs/pagebuf/page_buf_internal.h         |  170 
 b/fs/xfs/pagebuf/page_buf_locking.c          |  226 
 b/fs/xfs/pagebuf/page_buf_trace.h            |   95 
 b/fs/xfs/support/atomic.h                    |   63 
 b/fs/xfs/support/debug.c                     |  128 
 b/fs/xfs/support/debug.h                     |   67 
 b/fs/xfs/support/kmem.c                      |  257 +
 b/fs/xfs/support/kmem.h                      |   62 
 b/fs/xfs/support/ktrace.c                    |  374 +
 b/fs/xfs/support/ktrace.h                    |  105 
 b/fs/xfs/support/move.c                      |   92 
 b/fs/xfs/support/move.h                      |   71 
 b/fs/xfs/support/mrlock.c                    |  288 +
 b/fs/xfs/support/mrlock.h                    |   86 
 b/fs/xfs/support/mutex.h                     |   55 
 b/fs/xfs/support/qsort.c                     |  243 +
 b/fs/xfs/support/qsort.h                     |   41 
 b/fs/xfs/support/sema.h                      |   68 
 b/fs/xfs/support/spin.h                      |   74 
 b/fs/xfs/support/sv.h                        |   91 
 b/fs/xfs/support/time.h                      |   49 
 b/fs/xfs/support/uuid.c                      |  238 +
 b/fs/xfs/support/uuid.h                      |   41 
 b/fs/xfs/xfs.h                               |  114 
 b/fs/xfs/xfs_acl.c                           |  893 +++
 b/fs/xfs/xfs_acl.h                           |  120 
 b/fs/xfs/xfs_ag.h                            |  377 +
 b/fs/xfs/xfs_alloc.c                         | 2639 +++++++++++
 b/fs/xfs/xfs_alloc.h                         |  223 
 b/fs/xfs/xfs_alloc_btree.c                   | 2155 +++++++++
 b/fs/xfs/xfs_alloc_btree.h                   |  251 +
 b/fs/xfs/xfs_arch.h                          |  274 +
 b/fs/xfs/xfs_attr.c                          | 2294 +++++++++
 b/fs/xfs/xfs_attr.h                          |  160 
 b/fs/xfs/xfs_attr_fetch.c                    |   71 
 b/fs/xfs/xfs_attr_leaf.c                     | 2971 ++++++++++++
 b/fs/xfs/xfs_attr_leaf.h                     |  305 +
 b/fs/xfs/xfs_attr_sf.h                       |  157 
 b/fs/xfs/xfs_bit.c                           |  307 +
 b/fs/xfs/xfs_bit.h                           |   85 
 b/fs/xfs/xfs_bmap.c                          | 6323 +++++++++++++++++++++++++++
 b/fs/xfs/xfs_bmap.h                          |  397 +
 b/fs/xfs/xfs_bmap_btree.c                    | 2634 +++++++++++
 b/fs/xfs/xfs_bmap_btree.h                    |  656 ++
 b/fs/xfs/xfs_btree.c                         |  937 ++++
 b/fs/xfs/xfs_btree.h                         |  587 ++
 b/fs/xfs/xfs_buf.h                           |  319 +
 b/fs/xfs/xfs_buf_item.c                      | 1203 +++++
 b/fs/xfs/xfs_buf_item.h                      |  178 
 b/fs/xfs/xfs_cap.c                           |  202 
 b/fs/xfs/xfs_cap.h                           |   84 
 b/fs/xfs/xfs_clnt.h                          |  131 
 b/fs/xfs/xfs_da_btree.c                      | 2579 +++++++++++
 b/fs/xfs/xfs_da_btree.h                      |  343 +
 b/fs/xfs/xfs_dfrag.c                         |  364 +
 b/fs/xfs/xfs_dfrag.h                         |   67 
 b/fs/xfs/xfs_dinode.h                        |  480 ++
 b/fs/xfs/xfs_dir.c                           | 1183 +++++
 b/fs/xfs/xfs_dir.h                           |  162 
 b/fs/xfs/xfs_dir2.c                          |  830 +++
 b/fs/xfs/xfs_dir2.h                          |  110 
 b/fs/xfs/xfs_dir2_block.c                    | 1231 +++++
 b/fs/xfs/xfs_dir2_block.h                    |  128 
 b/fs/xfs/xfs_dir2_data.c                     |  833 +++
 b/fs/xfs/xfs_dir2_data.h                     |  232 
 b/fs/xfs/xfs_dir2_leaf.c                     | 1873 +++++++
 b/fs/xfs/xfs_dir2_leaf.h                     |  361 +
 b/fs/xfs/xfs_dir2_node.c                     | 1976 ++++++++
 b/fs/xfs/xfs_dir2_node.h                     |  160 
 b/fs/xfs/xfs_dir2_sf.c                       | 1320 +++++
 b/fs/xfs/xfs_dir2_sf.h                       |  256 +
 b/fs/xfs/xfs_dir2_trace.c                    |  202 
 b/fs/xfs/xfs_dir2_trace.h                    |   95 
 b/fs/xfs/xfs_dir_leaf.c                      | 2224 +++++++++
 b/fs/xfs/xfs_dir_leaf.h                      |  254 +
 b/fs/xfs/xfs_dir_sf.h                        |  188 
 b/fs/xfs/xfs_dmapi.h                         |  322 +
 b/fs/xfs/xfs_dqblk.h                         |   99 
 b/fs/xfs/xfs_dquot.c                         | 1660 +++++++
 b/fs/xfs/xfs_dquot.h                         |  212 
 b/fs/xfs/xfs_dquot_item.c                    |  675 ++
 b/fs/xfs/xfs_dquot_item.h                    |  104 
 b/fs/xfs/xfs_error.c                         |  236 +
 b/fs/xfs/xfs_error.h                         |  156 
 b/fs/xfs/xfs_extfree_item.c                  |  655 ++
 b/fs/xfs/xfs_extfree_item.h                  |  123 
 b/fs/xfs/xfs_fs.h                            |  510 ++
 b/fs/xfs/xfs_fsops.c                         |  598 ++
 b/fs/xfs/xfs_fsops.h                         |   70 
 b/fs/xfs/xfs_ialloc.c                        | 1336 +++++
 b/fs/xfs/xfs_ialloc.h                        |  181 
 b/fs/xfs/xfs_ialloc_btree.c                  | 2104 ++++++++
 b/fs/xfs/xfs_ialloc_btree.h                  |  318 +
 b/fs/xfs/xfs_iget.c                          | 1040 ++++
 b/fs/xfs/xfs_imap.h                          |   54 
 b/fs/xfs/xfs_inode.c                         | 3626 +++++++++++++++
 b/fs/xfs/xfs_inode.h                         |  582 ++
 b/fs/xfs/xfs_inode_item.c                    | 1024 ++++
 b/fs/xfs/xfs_inode_item.h                    |  193 
 b/fs/xfs/xfs_inum.h                          |  173 
 b/fs/xfs/xfs_iocore.c                        |   86 
 b/fs/xfs/xfs_itable.c                        |  770 +++
 b/fs/xfs/xfs_itable.h                        |  102 
 b/fs/xfs/xfs_log.c                           | 3628 +++++++++++++++
 b/fs/xfs/xfs_log.h                           |  191 
 b/fs/xfs/xfs_log_priv.h                      |  562 ++
 b/fs/xfs/xfs_log_recover.c                   | 3702 +++++++++++++++
 b/fs/xfs/xfs_log_recover.h                   |   81 
 b/fs/xfs/xfs_mac.c                           |   72 
 b/fs/xfs/xfs_mac.h                           |  120 
 b/fs/xfs/xfs_macros.c                        | 2228 +++++++++
 b/fs/xfs/xfs_macros.h                        |  105 
 b/fs/xfs/xfs_mount.c                         | 1737 +++++++
 b/fs/xfs/xfs_mount.h                         |  453 +
 b/fs/xfs/xfs_qm.c                            | 2899 ++++++++++++
 b/fs/xfs/xfs_qm.h                            |  219 
 b/fs/xfs/xfs_qm_syscalls.c                   | 1465 ++++++
 b/fs/xfs/xfs_quota.h                         |  351 +
 b/fs/xfs/xfs_quota_priv.h                    |  192 
 b/fs/xfs/xfs_rename.c                        |  679 ++
 b/fs/xfs/xfs_rtalloc.c                       | 2438 ++++++++++
 b/fs/xfs/xfs_rtalloc.h                       |  185 
 b/fs/xfs/xfs_rw.c                            |  753 +++
 b/fs/xfs/xfs_rw.h                            |  219 
 b/fs/xfs/xfs_sb.h                            |  503 ++
 b/fs/xfs/xfs_trans.c                         | 1268 +++++
 b/fs/xfs/xfs_trans.h                         | 1034 ++++
 b/fs/xfs/xfs_trans_ail.c                     |  588 ++
 b/fs/xfs/xfs_trans_buf.c                     | 1085 ++++
 b/fs/xfs/xfs_trans_dquot.c                   |  852 +++
 b/fs/xfs/xfs_trans_extfree.c                 |  150 
 b/fs/xfs/xfs_trans_inode.c                   |  433 +
 b/fs/xfs/xfs_trans_item.c                    |  557 ++
 b/fs/xfs/xfs_trans_priv.h                    |   73 
 b/fs/xfs/xfs_trans_space.h                   |  105 
 b/fs/xfs/xfs_types.h                         |  330 +
 b/fs/xfs/xfs_utils.c                         |  519 ++
 b/fs/xfs/xfs_utils.h                         |  105 
 b/fs/xfs/xfs_vfsops.c                        | 1669 +++++++
 b/fs/xfs/xfs_vnodeops.c                      | 5027 +++++++++++++++++++++
 b/include/asm-generic/tlb.h                  |   13 
 b/include/asm-i386/hardirq.h                 |    2 
 b/include/asm-i386/page.h                    |    8 
 b/include/linux/blkdev.h                     |    2 
 b/include/linux/device.h                     |   12 
 b/include/linux/elevator.h                   |    5 
 b/include/linux/ext3_fs.h                    |   25 
 b/include/linux/ide.h                        |   26 
 b/include/linux/kernel.h                     |    2 
 b/include/linux/mm.h                         |   20 
 b/include/linux/mmzone.h                     |    6 
 b/include/linux/page-flags.h                 |    1 
 b/include/linux/rbtree.h                     |   45 
 b/include/linux/sched.h                      |   35 
 b/include/linux/sysctl.h                     |    3 
 b/include/linux/usb.h                        |   41 
 b/kernel/exit.c                              |    2 
 b/kernel/ksyms.c                             |    4 
 b/kernel/ptrace.c                            |    2 
 b/kernel/sysctl.c                            |   13 
 b/lib/Makefile                               |    2 
 b/lib/dump_stack.c                           |   13 
 b/lib/rbtree.c                               |  105 
 b/mm/filemap.c                               |    1 
 b/mm/memory.c                                |   70 
 b/mm/mempool.c                               |    7 
 b/mm/mmap.c                                  |   51 
 b/mm/mprotect.c                              |    5 
 b/mm/mremap.c                                |    4 
 b/mm/page_alloc.c                            |    4 
 b/mm/readahead.c                             |    2 
 b/mm/rmap.c                                  |    6 
 b/mm/slab.c                                  |    2 
 b/mm/vmalloc.c                               |    4 
 b/mm/vmscan.c                                |   23 
 b/net/sched/sch_htb.c                        |   47 
 drivers/char/console.c                       | 3033 ------------
 drivers/ide/pci/pdc202xx.c                   | 1181 -----
 drivers/ide/pci/pdc202xx.h                   |  436 -
 484 files changed, 125147 insertions(+), 11520 deletions(-)

