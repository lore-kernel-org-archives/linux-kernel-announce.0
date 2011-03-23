From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.38.1 released
Date: Wed, 23 Mar 2011 21:38:43 GMT
Message-ID: <201103232138.p2NLchx7026242@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.38.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.38.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.38.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                27855             98522
Full source                       74790674         440504320

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/i2c/instantiating-devices        |    2 
 Makefile                                       |    2 
 arch/arm/mach-davinci/board-dm644x-evm.c       |    8 -
 arch/microblaze/include/asm/uaccess.h          |    8 -
 arch/parisc/kernel/irq.c                       |    2 
 arch/powerpc/include/asm/reg.h                 |    1 
 arch/powerpc/kernel/perf_event.c               |   24 +++++
 arch/x86/include/asm/pgtable-3level.h          |   11 --
 arch/x86/kernel/alternative.c                  |    7 +
 arch/x86/kernel/e820.c                         |   10 +-
 arch/x86/kernel/early-quirks.c                 |    7 +
 arch/x86/kernel/entry_64.S                     |    2 
 arch/x86/mm/pgtable.c                          |    3 
 drivers/ata/ahci.c                             |    3 
 drivers/ata/libata-eh.c                        |    2 
 drivers/gpu/drm/drm_sysfs.c                    |    7 +
 drivers/gpu/drm/i915/i915_irq.c                |    9 +
 drivers/gpu/drm/i915/i915_reg.h                |    5 -
 drivers/gpu/drm/radeon/atombios_crtc.c         |    4 
 drivers/hid/Kconfig                            |   14 ++-
 drivers/hid/Makefile                           |    2 
 drivers/hid/hid-apple.c                        |    6 +
 drivers/hid/hid-axff.c                         |   31 ++++++
 drivers/hid/hid-core.c                         |    9 +
 drivers/hid/hid-ids.h                          |    4 
 drivers/hid/hid-input.c                        |   30 ++++--
 drivers/hid/hid-magicmouse.c                   |    4 
 drivers/hid/hid-multitouch.c                   |    2 
 drivers/hid/hid-ortek.c                        |    3 
 drivers/hwmon/sht15.c                          |    4 
 drivers/infiniband/core/cm.c                   |    1 
 drivers/infiniband/core/cma.c                  |   15 +++
 drivers/input/mouse/bcm5974.c                  |   20 ++++
 drivers/mmc/core/sdio.c                        |    8 +
 drivers/mmc/host/sdhci-pci.c                   |    8 +
 drivers/net/wireless/ath/ath9k/hw.c            |   21 ++--
 drivers/net/wireless/ath/ath9k/recv.c          |    4 
 drivers/net/wireless/rtl818x/rtl8187/dev.c     |   25 ++++-
 drivers/net/wireless/rtl818x/rtl8187/rtl8187.h |    2 
 drivers/pci/pci-sysfs.c                        |    2 
 drivers/pci/quirks.c                           |  113 +++++++++++--------------
 drivers/scsi/device_handler/scsi_dh_alua.c     |    3 
 drivers/staging/tidspbridge/rmgr/proc.c        |   19 +++-
 drivers/staging/winbond/core.h                 |    1 
 drivers/target/target_core_cdb.c               |    8 +
 drivers/tty/serial/8250.c                      |   33 ++++---
 drivers/tty/serial/mrst_max3110.c              |    2 
 drivers/usb/core/hcd-pci.c                     |   13 +-
 drivers/usb/core/hcd.c                         |   55 +++++++++---
 drivers/usb/core/urb.c                         |   11 ++
 drivers/usb/host/ehci-hub.c                    |   23 ++++-
 drivers/usb/host/isp1760-hcd.c                 |   22 +++-
 drivers/usb/host/isp1760-hcd.h                 |    1 
 drivers/usb/host/xhci-ring.c                   |   43 ++++++++-
 drivers/usb/host/xhci.h                        |    9 +
 drivers/usb/serial/ch341.c                     |    1 
 drivers/usb/serial/kobil_sct.c                 |    2 
 drivers/usb/serial/option.c                    |    3 
 drivers/usb/serial/usb-serial.c                |    5 -
 fs/dcache.c                                    |   95 +++++++++------------
 fs/ext3/namei.c                                |    2 
 fs/partitions/osf.c                            |    2 
 include/linux/ftrace.h                         |    2 
 include/linux/hid.h                            |    2 
 include/linux/usb/ch9.h                        |    2 
 include/linux/usb/hcd.h                        |    4 
 include/linux/usb/serial.h                     |    3 
 kernel/perf_event.c                            |    4 
 kernel/sched.c                                 |    2 
 kernel/smp.c                                   |   55 +++++++++---
 kernel/trace/ftrace.c                          |   52 +++++++++--
 net/sunrpc/clnt.c                              |    4 
 net/sunrpc/sched.c                             |   14 +--
 security/tomoyo/file.c                         |    5 -
 sound/drivers/aloop.c                          |   19 +---
 sound/pci/asihpi/hpioctl.c                     |    5 +
 sound/pci/ctxfi/ctatc.c                        |    2 
 sound/pci/ctxfi/ctdaio.c                       |    2 
 sound/pci/ctxfi/ctmixer.c                      |   19 +---
 sound/pci/hda/patch_realtek.c                  |   79 ++++++++++++-----
 sound/pci/hda/patch_sigmatel.c                 |   11 +-
 sound/soc/pxa/z2.c                             |    2 
 tools/perf/util/PERF-VERSION-GEN               |    8 -
 83 files changed, 756 insertions(+), 338 deletions(-)

