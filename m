From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.2.26 released
Date: Tue, 19 Oct 2004 18:44:30 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200410191844.i9JIiUZV029510@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.2.26 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.2/patch-2.2.26.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.2/linux-2.2.26.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 7896             25167
Full source                       15754692          85882880

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 ChangeLog-2.2.26            |   36 +++++++++++
 MAINTAINERS                 |   14 ++--
 Makefile                    |    2 
 arch/i386/kernel/traps.c    |    2 
 arch/i386/mm/fault.c        |    2 
 arch/m68k/bvme6000/rtc.c    |    1 
 arch/m68k/mvme16x/rtc.c     |    1 
 drivers/char/rtc.c          |    2 
 drivers/macintosh/rtc.c     |    1 
 drivers/sbus/char/rtc.c     |    1 
 drivers/sgi/char/ds1286.c   |    2 
 drivers/sgi/char/graphics.c |    2 
 fs/fat/inode.c              |    3 
 fs/inode.c                  |    1 
 fs/proc/array.c             |    9 +-
 fs/proc/proc_tty.c          |    4 -
 fs/select.c                 |   11 ++-
 include/linux/jhash.h       |  143 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/sysctl.h      |    3 
 mm/mmap.c                   |    2 
 mm/mremap.c                 |   17 ++++-
 mm/swapfile.c               |   13 +---
 net/ipv4/af_inet.c          |    3 
 net/ipv4/ip_fragment.c      |   61 ++++++++++++++++++
 net/ipv4/route.c            |   34 ++++++++--
 25 files changed, 327 insertions(+), 43 deletions(-)

