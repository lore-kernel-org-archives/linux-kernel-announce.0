From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.10 released
Date: Wed, 24 Apr 2002 00:19:08 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200204240719.g3O7J8f26863@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.10 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.10.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.10.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               293599           1596772
Full source                       33925830         151429120

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/CREDITS                                 |   10 
 b/Documentation/filesystems/Locking       |    2 
 b/Documentation/sysrq.txt                 |    2 
 b/Documentation/usb/brlvger.txt           |   36 
 b/Documentation/usb/ov511.txt             |   14 
 b/MAINTAINERS                             |    7 
 b/Makefile                                |    2 
 b/arch/i386/boot/setup.S                  |    2 
 b/arch/x86_64/config.in                   |    6 
 b/arch/x86_64/defconfig                   |    5 
 b/arch/x86_64/ia32/ia32_ioctl.c           |    2 
 b/arch/x86_64/kernel/early_printk.c       |  178 +-
 b/arch/x86_64/kernel/i387.c               |   46 
 b/arch/x86_64/kernel/sys_x86_64.c         |   15 
 b/arch/x86_64/kernel/traps.c              |    6 
 b/arch/x86_64/mm/fault.c                  |    2 
 b/drivers/isdn/Config.in                  |    8 
 b/drivers/isdn/Makefile                   |    5 
 b/drivers/isdn/capi/Config.help           |   64 
 b/drivers/isdn/capi/Config.in             |   19 
 b/drivers/isdn/capi/Makefile              |   26 
 b/drivers/isdn/capi/capi.c                | 1730 +++++++++++++++++++++
 b/drivers/isdn/capi/capidrv.c             | 2384 ++++++++++++++++++++++++++++++
 b/drivers/isdn/capi/capidrv.h             |  140 +
 b/drivers/isdn/capi/capifs.c              |  486 ++++++
 b/drivers/isdn/capi/capifs.h              |   11 
 b/drivers/isdn/capi/capiutil.c            |  937 +++++++++++
 b/drivers/isdn/capi/kcapi.c               | 1700 +++++++++++++++++++++
 b/drivers/isdn/eicon/eicon_mod.c          |    2 
 b/drivers/isdn/hardware/Config.in         |    5 
 b/drivers/isdn/hardware/Makefile          |   16 
 b/drivers/isdn/hardware/avm/Config.in     |   27 
 b/drivers/isdn/hardware/avm/Makefile      |   23 
 b/drivers/isdn/hardware/avm/avm_cs.c      |  543 ++++++
 b/drivers/isdn/hardware/avm/avmcard.h     |  577 +++++++
 b/drivers/isdn/hardware/avm/b1.c          |  743 +++++++++
 b/drivers/isdn/hardware/avm/b1dma.c       |  983 ++++++++++++
 b/drivers/isdn/hardware/avm/b1isa.c       |  250 +++
 b/drivers/isdn/hardware/avm/b1pci.c       |  526 ++++++
 b/drivers/isdn/hardware/avm/b1pcmcia.c    |  281 +++
 b/drivers/isdn/hardware/avm/c4.c          | 1378 +++++++++++++++++
 b/drivers/isdn/hardware/avm/t1isa.c       |  578 +++++++
 b/drivers/isdn/hardware/avm/t1pci.c       |  301 +++
 b/drivers/isdn/hisax/callc.c              |    2 
 b/drivers/isdn/hisax/hisax.h              |    2 
 b/drivers/isdn/hysdn/hysdn_defs.h         |    6 
 b/drivers/isdn/i4l/Config.in              |    1 
 b/drivers/isdn/i4l/isdn_common.c          |    2 
 b/drivers/isdn/i4l/isdn_tty.c             |    2 
 b/drivers/isdn/tpam/Makefile              |    6 
 b/drivers/net/Makefile                    |    5 
 b/drivers/net/tulip/Makefile              |    5 
 b/drivers/net/wan/Makefile                |   23 
 b/drivers/pci/pci.ids                     |    1 
 b/drivers/scsi/aic7xxx/Makefile           |    2 
 b/drivers/scsi/megaraid.c                 |   16 
 b/drivers/usb/Config.in                   |   10 
 b/drivers/usb/Makefile                    |   35 
 b/drivers/usb/class/Config.in             |   11 
 b/drivers/usb/class/Makefile              |    2 
 b/drivers/usb/class/printer.c             |    1 
 b/drivers/usb/core/Makefile               |    2 
 b/drivers/usb/core/drivers.c              |    4 
 b/drivers/usb/core/usb.c                  |   23 
 b/drivers/usb/host/Config.in              |    9 
 b/drivers/usb/host/Makefile               |    2 
 b/drivers/usb/host/ehci-hcd.c             |   17 
 b/drivers/usb/host/ehci-q.c               |   60 
 b/drivers/usb/host/ehci-sched.c           |   98 -
 b/drivers/usb/image/Config.in             |   10 
 b/drivers/usb/image/Makefile              |    2 
 b/drivers/usb/image/hpusbscsi.c           |    2 
 b/drivers/usb/image/mdc800.c              |    1 
 b/drivers/usb/image/scanner.c             |    1 
 b/drivers/usb/input/Config.in             |    9 
 b/drivers/usb/input/Makefile              |    2 
 b/drivers/usb/input/hiddev.c              |    9 
 b/drivers/usb/media/Config.in             |   13 
 b/drivers/usb/media/Makefile              |    2 
 b/drivers/usb/media/dabusb.c              |    1 
 b/drivers/usb/media/dsbr100.c             |    2 
 b/drivers/usb/media/ov511.c               | 1131 +++++---------
 b/drivers/usb/media/ov511.h               |   23 
 b/drivers/usb/media/se401.c               |    2 
 b/drivers/usb/media/stv680.c              |    2 
 b/drivers/usb/misc/Config.help            |   10 
 b/drivers/usb/misc/Makefile               |    3 
 b/drivers/usb/misc/auerswald.c            |    1 
 b/drivers/usb/misc/brlvger.c              | 1036 +++++++++++++
 b/drivers/usb/misc/rio500.c               |    1 
 b/drivers/usb/net/Config.in               |   10 
 b/drivers/usb/net/Makefile                |    2 
 b/drivers/usb/net/pegasus.c               |   47 
 b/drivers/usb/net/rtl8150.c               |   46 
 b/drivers/usb/serial/Config.in            |    2 
 b/drivers/usb/serial/Makefile             |    2 
 b/drivers/usb/serial/keyspan.c            |  468 +++--
 b/drivers/usb/serial/keyspan.h            |  465 ++---
 b/drivers/usb/serial/keyspan_usa18x_fw.h  |  632 ++++---
 b/drivers/usb/serial/keyspan_usa19_fw.h   |  325 ++--
 b/drivers/usb/serial/keyspan_usa19qi_fw.h |  284 +++
 b/drivers/usb/serial/keyspan_usa19qw_fw.h |  448 +++++
 b/drivers/usb/serial/keyspan_usa19w_fw.h  |  350 ++--
 b/drivers/usb/serial/keyspan_usa26msg.h   |   44 
 b/drivers/usb/serial/keyspan_usa28_fw.h   |  411 ++---
 b/drivers/usb/serial/keyspan_usa28x_fw.h  |  631 ++++---
 b/drivers/usb/serial/keyspan_usa28xa_fw.h |  641 ++++----
 b/drivers/usb/serial/keyspan_usa28xb_fw.h |  645 ++++----
 b/drivers/usb/serial/keyspan_usa49msg.h   |   48 
 b/drivers/usb/serial/keyspan_usa49w_fw.h  |  578 +++----
 b/drivers/usb/usb-skeleton.c              |    1 
 b/fs/affs/super.c                         |    8 
 b/fs/bfs/inode.c                          |    2 
 b/fs/buffer.c                             |    2 
 b/fs/ext2/super.c                         |    4 
 b/fs/ext3/super.c                         |    5 
 b/fs/hfs/super.c                          |    5 
 b/fs/jffs/inode-v23.c                     |    3 
 b/fs/jffs2/fs.c                           |    8 
 b/fs/nfsd/vfs.c                           |    2 
 b/fs/qnx4/inode.c                         |    2 
 b/fs/reiserfs/journal.c                   |    4 
 b/fs/sysv/inode.c                         |    2 
 b/fs/udf/super.c                          |    3 
 b/fs/ufs/super.c                          |    4 
 b/include/asm-i386/bitops.h               |    2 
 b/include/asm-x86_64/unistd.h             |    2 
 b/include/linux/brlvger.h                 |   57 
 b/include/linux/isdn/capicmd.h            |  115 +
 b/include/linux/isdn/capidev.h            |   27 
 b/include/linux/isdn/capilli.h            |  113 +
 b/include/linux/isdn/capiutil.h           |  505 ++++++
 b/include/linux/reiserfs_fs.h             |    4 
 b/include/linux/sched.h                   |    4 
 b/include/linux/sem.h                     |   15 
 b/include/linux/usb.h                     |    3 
 b/include/sound/mpu401.h                  |    2 
 b/init/main.c                             |    7 
 b/ipc/sem.c                               |  239 ++-
 b/ipc/util.c                              |   11 
 b/kernel/fork.c                           |   10 
 b/sound/Makefile                          |    6 
 b/sound/core/Makefile                     |   20 
 b/sound/core/ioctl32/Makefile             |    5 
 b/sound/core/oss/Makefile                 |    8 
 b/sound/core/seq/Makefile                 |   28 
 b/sound/core/seq/instr/Makefile           |   15 
 b/sound/core/seq/oss/Makefile             |    5 
 b/sound/drivers/Makefile                  |   14 
 b/sound/drivers/mpu401/Makefile           |    8 
 b/sound/drivers/opl3/Makefile             |    8 
 b/sound/i2c/Makefile                      |   11 
 b/sound/isa/Makefile                      |   24 
 b/sound/isa/ad1816a/Makefile              |    8 
 b/sound/isa/ad1848/Makefile               |    8 
 b/sound/isa/cs423x/Makefile               |   18 
 b/sound/isa/es1688/Makefile               |    8 
 b/sound/isa/gus/Makefile                  |   24 
 b/sound/isa/opti9xx/Makefile              |   11 
 b/sound/isa/sb/Makefile                   |   30 
 b/sound/isa/wavefront/Makefile            |    5 
 b/sound/oss/Makefile                      |   28 
 b/sound/pci/Makefile                      |   50 
 b/sound/pci/ac97/Makefile                 |    8 
 b/sound/pci/ali5451/Makefile              |    5 
 b/sound/pci/cs46xx/Makefile               |    5 
 b/sound/pci/emu10k1/Makefile              |    8 
 b/sound/pci/korg1212/Makefile             |    5 
 b/sound/pci/nm256/Makefile                |    5 
 b/sound/pci/rme9652/Makefile              |    8 
 b/sound/pci/trident/Makefile              |    8 
 b/sound/pci/ymfpci/Makefile               |    5 
 b/sound/ppc/Makefile                      |    5 
 b/sound/synth/Makefile                    |    5 
 b/sound/synth/emux/Makefile               |    5 
 drivers/isdn/avmb1/Config.help            |   64 
 drivers/isdn/avmb1/Config.in              |   33 
 drivers/isdn/avmb1/Makefile               |   33 
 drivers/isdn/avmb1/avm_cs.c               |  543 ------
 drivers/isdn/avmb1/avmcard.h              |  577 -------
 drivers/isdn/avmb1/b1.c                   |  743 ---------
 drivers/isdn/avmb1/b1dma.c                |  983 ------------
 drivers/isdn/avmb1/b1isa.c                |  250 ---
 drivers/isdn/avmb1/b1pci.c                |  526 ------
 drivers/isdn/avmb1/b1pcmcia.c             |  281 ---
 drivers/isdn/avmb1/c4.c                   | 1378 -----------------
 drivers/isdn/avmb1/capi.c                 | 1730 ---------------------
 drivers/isdn/avmb1/capicmd.h              |  115 -
 drivers/isdn/avmb1/capidev.h              |   27 
 drivers/isdn/avmb1/capidrv.c              | 2384 ------------------------------
 drivers/isdn/avmb1/capidrv.h              |  140 -
 drivers/isdn/avmb1/capifs.c               |  486 ------
 drivers/isdn/avmb1/capifs.h               |   11 
 drivers/isdn/avmb1/capilli.h              |  113 -
 drivers/isdn/avmb1/capiutil.c             |  937 -----------
 drivers/isdn/avmb1/capiutil.h             |  505 ------
 drivers/isdn/avmb1/kcapi.c                | 1700 ---------------------
 drivers/isdn/avmb1/t1isa.c                |  578 -------
 drivers/isdn/avmb1/t1pci.c                |  301 ---
 199 files changed, 20253 insertions(+), 18537 deletions(-)

