From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.24.1 released
Date: Fri, 8 Feb 2008 20:45:45 GMT
Message-ID: <200802082045.m18KjjEl025729@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.24.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.24.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.24.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                16612             62811
Full source                       46736754         272844800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/video4linux/CARDLIST.cx23885  |    2 -
 Makefile                                    |    4 +-
 arch/x86/kernel/Makefile_32                 |    3 +
 drivers/acpi/blacklist.c                    |   23 ++++++++------
 drivers/acpi/osl.c                          |   16 ++++-----
 drivers/base/firmware_class.c               |    3 +
 drivers/char/drm/drm_stub.c                 |    1 
 drivers/char/drm/drm_vm.c                   |    2 +
 drivers/char/mspec.c                        |    2 -
 drivers/firmware/dmi_scan.c                 |    9 -----
 drivers/media/video/cx23885/cx23885-cards.c |    4 ++
 drivers/net/forcedeth.c                     |   16 ++++-----
 drivers/net/sky2.c                          |   14 +++++---
 drivers/net/wireless/b43/dma.c              |   28 +++++++++++++++--
 drivers/net/wireless/b43/main.c             |   21 +++++++++++-
 drivers/net/wireless/b43/xmit.c             |   20 +++++++++---
 drivers/net/wireless/b43/xmit.h             |    2 -
 drivers/net/wireless/b43legacy/dma.c        |   23 ++++++++++++--
 drivers/net/wireless/b43legacy/main.c       |    9 ++++-
 drivers/net/wireless/b43legacy/pio.c        |   21 ++++++++++--
 drivers/net/wireless/b43legacy/xmit.c       |   15 +++++++--
 drivers/net/wireless/b43legacy/xmit.h       |    2 -
 drivers/pci/hotplug/fakephp.c               |   39 +++++++++++++++++++++--
 drivers/usb/core/driver.c                   |    4 +-
 drivers/usb/core/hub.c                      |    2 -
 drivers/usb/gadget/fsl_usb2_udc.c           |    2 -
 drivers/usb/misc/usbtest.c                  |    1 
 drivers/usb/serial/cp2101.c                 |    6 +++
 drivers/usb/serial/ftdi_sio.c               |   46 ++++++++++++++--------------
 drivers/usb/serial/ftdi_sio.h               |    4 ++
 drivers/usb/serial/keyspan.c                |    2 -
 drivers/usb/serial/kobil_sct.c              |    1 
 drivers/usb/serial/option.c                 |    1 
 drivers/usb/serial/pl2303.c                 |    4 +-
 drivers/usb/serial/pl2303.h                 |   13 +++++--
 drivers/usb/serial/sierra.c                 |   13 +++++++
 drivers/usb/storage/unusual_devs.h          |    8 ++++
 fs/eventpoll.c                              |    2 -
 fs/ncpfs/mmap.c                             |    4 --
 fs/splice.c                                 |    8 ++++
 include/linux/dmi.h                         |    2 -
 include/linux/wait.h                        |   16 +++++++++
 kernel/relay.c                              |    1 
 kernel/sched_fair.c                         |    8 +++-
 mm/filemap.c                                |    8 +++-
 mm/fremap.c                                 |    5 ++-
 mm/mmap.c                                   |    2 -
 mm/slab.c                                   |   46 ++++++++++++++--------------
 scripts/mod/file2alias.c                    |    2 -
 security/selinux/ss/services.c              |    3 +
 sound/oss/via82cxxx_audio.c                 |   14 +++-----
 sound/usb/usx2y/usX2Yhwdep.c                |    2 -
 sound/usb/usx2y/usx2yhwdeppcm.c             |    2 -
 53 files changed, 360 insertions(+), 151 deletions(-)

