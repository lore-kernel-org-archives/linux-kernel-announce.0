From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0 released
Date: Thu, 18 Dec 2003 03:57:50 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200312180357.hBI3voUI029982@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                10727                 0
34410                                    0          33255278
/pub/linux/kernel/v2.6/linux-2.6.0.tar.bz2         187340800                 0
                                         0                 0

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                     |    2 -
 arch/i386/mm/fault.c                         |    3 +
 drivers/block/scsi_ioctl.c                   |   17 +++++++--
 drivers/i2c/busses/i2c-nforce2.c             |    2 -
 drivers/ide/ide-cd.c                         |    4 ++
 drivers/ide/ide-cd.h                         |    3 +
 drivers/md/raid5.c                           |   34 +++++++++++++-----
 drivers/net/pci-skeleton.c                   |    7 ---
 drivers/net/pcnet32.c                        |    2 -
 drivers/net/r8169.c                          |    4 --
 drivers/net/sis190.c                         |    4 --
 drivers/net/wireless/airo.c                  |    7 +--
 drivers/scsi/ide-scsi.c                      |    1 
 drivers/scsi/libata-core.c                   |    3 -
 drivers/scsi/qla1280.c                       |   15 +++++++-
 drivers/usb/core/devio.c                     |    2 -
 drivers/usb/core/hub.c                       |   10 +++--
 drivers/usb/core/usb.c                       |    1 
 drivers/usb/image/Kconfig                    |    4 +-
 drivers/usb/misc/auerswald.c                 |    4 +-
 drivers/usb/serial/usb-serial.c              |   50 +++++++--------------------
 drivers/usb/storage/datafab.c                |    2 -
 drivers/usb/storage/jumpshot.c               |    2 -
 fs/hpfs/dir.c                                |    2 +
 fs/libfs.c                                   |    2 -
 fs/proc/base.c                               |   10 +++--
 include/asm-x86_64/msr.h                     |    6 +--
 include/linux/blkdev.h                       |    4 +-
 include/linux/list.h                         |   12 ++++++
 include/linux/rtnetlink.h                    |    1 
 kernel/exit.c                                |   23 ++++++++++--
 kernel/fork.c                                |   32 +++++++++++++++--
 kernel/sched.c                               |    2 -
 lib/kobject.c                                |   11 +++--
 mm/mmap.c                                    |   10 ++++-
 net/bridge/br_netfilter.c                    |    2 -
 net/ipv4/netfilter/ip_conntrack_proto_tcp.c  |    2 -
 net/ipv4/netfilter/ip_conntrack_standalone.c |    3 +
 net/ipv4/tcp_ipv4.c                          |    1 
 net/ipv6/tcp_ipv6.c                          |    2 -
 net/ipv6/udp.c                               |    2 -
 net/sched/sch_htb.c                          |   18 +++++++--
 scripts/file2alias.c                         |    7 +++
 43 files changed, 218 insertions(+), 117 deletions(-)

