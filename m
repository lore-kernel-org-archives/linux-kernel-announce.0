From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.11.5 released
Date: Sat, 19 Mar 2005 09:49:52 GMT
Message-ID: <200503190949.j2J9nqqS022899@hera.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.11.5 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.11.5.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.11.5.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                 6572             22246
Full source                       37088482         208250880

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
 drivers/net/amd8111e.c                 |    2 ++
 drivers/net/ppp_async.c                |    2 +-
 drivers/net/r8169.c                    |   17 ++++++++++-------
 drivers/net/sis900.c                   |   30 ++++++++++++++----------------
 drivers/net/tun.c                      |    2 +-
 drivers/net/via-rhine.c                |    7 ++++++-
 drivers/net/wan/hd6457x.c              |    2 +-
 drivers/pci/hotplug/pciehp_ctrl.c      |    3 ++-
 fs/cramfs/inode.c                      |    1 +
 fs/eventpoll.c                         |    3 ++-
 fs/exec.c                              |    2 +-
 kernel/signal.c                        |    1 +
 net/ipv4/fib_hash.c                    |   12 +++++++++++-
 net/ipv4/tcp_timer.c                   |    1 +
 net/netrom/nr_in.c                     |    9 ---------
 net/xfrm/xfrm_state.c                  |    2 +-
 sound/pci/ac97/ac97_codec.c            |   13 ++++++++-----
 31 files changed, 102 insertions(+), 81 deletions(-)

