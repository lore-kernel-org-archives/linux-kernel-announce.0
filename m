From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.32.1 released
Date: Mon, 14 Dec 2009 18:13:08 GMT
Message-ID: <200912141813.nBEID8vr011050@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.32.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.32.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.32.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                15695             61454
Full source                       64381439         382392320

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/ext4.txt   |   10 +
 Makefile                             |    2 
 drivers/scsi/hosts.c                 |   13 +
 drivers/scsi/lpfc/lpfc_init.c        |    2 
 drivers/scsi/megaraid/megaraid_sas.c |    8 -
 drivers/scsi/qla2xxx/qla_attr.c      |    3 
 drivers/scsi/scsi_lib_dma.c          |    4 
 fs/ext4/balloc.c                     |    8 -
 fs/ext4/block_validity.c             |    2 
 fs/ext4/ext4.h                       |    8 +
 fs/ext4/ext4_jbd2.h                  |   21 ++
 fs/ext4/extents.c                    |   22 ++
 fs/ext4/fsync.c                      |   54 ++----
 fs/ext4/inode.c                      |   81 +++++++---
 fs/ext4/ioctl.c                      |   29 ++-
 fs/ext4/mballoc.c                    |   40 ++++-
 fs/ext4/migrate.c                    |    4 
 fs/ext4/move_extent.c                |  278 ++++++++++++++++-------------------
 fs/ext4/namei.c                      |   38 ++--
 fs/ext4/resize.c                     |    2 
 fs/ext4/super.c                      |   40 +++--
 fs/ext4/xattr.c                      |    7 
 fs/jbd2/commit.c                     |    4 
 fs/jbd2/journal.c                    |    5 
 include/linux/sched.h                |   13 +
 include/scsi/osd_protocol.h          |    1 
 include/scsi/scsi_host.h             |   16 +-
 27 files changed, 424 insertions(+), 291 deletions(-)

