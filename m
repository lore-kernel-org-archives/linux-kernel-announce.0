From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.33.2 released
Date: Fri, 2 Apr 2010 02:48:30 GMT
Message-ID: <201004020248.o322mUgc012785@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.33.2 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.33.2.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.33.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                95719            372430
Full source                       66206979         395110400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/tmpfs.txt          |    6 
 Documentation/kernel-parameters.txt          |    7 
 Documentation/laptops/thinkpad-acpi.txt      |    4 
 Makefile                                     |    2 
 arch/Kconfig                                 |    2 
 arch/arm/boot/compressed/head.S              |   50 -
 arch/arm/boot/compressed/vmlinux.lds.in      |    3 
 arch/powerpc/kernel/perf_event.c             |    8 
 arch/sh/boot/compressed/misc.c               |    2 
 arch/sparc/kernel/perf_event.c               |    4 
 arch/sparc/prom/p1275.c                      |   12 
 arch/x86/ia32/ia32_aout.c                    |    1 
 arch/x86/include/asm/fixmap.h                |    6 
 arch/x86/include/asm/io_apic.h               |    1 
 arch/x86/include/asm/msr-index.h             |    2 
 arch/x86/include/asm/pgalloc.h               |    5 
 arch/x86/include/asm/uv/uv_hub.h             |    3 
 arch/x86/include/asm/vmx.h                   |    1 
 arch/x86/kernel/acpi/boot.c                  |    9 
 arch/x86/kernel/apic/io_apic.c               |   68 +-
 arch/x86/kernel/cpu/intel.c                  |    3 
 arch/x86/kernel/cpu/perf_event.c             |    9 
 arch/x86/kernel/dumpstack_64.c               |   10 
 arch/x86/kernel/hw_breakpoint.c              |    5 
 arch/x86/kernel/process.c                    |   32 
 arch/x86/kernel/reboot.c                     |    8 
 arch/x86/kvm/emulate.c                       |   55 +
 arch/x86/kvm/vmx.c                           |   10 
 arch/x86/kvm/x86.c                           |    1 
 arch/x86/mm/pageattr.c                       |   25 
 arch/x86/mm/pgtable.c                        |   31 
 arch/x86/oprofile/nmi_int.c                  |   17 
 arch/x86/oprofile/op_model_amd.c             |   42 -
 arch/x86/oprofile/op_model_p4.c              |    6 
 arch/x86/oprofile/op_model_ppro.c            |    6 
 arch/x86/pci/mmconfig-shared.c               |   17 
 arch/x86/xen/enlighten.c                     |    7 
 arch/x86/xen/mmu.c                           |   11 
 drivers/ata/ahci.c                           |   40 -
 drivers/ata/pata_hpt3x2n.c                   |   20 
 drivers/ata/pata_via.c                       |    4 
 drivers/base/core.c                          |   13 
 drivers/base/devtmpfs.c                      |   13 
 drivers/char/tty_buffer.c                    |    6 
 drivers/char/tty_ldisc.c                     |   50 -
 drivers/clocksource/sh_cmt.c                 |   32 
 drivers/clocksource/sh_mtu2.c                |    6 
 drivers/clocksource/sh_tmu.c                 |    6 
 drivers/edac/edac_mce_amd.c                  |    7 
 drivers/gpio/cs5535-gpio.c                   |    4 
 drivers/gpio/wm831x-gpio.c                   |   22 
 drivers/gpu/drm/i915/i915_gem.c              |   21 
 drivers/gpu/drm/i915/intel_lvds.c            |    7 
 drivers/gpu/drm/i915/intel_overlay.c         |   13 
 drivers/gpu/drm/i915/intel_sdvo.c            |   23 
 drivers/gpu/drm/nouveau/nouveau_connector.c  |    6 
 drivers/gpu/drm/radeon/atom.c                |    4 
 drivers/gpu/drm/ttm/ttm_tt.c                 |   18 
 drivers/hid/hid-core.c                       |    2 
 drivers/hid/hid-ids.h                        |    4 
 drivers/hid/usbhid/hid-core.c                |   28 
 drivers/hid/usbhid/usbhid.h                  |    2 
 drivers/hwmon/ams/ams-core.c                 |   11 
 drivers/hwmon/ams/ams-i2c.c                  |    2 
 drivers/hwmon/ams/ams-pmu.c                  |    2 
 drivers/hwmon/ams/ams.h                      |    1 
 drivers/hwmon/coretemp.c                     |    2 
 drivers/hwmon/fschmd.c                       |   15 
 drivers/hwmon/tmp401.c                       |    7 
 drivers/hwmon/tmp421.c                       |   24 
 drivers/i2c/busses/i2c-i801.c                |    6 
 drivers/i2c/busses/i2c-powermac.c            |   25 
 drivers/ide/icside.c                         |   64 +
 drivers/ide/ide-probe.c                      |   12 
 drivers/ide/pdc202xx_old.c                   |    4 
 drivers/input/mouse/alps.c                   |    2 
 drivers/input/serio/i8042-x86ia64io.h        |    7 
 drivers/isdn/gigaset/capi.c                  |   46 -
 drivers/isdn/gigaset/common.c                |    6 
 drivers/isdn/gigaset/dummyll.c               |   14 
 drivers/isdn/gigaset/ev-layer.c              |   12 
 drivers/isdn/gigaset/gigaset.h               |    6 
 drivers/isdn/gigaset/i4l.c                   |   28 
 drivers/isdn/gigaset/interface.c             |    1 
 drivers/leds/leds-gpio.c                     |    3 
 drivers/macintosh/therm_adt746x.c            |   34 -
 drivers/md/dm-ioctl.c                        |    9 
 drivers/md/dm.c                              |    4 
 drivers/media/dvb/dvb-core/dvb_net.c         |    1 
 drivers/media/video/em28xx/em28xx-dvb.c      |    1 
 drivers/media/video/gspca/mr97310a.c         |    6 
 drivers/media/video/soc_mediabus.c           |    3 
 drivers/mmc/host/s3cmci.c                    |    4 
 drivers/net/bonding/bond_main.c              |    2 
 drivers/net/can/bfin_can.c                   |    3 
 drivers/net/e100.c                           |    2 
 drivers/net/jme.c                            |   35 +
 drivers/net/pppol2tp.c                       |    6 
 drivers/net/r8169.c                          |   29 
 drivers/net/tg3.c                            |    2 
 drivers/net/wireless/airo.c                  |   34 -
 drivers/net/wireless/ath/ath5k/ath5k.h       |    3 
 drivers/net/wireless/ath/ath5k/base.c        |   48 +
 drivers/net/wireless/ath/ath5k/phy.c         |   37 -
 drivers/net/wireless/ath/ath5k/qcu.c         |    5 
 drivers/net/wireless/ath/ath5k/reg.h         |    1 
 drivers/net/wireless/ath/ath5k/reset.c       |    5 
 drivers/net/wireless/ath/ath9k/ath9k.h       |    1 
 drivers/net/wireless/ath/ath9k/beacon.c      |   16 
 drivers/net/wireless/ath/ath9k/hw.c          |   17 
 drivers/net/wireless/ath/ath9k/hw.h          |    1 
 drivers/net/wireless/ath/ath9k/main.c        |   35 -
 drivers/net/wireless/ath/ath9k/pci.c         |    1 
 drivers/net/wireless/ath/ath9k/phy.h         |    3 
 drivers/net/wireless/ath/ath9k/rc.c          |   21 
 drivers/net/wireless/ath/ath9k/xmit.c        |   32 
 drivers/net/wireless/b43/main.c              |   14 
 drivers/net/wireless/b43legacy/main.c        |    2 
 drivers/net/wireless/iwlwifi/iwl-3945.c      |    8 
 drivers/net/wireless/iwlwifi/iwl-core.c      |   12 
 drivers/net/wireless/iwlwifi/iwl-helpers.h   |    7 
 drivers/net/wireless/iwlwifi/iwl-rx.c        |   21 
 drivers/net/wireless/iwlwifi/iwl-tx.c        |   25 
 drivers/net/wireless/iwlwifi/iwl3945-base.c  |   16 
 drivers/net/wireless/p54/p54pci.c            |   18 
 drivers/net/wireless/p54/p54usb.c            |    1 
 drivers/net/wireless/wl12xx/wl1251_debugfs.c |    3 
 drivers/pci/hotplug/ibmphp_ebda.c            |   13 
 drivers/pci/pci.c                            |   43 -
 drivers/pci/quirks.c                         |    1 
 drivers/platform/x86/Kconfig                 |   10 
 drivers/platform/x86/classmate-laptop.c      |   31 
 drivers/platform/x86/eeepc-laptop.c          |    3 
 drivers/platform/x86/thinkpad_acpi.c         |  116 ++-
 drivers/rtc/class.c                          |    1 
 drivers/rtc/rtc-coh901331.c                  |    5 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c         |   17 
 drivers/scsi/qla1280.c                       |    4 
 drivers/scsi/qlogicpti.c                     |    2 
 drivers/scsi/scsi_transport_fc.c             |   24 
 drivers/scsi/ses.c                           |    4 
 drivers/serial/imx.c                         |    6 
 drivers/staging/Kconfig                      |    2 
 drivers/staging/Makefile                     |    1 
 drivers/staging/hv/vmbus_drv.c               |   30 
 drivers/staging/mimio/Kconfig                |   10 
 drivers/staging/mimio/Makefile               |    1 
 drivers/staging/mimio/mimio.c                |  914 ---------------------------
 drivers/staging/pohmelfs/inode.c             |   20 
 drivers/staging/pohmelfs/netfs.h             |    3 
 drivers/staging/wlan-ng/Kconfig              |    1 
 drivers/usb/core/devio.c                     |   17 
 drivers/usb/core/driver.c                    |    4 
 drivers/usb/core/hcd.c                       |    2 
 drivers/usb/core/hcd.h                       |    2 
 drivers/usb/core/hub.c                       |   12 
 drivers/usb/core/usb.c                       |    3 
 drivers/usb/gadget/f_mass_storage.c          |    1 
 drivers/usb/host/ehci-hcd.c                  |    2 
 drivers/usb/host/ehci-sched.c                |   28 
 drivers/usb/host/ehci.h                      |    5 
 drivers/usb/host/ohci-pnx4008.c              |    6 
 drivers/usb/host/r8a66597-hcd.c              |   16 
 drivers/usb/host/uhci-hcd.c                  |    1 
 drivers/usb/host/xhci-ext-caps.h             |    7 
 drivers/usb/host/xhci-hcd.c                  |    1 
 drivers/usb/serial/cp210x.c                  |    3 
 drivers/usb/serial/ftdi_sio.c                |    6 
 drivers/usb/serial/ftdi_sio_ids.h            |   22 
 drivers/usb/serial/option.c                  |    7 
 drivers/usb/serial/qcserial.c                |   29 
 drivers/usb/serial/sierra.c                  |   19 
 drivers/usb/storage/unusual_devs.h           |   88 ++
 drivers/video/Kconfig                        |   12 
 drivers/video/Makefile                       |    1 
 drivers/video/sunxvr1000.c                   |  228 ++++++
 drivers/video/sunxvr500.c                    |    1 
 drivers/virtio/virtio_pci.c                  |    3 
 fs/exec.c                                    |    3 
 fs/file_table.c                              |    2 
 fs/gfs2/file.c                               |    2 
 fs/nfs/delegation.h                          |    6 
 fs/nfs/dir.c                                 |    2 
 fs/nfs/dns_resolve.c                         |   18 
 fs/nfs/file.c                                |    3 
 fs/nfs/inode.c                               |    2 
 fs/nfs/pagelist.c                            |   23 
 fs/nfsd/nfs4state.c                          |    2 
 fs/nilfs2/segment.c                          |    3 
 fs/ocfs2/aops.c                              |    5 
 fs/partitions/msdos.c                        |   85 +-
 fs/quota/dquot.c                             |   45 +
 fs/sysfs/dir.c                               |   82 +-
 include/linux/decompress/mm.h                |   14 
 include/linux/fs.h                           |    3 
 include/linux/if_tunnel.h                    |    1 
 include/linux/irq.h                          |    2 
 include/linux/kfifo.h                        |    2 
 include/linux/kvm.h                          |    1 
 include/linux/netdevice.h                    |   10 
 include/linux/netfilter/nfnetlink.h          |    2 
 include/linux/netlink.h                      |    2 
 include/linux/perf_event.h                   |   12 
 include/linux/quotaops.h                     |   11 
 include/linux/sched.h                        |    5 
 include/linux/skbuff.h                       |   19 
 include/linux/syscalls.h                     |    6 
 include/linux/tty.h                          |   11 
 include/net/mac80211.h                       |    7 
 include/net/netlink.h                        |    6 
 include/net/sock.h                           |   17 
 include/net/xfrm.h                           |    3 
 include/trace/ftrace.h                       |    3 
 init/main.c                                  |    2 
 ipc/mqueue.c                                 |    3 
 kernel/cpuset.c                              |   20 
 kernel/hw_breakpoint.c                       |    1 
 kernel/irq/chip.c                            |   83 +-
 kernel/irq/manage.c                          |   18 
 kernel/kthread.c                             |    2 
 kernel/perf_event.c                          |  168 +++-
 kernel/power/snapshot.c                      |    2 
 kernel/sched.c                               |   97 +-
 kernel/softlockup.c                          |    4 
 kernel/time/clocksource.c                    |    4 
 kernel/trace/ftrace.c                        |    2 
 kernel/trace/ring_buffer.c                   |   12 
 kernel/trace/trace.c                         |   25 
 kernel/trace/trace.h                         |    3 
 mm/fadvise.c                                 |   10 
 mm/mempolicy.c                               |   40 -
 mm/readahead.c                               |    6 
 mm/slab.c                                    |    6 
 net/8021q/vlan_core.c                        |    4 
 net/bluetooth/l2cap.c                        |   15 
 net/bluetooth/rfcomm/core.c                  |   13 
 net/bluetooth/rfcomm/sock.c                  |   11 
 net/bluetooth/sco.c                          |   11 
 net/core/dev.c                               |    8 
 net/core/scm.c                               |    2 
 net/core/sock.c                              |   16 
 net/dccp/minisocks.c                         |    2 
 net/ipv4/ip_gre.c                            |    4 
 net/ipv4/route.c                             |   33 
 net/ipv4/tcp.c                               |   65 +
 net/ipv4/tcp_input.c                         |    3 
 net/ipv4/tcp_ipv4.c                          |    6 
 net/ipv4/tcp_minisocks.c                     |    2 
 net/ipv4/tcp_output.c                        |   18 
 net/ipv4/udp.c                               |    6 
 net/ipv4/xfrm4_policy.c                      |    5 
 net/ipv6/route.c                             |   13 
 net/ipv6/tcp_ipv6.c                          |    6 
 net/ipv6/udp.c                               |   28 
 net/ipv6/xfrm6_policy.c                      |    3 
 net/llc/llc_c_ac.c                           |    2 
 net/llc/llc_conn.c                           |    3 
 net/mac80211/agg-tx.c                        |    3 
 net/mac80211/ieee80211_i.h                   |    1 
 net/mac80211/mlme.c                          |   23 
 net/mac80211/rate.h                          |    5 
 net/mac80211/rx.c                            |    8 
 net/mac80211/status.c                        |   17 
 net/mac80211/tx.c                            |    5 
 net/netfilter/nf_conntrack_netlink.c         |    3 
 net/netfilter/nfnetlink.c                    |    4 
 net/netfilter/xt_recent.c                    |    4 
 net/netlink/af_netlink.c                     |   17 
 net/sctp/input.c                             |   42 -
 net/sctp/socket.c                            |    3 
 net/sunrpc/auth_gss/auth_gss.c               |    5 
 net/sunrpc/rpc_pipe.c                        |    2 
 net/sunrpc/svc_xprt.c                        |   18 
 net/sunrpc/svcsock.c                         |    1 
 net/sunrpc/xprtsock.c                        |    5 
 net/tipc/socket.c                            |    6 
 net/x25/x25_dev.c                            |    2 
 net/xfrm/xfrm_policy.c                       |    7 
 scripts/get_maintainer.pl                    |    4 
 security/integrity/ima/ima_iint.c            |    3 
 security/selinux/ss/ebitmap.c                |    2 
 sound/core/pcm_native.c                      |    8 
 sound/pci/ac97/ac97_patch.c                  |    2 
 sound/pci/cmipci.c                           |   14 
 sound/pci/hda/hda_intel.c                    |   13 
 sound/pci/hda/patch_analog.c                 |    2 
 sound/pci/hda/patch_conexant.c               |   15 
 sound/pci/hda/patch_realtek.c                |   10 
 sound/pci/via82xx.c                          |    6 
 sound/soc/codecs/ak4104.c                    |    6 
 sound/usb/usbaudio.c                         |   32 
 sound/usb/usbmidi.c                          |   24 
 sound/usb/usbquirks.h                        |   27 
 tools/perf/Documentation/Makefile            |    4 
 tools/perf/Makefile                          |    4 
 tools/perf/builtin-annotate.c                |   63 -
 tools/perf/builtin-probe.c                   |    1 
 tools/perf/util/probe-finder.c               |    3 
 tools/perf/util/symbol.c                     |    4 
 tools/perf/util/symbol.h                     |    2 
 300 files changed, 2971 insertions(+), 2124 deletions(-)

