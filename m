From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0-test11 released
Date: Wed, 26 Nov 2003 21:49:06 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200311262149.hAQLn6xM001677@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0-test11 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0-test11.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0-test11.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                11799                 0
42277                                    0          33243689
/pub/linux/kernel/v2.6/linux-2.6.0-test11.tar.bz2         187340800                 0
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

 Makefile                                 |    2 
 arch/ia64/kernel/unwind.c                |    2 
 arch/sparc/kernel/time.c                 |    9 +
 drivers/ieee1394/csr.c                   |    1 
 drivers/ieee1394/highlevel.c             |    2 
 drivers/ieee1394/hosts.c                 |    2 
 drivers/ieee1394/ieee1394_transactions.c |    2 
 drivers/ieee1394/ieee1394_types.h        |    3 
 drivers/ieee1394/nodemgr.c               |  213 +++++++++++++++++++++----------
 drivers/ieee1394/nodemgr.h               |    1 
 drivers/net/irda/smsc-ircc2.c            |    2 
 drivers/net/pppoe.c                      |    3 
 drivers/scsi/libata-core.c               |   17 +-
 drivers/scsi/libata.h                    |    2 
 drivers/scsi/sata_promise.c              |    2 
 drivers/scsi/sata_svw.c                  |   30 +++-
 drivers/scsi/scsi.c                      |   14 +-
 drivers/scsi/scsi_error.c                |   12 +
 drivers/scsi/scsi_lib.c                  |   36 +++++
 drivers/scsi/scsi_priv.h                 |    4 
 drivers/scsi/scsi_scan.c                 |   64 ++++-----
 drivers/scsi/scsi_sysfs.c                |   63 +++++----
 drivers/video/igafb.c                    |   14 +-
 fs/jfs/jfs_logmgr.c                      |    4 
 fs/proc/proc_tty.c                       |    1 
 include/asm-ia64/pgtable.h               |    2 
 include/linux/libata.h                   |    3 
 include/net/sock.h                       |   12 +
 include/scsi/scsi_device.h               |   16 +-
 kernel/fork.c                            |    1 
 net/bridge/br.c                          |    4 
 net/econet/af_econet.c                   |    9 -
 net/ipv6/addrconf.c                      |   10 +
 net/ipv6/mcast.c                         |   25 ++-
 net/irda/irttp.c                         |    6 
 35 files changed, 400 insertions(+), 193 deletions(-)

