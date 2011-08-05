From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.0.1 released
Date: Fri, 5 Aug 2011 14:39:32 GMT
Message-ID: <201108051439.p75EdWD0026748@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 3.0.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.0.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.0.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                33588            123558
Full source                       76754139         450990080

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                             |    2 
 arch/alpha/kernel/time.c                             |    2 
 arch/arm/mach-pxa/cm-x300.c                          |    8 -
 arch/powerpc/kernel/crash.c                          |    6 -
 arch/powerpc/kernel/time.c                           |    2 
 arch/powerpc/platforms/pseries/hvconsole.c           |    2 
 arch/x86/include/asm/msr-index.h                     |    3 
 arch/x86/kernel/cpu/intel.c                          |   18 +++
 arch/x86/kernel/relocate_kernel_32.S                 |    2 
 arch/x86/kernel/relocate_kernel_64.S                 |    2 
 arch/x86/oprofile/backtrace.c                        |   56 +++++++--
 arch/xtensa/kernel/ptrace.c                          |    3 
 block/blk-core.c                                     |    3 
 block/blk-exec.c                                     |    7 +
 drivers/block/cciss.h                                |    2 
 drivers/firewire/core-cdev.c                         |   20 +--
 drivers/firmware/sigma.c                             |    3 
 drivers/gpu/drm/radeon/atombios_dp.c                 |   22 +++
 drivers/gpu/drm/radeon/radeon_combios.c              |    3 
 drivers/gpu/drm/radeon/radeon_pm.c                   |    3 
 drivers/infiniband/ulp/srp/ib_srp.c                  |    2 
 drivers/md/dm-io.c                                   |   29 ++++
 drivers/md/dm-mpath.c                                |    5 
 drivers/md/dm-snap-persistent.c                      |    2 
 drivers/md/dm.c                                      |   10 +
 drivers/misc/Kconfig                                 |    3 
 drivers/mmc/host/sdhci-esdhc-imx.c                   |    2 
 drivers/net/jme.c                                    |   20 ++-
 drivers/net/wireless/ath/ath9k/ar9003_mac.c          |    3 
 drivers/net/wireless/ath/ath9k/mac.c                 |    3 
 drivers/net/wireless/rt2x00/rt2800pci.c              |    1 
 drivers/net/wireless/rtlwifi/rtl8192cu/rf.c          |    2 
 drivers/pci/pci.c                                    |    7 +
 drivers/pci/quirks.c                                 |   23 +++
 drivers/rtc/interface.c                              |   55 ++++++---
 drivers/rtc/rtc-tegra.c                              |    2 
 drivers/scsi/hpsa.h                                  |    2 
 drivers/scsi/libsas/sas_expander.c                   |    3 
 drivers/scsi/pmcraid.c                               |    3 
 drivers/scsi/scsi_devinfo.c                          |    2 
 drivers/scsi/scsi_lib.c                              |    2 
 drivers/scsi/ses.c                                   |    6 -
 drivers/scsi/sr.c                                    |   46 +++++++
 drivers/scsi/sr.h                                    |    7 +
 drivers/staging/ath6kl/os/linux/ar6000_drv.c         |   49 +++++---
 drivers/staging/ath6kl/os/linux/cfg80211.c           |   31 +++--
 drivers/staging/ath6kl/os/linux/include/ar6000_drv.h |    9 +
 drivers/staging/brcm80211/brcmsmac/wl_mac80211.c     |    5 
 drivers/staging/comedi/comedi_fops.c                 |    4 
 drivers/staging/hv/channel.c                         |    2 
 drivers/staging/hv/channel_mgmt.c                    |    2 
 drivers/staging/hv/connection.c                      |    2 
 drivers/staging/hv/netvsc.c                          |    4 
 drivers/staging/hv/rndis_filter.c                    |    6 -
 drivers/staging/hv/storvsc.c                         |    8 -
 drivers/staging/hv/storvsc_drv.c                     |    2 
 drivers/staging/rtl8192e/r8192E_core.c               |    6 +
 drivers/staging/usbip/vhci_hcd.c                     |    4 
 drivers/tty/hvc/hvc_console.c                        |    8 -
 drivers/tty/n_gsm.c                                  |    4 
 drivers/tty/serial/8250.c                            |    2 
 drivers/tty/serial/Kconfig                           |    2 
 drivers/usb/host/ehci-hcd.c                          |    8 -
 drivers/usb/host/ehci-hub.c                          |    3 
 drivers/usb/host/ehci-q.c                            |   85 +++++++-------
 drivers/usb/host/ehci.h                              |    4 
 drivers/usb/host/pci-quirks.c                        |   28 ++++
 drivers/usb/musb/musb_core.c                         |    1 
 drivers/usb/serial/pl2303.c                          |    1 
 drivers/usb/serial/pl2303.h                          |    4 
 drivers/watchdog/shwdt.c                             |    2 
 fs/cifs/dir.c                                        |    2 
 fs/ecryptfs/inode.c                                  |    1 
 fs/ecryptfs/keystore.c                               |   47 ++++---
 fs/ext3/xattr.c                                      |   12 +-
 fs/ext4/ext4.h                                       |    1 
 fs/ext4/extents.c                                    |   11 +
 fs/ext4/mballoc.c                                    |    2 
 fs/gfs2/ops_fstype.c                                 |    4 
 fs/nfs/delegation.c                                  |   16 +-
 fs/nfs/dir.c                                         |   56 +++++----
 fs/nfs/nfs4filelayout.c                              |    2 
 fs/nfs/nfs4proc.c                                    |    8 +
 fs/nfs/nfs4xdr.c                                     |    2 
 fs/nfs/pnfs.c                                        |   63 +++++-----
 fs/nfs/pnfs.h                                        |    6 -
 fs/nfsd/nfs4state.c                                  |   66 ++++-------
 fs/proc/base.c                                       |   16 ++
 include/linux/firewire-cdev.h                        |    3 
 include/linux/mm.h                                   |    2 
 include/linux/netdevice.h                            |    5 
 include/linux/nfs_fs.h                               |    3 
 include/linux/nfs_xdr.h                              |    2 
 ipc/sem.c                                            |   13 +-
 kernel/events/core.c                                 |    7 -
 kernel/futex.c                                       |    4 
 kernel/trace/trace.h                                 |    1 
 kernel/trace/trace_events.c                          |  113 +++++++++++++++----
 kernel/trace/trace_events_filter.c                   |    6 +
 lib/xz/xz_private.h                                  |    2 
 mm/backing-dev.c                                     |    1 
 mm/memcontrol.c                                      |    2 
 mm/memory.c                                          |   58 +++++++++
 mm/oom_kill.c                                        |    4 
 net/bridge/br_private.h                              |    1 
 net/bridge/br_stp.c                                  |    4 
 net/core/ethtool.c                                   |    4 
 net/mac80211/mlme.c                                  |    3 
 net/sunrpc/svc_xprt.c                                |   11 +
 net/wireless/reg.c                                   |    5 
 security/apparmor/domain.c                           |    2 
 security/apparmor/lsm.c                              |    2 
 sound/core/pcm_compat.c                              |    2 
 sound/pci/hda/patch_realtek.c                        |    7 -
 sound/pci/oxygen/xonar_pcm179x.c                     |    5 
 sound/soc/davinci/davinci-vcif.c                     |    9 -
 sound/soc/soc-core.c                                 |    1 
 tools/perf/Makefile                                  |    5 
 tools/perf/util/header.c                             |    5 
 tools/perf/util/session.c                            |   30 +++--
 tools/perf/util/session.h                            |    1 
 121 files changed, 931 insertions(+), 402 deletions(-)

