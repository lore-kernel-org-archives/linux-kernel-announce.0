From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.39.3 released
Date: Sat, 9 Jul 2011 07:12:16 GMT
Message-ID: <201107090712.p697CGCl011817@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.39.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.39.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.39.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               105939            424966
Full source                       76104371         449638400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/caching/netfs-api.txt  |   16 ++
 Documentation/i2c/writing-clients                |    2 
 Documentation/kernel-parameters.txt              |    2 
 Documentation/usb/linux-cdc-acm.inf              |    4 
 Documentation/usb/linux.inf                      |    6 
 Makefile                                         |    4 
 arch/arm/mach-exynos4/init.c                     |    1 
 arch/arm/mm/cache-v6.S                           |    1 
 arch/arm/mm/cache-v7.S                           |    2 
 arch/arm/plat-samsung/include/plat/regs-serial.h |    2 
 arch/m68k/kernel/syscalltable.S                  |    4 
 arch/parisc/include/asm/unistd.h                 |   10 +
 arch/parisc/kernel/sys_parisc32.c                |    8 +
 arch/parisc/kernel/syscall_table.S               |    6 
 arch/powerpc/kernel/crash.c                      |    2 
 arch/powerpc/kernel/head_32.S                    |    2 
 arch/powerpc/kernel/misc_64.S                    |   13 +
 arch/powerpc/kernel/smp.c                        |    4 
 arch/powerpc/oprofile/op_model_power4.c          |   24 +++
 arch/sh/kernel/cpu/Makefile                      |    4 
 arch/tile/kernel/pci.c                           |   11 -
 arch/um/Kconfig.x86                              |    4 
 arch/x86/include/asm/cpufeature.h                |    2 
 arch/x86/include/asm/pvclock.h                   |    9 -
 arch/x86/include/asm/uaccess.h                   |    2 
 arch/x86/kernel/acpi/realmode/wakeup.S           |   14 +
 arch/x86/kernel/acpi/realmode/wakeup.h           |    6 
 arch/x86/kernel/acpi/sleep.c                     |    6 
 arch/x86/kernel/amd_iommu.c                      |   48 ++++++
 arch/x86/kernel/amd_iommu_init.c                 |    8 -
 arch/x86/kernel/apic/io_apic.c                   |    4 
 arch/x86/kernel/cpu/amd.c                        |   16 +-
 arch/x86/kernel/cpu/common.c                     |    3 
 arch/x86/kernel/cpu/cpufreq/pcc-cpufreq.c        |    4 
 arch/x86/kernel/devicetree.c                     |   11 +
 arch/x86/kernel/process_32.c                     |    1 
 arch/x86/kernel/process_64.c                     |    1 
 arch/x86/kernel/smpboot.c                        |   13 +
 arch/x86/lguest/boot.c                           |    1 
 arch/x86/lib/copy_user_64.S                      |    4 
 arch/x86/oprofile/nmi_int.c                      |   14 +
 arch/x86/oprofile/op_model_amd.c                 |   95 +++++++-----
 arch/x86/pci/xen.c                               |   40 ++++-
 arch/x86/xen/mmu.c                               |   16 +-
 arch/x86/xen/multicalls.c                        |   12 -
 arch/x86/xen/p2m.c                               |   30 +++-
 arch/x86/xen/setup.c                             |    6 
 arch/x86/xen/smp.c                               |    7 
 block/blk-core.c                                 |    2 
 block/blk-flush.c                                |   16 +-
 block/blk-settings.c                             |    9 +
 block/blk-sysfs.c                                |    3 
 block/blk.h                                      |   24 ++-
 block/cfq-iosched.c                              |   11 +
 block/genhd.c                                    |    2 
 drivers/ata/libata-scsi.c                        |   15 +-
 drivers/ata/pata_cmd64x.c                        |   42 +++++
 drivers/base/platform.c                          |    2 
 drivers/base/power/main.c                        |   28 ++-
 drivers/block/brd.c                              |   11 -
 drivers/block/loop.c                             |   11 -
 drivers/block/nbd.c                              |    6 
 drivers/block/paride/pcd.c                       |    1 
 drivers/cdrom/viocd.c                            |    3 
 drivers/char/i8k.c                               |    4 
 drivers/connector/connector.c                    |    1 
 drivers/cpufreq/cpufreq.c                        |   20 ++
 drivers/cpufreq/cpufreq_stats.c                  |   22 ++
 drivers/cpuidle/governors/menu.c                 |    4 
 drivers/gpu/drm/drm_pci.c                        |    3 
 drivers/gpu/drm/i915/i915_irq.c                  |   11 +
 drivers/gpu/drm/i915/i915_reg.h                  |    1 
 drivers/gpu/drm/i915/intel_i2c.c                 |    3 
 drivers/gpu/drm/i915/intel_lvds.c                |    8 +
 drivers/gpu/drm/i915/intel_ringbuffer.c          |   29 +++
 drivers/gpu/drm/radeon/atombios_crtc.c           |   12 +
 drivers/gpu/drm/radeon/evergreen.c               |    6 
 drivers/gpu/drm/radeon/evergreend.h              |    2 
 drivers/gpu/drm/radeon/ni.c                      |    8 -
 drivers/gpu/drm/radeon/nid.h                     |    2 
 drivers/gpu/drm/radeon/r100_track.h              |    8 -
 drivers/gpu/drm/radeon/radeon_asic.c             |    4 
 drivers/gpu/drm/radeon/radeon_device.c           |    1 
 drivers/gpu/drm/radeon/radeon_encoders.c         |    6 
 drivers/gpu/drm/radeon/rv770.c                   |    6 
 drivers/hid/hid-magicmouse.c                     |   10 +
 drivers/hwmon/coretemp.c                         |   21 --
 drivers/hwmon/ibmaem.c                           |    2 
 drivers/hwmon/ibmpex.c                           |    1 
 drivers/hwmon/pmbus_core.c                       |    1 
 drivers/hwmon/s3c-hwmon.c                        |    2 
 drivers/i2c/busses/i2c-taos-evm.c                |    8 -
 drivers/i2c/busses/i2c-tegra.c                   |    5 
 drivers/i2c/muxes/pca954x.c                      |    7 
 drivers/ide/ide-cd.c                             |    3 
 drivers/input/input.c                            |    2 
 drivers/input/mousedev.c                         |    4 
 drivers/md/bitmap.c                              |   10 -
 drivers/md/dm-mpath.c                            |    2 
 drivers/md/dm-table.c                            |   17 ++
 drivers/md/md.c                                  |   14 +
 drivers/md/raid5.c                               |    8 -
 drivers/media/dvb/frontends/dib0070.c            |   40 ++++-
 drivers/media/dvb/frontends/dib0090.c            |   71 +++++++--
 drivers/media/dvb/frontends/dib7000m.c           |   49 ++++--
 drivers/media/dvb/frontends/dib7000p.c           |   72 ++++++---
 drivers/media/dvb/frontends/dib8000.c            |  126 ++++++++++++----
 drivers/media/dvb/frontends/dib9000.c            |  172 ++++++++++++++---------
 drivers/media/dvb/frontends/dibx000_common.c     |  109 ++++++++------
 drivers/media/dvb/frontends/dibx000_common.h     |    5 
 drivers/media/media-devnode.c                    |    4 
 drivers/media/rc/ir-raw.c                        |    4 
 drivers/media/rc/ite-cir.c                       |   12 +
 drivers/media/rc/ite-cir.h                       |    3 
 drivers/media/rc/keymaps/rc-pinnacle-pctv-hd.c   |   58 +++----
 drivers/media/video/cx88/cx88-blackbird.c        |    5 
 drivers/media/video/cx88/cx88-dvb.c              |    2 
 drivers/media/video/cx88/cx88-mpeg.c             |   20 +-
 drivers/media/video/cx88/cx88.h                  |    7 
 drivers/media/video/uvc/uvc_queue.c              |    2 
 drivers/mfd/omap-usb-host.c                      |   27 ++-
 drivers/misc/lkdtm.c                             |    8 +
 drivers/mmc/host/tmio_mmc_pio.c                  |    4 
 drivers/mtd/mtdconcat.c                          |    4 
 drivers/mtd/nand/nand_base.c                     |    2 
 drivers/mtd/nand/omap2.c                         |   12 -
 drivers/net/bonding/bond_alb.c                   |    4 
 drivers/net/bonding/bond_main.c                  |   16 +-
 drivers/net/bonding/bond_sysfs.c                 |    6 
 drivers/net/hamradio/6pack.c                     |    4 
 drivers/net/hamradio/mkiss.c                     |    4 
 drivers/net/igb/igb_main.c                       |    3 
 drivers/net/macvlan.c                            |    4 
 drivers/net/pxa168_eth.c                         |    2 
 drivers/net/usb/cdc_ncm.c                        |    1 
 drivers/net/wireless/ath/ath5k/base.c            |   11 +
 drivers/net/wireless/ath/ath5k/eeprom.c          |    8 -
 drivers/net/wireless/ath/ath5k/reset.c           |    5 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c   |   24 ++-
 drivers/net/wireless/ath/ath9k/calib.c           |   13 +
 drivers/net/wireless/ath/ath9k/eeprom_9287.c     |   10 +
 drivers/net/wireless/ath/ath9k/main.c            |    4 
 drivers/net/wireless/ath/ath9k/pci.c             |    6 
 drivers/net/wireless/ath/ath9k/rc.c              |    3 
 drivers/net/wireless/iwlegacy/iwl-4965-lib.c     |    4 
 drivers/net/wireless/iwlegacy/iwl-4965.c         |   14 -
 drivers/net/wireless/iwlegacy/iwl-core.c         |   30 +---
 drivers/net/wireless/iwlegacy/iwl-core.h         |    2 
 drivers/net/wireless/iwlegacy/iwl-dev.h          |   13 -
 drivers/net/wireless/iwlegacy/iwl4965-base.c     |   19 +-
 drivers/net/wireless/iwlwifi/iwl-2000.c          |   74 ---------
 drivers/net/wireless/iwlwifi/iwl-5000.c          |    3 
 drivers/net/wireless/iwlwifi/iwl-6000.c          |    2 
 drivers/net/wireless/iwlwifi/iwl-agn-hcmd.c      |   12 -
 drivers/net/wireless/iwlwifi/iwl-agn-rxon.c      |   19 ++
 drivers/net/wireless/iwlwifi/iwl-agn.c           |   19 +-
 drivers/net/wireless/iwlwifi/iwl-core.c          |   19 +-
 drivers/net/wireless/iwlwifi/iwl-core.h          |    2 
 drivers/net/wireless/iwlwifi/iwl-dev.h           |   32 +---
 drivers/net/wireless/iwlwifi/iwl-rx.c            |   24 +--
 drivers/net/wireless/p54/p54usb.c                |    1 
 drivers/net/wireless/zd1211rw/zd_usb.c           |   53 +++++--
 drivers/oprofile/buffer_sync.c                   |   21 +-
 drivers/pci/hotplug/pcihp_slot.c                 |   45 ++++++
 drivers/pci/intel-iommu.c                        |   48 ++++--
 drivers/pci/iova.c                               |   12 +
 drivers/pci/pci-driver.c                         |    4 
 drivers/pci/quirks.c                             |   12 +
 drivers/platform/x86/asus-wmi.c                  |    2 
 drivers/scsi/bnx2i/bnx2i_hwi.c                   |    1 
 drivers/scsi/bnx2i/bnx2i_init.c                  |    2 
 drivers/scsi/bnx2i/bnx2i_iscsi.c                 |    5 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c             |   94 +++++++++---
 drivers/scsi/qla2xxx/qla_attr.c                  |    5 
 drivers/scsi/qla2xxx/qla_fw.h                    |    3 
 drivers/scsi/qla2xxx/qla_nx.c                    |    4 
 drivers/scsi/qla2xxx/qla_os.c                    |   32 ++--
 drivers/scsi/scsi_scan.c                         |    2 
 drivers/scsi/scsi_sysfs.c                        |    1 
 drivers/scsi/sr.c                                |    2 
 drivers/scsi/ultrastor.c                         |    2 
 drivers/sh/clk/cpg.c                             |    2 
 drivers/staging/brcm80211/brcmsmac/wlc_ampdu.c   |   13 -
 drivers/staging/gma500/psb_fb.c                  |   10 +
 drivers/staging/lirc/lirc_zilog.c                |    4 
 drivers/staging/rtl8712/rtl871x_ioctl_set.c      |    5 
 drivers/staging/usbip/usbip_common.c             |    2 
 drivers/target/target_core_device.c              |    4 
 drivers/target/target_core_tmr.c                 |    7 
 drivers/target/target_core_transport.c           |   46 ++++--
 drivers/tty/serial/pch_uart.c                    |    4 
 drivers/tty/serial/s5pv210.c                     |    4 
 drivers/tty/serial/serial_core.c                 |   63 +-------
 drivers/tty/tty_ldisc.c                          |    4 
 drivers/usb/class/cdc-acm.c                      |   15 +-
 drivers/usb/class/cdc-acm.h                      |    1 
 drivers/usb/core/driver.c                        |   17 +-
 drivers/usb/core/hcd.c                           |    5 
 drivers/usb/core/hub.c                           |   22 ++
 drivers/usb/core/message.c                       |   26 +++
 drivers/usb/gadget/at91_udc.c                    |    2 
 drivers/usb/gadget/f_rndis.c                     |    3 
 drivers/usb/host/ehci-hcd.c                      |    4 
 drivers/usb/host/ehci-sched.c                    |    8 -
 drivers/usb/host/isp116x-hcd.c                   |    1 
 drivers/usb/host/ohci-hcd.c                      |    4 
 drivers/usb/host/ohci-pci.c                      |   12 +
 drivers/usb/host/oxu210hp-hcd.c                  |    6 
 drivers/usb/host/xhci-dbg.c                      |    8 -
 drivers/usb/host/xhci-mem.c                      |   25 ++-
 drivers/usb/host/xhci-pci.c                      |   22 ++
 drivers/usb/host/xhci-ring.c                     |   29 ++-
 drivers/usb/host/xhci.c                          |   49 +++++-
 drivers/usb/host/xhci.h                          |    7 
 drivers/usb/serial/cp210x.c                      |    4 
 drivers/usb/serial/ftdi_sio.c                    |   21 ++
 drivers/usb/serial/ftdi_sio.h                    |    3 
 drivers/usb/serial/ftdi_sio_ids.h                |    7 
 drivers/usb/serial/garmin_gps.c                  |   20 +-
 drivers/usb/serial/moto_modem.c                  |    1 
 drivers/usb/serial/option.c                      |   44 ++++-
 drivers/usb/storage/transport.c                  |   29 +++
 drivers/usb/storage/unusual_devs.h               |   19 ++
 drivers/usb/storage/unusual_realtek.h            |   10 -
 drivers/usb/storage/usb.c                        |   13 +
 drivers/usb/storage/usb.h                        |    2 
 drivers/video/vga16fb.c                          |    2 
 drivers/watchdog/mtx-1_wdt.c                     |    8 +
 fs/block_dev.c                                   |   48 ++++--
 fs/cifs/cifsencrypt.c                            |    2 
 fs/cifs/connect.c                                |   37 +++-
 fs/cifs/fscache.c                                |    1 
 fs/dcookies.c                                    |    3 
 fs/ecryptfs/inode.c                              |    2 
 fs/ecryptfs/keystore.c                           |   46 ++----
 fs/exec.c                                        |    5 
 fs/ext3/namei.c                                  |   13 +
 fs/ext4/ext4.h                                   |    4 
 fs/ext4/mballoc.c                                |    2 
 fs/ext4/page-io.c                                |   39 +----
 fs/ext4/super.c                                  |   41 +----
 fs/fat/file.c                                    |    2 
 fs/fscache/page.c                                |   44 +++++
 fs/hfsplus/wrapper.c                             |    7 
 fs/jbd/commit.c                                  |    9 -
 fs/jbd/journal.c                                 |   16 +-
 fs/lockd/clntproc.c                              |    8 -
 fs/locks.c                                       |   30 ++--
 fs/namei.c                                       |    2 
 fs/nfs/fscache.c                                 |    8 -
 fs/nfs/inode.c                                   |    6 
 fs/nfs/internal.h                                |   11 +
 fs/nfs/nfs4filelayout.c                          |   15 +-
 fs/nfs/nfs4proc.c                                |   42 ++++-
 fs/nfs/nfs4state.c                               |    6 
 fs/nfs/nfs4xdr.c                                 |   14 -
 fs/nfs/pnfs.c                                    |    2 
 fs/nfsd/Kconfig                                  |    1 
 fs/nfsd/nfsctl.c                                 |   19 --
 fs/nfsd/vfs.c                                    |   19 +-
 fs/partitions/ldm.c                              |    5 
 fs/ubifs/journal.c                               |    1 
 fs/ubifs/sb.c                                    |    3 
 fs/ubifs/shrinker.c                              |    6 
 fs/ubifs/super.c                                 |    1 
 include/asm-generic/bug.h                        |    3 
 include/linux/blk_types.h                        |    2 
 include/linux/blkdev.h                           |   15 +-
 include/linux/clocksource.h                      |    1 
 include/linux/connector.h                        |    2 
 include/linux/device.h                           |    4 
 include/linux/fscache.h                          |   21 ++
 include/linux/genhd.h                            |    1 
 include/linux/if_packet.h                        |    2 
 include/linux/netfilter/ipset/ip_set_ahash.h     |    4 
 include/linux/netfilter/ipset/ip_set_timeout.h   |   18 +-
 include/linux/pci_ids.h                          |    3 
 include/linux/pm.h                               |    3 
 include/linux/pm_qos_params.h                    |    4 
 include/linux/ratelimit.h                        |   40 +++++
 include/linux/seqlock.h                          |    4 
 include/linux/sunrpc/gss_krb5_enctypes.h         |    4 
 include/linux/sunrpc/sched.h                     |    3 
 include/linux/usb_usual.h                        |    4 
 include/net/dst.h                                |    2 
 include/net/ip_vs.h                              |    3 
 include/target/target_core_base.h                |    1 
 include/target/target_core_transport.h           |    1 
 init/calibrate.c                                 |   14 +
 init/main.c                                      |    2 
 kernel/irq/irqdesc.c                             |    8 -
 kernel/lockdep.c                                 |    2 
 kernel/pm_qos_params.c                           |   37 +++-
 kernel/power/snapshot.c                          |    6 
 kernel/power/user.c                              |    4 
 kernel/taskstats.c                               |   15 +-
 kernel/time/clocksource.c                        |   24 +--
 kernel/trace/ftrace.c                            |   12 -
 lib/debugobjects.c                               |    2 
 lib/locking-selftest.c                           |    2 
 mm/hugetlb.c                                     |   12 +
 mm/kmemleak.c                                    |    7 
 mm/ksm.c                                         |    6 
 mm/memory-failure.c                              |    4 
 mm/memory_hotplug.c                              |    2 
 mm/migrate.c                                     |    2 
 mm/page_alloc.c                                  |    2 
 mm/shmem.c                                       |    5 
 mm/slub.c                                        |   14 +
 mm/vmscan.c                                      |   11 +
 net/8021q/vlan_dev.c                             |    2 
 net/atm/atm_sysfs.c                              |   10 +
 net/bridge/br_netfilter.c                        |   12 +
 net/core/dev.c                                   |    4 
 net/core/dst.c                                   |    2 
 net/core/ethtool.c                               |   27 +++
 net/core/filter.c                                |    5 
 net/core/skbuff.c                                |    3 
 net/ipv4/af_inet.c                               |    3 
 net/ipv4/igmp.c                                  |   10 -
 net/ipv4/inet_diag.c                             |   14 -
 net/ipv4/inetpeer.c                              |   42 +++--
 net/ipv4/netfilter.c                             |   60 ++------
 net/ipv4/netfilter/ipt_REJECT.c                  |   14 -
 net/ipv4/route.c                                 |    4 
 net/ipv4/udp.c                                   |    3 
 net/ipv6/udp.c                                   |    5 
 net/mac80211/cfg.c                               |   12 -
 net/mac80211/ibss.c                              |    6 
 net/mac80211/mlme.c                              |    2 
 net/netfilter/ipset/ip_set_core.c                |    2 
 net/netfilter/ipvs/ip_vs_conn.c                  |   10 +
 net/netfilter/ipvs/ip_vs_core.c                  |    1 
 net/netfilter/ipvs/ip_vs_ftp.c                   |   27 ++-
 net/netfilter/nf_conntrack_sip.c                 |   16 +-
 net/packet/af_packet.c                           |    2 
 net/sched/sch_sfq.c                              |   22 --
 net/sctp/associola.c                             |   16 ++
 net/sctp/bind_addr.c                             |   10 -
 net/socket.c                                     |    6 
 net/sunrpc/auth_gss/auth_gss.c                   |    4 
 net/sunrpc/auth_gss/gss_krb5_mech.c              |    3 
 net/sunrpc/clnt.c                                |    5 
 net/sunrpc/sched.c                               |    1 
 net/sunrpc/xprtsock.c                            |   16 +-
 net/wireless/nl80211.c                           |   10 -
 net/xfrm/xfrm_replay.c                           |    4 
 security/apparmor/lsm.c                          |    5 
 security/keys/process_keys.c                     |    1 
 security/keys/request_key.c                      |    3 
 security/tomoyo/mount.c                          |    2 
 sound/pci/hda/hda_intel.c                        |    9 +
 sound/pci/hda/patch_analog.c                     |    3 
 sound/pci/hda/patch_conexant.c                   |    4 
 sound/pci/hda/patch_realtek.c                    |    2 
 sound/pci/hda/patch_sigmatel.c                   |    2 
 sound/soc/codecs/ad1836.c                        |   14 -
 sound/soc/codecs/ad1836.h                        |    6 
 sound/soc/codecs/wm8804.c                        |    9 -
 sound/soc/codecs/wm8962.c                        |    4 
 sound/soc/codecs/wm_hubs.c                       |   24 +--
 sound/soc/pxa/pxa2xx-pcm.c                       |    4 
 sound/soc/pxa/raumfeld.c                         |   92 +++++++-----
 sound/soc/samsung/i2s.c                          |    4 
 sound/soc/soc-dapm.c                             |   17 +-
 virt/kvm/assigned-dev.c                          |    5 
 366 files changed, 3125 insertions(+), 1509 deletions(-)

