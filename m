From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.7.3 released
Date: Thu, 17 Jan 2013 16:58:17 +0000 (UTC)
Message-ID: <20130117165817.C851F971@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 3.7.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.7.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.7.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               124573            521152
Full source                       83614636         499077120

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/power/runtime_pm.txt                     |    9 
 Makefile                                               |   10 
 arch/arm/kernel/swp_emulate.c                          |    2 
 arch/arm/mach-omap2/board-3430sdp.c                    |    1 
 arch/arm/mach-omap2/board-am3517evm.c                  |    1 
 arch/arm/mach-omap2/board-cm-t35.c                     |    1 
 arch/arm/mach-omap2/board-devkit8000.c                 |    1 
 arch/arm/mach-omap2/board-omap3evm.c                   |    1 
 arch/arm/mach-omap2/board-omap3stalker.c               |    1 
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h            |    3 
 arch/arm/mach-pxa/pxa27x.c                             |    4 
 arch/arm/mach-realview/include/mach/board-eb.h         |    2 
 arch/arm/mm/cache-v7.S                                 |    6 
 arch/arm/mm/mmu.c                                      |    2 
 arch/arm64/include/asm/pgtable.h                       |    2 
 arch/arm64/include/asm/unistd32.h                      |    2 
 arch/arm64/kernel/signal.c                             |   37 -
 arch/cris/include/asm/io.h                             |   39 +
 arch/mips/kernel/process.c                             |    4 
 arch/mips/mm/tlbex.c                                   |   16 
 arch/powerpc/kernel/head_64.S                          |    2 
 arch/powerpc/kernel/time.c                             |    5 
 arch/powerpc/kvm/44x_emulate.c                         |    2 
 arch/powerpc/kvm/e500_tlb.c                            |    2 
 arch/powerpc/platforms/40x/ppc40x_simple.c             |    3 
 arch/s390/kernel/entry64.S                             |   25 +
 arch/s390/kvm/kvm-s390.c                               |    2 
 arch/sparc/crypto/aes_asm.S                            |   20 -
 arch/sparc/crypto/aes_glue.c                           |   31 +
 arch/sparc/crypto/camellia_glue.c                      |    3 
 arch/sparc/crypto/des_asm.S                            |    1 
 arch/sparc/crypto/des_glue.c                           |    6 
 arch/sparc/include/asm/hugetlb.h                       |   10 
 arch/x86/kernel/hpet.c                                 |    4 
 arch/x86/pci/common.c                                  |    3 
 drivers/acpi/battery.c                                 |   77 +++
 drivers/acpi/scan.c                                    |    9 
 drivers/acpi/sleep.c                                   |  340 ++++++++---------
 drivers/acpi/video.c                                   |   14 
 drivers/acpi/video_detect.c                            |    8 
 drivers/ata/libata-acpi.c                              |    4 
 drivers/ata/libata-core.c                              |    1 
 drivers/ata/libata-eh.c                                |    1 
 drivers/ata/libata-scsi.c                              |    6 
 drivers/ata/sata_promise.c                             |   15 
 drivers/atm/solos-pci.c                                |    5 
 drivers/base/firmware_class.c                          |   30 +
 drivers/base/power/main.c                              |    9 
 drivers/base/regmap/regmap-debugfs.c                   |    2 
 drivers/bcma/driver_mips.c                             |    2 
 drivers/block/aoe/aoeblk.c                             |   17 
 drivers/block/rbd.c                                    |   63 ++-
 drivers/block/rbd_types.h                              |    2 
 drivers/bluetooth/btusb.c                              |    1 
 drivers/clk/ux500/u8500_clk.c                          |    2 
 drivers/cpuidle/coupled.c                              |    2 
 drivers/edac/edac_mc_sysfs.c                           |    2 
 drivers/firewire/net.c                                 |   13 
 drivers/gpu/drm/drm_mm.c                               |   45 --
 drivers/gpu/drm/exynos/exynos_drm_dmabuf.c             |    5 
 drivers/gpu/drm/i915/i915_debugfs.c                    |    4 
 drivers/gpu/drm/i915/i915_drv.c                        |    2 
 drivers/gpu/drm/i915/i915_drv.h                        |    3 
 drivers/gpu/drm/i915/i915_gem.c                        |   25 -
 drivers/gpu/drm/i915/i915_gem_dmabuf.c                 |    7 
 drivers/gpu/drm/i915/i915_irq.c                        |    4 
 drivers/gpu/drm/i915/i915_reg.h                        |    2 
 drivers/gpu/drm/i915/intel_display.c                   |  136 ++++--
 drivers/gpu/drm/i915/intel_drv.h                       |    9 
 drivers/gpu/drm/i915/intel_lvds.c                      |   10 
 drivers/gpu/drm/i915/intel_pm.c                        |   23 -
 drivers/gpu/drm/nouveau/core/include/subdev/bios/pll.h |    2 
 drivers/gpu/drm/nouveau/core/subdev/clock/nvc0.c       |    2 
 drivers/gpu/drm/nouveau/core/subdev/fb/nvc0.c          |    6 
 drivers/gpu/drm/nouveau/core/subdev/instmem/base.c     |   35 +
 drivers/gpu/drm/nouveau/nouveau_bo.c                   |    2 
 drivers/gpu/drm/nouveau/nouveau_fence.h                |    1 
 drivers/gpu/drm/nouveau/nouveau_prime.c                |    1 
 drivers/gpu/drm/nouveau/nv04_dfp.c                     |    2 
 drivers/gpu/drm/nouveau/nv10_fence.c                   |    8 
 drivers/gpu/drm/nouveau/nv50_fence.c                   |    1 
 drivers/gpu/drm/radeon/atombios_crtc.c                 |    2 
 drivers/gpu/drm/radeon/atombios_encoders.c             |    2 
 drivers/gpu/drm/radeon/evergreen.c                     |   18 
 drivers/gpu/drm/radeon/evergreen_cs.c                  |    1 
 drivers/gpu/drm/radeon/evergreend.h                    |    5 
 drivers/gpu/drm/radeon/ni.c                            |   16 
 drivers/gpu/drm/radeon/nid.h                           |   11 
 drivers/gpu/drm/radeon/radeon.h                        |    3 
 drivers/gpu/drm/radeon/radeon_combios.c                |   51 ++
 drivers/gpu/drm/radeon/radeon_connectors.c             |   10 
 drivers/gpu/drm/radeon/radeon_device.c                 |   17 
 drivers/gpu/drm/radeon/radeon_display.c                |   13 
 drivers/gpu/drm/radeon/radeon_fence.c                  |   49 +-
 drivers/gpu/drm/radeon/radeon_i2c.c                    |   10 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c        |    8 
 drivers/gpu/drm/radeon/radeon_mode.h                   |    5 
 drivers/gpu/drm/radeon/radeon_pm.c                     |   15 
 drivers/gpu/drm/radeon/radeon_prime.c                  |    1 
 drivers/gpu/drm/radeon/si.c                            |   25 +
 drivers/gpu/drm/radeon/sid.h                           |   14 
 drivers/gpu/drm/udl/udl_connector.c                    |   17 
 drivers/hid/hid-core.c                                 |    1 
 drivers/hid/hid-ids.h                                  |    3 
 drivers/hid/usbhid/hid-quirks.c                        |    1 
 drivers/hwmon/fam15h_power.c                           |    4 
 drivers/hwmon/lm73.c                                   |   16 
 drivers/infiniband/hw/mlx4/cm.c                        |    4 
 drivers/infiniband/hw/nes/nes.h                        |    1 
 drivers/infiniband/hw/nes/nes_hw.c                     |    9 
 drivers/infiniband/hw/nes/nes_verbs.c                  |    9 
 drivers/input/joystick/walkera0701.c                   |    7 
 drivers/input/keyboard/gpio_keys.c                     |   13 
 drivers/input/keyboard/gpio_keys_polled.c              |   13 
 drivers/input/mouse/sentelic.c                         |    2 
 drivers/input/serio/i8042-x86ia64io.h                  |    9 
 drivers/input/tablet/wacom_wac.c                       |    3 
 drivers/iommu/intel-iommu.c                            |   11 
 drivers/md/dm-bio-prison.c                             |   25 -
 drivers/md/dm-bio-prison.h                             |    1 
 drivers/md/dm-ioctl.c                                  |    8 
 drivers/md/dm-table.c                                  |    2 
 drivers/md/dm-thin.c                                   |  101 +++--
 drivers/md/persistent-data/dm-btree-internal.h         |   16 
 drivers/md/persistent-data/dm-btree-remove.c           |   50 +-
 drivers/md/persistent-data/dm-btree-spine.c            |    6 
 drivers/md/persistent-data/dm-btree.c                  |   22 -
 drivers/mfd/mfd-core.c                                 |   15 
 drivers/mfd/wm8994-core.c                              |    1 
 drivers/misc/sgi-xp/xpc_main.c                         |   34 +
 drivers/mtd/nand/cs553x_nand.c                         |    3 
 drivers/mtd/nand/gpmi-nand/gpmi-lib.c                  |    9 
 drivers/net/can/dev.c                                  |    3 
 drivers/net/ethernet/mellanox/mlx4/cmd.c               |    9 
 drivers/net/ethernet/mellanox/mlx4/eq.c                |   10 
 drivers/net/usb/cdc_ether.c                            |   15 
 drivers/net/usb/qmi_wwan.c                             |   14 
 drivers/net/wimax/i2400m/i2400m-usb.h                  |    3 
 drivers/net/wimax/i2400m/usb.c                         |    6 
 drivers/net/wireless/ath/ath5k/base.c                  |    4 
 drivers/net/wireless/ath/ath5k/mac80211-ops.c          |    2 
 drivers/net/wireless/ath/ath9k/ar9003_2p2_initvals.h   |  172 ++++----
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.h         |    6 
 drivers/net/wireless/ath/ath9k/ar9003_hw.c             |    6 
 drivers/net/wireless/ath/ath9k/calib.c                 |    1 
 drivers/net/wireless/ath/ath9k/calib.h                 |    3 
 drivers/net/wireless/ath/carl9170/fw.c                 |    6 
 drivers/net/wireless/b43/b43.h                         |    5 
 drivers/net/wireless/b43/dma.c                         |    7 
 drivers/net/wireless/b43/main.c                        |   66 ++-
 drivers/net/wireless/b43/main.h                        |    5 
 drivers/net/wireless/b43/pio.c                         |    4 
 drivers/net/wireless/b43legacy/b43legacy.h             |    5 
 drivers/net/wireless/b43legacy/main.c                  |   37 +
 drivers/net/wireless/brcm80211/brcmfmac/wl_cfg80211.c  |    5 
 drivers/net/wireless/iwlwifi/dvm/tx.c                  |   71 +--
 drivers/net/wireless/iwlwifi/pcie/rx.c                 |   13 
 drivers/net/wireless/mwifiex/sta_ioctl.c               |   21 -
 drivers/net/wireless/p54/p54usb.c                      |    4 
 drivers/net/wireless/rt2x00/rt2800lib.c                |    3 
 drivers/net/wireless/rt2x00/rt2x00dev.c                |   10 
 drivers/net/wireless/rtlwifi/usb.c                     |    7 
 drivers/net/xen-netfront.c                             |   27 -
 drivers/pci/pci-driver.c                               |   67 ++-
 drivers/pci/pci.c                                      |    2 
 drivers/pci/pcie/portdrv_pci.c                         |   20 -
 drivers/pci/quirks.c                                   |    7 
 drivers/platform/x86/samsung-laptop.c                  |   10 
 drivers/platform/x86/sony-laptop.c                     |   15 
 drivers/pnp/pnpacpi/core.c                             |    5 
 drivers/regulator/max8997.c                            |   36 -
 drivers/regulator/max8998.c                            |   44 +-
 drivers/regulator/s2mps11.c                            |   10 
 drivers/regulator/wm831x-dcdc.c                        |    2 
 drivers/rtc/class.c                                    |    1 
 drivers/rtc/rtc-vt8500.c                               |   11 
 drivers/s390/cio/device_pgid.c                         |   10 
 drivers/scsi/mvsas/mv_94xx.h                           |   14 
 drivers/scsi/mvsas/mv_sas.h                            |    2 
 drivers/scsi/qla2xxx/qla_attr.c                        |    3 
 drivers/scsi/qla2xxx/qla_bsg.c                         |   72 +--
 drivers/scsi/qla2xxx/qla_os.c                          |    7 
 drivers/scsi/qla2xxx/qla_target.c                      |   21 +
 drivers/scsi/scsi_sysfs.c                              |   11 
 drivers/staging/bcm/InterfaceInit.c                    |    3 
 drivers/staging/bcm/InterfaceInit.h                    |    2 
 drivers/staging/comedi/Kconfig                         |    1 
 drivers/staging/comedi/comedi_fops.c                   |    3 
 drivers/staging/comedi/drivers/comedi_test.c           |    2 
 drivers/staging/comedi/drivers/ni_pcimio.c             |   16 
 drivers/staging/omapdrm/omap_crtc.c                    |    2 
 drivers/staging/omapdrm/omap_gem_dmabuf.c              |    5 
 drivers/staging/rtl8712/usb_intf.c                     |    2 
 drivers/staging/speakup/synth.c                        |    4 
 drivers/staging/telephony/ixj.c                        |   24 -
 drivers/staging/vt6656/dpc.c                           |    4 
 drivers/staging/vt6656/key.c                           |   53 +-
 drivers/staging/vt6656/key.h                           |    8 
 drivers/staging/vt6656/mac.c                           |    6 
 drivers/staging/vt6656/rf.c                            |    3 
 drivers/staging/vt6656/rxtx.c                          |   18 
 drivers/staging/vt6656/ttype.h                         |   16 
 drivers/staging/vt6656/wcmd.c                          |   20 -
 drivers/staging/vt6656/wpa2.h                          |    4 
 drivers/staging/zram/zram_drv.c                        |  152 +++----
 drivers/target/iscsi/iscsi_target.c                    |    4 
 drivers/target/iscsi/iscsi_target_erl2.c               |    2 
 drivers/target/iscsi/iscsi_target_login.c              |    8 
 drivers/target/iscsi/iscsi_target_nego.c               |   10 
 drivers/target/iscsi/iscsi_target_tmr.c                |    4 
 drivers/target/sbp/sbp_target.c                        |   17 
 drivers/target/target_core_file.c                      |    9 
 drivers/target/tcm_fc/tfc_sess.c                       |    2 
 drivers/usb/chipidea/core.c                            |    3 
 drivers/usb/class/cdc-acm.c                            |   41 ++
 drivers/usb/core/hub.c                                 |  120 ++++--
 drivers/usb/core/message.c                             |   54 +-
 drivers/usb/core/quirks.c                              |    3 
 drivers/usb/gadget/dummy_hcd.c                         |    9 
 drivers/usb/gadget/f_ecm.c                             |    4 
 drivers/usb/gadget/f_eem.c                             |    5 
 drivers/usb/gadget/f_midi.c                            |    1 
 drivers/usb/gadget/f_ncm.c                             |    4 
 drivers/usb/gadget/f_phonet.c                          |    8 
 drivers/usb/gadget/f_rndis.c                           |    4 
 drivers/usb/gadget/f_subset.c                          |    4 
 drivers/usb/gadget/f_uvc.c                             |   39 +
 drivers/usb/gadget/tcm_usb_gadget.c                    |    1 
 drivers/usb/host/ehci-pci.c                            |   42 +-
 drivers/usb/host/ehci-q.c                              |   12 
 drivers/usb/host/ehci-sched.c                          |    4 
 drivers/usb/host/ohci-q.c                              |   19 
 drivers/usb/host/pci-quirks.c                          |    4 
 drivers/usb/host/xhci-hub.c                            |   38 +
 drivers/usb/host/xhci-mem.c                            |   11 
 drivers/usb/host/xhci-pci.c                            |    7 
 drivers/usb/host/xhci-ring.c                           |   41 +-
 drivers/usb/host/xhci.c                                |   14 
 drivers/usb/misc/Kconfig                               |    1 
 drivers/usb/musb/cppi_dma.c                            |    1 
 drivers/usb/musb/musb_core.c                           |    5 
 drivers/usb/musb/musb_dsps.c                           |    3 
 drivers/usb/serial/cp210x.c                            |    1 
 drivers/usb/serial/ftdi_sio.c                          |    5 
 drivers/usb/serial/ftdi_sio_ids.h                      |   12 
 drivers/usb/serial/option.c                            |   41 ++
 drivers/usb/storage/Kconfig                            |    2 
 drivers/video/mxsfb.c                                  |    3 
 drivers/virtio/virtio_ring.c                           |    7 
 fs/binfmt_misc.c                                       |    5 
 fs/binfmt_script.c                                     |    4 
 fs/buffer.c                                            |    1 
 fs/ceph/addr.c                                         |    9 
 fs/ceph/caps.c                                         |   16 
 fs/ceph/inode.c                                        |   15 
 fs/ceph/mds_client.c                                   |    9 
 fs/ceph/super.c                                        |    2 
 fs/cifs/readdir.c                                      |   59 +-
 fs/cifs/smb1ops.c                                      |    7 
 fs/cifs/smb2pdu.c                                      |    2 
 fs/cifs/transport.c                                    |    6 
 fs/dcache.c                                            |    2 
 fs/eventpoll.c                                         |   22 +
 fs/exec.c                                              |   15 
 fs/ext4/acl.c                                          |    6 
 fs/ext4/extents.c                                      |   22 -
 fs/ext4/ialloc.c                                       |    2 
 fs/ext4/namei.c                                        |    5 
 fs/ext4/super.c                                        |   26 -
 fs/file_table.c                                        |    2 
 fs/jbd2/transaction.c                                  |    3 
 fs/jffs2/nodemgmt.c                                    |    6 
 fs/nfs/callback_proc.c                                 |    2 
 fs/nfs/client.c                                        |    3 
 fs/nfs/dir.c                                           |   27 -
 fs/nfs/direct.c                                        |    8 
 fs/nfs/nfs4proc.c                                      |   46 +-
 fs/nfs/pnfs.c                                          |    2 
 fs/nfs/read.c                                          |   10 
 fs/nfs/super.c                                         |    2 
 fs/nfs/write.c                                         |   13 
 fs/nfsd/nfs4proc.c                                     |    8 
 fs/nfsd/nfs4state.c                                    |    2 
 fs/nfsd/nfs4xdr.c                                      |   11 
 fs/nfsd/nfssvc.c                                       |    2 
 fs/nfsd/vfs.c                                          |   10 
 fs/proc/array.c                                        |    2 
 fs/pstore/ram.c                                        |   12 
 fs/splice.c                                            |    4 
 fs/udf/inode.c                                         |   11 
 fs/xfs/xfs_aops.c                                      |   81 +---
 fs/xfs/xfs_log.c                                       |    3 
 fs/xfs/xfs_qm.c                                        |   15 
 include/asm-generic/tlb.h                              |    9 
 include/drm/drm_mm.h                                   |    2 
 include/linux/audit.h                                  |    3 
 include/linux/binfmts.h                                |    1 
 include/linux/ceph/libceph.h                           |    2 
 include/linux/cgroup.h                                 |    1 
 include/linux/compaction.h                             |    4 
 include/linux/freezer.h                                |   50 ++
 include/linux/hugetlb_cgroup.h                         |    5 
 include/linux/kernel.h                                 |    6 
 include/linux/libata.h                                 |    1 
 include/linux/mfd/da9055/core.h                        |    2 
 include/linux/mfd/da9055/pdata.h                       |    2 
 include/linux/mfd/da9055/reg.h                         |    2 
 include/linux/mm.h                                     |    1 
 include/linux/page-flags.h                             |    8 
 include/linux/pci_ids.h                                |    1 
 include/linux/sunrpc/cache.h                           |    6 
 include/net/gro_cells.h                                |   14 
 include/net/inet_connection_sock.h                     |    1 
 include/net/mac80211.h                                 |    5 
 include/net/ndisc.h                                    |    7 
 include/uapi/linux/audit.h                             |    1 
 include/video/omap-panel-tfp410.h                      |    2 
 kernel/auditsc.c                                       |   14 
 kernel/cgroup.c                                        |   76 +--
 kernel/cgroup_freezer.c                                |   13 
 kernel/fork.c                                          |    9 
 kernel/irq/manage.c                                    |   23 +
 kernel/printk.c                                        |    5 
 kernel/rcutree.c                                       |   15 
 kernel/signal.c                                        |    1 
 kernel/trace/ftrace.c                                  |    2 
 kernel/trace/ring_buffer.c                             |   16 
 kernel/watchdog.c                                      |   11 
 lib/atomic64.c                                         |   17 
 mm/bootmem.c                                           |   24 -
 mm/compaction.c                                        |   98 ----
 mm/dmapool.c                                           |   31 -
 mm/highmem.c                                           |    1 
 mm/hugetlb.c                                           |   11 
 mm/hugetlb_cgroup.c                                    |   19 
 mm/internal.h                                          |    1 
 mm/memory.c                                            |    5 
 mm/mempolicy.c                                         |   64 +--
 mm/page-writeback.c                                    |   25 +
 mm/page_alloc.c                                        |   37 -
 net/9p/trans_virtio.c                                  |    3 
 net/batman-adv/bat_iv_ogm.c                            |    2 
 net/bluetooth/hci_core.c                               |    2 
 net/bluetooth/rfcomm/sock.c                            |    4 
 net/bluetooth/sco.c                                    |   19 
 net/ceph/ceph_common.c                                 |    3 
 net/ceph/messenger.c                                   |   72 +--
 net/ceph/osd_client.c                                  |   93 +---
 net/ceph/osdmap.c                                      |   31 +
 net/dccp/ipv4.c                                        |    4 
 net/dccp/ipv6.c                                        |    3 
 net/ipv4/inet_connection_sock.c                        |   16 
 net/ipv4/tcp_ipv4.c                                    |    6 
 net/ipv6/ndisc.c                                       |   17 
 net/ipv6/tcp_ipv6.c                                    |    3 
 net/mac80211/ibss.c                                    |    9 
 net/mac80211/ieee80211_i.h                             |   10 
 net/mac80211/iface.c                                   |   28 -
 net/mac80211/scan.c                                    |   34 +
 net/mac80211/sta_info.c                                |   46 ++
 net/mac80211/sta_info.h                                |    3 
 net/mac80211/status.c                                  |    6 
 net/mac802154/wpan.c                                   |    2 
 net/sched/sch_htb.c                                    |    2 
 net/sctp/probe.c                                       |    3 
 net/sunrpc/clnt.c                                      |    2 
 net/sunrpc/rpc_pipe.c                                  |    7 
 net/sunrpc/sched.c                                     |   30 +
 net/sunrpc/xprt.c                                      |   12 
 sound/arm/pxa2xx-ac97-lib.c                            |   26 +
 sound/pci/hda/hda_intel.c                              |   32 +
 sound/pci/hda/patch_conexant.c                         |   17 
 sound/pci/hda/patch_hdmi.c                             |   18 
 sound/pci/hda/patch_realtek.c                          |   34 +
 sound/pci/hda/patch_sigmatel.c                         |    2 
 sound/soc/codecs/arizona.c                             |    9 
 sound/soc/codecs/arizona.h                             |   18 
 sound/soc/codecs/sigmadsp.c                            |    2 
 sound/soc/codecs/sta529.c                              |    9 
 sound/soc/codecs/wm2000.c                              |    4 
 sound/soc/codecs/wm2200.c                              |    8 
 sound/soc/codecs/wm5100.c                              |    6 
 sound/soc/codecs/wm8994.c                              |   16 
 sound/soc/soc-pcm.c                                    |    1 
 sound/usb/midi.c                                       |   91 ++--
 tools/perf/builtin-test.c                              |   38 -
 virt/kvm/kvm_main.c                                    |   13 
 387 files changed, 3607 insertions(+), 2195 deletions(-)

