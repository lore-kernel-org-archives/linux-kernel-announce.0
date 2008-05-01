From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.25.1 released
Date: Thu, 1 May 2008 22:08:19 GMT
Message-ID: <200805012208.m41M8J5c030777@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.25.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.25.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.25.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                12155             37072
Full source                       48583663         284661760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                              |    2 
 arch/alpha/kernel/osf_sys.c           |    1 
 arch/x86/kernel/io_apic_32.c          |    1 
 arch/x86/pci/irq.c                    |   12 ++---
 drivers/infiniband/hw/nes/nes.c       |    4 -
 drivers/infiniband/hw/nes/nes_cm.c    |    6 +-
 drivers/infiniband/hw/nes/nes_hw.c    |   20 ++++-----
 drivers/md/dm-exception-store.c       |    2 
 drivers/media/video/cx88/cx88-cards.c |    4 +
 drivers/media/video/ivtv/ivtv-ioctl.c |    3 -
 drivers/media/video/tea5761.c         |   15 ++++--
 drivers/media/video/tuner-core.c      |    6 +-
 drivers/net/s2io.c                    |    4 -
 drivers/net/tehuti.c                  |   15 ++++++
 drivers/net/tg3.c                     |   52 ++++++++++++++++++++++--
 drivers/net/tg3.h                     |    1 
 drivers/net/wireless/b43/dma.c        |   73 ++++++++++++++++++++++++----------
 drivers/net/wireless/b43/main.c       |   28 ++++++++++++-
 drivers/rtc/rtc-pcf8583.c             |    2 
 drivers/scsi/qla2xxx/qla_os.c         |    2 
 drivers/serial/dz.c                   |    2 
 drivers/ssb/pci.c                     |    5 ++
 drivers/usb/core/hub.c                |    1 
 drivers/usb/host/ohci-pci.c           |    4 +
 drivers/usb/serial/sierra.c           |    1 
 fs/aio.c                              |   12 +++++
 fs/dnotify.c                          |   11 +++++
 fs/jffs2/erase.c                      |   18 +++-----
 include/linux/rtnetlink.h             |    4 -
 include/net/tcp.h                     |    7 ++-
 include/net/xfrm.h                    |    3 +
 kernel/cgroup.c                       |    7 ++-
 kernel/hrtimer.c                      |   34 +++++++++++++--
 mm/pagewalk.c                         |    8 ++-
 net/can/raw.c                         |    3 -
 net/core/rtnetlink.c                  |    6 ++
 net/dccp/probe.c                      |    2 
 net/ipv4/tcp_probe.c                  |    9 +---
 net/key/af_key.c                      |    2 
 net/rose/af_rose.c                    |    6 +-
 net/tipc/socket.c                     |    4 -
 net/xfrm/xfrm_policy.c                |    2 
 net/xfrm/xfrm_user.c                  |    2 
 security/selinux/hooks.c              |   15 +++++-
 44 files changed, 318 insertions(+), 103 deletions(-)

