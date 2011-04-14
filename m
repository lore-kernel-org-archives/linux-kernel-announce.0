From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.38.3 released
Date: Thu, 14 Apr 2011 21:20:34 GMT
Message-ID: <201104142120.p3ELKY8A000563@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.38.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.38.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.38.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                77144            304760
Full source                       74796500         440524800

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
 arch/arm/mach-s3c2440/mach-mini2440.c          |    7 +
 arch/microblaze/include/asm/uaccess.h          |    8 -
 arch/parisc/kernel/irq.c                       |    2 
 arch/powerpc/include/asm/reg.h                 |    1 
 arch/powerpc/kernel/perf_event.c               |   24 +++
 arch/powerpc/kernel/time.c                     |    2 
 arch/sh/kernel/ptrace_32.c                     |    8 +
 arch/sh/kernel/ptrace_64.c                     |    6 
 arch/x86/crypto/aesni-intel_asm.S              |    5 
 arch/x86/crypto/aesni-intel_glue.c             |   14 +-
 arch/x86/include/asm/pgtable-3level.h          |   11 -
 arch/x86/kernel/alternative.c                  |    7 -
 arch/x86/kernel/cpu/mtrr/main.c                |   20 ++-
 arch/x86/kernel/e820.c                         |   10 +
 arch/x86/kernel/early-quirks.c                 |    7 -
 arch/x86/kernel/entry_32.S                     |    2 
 arch/x86/kernel/entry_64.S                     |    2 
 arch/x86/mm/pgtable.c                          |    3 
 arch/x86/xen/mmu.c                             |   13 +-
 drivers/acpi/pci_root.c                        |    2 
 drivers/ata/ahci.c                             |    3 
 drivers/ata/libata-eh.c                        |    2 
 drivers/atm/solos-pci.c                        |   35 +----
 drivers/block/cciss.h                          |    1 
 drivers/bluetooth/btusb.c                      |    3 
 drivers/char/tpm/tpm.c                         |    2 
 drivers/edac/amd64_edac.c                      |    2 
 drivers/firmware/dcdbas.c                      |    4 
 drivers/gpu/drm/drm_crtc.c                     |   51 +++++++
 drivers/gpu/drm/drm_gem.c                      |    5 
 drivers/gpu/drm/drm_sysfs.c                    |    7 +
 drivers/gpu/drm/i915/i915_gem.c                |    6 
 drivers/gpu/drm/i915/i915_gem_execbuffer.c     |   21 ++-
 drivers/gpu/drm/i915/i915_irq.c                |    9 +
 drivers/gpu/drm/i915/i915_reg.h                |    5 
 drivers/gpu/drm/radeon/atombios_crtc.c         |   10 +
 drivers/gpu/drm/radeon/radeon_atombios.c       |   13 +-
 drivers/gpu/drm/radeon/radeon_combios.c        |   21 ++-
 drivers/gpu/drm/radeon/radeon_connectors.c     |   30 ++++
 drivers/gpu/drm/radeon/radeon_mode.h           |    1 
 drivers/hid/Kconfig                            |   14 +-
 drivers/hid/Makefile                           |    2 
 drivers/hid/hid-apple.c                        |    6 
 drivers/hid/hid-axff.c                         |   31 ++++
 drivers/hid/hid-core.c                         |    9 +
 drivers/hid/hid-ids.h                          |    4 
 drivers/hid/hid-input.c                        |   30 +++-
 drivers/hid/hid-magicmouse.c                   |    6 
 drivers/hid/hid-multitouch.c                   |    2 
 drivers/hid/hid-ortek.c                        |    3 
 drivers/hwmon/sht15.c                          |    4 
 drivers/infiniband/core/cm.c                   |    1 
 drivers/infiniband/core/cma.c                  |   15 ++
 drivers/input/mouse/bcm5974.c                  |   20 +++
 drivers/input/mouse/synaptics.c                |    4 
 drivers/input/xen-kbdfront.c                   |   44 +++---
 drivers/leds/leds-lp5521.c                     |   14 +-
 drivers/leds/leds-lp5523.c                     |   20 +--
 drivers/media/radio/Kconfig                    |    1 
 drivers/media/video/tlg2300/pd-video.c         |    4 
 drivers/media/video/uvc/uvc_driver.c           |    8 +
 drivers/media/video/uvc/uvc_video.c            |   14 +-
 drivers/mfd/ab3100-core.c                      |    4 
 drivers/mfd/ab3550-core.c                      |    6 
 drivers/mfd/ab8500-debugfs.c                   |    6 
 drivers/misc/ep93xx_pwm.c                      |    6 
 drivers/mmc/core/sdio.c                        |    8 +
 drivers/mmc/host/sdhci-pci.c                   |    8 +
 drivers/net/myri10ge/myri10ge.c                |    1 
 drivers/net/netxen/netxen_nic_ethtool.c        |    2 
 drivers/net/qlcnic/qlcnic_ethtool.c            |    2 
 drivers/net/s2io.c                             |    2 
 drivers/net/vmxnet3/vmxnet3_ethtool.c          |    4 
 drivers/net/vxge/vxge-ethtool.c                |    4 
 drivers/net/wireless/ath/ath9k/hw.c            |   21 +--
 drivers/net/wireless/ath/ath9k/main.c          |    4 
 drivers/net/wireless/ath/ath9k/recv.c          |    4 
 drivers/net/wireless/ath/ath9k/xmit.c          |    4 
 drivers/net/wireless/b43/dma.c                 |    2 
 drivers/net/wireless/b43/dma.h                 |    2 
 drivers/net/wireless/iwlwifi/iwl-eeprom.h      |    2 
 drivers/net/wireless/p54/p54usb.c              |    2 
 drivers/net/wireless/rt2x00/rt2800lib.c        |    6 
 drivers/net/wireless/rt2x00/rt2800pci.c        |   36 +----
 drivers/net/wireless/rt2x00/rt2x00dev.c        |    6 
 drivers/net/wireless/rtl818x/rtl8187/dev.c     |   25 +++
 drivers/net/wireless/rtl818x/rtl8187/rtl8187.h |    2 
 drivers/net/wireless/wl12xx/testmode.c         |    5 
 drivers/pci/hotplug/acpiphp_glue.c             |    1 
 drivers/pci/pci-sysfs.c                        |    2 
 drivers/pci/pcie/aspm.c                        |    7 +
 drivers/pci/quirks.c                           |  113 ++++++++---------
 drivers/platform/x86/acer-wmi.c                |   19 ++
 drivers/rtc/rtc-ds1511.c                       |    2 
 drivers/scsi/device_handler/scsi_dh_alua.c     |    3 
 drivers/scsi/scsi_transport_iscsi.c            |    2 
 drivers/scsi/ses.c                             |    4 
 drivers/staging/hv/channel.c                   |    8 -
 drivers/staging/hv/connection.c                |    4 
 drivers/staging/hv/netvsc_drv.c                |   24 +++
 drivers/staging/hv/vmbus_drv.c                 |    2 
 drivers/staging/hv/vmbus_private.h             |    1 
 drivers/staging/iio/imu/adis16400.h            |    3 
 drivers/staging/iio/imu/adis16400_core.c       |   12 -
 drivers/staging/iio/imu/adis16400_ring.c       |   12 +
 drivers/staging/tidspbridge/rmgr/proc.c        |   19 ++
 drivers/staging/usbip/stub_rx.c                |   40 ++----
 drivers/staging/usbip/stub_tx.c                |   74 +++++++++--
 drivers/staging/usbip/usbip_common.c           |   64 +++++++++-
 drivers/staging/usbip/usbip_common.h           |    2 
 drivers/staging/usbip/vhci_rx.c                |    3 
 drivers/staging/winbond/core.h                 |    1 
 drivers/target/target_core_cdb.c               |    8 +
 drivers/tty/serial/8250.c                      |   33 +++--
 drivers/tty/serial/mrst_max3110.c              |    2 
 drivers/usb/class/cdc-acm.c                    |    7 -
 drivers/usb/class/cdc-wdm.c                    |    2 
 drivers/usb/core/devio.c                       |    2 
 drivers/usb/core/hcd-pci.c                     |   13 --
 drivers/usb/core/hcd.c                         |   55 ++++++--
 drivers/usb/core/urb.c                         |   11 +
 drivers/usb/host/ehci-hub.c                    |   23 +++
 drivers/usb/host/ehci-q.c                      |   12 -
 drivers/usb/host/isp1760-hcd.c                 |   22 ++-
 drivers/usb/host/isp1760-hcd.h                 |    1 
 drivers/usb/host/xhci-ring.c                   |   43 ++++++
 drivers/usb/host/xhci.h                        |    9 +
 drivers/usb/misc/uss720.c                      |    7 -
 drivers/usb/musb/blackfin.c                    |    6 
 drivers/usb/serial/ch341.c                     |    1 
 drivers/usb/serial/kobil_sct.c                 |    2 
 drivers/usb/serial/option.c                    |    3 
 drivers/usb/serial/usb-serial.c                |    5 
 drivers/video/console/tileblit.c               |    2 
 drivers/watchdog/davinci_wdt.c                 |   22 +--
 drivers/watchdog/max63xx_wdt.c                 |   20 +--
 drivers/watchdog/pnx4008_wdt.c                 |   28 ++--
 drivers/watchdog/s3c2410_wdt.c                 |   19 +-
 drivers/watchdog/sp5100_tco.c                  |   16 ++
 fs/aio.c                                       |    4 
 fs/btrfs/ctree.h                               |    4 
 fs/btrfs/disk-io.c                             |    4 
 fs/btrfs/ioctl.c                               |    4 
 fs/btrfs/root-tree.c                           |   18 ++
 fs/btrfs/transaction.c                         |    1 
 fs/dcache.c                                    |   98 +++++++--------
 fs/ecryptfs/keystore.c                         |    1 
 fs/ecryptfs/mmap.c                             |    5 
 fs/ext3/namei.c                                |    2 
 fs/ext3/super.c                                |    7 +
 fs/ext4/inode.c                                |   11 -
 fs/ext4/super.c                                |   14 ++
 fs/namespace.c                                 |   16 --
 fs/nfs/write.c                                 |   31 ++--
 fs/nfsd/lockd.c                                |    1 
 fs/nfsd/nfs4proc.c                             |    4 
 fs/nfsd/nfs4state.c                            |  160 +++++++++++++------------
 fs/nfsd/nfs4xdr.c                              |    5 
 fs/nilfs2/file.c                               |   11 -
 fs/notify/inotify/inotify_fsnotify.c           |    1 
 fs/notify/inotify/inotify_user.c               |   39 ++----
 fs/ocfs2/aops.c                                |    6 
 fs/partitions/osf.c                            |    2 
 fs/proc/array.c                                |    4 
 fs/proc/task_mmu.c                             |    4 
 fs/quota/dquot.c                               |   13 --
 fs/squashfs/dir.c                              |    9 +
 fs/squashfs/namei.c                            |   12 +
 fs/squashfs/zlib_wrapper.c                     |    6 
 fs/super.c                                     |    2 
 fs/sync.c                                      |    4 
 fs/ubifs/commit.c                              |    2 
 fs/ubifs/debug.c                               |   41 +++++-
 fs/ubifs/lpt.c                                 |    7 -
 fs/xfs/linux-2.6/xfs_super.c                   |   34 +++--
 include/drm/drm_pciids.h                       |    2 
 include/linux/atmdev.h                         |    1 
 include/linux/compaction.h                     |    9 -
 include/linux/ethtool.h                        |   35 +++++
 include/linux/ftrace.h                         |    2 
 include/linux/hid.h                            |    2 
 include/linux/mm.h                             |   11 +
 include/linux/pci.h                            |    7 -
 include/linux/usb/ch9.h                        |    2 
 include/linux/usb/hcd.h                        |    4 
 include/linux/usb/serial.h                     |    3 
 include/scsi/scsi_device.h                     |    2 
 include/sound/pcm.h                            |    4 
 include/sound/soc-dapm.h                       |   16 +-
 kernel/cgroup.c                                |   14 --
 kernel/perf_event.c                            |   25 ++-
 kernel/sched.c                                 |    2 
 kernel/signal.c                                |   16 +-
 kernel/smp.c                                   |   55 ++++++--
 kernel/sysctl.c                                |   18 ++
 kernel/trace/ftrace.c                          |   52 +++++++-
 mm/backing-dev.c                               |    2 
 mm/compaction.c                                |   24 ---
 mm/mremap.c                                    |   11 +
 mm/oom_kill.c                                  |   50 ++++---
 mm/page_alloc.c                                |    4 
 mm/shmem.c                                     |    1 
 mm/slab.c                                      |    8 -
 mm/swapfile.c                                  |    7 -
 mm/vmscan.c                                    |   18 --
 net/atm/common.c                               |    1 
 net/bluetooth/bnep/sock.c                      |    1 
 net/bluetooth/sco.c                            |    1 
 net/bridge/netfilter/ebtables.c                |    2 
 net/core/ethtool.c                             |   17 ++
 net/econet/af_econet.c                         |    2 
 net/ipv4/netfilter/arp_tables.c                |    3 
 net/ipv4/netfilter/ip_tables.c                 |    7 -
 net/ipv4/netfilter/ipt_CLUSTERIP.c             |    5 
 net/ipv6/netfilter/ip6_tables.c                |    7 -
 net/irda/iriap.c                               |    6 
 net/irda/irnet/irnet_ppp.c                     |    3 
 net/mac80211/rc80211_minstrel_ht.c             |   25 ++-
 net/mac80211/sta_info.c                        |    1 
 net/netfilter/nf_conntrack_h323_asn1.c         |    2 
 net/rose/rose_subr.c                           |   18 ++
 net/socket.c                                   |  114 ++++++++++++++++-
 net/sunrpc/auth_gss/gss_krb5_mech.c            |    2 
 net/sunrpc/clnt.c                              |    4 
 net/sunrpc/sched.c                             |   14 --
 net/sunrpc/xprtsock.c                          |    2 
 security/tomoyo/file.c                         |    5 
 sound/core/init.c                              |    4 
 sound/core/pcm_lib.c                           |    4 
 sound/core/pcm_native.c                        |    9 -
 sound/drivers/aloop.c                          |   19 +-
 sound/oss/dev_table.h                          |    2 
 sound/oss/midi_synth.c                         |   30 ++--
 sound/oss/midi_synth.h                         |    2 
 sound/oss/opl3.c                               |   23 ++-
 sound/oss/sequencer.c                          |    2 
 sound/pci/asihpi/hpioctl.c                     |    5 
 sound/pci/ctxfi/ctatc.c                        |    2 
 sound/pci/ctxfi/ctdaio.c                       |    2 
 sound/pci/ctxfi/ctmixer.c                      |   19 --
 sound/pci/ens1370.c                            |   23 ++-
 sound/pci/hda/patch_analog.c                   |   89 +++++++++++++
 sound/pci/hda/patch_conexant.c                 |    2 
 sound/pci/hda/patch_hdmi.c                     |   70 ++++++----
 sound/pci/hda/patch_realtek.c                  |  108 +++++++++++-----
 sound/pci/hda/patch_sigmatel.c                 |   29 ++++
 sound/pci/hda/patch_via.c                      |   53 ++++++--
 sound/soc/codecs/uda134x.c                     |    3 
 sound/soc/imx/imx-pcm-dma-mx2.c                |    9 +
 sound/soc/imx/imx-ssi.h                        |    3 
 sound/soc/pxa/corgi.c                          |    2 
 sound/soc/pxa/z2.c                             |    2 
 sound/soc/samsung/s3c24xx_uda134x.c            |    3 
 tools/perf/util/PERF-VERSION-GEN               |    8 -
 257 files changed, 2313 insertions(+), 1073 deletions(-)

