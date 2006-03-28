From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.16.1 released
Date: Tue, 28 Mar 2006 07:43:10 GMT
Message-ID: <200603280743.k2S7hA8c007522@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.16.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.16.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.16.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 5284             13901
Full source                       40841031         233953280

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
 arch/i386/kernel/cpu/cpufreq/speedstep-smi.c |    4 +-
 arch/i386/kernel/dmi_scan.c                  |    2 -
 drivers/base/cpu.c                           |    2 -
 drivers/base/firmware_class.c                |    6 ++-
 drivers/block/cciss.c                        |    2 -
 drivers/md/dm.c                              |   45 +++++++++++++++------------
 drivers/media/video/Kconfig                  |    1 
 drivers/media/video/tuner-types.c            |    4 +-
 drivers/scsi/sata_mv.c                       |    7 +++-
 drivers/video/i810/i810_main.c               |    2 -
 fs/9p/vfs_inode.c                            |    3 -
 fs/proc/proc_misc.c                          |    2 -
 fs/sysfs/dir.c                               |    1 
 fs/sysfs/inode.c                             |    6 +++
 fs/sysfs/symlink.c                           |    1 
 fs/xfs/linux-2.6/xfs_aops.c                  |    2 -
 include/linux/cpu.h                          |    2 -
 include/linux/raid/raid1.h                   |    2 -
 include/linux/rtc.h                          |    4 +-
 kernel/sched.c                               |    9 ++++-
 net/core/sock.c                              |    5 +--
 net/ipv4/ip_output.c                         |    6 ---
 23 files changed, 70 insertions(+), 50 deletions(-)

