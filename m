From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.32.3 released
Date: Wed, 6 Jan 2010 23:58:30 GMT
Message-ID: <201001062358.o06NwUUm021645@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.32.3 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.32.3.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.32.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                96971            393710
Full source                       64385048         382433280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/Changes                          |    2 
 Documentation/filesystems/ext4.txt             |   12 -
 Documentation/kernel-parameters.txt            |    2 
 Documentation/video4linux/gspca.txt            |    1 
 MAINTAINERS                                    |    4 
 Makefile                                       |    2 
 arch/arm/mach-pxa/em-x270.c                    |   11 
 arch/ia64/include/asm/io.h                     |    2 
 arch/ia64/mm/ioremap.c                         |   11 
 arch/powerpc/kernel/align.c                    |   63 ++++-
 arch/powerpc/kernel/vector.S                   |    2 
 arch/s390/include/asm/kvm.h                    |    3 
 arch/s390/kernel/head64.S                      |    3 
 arch/s390/kvm/kvm-s390.c                       |   25 +-
 arch/s390/kvm/sigp.c                           |    6 
 arch/sparc/Makefile                            |    2 
 arch/sparc/kernel/ldc.c                        |    4 
 arch/sparc/kernel/of_device_64.c               |   14 +
 arch/sparc/lib/mcount.S                        |    5 
 arch/x86/Makefile_32.cpu                       |    7 
 arch/x86/include/asm/irq_vectors.h             |    2 
 arch/x86/include/asm/kvm_emulate.h             |    2 
 arch/x86/include/asm/mce.h                     |    6 
 arch/x86/include/asm/msr.h                     |   19 +
 arch/x86/include/asm/processor.h               |    2 
 arch/x86/include/asm/uv/uv_hub.h               |   86 ++++---
 arch/x86/kernel/acpi/cstate.c                  |    2 
 arch/x86/kernel/amd_iommu.c                    |    8 
 arch/x86/kernel/amd_iommu_init.c               |   12 -
 arch/x86/kernel/apic/apic.c                    |    2 
 arch/x86/kernel/apic/x2apic_uv_x.c             |   12 -
 arch/x86/kernel/cpu/intel_cacheinfo.c          |    5 
 arch/x86/kernel/cpu/mcheck/mce.c               |    9 
 arch/x86/kernel/cpu/mcheck/therm_throt.c       |   29 ++
 arch/x86/kernel/cpu/perfctr-watchdog.c         |    2 
 arch/x86/kernel/pci-calgary_64.c               |   12 -
 arch/x86/kernel/pci-dma.c                      |    2 
 arch/x86/kernel/pci-gart_64.c                  |    2 
 arch/x86/kernel/ptrace.c                       |   16 -
 arch/x86/kernel/reboot.c                       |    8 
 arch/x86/kernel/setup.c                        |    3 
 arch/x86/kernel/tlb_uv.c                       |    4 
 arch/x86/kvm/emulate.c                         |    5 
 arch/x86/kvm/lapic.c                           |    1 
 arch/x86/kvm/paging_tmpl.h                     |   18 -
 arch/x86/kvm/x86.c                             |   12 -
 arch/x86/lib/Makefile                          |    4 
 arch/x86/lib/msr-smp.c                         |  204 ++++++++++++++++++
 arch/x86/lib/msr.c                             |  227 +-------------------
 arch/x86/xen/enlighten.c                       |   27 +-
 arch/x86/xen/mmu.c                             |    2 
 arch/x86/xen/smp.c                             |    1 
 arch/x86/xen/suspend.c                         |   17 +
 arch/x86/xen/time.c                            |    7 
 arch/x86/xen/xen-asm_64.S                      |    4 
 arch/x86/xen/xen-ops.h                         |    2 
 drivers/acpi/button.c                          |    7 
 drivers/acpi/ec.c                              |   10 
 drivers/ata/pata_cmd64x.c                      |    2 
 drivers/ata/pata_hpt37x.c                      |   32 +-
 drivers/ata/pata_hpt3x2n.c                     |   79 +++----
 drivers/base/core.c                            |    9 
 drivers/base/power/runtime.c                   |    2 
 drivers/bluetooth/btusb.c                      |    1 
 drivers/dma/at_hdmac.c                         |    4 
 drivers/dma/ioat/dma.c                         |    2 
 drivers/dma/ioat/dma.h                         |   18 +
 drivers/dma/ioat/dma_v2.c                      |   69 ++++--
 drivers/dma/ioat/dma_v2.h                      |    2 
 drivers/dma/ioat/dma_v3.c                      |   60 +++--
 drivers/dma/ioat/registers.h                   |    1 
 drivers/edac/amd64_edac.c                      |  221 ++++++++++---------
 drivers/edac/amd64_edac.h                      |    9 
 drivers/firewire/ohci.c                        |   12 -
 drivers/gpu/drm/drm_crtc_helper.c              |    3 
 drivers/gpu/drm/drm_irq.c                      |   34 ++-
 drivers/gpu/drm/i915/i915_drv.h                |    4 
 drivers/gpu/drm/i915/i915_gem.c                |    1 
 drivers/gpu/drm/i915/intel_display.c           |   67 ++++--
 drivers/gpu/drm/i915/intel_dp.c                |    6 
 drivers/gpu/drm/i915/intel_tv.c                |   11 
 drivers/gpu/drm/radeon/atombios_crtc.c         |   10 
 drivers/gpu/drm/radeon/radeon_atombios.c       |    8 
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c    |    7 
 drivers/gpu/drm/radeon/radeon_test.c           |    4 
 drivers/gpu/drm/radeon/rs600.c                 |   15 +
 drivers/gpu/drm/radeon/rs690.c                 |   19 -
 drivers/hwmon/sht15.c                          |    6 
 drivers/ide/slc90e66.c                         |    3 
 drivers/lguest/segments.c                      |    4 
 drivers/macintosh/therm_adt746x.c              |   13 -
 drivers/macintosh/windfarm_smu_controls.c      |    2 
 drivers/md/bitmap.c                            |   24 +-
 drivers/md/bitmap.h                            |    2 
 drivers/md/dm-crypt.c                          |  170 ++++++++++-----
 drivers/md/dm-exception-store.c                |    3 
 drivers/md/dm-ioctl.c                          |   17 +
 drivers/md/dm-snap.c                           |   12 -
 drivers/md/dm-uevent.c                         |    9 
 drivers/md/md.c                                |   11 
 drivers/md/md.h                                |    1 
 drivers/media/common/tuners/mxl5007t.c         |    2 
 drivers/media/video/gspca/ov519.c              |    1 
 drivers/media/video/ov511.c                    |    2 
 drivers/mtd/ubi/upd.c                          |   20 -
 drivers/net/b44.c                              |    3 
 drivers/net/bcm63xx_enet.c                     |   12 -
 drivers/net/e100.c                             |    2 
 drivers/net/usb/rtl8150.c                      |    2 
 drivers/net/wireless/ath/ath5k/base.c          |    7 
 drivers/net/wireless/ath/ath5k/eeprom.c        |    3 
 drivers/net/wireless/ath/ath5k/phy.c           |    2 
 drivers/net/wireless/ath/ath9k/ath9k.h         |    3 
 drivers/net/wireless/ath/ath9k/hw.c            |   11 
 drivers/net/wireless/ath/ath9k/hw.h            |    3 
 drivers/net/wireless/ath/ath9k/mac.c           |    8 
 drivers/net/wireless/ath/ath9k/mac.h           |    4 
 drivers/net/wireless/ath/ath9k/main.c          |   23 +-
 drivers/net/wireless/ath/ath9k/reg.h           |    4 
 drivers/net/wireless/ath/ath9k/xmit.c          |   24 +-
 drivers/net/wireless/b43/rfkill.c              |   10 
 drivers/net/wireless/b43legacy/rfkill.c        |    7 
 drivers/net/wireless/ipw2x00/ipw2100.c         |   11 
 drivers/net/wireless/iwlwifi/iwl-3945.c        |    2 
 drivers/net/wireless/iwlwifi/iwl-4965.c        |    2 
 drivers/net/wireless/iwlwifi/iwl-5000-hw.h     |   14 -
 drivers/net/wireless/iwlwifi/iwl-5000.c        |    7 
 drivers/net/wireless/iwlwifi/iwl-dev.h         |    2 
 drivers/net/wireless/iwlwifi/iwl-eeprom.c      |   23 +-
 drivers/net/wireless/iwlwifi/iwl-eeprom.h      |    4 
 drivers/net/wireless/iwlwifi/iwl3945-base.c    |   11 
 drivers/net/wireless/iwmc3200wifi/iwm.h        |    2 
 drivers/net/wireless/libertas/wext.c           |    2 
 drivers/net/wireless/orinoco/wext.c            |    6 
 drivers/net/wireless/rt2x00/rt61pci.c          |    5 
 drivers/net/wireless/rtl818x/rtl8187.h         |    5 
 drivers/net/wireless/rtl818x/rtl8187_dev.c     |   12 -
 drivers/net/wireless/rtl818x/rtl8187_rfkill.c  |    4 
 drivers/pci/dmar.c                             |   67 ++++--
 drivers/pci/intel-iommu.c                      |   26 +-
 drivers/platform/x86/acerhdf.c                 |   70 +++---
 drivers/platform/x86/asus-laptop.c             |    4 
 drivers/platform/x86/thinkpad_acpi.c           |   36 ---
 drivers/s390/block/dasd_diag.c                 |   19 +
 drivers/scsi/hosts.c                           |   13 -
 drivers/scsi/ipr.c                             |    1 
 drivers/scsi/lpfc/lpfc_init.c                  |    2 
 drivers/scsi/megaraid/megaraid_sas.c           |    8 
 drivers/scsi/qla2xxx/qla_attr.c                |    3 
 drivers/scsi/qla2xxx/qla_os.c                  |    6 
 drivers/scsi/scsi_lib_dma.c                    |    4 
 drivers/scsi/scsi_transport_fc.c               |   17 +
 drivers/scsi/st.c                              |   23 +-
 drivers/scsi/st.h                              |    1 
 drivers/serial/8250.c                          |    8 
 drivers/ssb/sprom.c                            |   20 +
 drivers/usb/class/usbtmc.c                     |   14 -
 drivers/usb/core/hub.c                         |   58 ++---
 drivers/usb/core/sysfs.c                       |    6 
 drivers/usb/core/usb.c                         |   31 +-
 drivers/usb/misc/appledisplay.c                |    4 
 drivers/usb/misc/emi62.c                       |    2 
 drivers/usb/musb/musb_gadget_ep0.c             |   15 -
 drivers/usb/serial/option.c                    |   42 +++
 drivers/usb/storage/transport.c                |   17 +
 drivers/usb/storage/unusual_devs.h             |    7 
 drivers/usb/storage/usb.c                      |   18 -
 drivers/video/matrox/g450_pll.c                |    3 
 drivers/xen/balloon.c                          |   38 ---
 drivers/xen/events.c                           |    3 
 drivers/xen/manage.c                           |   37 ++-
 drivers/xen/xenbus/xenbus_probe.c              |   48 ++--
 fs/cifs/connect.c                              |   13 -
 fs/debugfs/inode.c                             |   55 ++--
 fs/devpts/inode.c                              |   16 +
 fs/ext3/inode.c                                |   18 +
 fs/ext4/balloc.c                               |    8 
 fs/ext4/block_validity.c                       |    2 
 fs/ext4/ext4.h                                 |   14 +
 fs/ext4/ext4_jbd2.h                            |   21 +
 fs/ext4/extents.c                              |   22 +
 fs/ext4/fsync.c                                |   54 +---
 fs/ext4/inode.c                                |  106 ++++++---
 fs/ext4/ioctl.c                                |   29 +-
 fs/ext4/mballoc.c                              |   40 ++-
 fs/ext4/migrate.c                              |    4 
 fs/ext4/move_extent.c                          |  278 +++++++++++--------------
 fs/ext4/namei.c                                |   38 +--
 fs/ext4/resize.c                               |    2 
 fs/ext4/super.c                                |   45 +++-
 fs/ext4/xattr.c                                |    7 
 fs/hfs/catalog.c                               |    4 
 fs/hfs/dir.c                                   |   11 
 fs/hfs/super.c                                 |    7 
 fs/jbd2/commit.c                               |    4 
 fs/jbd2/journal.c                              |   12 +
 fs/jffs2/gc.c                                  |    3 
 fs/namei.c                                     |    1 
 fs/nfs/write.c                                 |    5 
 fs/quota/dquot.c                               |  213 ++++++++++---------
 fs/stat.c                                      |   10 
 fs/udf/super.c                                 |   32 ++
 include/drm/drmP.h                             |    1 
 include/drm/ttm/ttm_memory.h                   |    1 
 include/linux/cpumask.h                        |    2 
 include/linux/fs.h                             |    1 
 include/linux/hrtimer.h                        |    4 
 include/linux/kvm.h                            |    8 
 include/linux/perf_event.h                     |    2 
 include/linux/quota.h                          |    5 
 include/linux/sched.h                          |   13 -
 include/linux/security.h                       |    7 
 include/linux/usb_usual.h                      |    4 
 include/linux/vmalloc.h                        |    2 
 include/net/ip.h                               |    1 
 include/net/ipv6.h                             |    8 
 include/net/netfilter/ipv6/nf_conntrack_ipv6.h |    2 
 include/net/tcp.h                              |   10 
 include/scsi/osd_protocol.h                    |    1 
 include/scsi/scsi_host.h                       |   16 +
 include/trace/ftrace.h                         |    2 
 kernel/acct.c                                  |    3 
 kernel/cpu.c                                   |   18 +
 kernel/cpuset.c                                |   16 -
 kernel/futex.c                                 |   10 
 kernel/perf_event.c                            |    6 
 kernel/rcutree.c                               |  227 ++++++++++++--------
 kernel/rcutree.h                               |   13 -
 kernel/rcutree_plugin.h                        |    4 
 kernel/sched.c                                 |   64 ++++-
 kernel/sched_debug.c                           |    4 
 kernel/sched_fair.c                            |   38 +++
 kernel/sysctl.c                                |    5 
 kernel/time/clockevents.c                      |   18 +
 lib/dma-debug.c                                |    8 
 mm/Kconfig                                     |    1 
 mm/internal.h                                  |    3 
 mm/ksm.c                                       |   14 -
 mm/memcontrol.c                                |    9 
 mm/memory.c                                    |    4 
 mm/mincore.c                                   |   37 +++
 mm/mlock.c                                     |    4 
 mm/oom_kill.c                                  |    2 
 mm/pagewalk.c                                  |   16 +
 mm/vmalloc.c                                   |    2 
 mm/vmscan.c                                    |   18 +
 net/core/dev.c                                 |   11 
 net/core/rtnetlink.c                           |    4 
 net/ipv4/ip_output.c                           |    2 
 net/ipv4/netfilter/nf_defrag_ipv4.c            |   21 +
 net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.c |   19 +
 net/ipv6/netfilter/nf_conntrack_reasm.c        |    7 
 net/ipv6/reassembly.c                          |    5 
 net/mac80211/cfg.c                             |    3 
 net/mac80211/ibss.c                            |    4 
 net/mac80211/ieee80211_i.h                     |    1 
 net/mac80211/mesh.h                            |    5 
 net/mac80211/mesh_hwmp.c                       |    2 
 net/mac80211/mlme.c                            |    8 
 net/mac80211/rx.c                              |    1 
 net/mac80211/scan.c                            |   32 ++
 net/mac80211/tx.c                              |    1 
 net/mac80211/util.c                            |   14 +
 net/netfilter/ipvs/ip_vs_ctl.c                 |    4 
 net/sunrpc/auth_gss/auth_gss.c                 |    2 
 net/wireless/mlme.c                            |   13 +
 security/Makefile                              |    3 
 security/keys/keyctl.c                         |   10 
 sound/core/hrtimer.c                           |   15 +
 sound/mips/sgio2audio.c                        |    2 
 sound/pci/hda/hda_intel.c                      |    5 
 sound/pci/hda/patch_realtek.c                  |    6 
 sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c         |    2 
 sound/soc/codecs/wm8974.c                      |    2 
 sound/soc/codecs/wm9712.c                      |    3 
 sound/usb/usbaudio.c                           |    2 
 virt/kvm/irq_comm.c                            |    7 
 277 files changed, 3121 insertions(+), 1702 deletions(-)

