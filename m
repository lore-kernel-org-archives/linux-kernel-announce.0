From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.11.3 released
Date: Sun, 13 Mar 2005 09:54:51 GMT
Message-ID: <200503130954.j2D9spa9018033@hera.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.11.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.11.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.11.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 4794             15543
Full source                       37092286         208250880

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                               |    2 +-
 arch/ppc/oprofile/op_model_fsl_booke.c |    3 +--
 arch/ppc/platforms/4xx/ebony.h         |    4 ++--
 arch/ppc/platforms/4xx/luan.h          |    6 +++---
 arch/ppc/platforms/4xx/ocotea.h        |    4 ++--
 drivers/char/drm/drm_ioctl.c           |    2 ++
 drivers/input/serio/i8042-x86ia64io.h  |    6 +++---
 drivers/md/raid6altivec.uc             |    4 ++++
 drivers/media/video/adv7170.c          |    2 +-
 drivers/media/video/adv7175.c          |    2 +-
 drivers/media/video/bt819.c            |    2 +-
 drivers/media/video/saa7110.c          |   33 ++++++++++++++++-----------------
 drivers/media/video/saa7114.c          |    2 +-
 drivers/media/video/saa7185.c          |    2 +-
 drivers/net/r8169.c                    |   17 ++++++++++-------
 drivers/net/sis900.c                   |   30 ++++++++++++++----------------
 drivers/net/via-rhine.c                |    3 +++
 drivers/pci/hotplug/pciehp_ctrl.c      |    3 ++-
 fs/cramfs/inode.c                      |    1 +
 fs/eventpoll.c                         |    3 ++-
 net/ipv4/tcp_timer.c                   |    1 +
 21 files changed, 72 insertions(+), 60 deletions(-)

