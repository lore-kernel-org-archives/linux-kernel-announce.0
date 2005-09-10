From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.13.1 released
Date: Sat, 10 Sep 2005 03:45:07 GMT
Message-ID: <200509100345.j8A3j7oj029691@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.13.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.13.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.13.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 4327             12911
Full source                       38375454         219432960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                      |    2 -
 arch/i386/pci/common.c        |    1 
 arch/i386/pci/i386.c          |   49 +++++++++++++-----------------------------
 crypto/cipher.c               |   12 +++++++---
 drivers/char/rtc.c            |    5 +---
 drivers/media/video/Kconfig   |    1 
 drivers/pci/rom.c             |   24 ++++++++++++++------
 drivers/pci/setup-bus.c       |    2 -
 drivers/scsi/aacraid/aachba.c |    2 -
 include/net/compat.h          |    5 ++--
 net/compat.c                  |   44 ++++++++++++++++++++++---------------
 net/core/filter.c             |    6 ++---
 net/ipv4/ip_fragment.c        |    2 -
 net/ipv4/raw.c                |    2 -
 net/ipv6/raw.c                |    2 -
 net/socket.c                  |    3 +-
 16 files changed, 85 insertions(+), 77 deletions(-)

