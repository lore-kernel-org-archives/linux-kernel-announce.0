From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.7.1 released
Date: Mon, 17 Dec 2012 19:20:25 +0000 (UTC)
Message-ID: <20121217192025.62C66B46@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 3.7.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.7.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.7.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                10095             35440
Full source                       83627155         499046400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                            |    2 
 arch/x86/kernel/hpet.c              |    4 -
 drivers/acpi/battery.c              |   77 ++++++++++++++++++++++++++++++++++++
 drivers/acpi/sleep.c                |    8 +++
 drivers/acpi/video.c                |   14 ++++++
 drivers/acpi/video_detect.c         |    8 +++
 drivers/clk/ux500/u8500_clk.c       |    2 
 drivers/hwmon/fam15h_power.c        |    4 +
 drivers/pnp/pnpacpi/core.c          |    3 +
 drivers/staging/bcm/InterfaceInit.c |    3 -
 drivers/staging/bcm/InterfaceInit.h |    2 
 drivers/staging/telephony/ixj.c     |   24 +++++------
 drivers/usb/class/cdc-acm.c         |   38 +++++++++++++++++
 drivers/usb/host/ehci-q.c           |   12 +----
 drivers/usb/host/ehci-sched.c       |    4 -
 drivers/usb/host/ohci-q.c           |   19 ++++++++
 drivers/usb/host/xhci-pci.c         |    7 ++-
 drivers/usb/misc/Kconfig            |    1 
 drivers/usb/serial/cp210x.c         |    1 
 drivers/usb/serial/ftdi_sio.c       |    3 -
 drivers/usb/serial/ftdi_sio_ids.h   |    6 ++
 drivers/usb/serial/option.c         |   25 +++++++++++
 drivers/usb/storage/Kconfig         |    2 
 kernel/rcutree.c                    |   15 +++----
 kernel/trace/ftrace.c               |    2 
 kernel/trace/ring_buffer.c          |   16 ++++++-
 mm/dmapool.c                        |   31 +++-----------
 tools/perf/builtin-test.c           |   38 +++++------------
 28 files changed, 277 insertions(+), 94 deletions(-)

