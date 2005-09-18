From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.13.2 released
Date: Sun, 18 Sep 2005 13:51:12 GMT
Message-ID: <200509181351.j8IDpC8p015558@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.13.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.13.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.13.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 6946             22864
Full source                       38376001         219432960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                            |    2 -
 arch/i386/pci/common.c              |    1 
 arch/i386/pci/i386.c                |   49 +++++++++++-------------------------
 arch/x86_64/ia32/ia32_ioctl.c       |   17 +++++++++---
 crypto/cipher.c                     |   12 ++++++--
 drivers/char/rtc.c                  |    5 +--
 drivers/ide/pci/cmd64x.c            |    2 -
 drivers/ide/pci/hpt34x.c            |    2 -
 drivers/ide/pci/hpt366.c            |    8 ++++-
 drivers/media/video/Kconfig         |    1 
 drivers/net/forcedeth.c             |    3 ++
 drivers/net/sungem.c                |   36 ++++++++++----------------
 drivers/net/sunhme.c                |   45 +++++++++++++--------------------
 drivers/pci/rom.c                   |   24 ++++++++++++-----
 drivers/pci/setup-bus.c             |    2 -
 drivers/scsi/aacraid/aachba.c       |    2 -
 drivers/usb/serial/ftdi_sio.c       |    2 -
 fs/compat_ioctl.c                   |    7 +++--
 fs/jfs/inode.c                      |   24 ++++++++---------
 include/net/compat.h                |    5 ++-
 mm/mempolicy.c                      |    7 ++++-
 net/compat.c                        |   44 +++++++++++++++++++-------------
 net/core/filter.c                   |    6 ++--
 net/ipv4/ip_fragment.c              |    2 -
 net/ipv4/netfilter/ipt_MASQUERADE.c |    6 ++++
 net/ipv4/raw.c                      |    2 -
 net/ipv6/raw.c                      |    2 -
 net/socket.c                        |    3 +-
 28 files changed, 171 insertions(+), 150 deletions(-)

