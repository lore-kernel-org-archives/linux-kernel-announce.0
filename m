From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.38.5 released
Date: Mon, 2 May 2011 18:20:37 GMT
Message-ID: <201105021820.p42IKbIi001346@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.38.5 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.38.5.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.38.5.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               117587            475395
Full source                       74814045         440565760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/i2c/instantiating-devices                |    2 
 MAINTAINERS                                            |    1 
 Makefile                                               |    2 
 arch/arm/kernel/hw_breakpoint.c                        |    7 
 arch/arm/mach-davinci/board-dm644x-evm.c               |    8 
 arch/arm/mach-s3c2440/mach-mini2440.c                  |    7 
 arch/ia64/kernel/mca.c                                 |    3 
 arch/ia64/sn/pci/tioca_provider.c                      |    2 
 arch/m68k/mm/motorola.c                                |    2 
 arch/microblaze/include/asm/uaccess.h                  |    8 
 arch/parisc/kernel/irq.c                               |    2 
 arch/parisc/mm/init.c                                  |    4 
 arch/powerpc/include/asm/reg.h                         |    1 
 arch/powerpc/kernel/perf_event.c                       |   61 +
 arch/powerpc/kernel/time.c                             |    5 
 arch/s390/kvm/sie64a.S                                 |    4 
 arch/s390/mm/fault.c                                   |    4 
 arch/sh/kernel/ptrace_32.c                             |    8 
 arch/sh/kernel/ptrace_64.c                             |    6 
 arch/sparc/kernel/entry.S                              |    2 
 arch/sparc/kernel/iommu.c                              |    3 
 arch/sparc/kernel/ldc.c                                |   28 
 arch/sparc/kernel/pci.c                                |    1 
 arch/sparc/kernel/pci_common.c                         |   11 
 arch/sparc/kernel/pci_fire.c                           |    2 
 arch/sparc/kernel/pci_schizo.c                         |    4 
 arch/sparc/kernel/pci_sun4v.c                          |    3 
 arch/sparc/kernel/pcr.c                                |    2 
 arch/sparc/kernel/ptrace_64.c                          |    3 
 arch/sparc/kernel/smp_64.c                             |   11 
 arch/sparc/kernel/traps_64.c                           |    3 
 arch/sparc/kernel/una_asm_64.S                         |    2 
 arch/sparc/mm/fault_32.c                               |    3 
 arch/um/sys-i386/Makefile                              |    2 
 arch/um/sys-i386/atomic64_cx8_32.S                     |  225 +++++
 arch/x86/crypto/aesni-intel_asm.S                      |    5 
 arch/x86/crypto/aesni-intel_glue.c                     |   14 
 arch/x86/include/asm/gart.h                            |    4 
 arch/x86/include/asm/msr-index.h                       |    4 
 arch/x86/include/asm/pgtable-3level.h                  |   11 
 arch/x86/kernel/alternative.c                          |    7 
 arch/x86/kernel/aperture_64.c                          |    2 
 arch/x86/kernel/cpu/amd.c                              |   23 
 arch/x86/kernel/cpu/mtrr/main.c                        |   20 
 arch/x86/kernel/e820.c                                 |   10 
 arch/x86/kernel/early-quirks.c                         |    7 
 arch/x86/kernel/entry_32.S                             |    2 
 arch/x86/kernel/entry_64.S                             |    2 
 arch/x86/kernel/pci-gart_64.c                          |    9 
 arch/x86/lib/semaphore_32.S                            |    2 
 arch/x86/mm/pgtable.c                                  |    3 
 arch/x86/xen/mmu.c                                     |   13 
 block/blk-sysfs.c                                      |    4 
 drivers/acpi/battery.c                                 |   22 
 drivers/acpi/pci_root.c                                |    2 
 drivers/acpi/scan.c                                    |    4 
 drivers/ata/ahci.c                                     |    5 
 drivers/ata/libahci.c                                  |   17 
 drivers/ata/libata-core.c                              |    4 
 drivers/ata/libata-eh.c                                |    8 
 drivers/atm/solos-pci.c                                |   35 
 drivers/block/cciss.h                                  |    1 
 drivers/bluetooth/btusb.c                              |    3 
 drivers/char/agp/generic.c                             |   19 
 drivers/char/tpm/tpm.c                                 |    2 
 drivers/char/virtio_console.c                          |   11 
 drivers/edac/amd64_edac.c                              |    2 
 drivers/firmware/dcdbas.c                              |    4 
 drivers/gpu/drm/Kconfig                                |    1 
 drivers/gpu/drm/drm_crtc.c                             |   51 +
 drivers/gpu/drm/drm_gem.c                              |    5 
 drivers/gpu/drm/drm_sysfs.c                            |    7 
 drivers/gpu/drm/i915/i915_gem.c                        |    6 
 drivers/gpu/drm/i915/i915_gem_execbuffer.c             |   21 
 drivers/gpu/drm/i915/i915_irq.c                        |    9 
 drivers/gpu/drm/i915/i915_reg.h                        |    5 
 drivers/gpu/drm/i915/intel_display.c                   |   68 -
 drivers/gpu/drm/i915/intel_tv.c                        |    2 
 drivers/gpu/drm/nouveau/nouveau_fbcon.c                |    4 
 drivers/gpu/drm/radeon/atom.c                          |   12 
 drivers/gpu/drm/radeon/atombios_crtc.c                 |   14 
 drivers/gpu/drm/radeon/radeon_atombios.c               |   13 
 drivers/gpu/drm/radeon/radeon_combios.c                |   21 
 drivers/gpu/drm/radeon/radeon_connectors.c             |   30 
 drivers/gpu/drm/radeon/radeon_fence.c                  |    2 
 drivers/gpu/drm/radeon/radeon_mode.h                   |    1 
 drivers/gpu/drm/radeon/radeon_ring.c                   |    2 
 drivers/hid/Kconfig                                    |   14 
 drivers/hid/Makefile                                   |    2 
 drivers/hid/hid-apple.c                                |    6 
 drivers/hid/hid-axff.c                                 |   31 
 drivers/hid/hid-core.c                                 |    9 
 drivers/hid/hid-ids.h                                  |    4 
 drivers/hid/hid-input.c                                |   30 
 drivers/hid/hid-magicmouse.c                           |    6 
 drivers/hid/hid-multitouch.c                           |    2 
 drivers/hid/hid-ortek.c                                |    3 
 drivers/hwmon/sht15.c                                  |    4 
 drivers/i2c/algos/i2c-algo-bit.c                       |   22 
 drivers/infiniband/core/cm.c                           |    1 
 drivers/infiniband/core/cma.c                          |   15 
 drivers/input/mouse/bcm5974.c                          |   20 
 drivers/input/mouse/synaptics.c                        |    4 
 drivers/input/xen-kbdfront.c                           |   32 
 drivers/leds/leds-lp5521.c                             |   14 
 drivers/leds/leds-lp5523.c                             |   20 
 drivers/media/dvb/b2c2/flexcop-pci.c                   |    2 
 drivers/media/radio/Kconfig                            |    1 
 drivers/media/video/sn9c102/sn9c102_core.c             |    6 
 drivers/media/video/tlg2300/pd-video.c                 |    4 
 drivers/media/video/uvc/uvc_driver.c                   |    8 
 drivers/media/video/uvc/uvc_video.c                    |   14 
 drivers/mfd/ab3100-core.c                              |    4 
 drivers/mfd/ab3550-core.c                              |    6 
 drivers/mfd/ab8500-debugfs.c                           |    6 
 drivers/misc/ep93xx_pwm.c                              |    6 
 drivers/mmc/core/sdio.c                                |    8 
 drivers/mmc/host/sdhci-pci.c                           |    8 
 drivers/net/gianfar.c                                  |   16 
 drivers/net/gianfar.h                                  |    1 
 drivers/net/myri10ge/myri10ge.c                        |    1 
 drivers/net/netxen/netxen_nic.h                        |    4 
 drivers/net/netxen/netxen_nic_ethtool.c                |    2 
 drivers/net/netxen/netxen_nic_main.c                   |   17 
 drivers/net/pppoe.c                                    |    2 
 drivers/net/qlcnic/qlcnic.h                            |    1 
 drivers/net/qlcnic/qlcnic_ethtool.c                    |    2 
 drivers/net/qlcnic/qlcnic_main.c                       |   14 
 drivers/net/s2io.c                                     |    2 
 drivers/net/usb/cdc-phonet.c                           |    9 
 drivers/net/vmxnet3/vmxnet3_ethtool.c                  |    4 
 drivers/net/vxge/vxge-ethtool.c                        |    4 
 drivers/net/wireless/ath/ath9k/ar9003_mac.c            |    8 
 drivers/net/wireless/ath/ath9k/hw.c                    |   30 
 drivers/net/wireless/ath/ath9k/mac.c                   |   39 
 drivers/net/wireless/ath/ath9k/mac.h                   |    2 
 drivers/net/wireless/ath/ath9k/main.c                  |    4 
 drivers/net/wireless/ath/ath9k/recv.c                  |   10 
 drivers/net/wireless/ath/ath9k/xmit.c                  |    4 
 drivers/net/wireless/ath/regd_common.h                 |    1 
 drivers/net/wireless/b43/dma.c                         |    2 
 drivers/net/wireless/b43/dma.h                         |    2 
 drivers/net/wireless/iwlwifi/iwl-3945-hw.h             |    2 
 drivers/net/wireless/iwlwifi/iwl-3945.c                |    2 
 drivers/net/wireless/iwlwifi/iwl-4965.c                |    2 
 drivers/net/wireless/iwlwifi/iwl-agn-rxon.c            |    5 
 drivers/net/wireless/iwlwifi/iwl-agn.c                 |    6 
 drivers/net/wireless/iwlwifi/iwl-core.c                |   22 
 drivers/net/wireless/iwlwifi/iwl-eeprom.c              |    7 
 drivers/net/wireless/iwlwifi/iwl-eeprom.h              |    2 
 drivers/net/wireless/iwlwifi/iwl3945-base.c            |   11 
 drivers/net/wireless/p54/p54usb.c                      |    2 
 drivers/net/wireless/p54/txrx.c                        |    2 
 drivers/net/wireless/rt2x00/rt2800lib.c                |    6 
 drivers/net/wireless/rt2x00/rt2800pci.c                |   36 
 drivers/net/wireless/rt2x00/rt2x00dev.c                |    6 
 drivers/net/wireless/rtl818x/rtl8187/dev.c             |   25 
 drivers/net/wireless/rtl818x/rtl8187/rtl8187.h         |    2 
 drivers/net/wireless/wl12xx/testmode.c                 |    5 
 drivers/pci/hotplug/acpiphp_glue.c                     |    1 
 drivers/pci/intel-iommu.c                              |   17 
 drivers/pci/pci-sysfs.c                                |    2 
 drivers/pci/pcie/aspm.c                                |    7 
 drivers/pci/quirks.c                                   |  113 +-
 drivers/platform/x86/acer-wmi.c                        |   19 
 drivers/platform/x86/ideapad-laptop.c                  |    2 
 drivers/rtc/rtc-bfin.c                                 |    2 
 drivers/rtc/rtc-ds1511.c                               |    2 
 drivers/scsi/device_handler/scsi_dh_alua.c             |    3 
 drivers/scsi/scsi_transport_iscsi.c                    |    2 
 drivers/scsi/ses.c                                     |    4 
 drivers/staging/hv/channel.c                           |    8 
 drivers/staging/hv/connection.c                        |    4 
 drivers/staging/hv/netvsc_drv.c                        |   24 
 drivers/staging/hv/vmbus_drv.c                         |    2 
 drivers/staging/hv/vmbus_private.h                     |    1 
 drivers/staging/iio/imu/adis16400.h                    |    3 
 drivers/staging/iio/imu/adis16400_core.c               |   12 
 drivers/staging/iio/imu/adis16400_ring.c               |   12 
 drivers/staging/tidspbridge/rmgr/proc.c                |   19 
 drivers/staging/usbip/stub_rx.c                        |   40 
 drivers/staging/usbip/stub_tx.c                        |   74 +
 drivers/staging/usbip/usbip_common.c                   |   64 +
 drivers/staging/usbip/usbip_common.h                   |    2 
 drivers/staging/usbip/vhci_rx.c                        |    3 
 drivers/staging/winbond/core.h                         |    1 
 drivers/target/target_core_cdb.c                       |    8 
 drivers/tty/n_gsm.c                                    |    8 
 drivers/tty/serial/8250.c                              |   33 
 drivers/tty/serial/imx.c                               |    3 
 drivers/tty/serial/mrst_max3110.c                      |    2 
 drivers/usb/class/cdc-acm.c                            |    7 
 drivers/usb/class/cdc-wdm.c                            |    2 
 drivers/usb/core/devices.c                             |   10 
 drivers/usb/core/devio.c                               |    2 
 drivers/usb/core/hcd-pci.c                             |   13 
 drivers/usb/core/hcd.c                                 |   57 -
 drivers/usb/core/urb.c                                 |   11 
 drivers/usb/host/ehci-hub.c                            |   23 
 drivers/usb/host/ehci-q.c                              |   27 
 drivers/usb/host/isp1760-hcd.c                         |   22 
 drivers/usb/host/isp1760-hcd.h                         |    1 
 drivers/usb/host/xhci-mem.c                            |   90 +-
 drivers/usb/host/xhci-ring.c                           |   43 
 drivers/usb/host/xhci.c                                |   16 
 drivers/usb/host/xhci.h                                |   15 
 drivers/usb/misc/uss720.c                              |    7 
 drivers/usb/musb/Kconfig                               |    6 
 drivers/usb/musb/blackfin.c                            |    6 
 drivers/usb/serial/ch341.c                             |    1 
 drivers/usb/serial/ftdi_sio.c                          |    5 
 drivers/usb/serial/ftdi_sio_ids.h                      |   12 
 drivers/usb/serial/kobil_sct.c                         |    2 
 drivers/usb/serial/option.c                            |    8 
 drivers/usb/serial/qcserial.c                          |   31 
 drivers/usb/serial/usb-serial.c                        |    5 
 drivers/video/console/tileblit.c                       |    2 
 drivers/video/via/viafbdev.h                           |    3 
 drivers/virtio/virtio_ring.c                           |    1 
 drivers/watchdog/davinci_wdt.c                         |   22 
 drivers/watchdog/max63xx_wdt.c                         |   20 
 drivers/watchdog/pnx4008_wdt.c                         |   28 
 drivers/watchdog/s3c2410_wdt.c                         |   19 
 drivers/watchdog/sp5100_tco.c                          |   16 
 fs/aio.c                                               |    4 
 fs/binfmt_elf.c                                        |    6 
 fs/btrfs/ctree.h                                       |    4 
 fs/btrfs/disk-io.c                                     |    4 
 fs/btrfs/ioctl.c                                       |    4 
 fs/btrfs/root-tree.c                                   |   18 
 fs/btrfs/transaction.c                                 |    1 
 fs/cifs/cifsencrypt.c                                  |   15 
 fs/cifs/cifsfs.c                                       |    1 
 fs/cifs/connect.c                                      |    2 
 fs/cifs/file.c                                         |    6 
 fs/dcache.c                                            |   98 +-
 fs/ecryptfs/keystore.c                                 |    1 
 fs/ecryptfs/mmap.c                                     |    5 
 fs/ext3/namei.c                                        |    2 
 fs/ext3/super.c                                        |    7 
 fs/ext4/inode.c                                        |   11 
 fs/ext4/super.c                                        |   14 
 fs/file.c                                              |   18 
 fs/namei.c                                             |    1 
 fs/namespace.c                                         |   16 
 fs/nfs/nfs4state.c                                     |    4 
 fs/nfs/super.c                                         |    9 
 fs/nfs/write.c                                         |   31 
 fs/nfsd/lockd.c                                        |    1 
 fs/nfsd/nfs4proc.c                                     |    4 
 fs/nfsd/nfs4state.c                                    |  161 +--
 fs/nfsd/nfs4xdr.c                                      |    5 
 fs/nilfs2/file.c                                       |   11 
 fs/notify/inotify/inotify_fsnotify.c                   |    1 
 fs/notify/inotify/inotify_user.c                       |   39 
 fs/ocfs2/aops.c                                        |    6 
 fs/partitions/osf.c                                    |    2 
 fs/proc/array.c                                        |    4 
 fs/proc/base.c                                         |    9 
 fs/proc/task_mmu.c                                     |    4 
 fs/quota/dquot.c                                       |   13 
 fs/ramfs/file-nommu.c                                  |    1 
 fs/squashfs/dir.c                                      |    9 
 fs/squashfs/namei.c                                    |   12 
 fs/squashfs/zlib_wrapper.c                             |    6 
 fs/super.c                                             |    2 
 fs/sync.c                                              |    4 
 fs/ubifs/commit.c                                      |    2 
 fs/ubifs/debug.c                                       |   47 -
 fs/ubifs/file.c                                        |    3 
 fs/ubifs/lpt.c                                         |    7 
 fs/ubifs/recovery.c                                    |   26 
 fs/ubifs/super.c                                       |   21 
 fs/xfs/linux-2.6/xfs_super.c                           |   34 
 include/drm/drm_pciids.h                               |    2 
 include/linux/atmdev.h                                 |    1 
 include/linux/compaction.h                             |    9 
 include/linux/ethtool.h                                |   35 
 include/linux/ftrace.h                                 |    2 
 include/linux/hid.h                                    |    2 
 include/linux/huge_mm.h                                |    2 
 include/linux/kernel.h                                 |   70 +
 include/linux/libata.h                                 |    1 
 include/linux/mm.h                                     |   14 
 include/linux/pci.h                                    |    7 
 include/linux/perf_event.h                             |    2 
 include/linux/pid.h                                    |    2 
 include/linux/sched.h                                  |    3 
 include/linux/usb/ch9.h                                |    2 
 include/linux/usb/hcd.h                                |    4 
 include/linux/usb/serial.h                             |    3 
 include/net/bluetooth/hci.h                            |    2 
 include/scsi/scsi_device.h                             |    2 
 include/sound/pcm.h                                    |    4 
 include/sound/soc-dapm.h                               |   16 
 init/Kconfig                                           |    1 
 kernel/cgroup.c                                        |   14 
 kernel/futex.c                                         |    2 
 kernel/perf_event.c                                    |   25 
 kernel/pid.c                                           |    5 
 kernel/sched.c                                         |    2 
 kernel/sched_fair.c                                    |   11 
 kernel/signal.c                                        |   16 
 kernel/smp.c                                           |   55 +
 kernel/sysctl.c                                        |   18 
 kernel/trace/ftrace.c                                  |   52 +
 lib/Kconfig.debug                                      |    3 
 lib/Makefile                                           |    2 
 lib/kstrtox.c                                          |  227 +++++
 lib/test-kstrtox.c                                     |  739 +++++++++++++++++
 lib/vsprintf.c                                         |  141 ---
 mm/backing-dev.c                                       |    2 
 mm/compaction.c                                        |   24 
 mm/huge_memory.c                                       |   67 -
 mm/memory.c                                            |   28 
 mm/mlock.c                                             |   13 
 mm/mmap.c                                              |   15 
 mm/mremap.c                                            |   11 
 mm/oom_kill.c                                          |   86 -
 mm/page_alloc.c                                        |    4 
 mm/shmem.c                                             |    1 
 mm/slab.c                                              |    8 
 mm/swapfile.c                                          |    7 
 mm/vmscan.c                                            |   42 
 net/8021q/vlan_dev.c                                   |    1 
 net/atm/common.c                                       |    1 
 net/bluetooth/bnep/sock.c                              |    1 
 net/bluetooth/hci_core.c                               |    5 
 net/bluetooth/hci_event.c                              |    4 
 net/bluetooth/sco.c                                    |    1 
 net/bridge/br_multicast.c                              |    2 
 net/bridge/br_netfilter.c                              |    9 
 net/bridge/netfilter/ebtables.c                        |    2 
 net/core/ethtool.c                                     |   17 
 net/econet/af_econet.c                                 |    2 
 net/ipv4/fib_frontend.c                                |    2 
 net/ipv4/ip_options.c                                  |    6 
 net/ipv4/netfilter/arp_tables.c                        |    3 
 net/ipv4/netfilter/ip_tables.c                         |    7 
 net/ipv4/netfilter/ipt_CLUSTERIP.c                     |    5 
 net/ipv4/route.c                                       |    2 
 net/ipv4/tcp_input.c                                   |   12 
 net/ipv6/netfilter/ip6_tables.c                        |    7 
 net/ipv6/sysctl_net_ipv6.c                             |   18 
 net/irda/iriap.c                                       |    6 
 net/irda/irnet/irnet_ppp.c                             |    3 
 net/l2tp/l2tp_eth.c                                    |    2 
 net/mac80211/rc80211_minstrel_ht.c                     |   25 
 net/mac80211/sta_info.c                                |    1 
 net/netfilter/nf_conntrack_h323_asn1.c                 |    2 
 net/rose/rose_subr.c                                   |   18 
 net/sctp/protocol.c                                    |    4 
 net/socket.c                                           |  114 ++
 net/sunrpc/auth_gss/gss_krb5_mech.c                    |    2 
 net/sunrpc/clnt.c                                      |    4 
 net/sunrpc/sched.c                                     |   14 
 net/sunrpc/xprtsock.c                                  |    2 
 net/xfrm/xfrm_policy.c                                 |    2 
 scripts/checkpatch.pl                                  |    4 
 scripts/kconfig/conf.c                                 |    2 
 security/tomoyo/file.c                                 |    5 
 sound/core/init.c                                      |    4 
 sound/core/pcm_lib.c                                   |    4 
 sound/core/pcm_native.c                                |    9 
 sound/drivers/aloop.c                                  |   19 
 sound/oss/dev_table.h                                  |    2 
 sound/oss/midi_synth.c                                 |   30 
 sound/oss/midi_synth.h                                 |    2 
 sound/oss/opl3.c                                       |   23 
 sound/oss/sequencer.c                                  |    2 
 sound/pci/asihpi/hpioctl.c                             |    5 
 sound/pci/ctxfi/ctatc.c                                |    2 
 sound/pci/ctxfi/ctdaio.c                               |    2 
 sound/pci/ctxfi/ctmixer.c                              |   19 
 sound/pci/ens1370.c                                    |   23 
 sound/pci/hda/patch_analog.c                           |   89 ++
 sound/pci/hda/patch_conexant.c                         |    2 
 sound/pci/hda/patch_hdmi.c                             |   70 +
 sound/pci/hda/patch_realtek.c                          |  154 ++-
 sound/pci/hda/patch_sigmatel.c                         |   29 
 sound/pci/hda/patch_via.c                              |   53 -
 sound/soc/codecs/jz4740.c                              |    2 
 sound/soc/codecs/uda134x.c                             |    3 
 sound/soc/codecs/wm_hubs.c                             |    8 
 sound/soc/imx/imx-pcm-dma-mx2.c                        |    9 
 sound/soc/imx/imx-ssi.h                                |    3 
 sound/soc/pxa/corgi.c                                  |    2 
 sound/soc/pxa/z2.c                                     |    2 
 sound/soc/samsung/s3c24xx_uda134x.c                    |    3 
 tools/perf/bench/sched-pipe.c                          |    2 
 tools/perf/builtin-sched.c                             |   12 
 tools/perf/builtin-top.c                               |    5 
 tools/perf/util/PERF-VERSION-GEN                       |    8 
 tools/perf/util/header.c                               |    2 
 tools/perf/util/hist.c                                 |    3 
 tools/perf/util/scripting-engines/trace-event-python.c |    3 
 tools/perf/util/symbol.c                               |    4 
 tools/perf/util/trace-event-parse.c                    |    2 
 tools/perf/util/ui/browsers/map.c                      |    2 
 399 files changed, 4446 insertions(+), 1674 deletions(-)

