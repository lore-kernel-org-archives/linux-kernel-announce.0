From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.13.3 released
Date: Tue, 4 Oct 2005 00:36:21 GMT
Message-ID: <200510040036.j940aLt3025557@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.13.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.13.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.13.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                10559             36153
Full source                       38372085         219443200

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                               |    2 -
 arch/i386/pci/common.c                 |    1 
 arch/i386/pci/i386.c                   |   49 ++++++++++-----------------------
 arch/um/kernel/skas/include/mmu-skas.h |    4 ++
 arch/um/kernel/skas/mmu.c              |    9 +++++-
 arch/x86_64/ia32/ia32_ioctl.c          |   17 ++++++++---
 crypto/cipher.c                        |   12 ++++++--
 drivers/char/rtc.c                     |    5 +--
 drivers/ide/pci/cmd64x.c               |    2 -
 drivers/ide/pci/hpt34x.c               |    2 -
 drivers/ide/pci/hpt366.c               |    8 ++++-
 drivers/media/video/Kconfig            |    1 
 drivers/net/forcedeth.c                |    3 ++
 drivers/net/skge.c                     |   24 ++++++++++------
 drivers/net/sungem.c                   |   36 +++++++++---------------
 drivers/net/sunhme.c                   |   45 ++++++++++++------------------
 drivers/pci/rom.c                      |   24 +++++++++++-----
 drivers/pci/setup-bus.c                |    2 -
 drivers/pcmcia/yenta_socket.c          |   13 ++++++++
 drivers/scsi/aacraid/aachba.c          |    2 -
 drivers/usb/serial/ftdi_sio.c          |    2 -
 fs/compat_ioctl.c                      |    7 +++-
 fs/exec.c                              |    5 +--
 fs/jfs/inode.c                         |   24 ++++++++--------
 include/asm-um/pgalloc.h               |   12 ++++----
 include/asm-um/pgtable-3level.h        |    9 ++----
 include/net/compat.h                   |    5 ++-
 include/net/ip_vs.h                    |    3 ++
 mm/mempolicy.c                         |    7 ++++
 net/compat.c                           |   44 +++++++++++++++++------------
 net/core/filter.c                      |    6 ++--
 net/ipv4/ip_fragment.c                 |    2 -
 net/ipv4/ipvs/ip_vs_conn.c             |   41 +++++++++++++++++++++++++--
 net/ipv4/ipvs/ip_vs_core.c             |   16 +++++-----
 net/ipv4/ipvs/ip_vs_sync.c             |   20 +++++++++----
 net/ipv4/netfilter/ipt_MASQUERADE.c    |    6 ++++
 net/ipv4/raw.c                         |    2 -
 net/ipv4/tcp_input.c                   |    2 -
 net/ipv4/tcp_minisocks.c               |    2 -
 net/ipv6/raw.c                         |    2 -
 net/ipv6/udp.c                         |    5 +--
 net/socket.c                           |    3 +-
 42 files changed, 289 insertions(+), 197 deletions(-)

