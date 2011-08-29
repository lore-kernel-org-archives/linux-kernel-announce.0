From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.0.4 released
Date: Mon, 29 Aug 2011 21:16:35 GMT
Message-ID: <201108292116.p7TLGZXJ030197@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 3.0.4 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.0.4.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.0.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                96120            383401
Full source                       76759291         451031040

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/virtual/lguest/lguest.c                |    3 
 Makefile                                             |    2 
 arch/alpha/kernel/time.c                             |    2 
 arch/arm/mach-pxa/cm-x300.c                          |    8 
 arch/cris/arch-v10/drivers/sync_serial.c             |    6 
 arch/cris/arch-v10/kernel/irq.c                      |    3 
 arch/cris/include/asm/thread_info.h                  |    6 
 arch/parisc/include/asm/atomic.h                     |    4 
 arch/parisc/include/asm/futex.h                      |   66 +++
 arch/parisc/include/asm/unistd.h                     |    3 
 arch/parisc/kernel/syscall_table.S                   |    1 
 arch/powerpc/kernel/crash.c                          |    6 
 arch/powerpc/kernel/prom_init.c                      |    6 
 arch/powerpc/kernel/time.c                           |    2 
 arch/powerpc/platforms/pseries/dtl.c                 |    2 
 arch/powerpc/platforms/pseries/hvconsole.c           |    2 
 arch/powerpc/platforms/pseries/kexec.c               |   11 
 arch/powerpc/platforms/pseries/lpar.c                |    2 
 arch/powerpc/platforms/pseries/plpar_wrappers.h      |    4 
 arch/sparc/include/asm/bitops_64.h                   |   49 --
 arch/sparc/include/asm/elf_64.h                      |   63 +--
 arch/sparc/include/asm/hypervisor.h                  |   14 
 arch/sparc/include/asm/spitfire.h                    |    1 
 arch/sparc/include/asm/tsb.h                         |   51 +-
 arch/sparc/include/asm/xor_64.h                      |    3 
 arch/sparc/kernel/cpu.c                              |    8 
 arch/sparc/kernel/cpumap.c                           |    1 
 arch/sparc/kernel/ds.c                               |   31 +
 arch/sparc/kernel/entry.h                            |   14 
 arch/sparc/kernel/head_64.S                          |   33 +
 arch/sparc/kernel/hvapi.c                            |    7 
 arch/sparc/kernel/hvcalls.S                          |    7 
 arch/sparc/kernel/kernel.h                           |   15 
 arch/sparc/kernel/ktlb.S                             |   24 -
 arch/sparc/kernel/mdesc.c                            |   30 +
 arch/sparc/kernel/pcr.c                              |   11 
 arch/sparc/kernel/perf_event.c                       |    3 
 arch/sparc/kernel/setup_64.c                         |  186 ++++++++++
 arch/sparc/kernel/sparc_ksyms_64.c                   |   11 
 arch/sparc/kernel/sstate.c                           |    9 
 arch/sparc/kernel/unaligned_64.c                     |   15 
 arch/sparc/kernel/vmlinux.lds.S                      |   21 +
 arch/sparc/lib/Makefile                              |    4 
 arch/sparc/lib/NG2page.S                             |   61 ---
 arch/sparc/lib/NGpage.S                              |  114 ++++--
 arch/sparc/lib/ffs.S                                 |   84 ++++
 arch/sparc/lib/hweight.S                             |   51 ++
 arch/sparc/mm/init_64.c                              |   42 ++
 arch/x86/include/asm/msr-index.h                     |    3 
 arch/x86/include/asm/xen/page.h                      |    4 
 arch/x86/kernel/apic/x2apic_uv_x.c                   |    1 
 arch/x86/kernel/cpu/intel.c                          |   18 +
 arch/x86/kernel/cpu/mtrr/main.c                      |   23 +
 arch/x86/kernel/relocate_kernel_32.S                 |    2 
 arch/x86/kernel/relocate_kernel_64.S                 |    2 
 arch/x86/oprofile/backtrace.c                        |   56 ++-
 arch/x86/platform/olpc/olpc.c                        |    4 
 arch/x86/vdso/vdso32/sysenter.S                      |    2 
 arch/x86/xen/Makefile                                |    2 
 arch/x86/xen/enlighten.c                             |   12 
 arch/x86/xen/mmu.c                                   |   12 
 arch/x86/xen/smp.c                                   |    4 
 arch/x86/xen/vga.c                                   |   67 +++
 arch/x86/xen/xen-ops.h                               |   11 
 arch/xtensa/kernel/ptrace.c                          |    3 
 block/blk-core.c                                     |    3 
 block/blk-exec.c                                     |    7 
 crypto/md5.c                                         |   92 -----
 drivers/block/cciss.h                                |    2 
 drivers/block/loop.c                                 |    6 
 drivers/block/xen-blkfront.c                         |    6 
 drivers/char/random.c                                |  334 -------------------
 drivers/edac/i7core_edac.c                           |    2 
 drivers/firewire/core-cdev.c                         |   20 -
 drivers/firmware/sigma.c                             |    3 
 drivers/gpu/drm/drm_edid.c                           |   24 +
 drivers/gpu/drm/i915/i915_dma.c                      |    6 
 drivers/gpu/drm/i915/i915_irq.c                      |    3 
 drivers/gpu/drm/i915/intel_display.c                 |    8 
 drivers/gpu/drm/i915/intel_panel.c                   |    4 
 drivers/gpu/drm/i915/intel_ringbuffer.c              |    3 
 drivers/gpu/drm/radeon/atombios_dp.c                 |   34 +
 drivers/gpu/drm/radeon/radeon_combios.c              |    3 
 drivers/gpu/drm/radeon/radeon_connectors.c           |   80 +++-
 drivers/gpu/drm/radeon/radeon_device.c               |    5 
 drivers/gpu/drm/radeon/radeon_display.c              |    9 
 drivers/gpu/drm/radeon/radeon_encoders.c             |    3 
 drivers/gpu/drm/radeon/radeon_i2c.c                  |   32 +
 drivers/gpu/drm/radeon/radeon_mode.h                 |    7 
 drivers/gpu/drm/radeon/radeon_pm.c                   |    3 
 drivers/gpu/drm/ttm/ttm_bo.c                         |    4 
 drivers/hwmon/ibmaem.c                               |   15 
 drivers/infiniband/ulp/srp/ib_srp.c                  |    2 
 drivers/isdn/i4l/isdn_net.c                          |    3 
 drivers/md/dm-io.c                                   |   29 +
 drivers/md/dm-mpath.c                                |    5 
 drivers/md/dm-snap-persistent.c                      |    2 
 drivers/md/dm.c                                      |   10 
 drivers/misc/Kconfig                                 |    3 
 drivers/mmc/host/sdhci-esdhc-imx.c                   |    2 
 drivers/mmc/host/sdhci.c                             |    3 
 drivers/net/Makefile                                 |    1 
 drivers/net/bonding/bond_main.c                      |    6 
 drivers/net/bonding/bond_sysfs.c                     |  133 ++++---
 drivers/net/e1000e/lib.c                             |    3 
 drivers/net/gianfar_ptp.c                            |    9 
 drivers/net/ifb.c                                    |    2 
 drivers/net/igb/e1000_82575.c                        |    1 
 drivers/net/jme.c                                    |   20 -
 drivers/net/macvlan.c                                |    2 
 drivers/net/niu.c                                    |    4 
 drivers/net/phy/dp83640.c                            |    5 
 drivers/net/r8169.c                                  |    1 
 drivers/net/sis190.c                                 |   12 
 drivers/net/tun.c                                    |    1 
 drivers/net/veth.c                                   |    2 
 drivers/net/wan/hdlc_fr.c                            |    5 
 drivers/net/wireless/airo.c                          |    1 
 drivers/net/wireless/ath/ath5k/base.c                |   23 -
 drivers/net/wireless/ath/ath9k/ar9002_hw.c           |    6 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c       |    6 
 drivers/net/wireless/ath/ath9k/ar9003_hw.c           |    6 
 drivers/net/wireless/ath/ath9k/ar9003_mac.c          |    3 
 drivers/net/wireless/ath/ath9k/ar9003_phy.h          |    2 
 drivers/net/wireless/ath/ath9k/hw.c                  |   11 
 drivers/net/wireless/ath/ath9k/hw.h                  |    3 
 drivers/net/wireless/ath/ath9k/init.c                |    2 
 drivers/net/wireless/ath/ath9k/mac.c                 |    3 
 drivers/net/wireless/ath/ath9k/pci.c                 |   27 +
 drivers/net/wireless/hostap/hostap_main.c            |    1 
 drivers/net/wireless/iwlegacy/iwl-3945.c             |    6 
 drivers/net/wireless/iwlegacy/iwl-4965.c             |    8 
 drivers/net/wireless/iwlwifi/iwl-5000.c              |    1 
 drivers/net/wireless/iwlwifi/iwl-core.h              |    2 
 drivers/net/wireless/iwlwifi/iwl-power.c             |    3 
 drivers/net/wireless/rt2x00/rt2800lib.c              |    3 
 drivers/net/wireless/rt2x00/rt2800pci.c              |    1 
 drivers/net/wireless/rt2x00/rt2x00mac.c              |    5 
 drivers/net/wireless/rt2x00/rt2x00usb.c              |   17 
 drivers/net/wireless/rtlwifi/pci.c                   |   20 -
 drivers/net/wireless/rtlwifi/rtl8192cu/rf.c          |    2 
 drivers/pci/pci.c                                    |    7 
 drivers/pci/quirks.c                                 |   23 +
 drivers/platform/x86/asus-wmi.c                      |   17 
 drivers/rtc/interface.c                              |   55 ++-
 drivers/rtc/rtc-tegra.c                              |    2 
 drivers/scsi/hpsa.h                                  |    2 
 drivers/scsi/libsas/sas_expander.c                   |    3 
 drivers/scsi/mpt2sas/mpt2sas_base.c                  |   65 +--
 drivers/scsi/mpt2sas/mpt2sas_base.h                  |   53 ++-
 drivers/scsi/mpt2sas/mpt2sas_ctl.c                   |   10 
 drivers/scsi/mpt2sas/mpt2sas_debug.h                 |    2 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c                 |   12 
 drivers/scsi/mpt2sas/mpt2sas_transport.c             |   24 -
 drivers/scsi/pmcraid.c                               |    3 
 drivers/scsi/scsi_devinfo.c                          |    2 
 drivers/scsi/scsi_lib.c                              |    2 
 drivers/scsi/ses.c                                   |    6 
 drivers/scsi/sr.c                                    |   46 ++
 drivers/scsi/sr.h                                    |    7 
 drivers/staging/ath6kl/os/linux/ar6000_drv.c         |   50 +-
 drivers/staging/ath6kl/os/linux/cfg80211.c           |   31 +
 drivers/staging/ath6kl/os/linux/include/ar6000_drv.h |    9 
 drivers/staging/brcm80211/brcmsmac/wl_mac80211.c     |    5 
 drivers/staging/comedi/comedi_fops.c                 |    4 
 drivers/staging/hv/channel.c                         |    2 
 drivers/staging/hv/channel_mgmt.c                    |    2 
 drivers/staging/hv/connection.c                      |    2 
 drivers/staging/hv/netvsc.c                          |    4 
 drivers/staging/hv/rndis_filter.c                    |    6 
 drivers/staging/hv/storvsc.c                         |    8 
 drivers/staging/hv/storvsc_drv.c                     |    2 
 drivers/staging/rtl8192e/r8192E_core.c               |    6 
 drivers/staging/rtl8192u/r819xU_firmware.c           |    9 
 drivers/staging/usbip/vhci_hcd.c                     |    4 
 drivers/tty/hvc/hvc_console.c                        |    8 
 drivers/tty/n_gsm.c                                  |    4 
 drivers/tty/serial/8250.c                            |    2 
 drivers/tty/serial/Kconfig                           |    2 
 drivers/usb/class/usbtmc.c                           |    2 
 drivers/usb/core/config.c                            |   11 
 drivers/usb/host/ehci-hcd.c                          |    8 
 drivers/usb/host/ehci-hub.c                          |    3 
 drivers/usb/host/ehci-q.c                            |   85 ++--
 drivers/usb/host/ehci.h                              |    4 
 drivers/usb/host/pci-quirks.c                        |   30 +
 drivers/usb/host/xhci.c                              |   19 -
 drivers/usb/musb/musb_core.c                         |    1 
 drivers/usb/musb/musb_gadget.c                       |    5 
 drivers/usb/serial/ftdi_sio.c                        |    2 
 drivers/usb/serial/option.c                          |   12 
 drivers/usb/serial/pl2303.c                          |    1 
 drivers/usb/serial/pl2303.h                          |    4 
 drivers/usb/serial/qcserial.c                        |    1 
 drivers/usb/storage/unusual_devs.h                   |   10 
 drivers/watchdog/shwdt.c                             |    2 
 fs/befs/linuxvfs.c                                   |   23 -
 fs/btrfs/extent-tree.c                               |   12 
 fs/btrfs/tree-log.c                                  |   28 +
 fs/btrfs/volumes.c                                   |   17 
 fs/btrfs/volumes.h                                   |    2 
 fs/cifs/cifsfs.c                                     |    4 
 fs/cifs/connect.c                                    |    3 
 fs/cifs/dir.c                                        |    6 
 fs/cifs/inode.c                                      |   14 
 fs/cifs/transport.c                                  |    2 
 fs/ecryptfs/inode.c                                  |    1 
 fs/ecryptfs/keystore.c                               |   47 +-
 fs/ecryptfs/main.c                                   |   23 +
 fs/ecryptfs/read_write.c                             |   18 -
 fs/ext3/namei.c                                      |    6 
 fs/ext3/xattr.c                                      |   12 
 fs/ext4/ext4.h                                       |    1 
 fs/ext4/ext4_jbd2.h                                  |    4 
 fs/ext4/extents.c                                    |   11 
 fs/ext4/inode.c                                      |   26 +
 fs/ext4/mballoc.c                                    |    2 
 fs/ext4/namei.c                                      |    6 
 fs/ext4/page-io.c                                    |    6 
 fs/ext4/super.c                                      |    1 
 fs/fuse/dev.c                                        |    4 
 fs/gfs2/ops_fstype.c                                 |    4 
 fs/nfs/callback.h                                    |    2 
 fs/nfs/callback_proc.c                               |   25 +
 fs/nfs/callback_xdr.c                                |   24 -
 fs/nfs/delegation.c                                  |   16 
 fs/nfs/dir.c                                         |   56 +--
 fs/nfs/nfs4filelayout.c                              |    2 
 fs/nfs/nfs4proc.c                                    |    8 
 fs/nfs/nfs4xdr.c                                     |    2 
 fs/nfs/objlayout/objio_osd.c                         |   28 -
 fs/nfs/objlayout/pnfs_osd_xdr_cli.c                  |    3 
 fs/nfs/pnfs.c                                        |   63 +--
 fs/nfs/pnfs.h                                        |    6 
 fs/nfsd/nfs4state.c                                  |   66 +--
 fs/proc/base.c                                       |   16 
 include/drm/drm_crtc.h                               |    1 
 include/drm/i915_drm.h                               |    2 
 include/linux/cryptohash.h                           |    5 
 include/linux/firewire-cdev.h                        |    3 
 include/linux/if.h                                   |    2 
 include/linux/mm.h                                   |   10 
 include/linux/netdevice.h                            |    5 
 include/linux/nfs_fs.h                               |    3 
 include/linux/nfs_xdr.h                              |    2 
 include/linux/personality.h                          |    1 
 include/linux/random.h                               |   11 
 include/linux/stop_machine.h                         |    2 
 include/net/ipv6.h                                   |   12 
 include/net/secure_seq.h                             |   20 +
 include/net/transp_v6.h                              |    2 
 include/xen/interface/xen.h                          |   39 ++
 ipc/sem.c                                            |   13 
 kernel/events/core.c                                 |    7 
 kernel/futex.c                                       |   58 ++-
 kernel/irq/generic-chip.c                            |    4 
 kernel/stop_machine.c                                |    2 
 kernel/sys.c                                         |   38 ++
 kernel/trace/trace.h                                 |    1 
 kernel/trace/trace_events.c                          |  113 +++++-
 kernel/trace/trace_events_filter.c                   |    6 
 lib/Makefile                                         |    2 
 lib/md5.c                                            |   95 +++++
 lib/xz/xz_private.h                                  |    2 
 mm/backing-dev.c                                     |    1 
 mm/memcontrol.c                                      |    2 
 mm/memory.c                                          |   58 +++
 mm/oom_kill.c                                        |    4 
 mm/vmalloc.c                                         |    7 
 net/8021q/vlan_dev.c                                 |    2 
 net/atm/br2684.c                                     |    2 
 net/bluetooth/bnep/netdev.c                          |    1 
 net/bridge/br_private.h                              |    1 
 net/bridge/br_stp.c                                  |    4 
 net/core/Makefile                                    |    2 
 net/core/ethtool.c                                   |    4 
 net/core/link_watch.c                                |    2 
 net/core/pktgen.c                                    |    8 
 net/core/secure_seq.c                                |  184 ++++++++++
 net/dccp/ipv4.c                                      |    1 
 net/dccp/ipv6.c                                      |    9 
 net/ethernet/eth.c                                   |    1 
 net/ipv4/devinet.c                                   |   16 
 net/ipv4/gre.c                                       |   21 -
 net/ipv4/icmp.c                                      |   14 
 net/ipv4/igmp.c                                      |    2 
 net/ipv4/inet_hashtables.c                           |    1 
 net/ipv4/inetpeer.c                                  |    1 
 net/ipv4/ip_output.c                                 |    6 
 net/ipv4/ipmr.c                                      |    2 
 net/ipv4/netfilter/nf_nat_proto_common.c             |    1 
 net/ipv4/route.c                                     |    6 
 net/ipv4/tcp_ipv4.c                                  |    1 
 net/ipv6/af_inet6.c                                  |    2 
 net/ipv6/inet6_hashtables.c                          |    1 
 net/ipv6/ip6_output.c                                |   40 +-
 net/ipv6/tcp_ipv6.c                                  |    1 
 net/ipv6/udp.c                                       |    2 
 net/l2tp/l2tp_eth.c                                  |    2 
 net/mac80211/iface.c                                 |    1 
 net/mac80211/mlme.c                                  |    3 
 net/netfilter/ipvs/ip_vs_ctl.c                       |    1 
 net/sched/sch_sfq.c                                  |    7 
 net/socket.c                                         |   73 ++--
 net/sunrpc/svc_xprt.c                                |   11 
 net/wireless/reg.c                                   |    5 
 net/xfrm/xfrm_algo.c                                 |    4 
 security/apparmor/domain.c                           |    2 
 security/apparmor/lsm.c                              |    2 
 sound/core/pcm_compat.c                              |    2 
 sound/core/timer.c                                   |    2 
 sound/pci/ac97/ac97_patch.c                          |    1 
 sound/pci/hda/patch_realtek.c                        |    7 
 sound/pci/oxygen/xonar_pcm179x.c                     |    5 
 sound/soc/codecs/sgtl5000.c                          |  128 +------
 sound/soc/davinci/davinci-vcif.c                     |    9 
 sound/soc/samsung/jive_wm8750.c                      |    2 
 sound/soc/soc-core.c                                 |    1 
 sound/soc/tegra/tegra_pcm.c                          |    9 
 sound/soc/tegra/tegra_wm8903.c                       |   15 
 sound/usb/caiaq/audio.c                              |   37 +-
 sound/usb/caiaq/device.h                             |    1 
 sound/usb/caiaq/input.c                              |    2 
 sound/usb/endpoint.c                                 |    2 
 sound/usb/mixer.c                                    |   28 -
 sound/usb/mixer.h                                    |    1 
 tools/perf/Makefile                                  |    5 
 tools/perf/util/config.c                             |    7 
 tools/perf/util/header.c                             |    5 
 tools/perf/util/session.c                            |   30 +
 tools/perf/util/session.h                            |    1 
 331 files changed, 3318 insertions(+), 1739 deletions(-)

