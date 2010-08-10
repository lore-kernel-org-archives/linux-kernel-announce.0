From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.35.1 released
Date: Tue, 10 Aug 2010 19:17:44 GMT
Message-ID: <201008101917.o7AJHiPp011079@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.35.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.35.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.35.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                14967             57441
Full source                       69270342         412897280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                       |    2 
 arch/arm/plat-mxc/gpio.c                       |    8 +
 arch/arm/plat-mxc/include/mach/gpio.h          |    1 
 arch/parisc/kernel/firmware.c                  |   12 --
 arch/x86/xen/enlighten.c                       |    2 
 arch/x86/xen/time.c                            |   39 ------
 drivers/edac/amd64_edac.c                      |    6 -
 drivers/gpu/drm/i915/intel_display.c           |  144 ++++++++++++++++---------
 drivers/gpu/drm/i915/intel_drv.h               |    8 +
 drivers/gpu/drm/i915/intel_overlay.c           |    7 -
 drivers/gpu/drm/radeon/r600.c                  |   24 +++-
 drivers/gpu/drm/radeon/r600d.h                 |    1 
 drivers/gpu/drm/radeon/radeon_object.c         |   27 +++-
 drivers/gpu/drm/radeon/rs690.c                 |   27 +---
 drivers/gpu/drm/radeon/rv515.c                 |   23 +--
 drivers/gpu/drm/radeon/rv770.c                 |    5 
 drivers/gpu/drm/radeon/rv770d.h                |    1 
 drivers/misc/enclosure.c                       |    7 -
 drivers/net/e1000e/hw.h                        |    2 
 drivers/net/e1000e/netdev.c                    |   13 +-
 drivers/net/igb/igb_main.c                     |    8 -
 drivers/net/wireless/ath/ath9k/ar9002_calib.c  |    2 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c |    2 
 drivers/net/wireless/ath/ath9k/eeprom.h        |    2 
 drivers/net/wireless/ath/ath9k/eeprom_4k.c     |    4 
 drivers/net/wireless/ath/ath9k/eeprom_9287.c   |    4 
 drivers/net/wireless/ath/ath9k/eeprom_def.c    |    6 -
 drivers/net/wireless/ath/ath9k/hw.c            |   23 +++
 drivers/net/wireless/ath/ath9k/xmit.c          |   95 ++++++++++------
 drivers/net/wireless/iwlwifi/iwl-scan.c        |   18 +--
 drivers/net/xen-netfront.c                     |    1 
 drivers/parisc/led.c                           |    6 -
 drivers/ssb/driver_chipcommon.c                |    1 
 drivers/ssb/pci.c                              |   15 ++
 fs/block_dev.c                                 |    4 
 include/drm/drm_pciids.h                       |    7 +
 include/linux/netdevice.h                      |    2 
 include/linux/notifier.h                       |    1 
 kernel/signal.c                                |    9 +
 net/9p/trans_fd.c                              |    2 
 net/ipv4/devinet.c                             |    1 
 net/mac80211/mesh_plink.c                      |   42 +++++--
 net/sched/sch_generic.c                        |   18 +++
 net/wireless/mlme.c                            |    8 -
 net/wireless/scan.c                            |    5 
 45 files changed, 395 insertions(+), 250 deletions(-)

