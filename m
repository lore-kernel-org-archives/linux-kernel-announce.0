From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.17.3 released
Date: Fri, 30 Jun 2006 18:15:57 GMT
Message-ID: <200606301815.k5UIFv4D008484@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.17.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.17.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.17.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 7773             23609
Full source                       41278008         236615680

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
 arch/sparc/mm/iommu.c                        |    3 +-
 arch/um/kernel/time_kern.c                   |    2 -
 drivers/ide/ide-io.c                         |    2 -
 drivers/ieee1394/ohci1394.c                  |    3 ++
 drivers/input/input.c                        |    2 -
 drivers/net/wireless/bcm43xx/bcm43xx_main.c  |   28 ++++++++++----------
 drivers/parport/Kconfig                      |    2 -
 drivers/scsi/libata-core.c                   |    2 -
 drivers/usb/serial/whiteheat.c               |    4 +-
 fs/ntfs/file.c                               |   13 +++++----
 include/asm-i386/alternative.h               |    2 +
 include/linux/libata.h                       |    9 ++++--
 include/linux/pfkeyv2.h                      |    2 -
 include/net/sctp/structs.h                   |    3 +-
 kernel/exit.c                                |    2 -
 lib/idr.c                                    |   16 ++++++++---
 net/core/ethtool.c                           |    3 +-
 net/ipv4/netfilter/ip_conntrack_proto_sctp.c |    2 -
 net/ipv6/addrconf.c                          |   37 ++++++++++++++++++++++++---
 net/netfilter/nf_conntrack_proto_sctp.c      |    2 -
 net/netfilter/xt_sctp.c                      |    2 -
 net/sctp/input.c                             |    3 +-
 net/sctp/ipv6.c                              |    6 ++--
 net/sctp/outqueue.c                          |    1 
 net/sctp/protocol.c                          |    8 +++++
 net/sctp/sm_statefuns.c                      |   10 ++++++-
 net/sctp/socket.c                            |   28 ++++++++++++++++++--
 net/sctp/ulpevent.c                          |   30 ++++++++++++++++++++-
 usr/Makefile                                 |    3 --
 30 files changed, 174 insertions(+), 58 deletions(-)

