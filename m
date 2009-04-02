From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.29.1 released
Date: Thu, 2 Apr 2009 23:12:02 GMT
Message-ID: <200904022312.n32NC25H028412@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.29.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.29.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.29.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                14395             42280
Full source                       56553335         336189440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                 |    2 -
 arch/arm/include/asm/elf.h               |    1 
 arch/arm/kernel/module.c                 |    9 +++++
 arch/arm/mach-iop13xx/pci.c              |    5 ++-
 arch/arm/mach-omap2/mmc-twl4030.c        |    1 
 arch/arm/mm/mmu.c                        |    2 -
 arch/sparc/include/asm/tlb_64.h          |    4 +-
 arch/sparc/kernel/nmi.c                  |   23 +++++++++++++
 arch/sparc/kernel/smp_64.c               |    4 +-
 arch/x86/kernel/check.c                  |    6 +--
 arch/x86/kernel/cpu/mtrr/generic.c       |   51 ++++++++++++++++++-------------
 arch/x86/kernel/ptrace.c                 |    3 -
 arch/x86/kernel/tlb_uv.c                 |    3 +
 arch/x86/kvm/paging_tmpl.h               |    2 -
 arch/x86/kvm/svm.c                       |   41 +++++++++++++++++-------
 arch/x86/kvm/vmx.c                       |    2 -
 arch/x86/lguest/boot.c                   |   10 +++++-
 arch/x86/mm/pat.c                        |    5 +--
 arch/x86/pci/i386.c                      |    3 +
 drivers/char/raw.c                       |    1 
 drivers/lguest/page_tables.c             |    4 +-
 drivers/media/dvb/firewire/firedtv-avc.c |    6 +++
 drivers/media/video/v4l2-common.c        |    8 ++--
 drivers/net/dnet.c                       |    1 
 drivers/net/wireless/ath5k/base.c        |   22 +++++++++----
 drivers/net/wireless/ath5k/base.h        |    2 -
 drivers/net/wireless/ath9k/recv.c        |    7 +++-
 drivers/net/wireless/ath9k/xmit.c        |    2 -
 drivers/net/wireless/b43/xmit.c          |    2 -
 drivers/scsi/arm/cumana_2.c              |    2 -
 drivers/usb/core/message.c               |    3 +
 drivers/usb/core/quirks.c                |    4 ++
 drivers/usb/core/sysfs.c                 |    4 +-
 drivers/usb/gadget/f_rndis.c             |    2 -
 drivers/usb/host/ehci-q.c                |   32 +++++++++++++++++++
 drivers/usb/host/ehci.h                  |    3 +
 drivers/usb/storage/cypress_atacb.c      |   15 ++++-----
 drivers/usb/storage/scsiglue.c           |    6 +++
 drivers/video/pxafb.c                    |   14 ++++++++
 fs/cifs/CHANGES                          |    3 +
 fs/cifs/cifssmb.c                        |    6 ++-
 fs/cifs/connect.c                        |    2 -
 fs/fuse/file.c                           |    3 +
 include/linux/mm.h                       |   15 +++++++--
 include/linux/usb/quirks.h               |    3 +
 mm/memory.c                              |    6 ++-
 net/bridge/br_if.c                       |    1 
 net/core/dev.c                           |    9 +----
 net/ipv4/udp.c                           |    6 +++
 net/ipv6/ip6_input.c                     |    4 --
 net/netfilter/nf_conntrack_proto_tcp.c   |    3 +
 net/wireless/reg.c                       |   23 ++++++++++---
 net/xfrm/xfrm_state.c                    |    2 -
 53 files changed, 296 insertions(+), 107 deletions(-)

