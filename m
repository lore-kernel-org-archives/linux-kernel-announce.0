From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.12.2 released
Date: Thu, 30 Jun 2005 02:14:21 GMT
Message-ID: <200506300214.j5U2ELju005270@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.12.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.12.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.12.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 4096             11946
Full source                       37505225         212736000

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                       |    2 -
 arch/ia64/kernel/ptrace.c      |   15 +++++++----
 arch/ia64/kernel/signal.c      |    5 ++-
 drivers/acpi/pci_irq.c         |    1 
 drivers/net/e1000/e1000_main.c |    1 
 drivers/pci/pci-driver.c       |    2 -
 drivers/scsi/qla2xxx/qla_os.c  |   55 ++++++++++++++++++++---------------------
 fs/exec.c                      |    1 
 include/asm-i386/string.h      |   32 ++++++++++++++++-------
 mm/memory.c                    |    2 -
 net/netlink/af_netlink.c       |   11 +++++---
 11 files changed, 77 insertions(+), 50 deletions(-)

