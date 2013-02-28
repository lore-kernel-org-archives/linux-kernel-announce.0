From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.8.1 released
Date: Thu, 28 Feb 2013 14:00:17 +0000 (UTC)
Message-ID: <20130228140017.EBE00814@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 3.8.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.8.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.8.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                57380            220563
Full source                       84611595         505671680

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                               |    2 
 arch/arm/boot/dts/at91sam9n12.dtsi                     |    8 
 arch/arm/boot/dts/at91sam9x5.dtsi                      |    6 
 arch/arm/kernel/sched_clock.c                          |    4 
 arch/arm/mach-imx/clk-imx25.c                          |    3 
 arch/arm/mach-integrator/integrator_ap.c               |    2 
 arch/arm/mach-pxa/include/mach/smemc.h                 |    1 
 arch/arm/mach-pxa/smemc.c                              |   15 +
 arch/arm/mach-s3c24xx/include/mach/debug-macro.S       |   12 -
 arch/arm/mach-s3c24xx/include/mach/entry-macro.S       |    4 
 arch/arm/mach-s3c24xx/pm-h1940.S                       |    2 
 arch/arm/mach-s3c24xx/sleep-s3c2410.S                  |   12 -
 arch/arm/mach-s3c24xx/sleep-s3c2412.S                  |   12 -
 arch/arm/mach-versatile/core.c                         |   15 +
 arch/arm/mach-versatile/pci.c                          |   11 -
 arch/arm/plat-samsung/include/plat/debug-macro.S       |   18 -
 arch/arm64/kernel/signal32.c                           |    4 
 arch/parisc/include/asm/pgtable.h                      |   13 +
 arch/parisc/kernel/cache.c                             |   18 +
 arch/powerpc/Kconfig                                   |    4 
 arch/powerpc/include/asm/eeh.h                         |    3 
 arch/powerpc/kernel/machine_kexec_64.c                 |    5 
 arch/powerpc/kernel/of_platform.c                      |    3 
 arch/powerpc/kernel/pci-common.c                       |    7 
 arch/powerpc/lib/Makefile                              |    4 
 arch/powerpc/platforms/pseries/eeh.c                   |   24 ++
 arch/s390/kvm/kvm-s390.c                               |    8 
 arch/sparc/include/asm/hugetlb.h                       |    1 
 arch/sparc/include/asm/page_64.h                       |    4 
 arch/sparc/include/asm/tsb.h                           |   28 ++
 arch/sparc/kernel/tsb.S                                |   39 +++-
 arch/sparc/mm/fault_64.c                               |    9 
 arch/sparc/mm/init_64.c                                |   62 ++++--
 arch/sparc/mm/tlb.c                                    |   11 -
 arch/sparc/mm/tsb.c                                    |    2 
 arch/x86/Kconfig                                       |    4 
 arch/x86/include/asm/mmzone_32.h                       |    6 
 arch/x86/kernel/cpu/mshyperv.c                         |    3 
 arch/x86/mm/numa.c                                     |   32 +--
 arch/x86/mm/numa_32.c                                  |  161 -----------------
 arch/x86/mm/numa_internal.h                            |    6 
 arch/x86/power/hibernate_32.c                          |    2 
 arch/x86/xen/spinlock.c                                |    1 
 drivers/base/bus.c                                     |    4 
 drivers/base/dd.c                                      |    2 
 drivers/dca/dca-core.c                                 |    5 
 drivers/dma/sh/shdma.c                                 |    2 
 drivers/gpio/gpio-em.c                                 |    3 
 drivers/gpu/drm/drm_crtc.c                             |    3 
 drivers/gpu/drm/drm_edid.c                             |   12 -
 drivers/gpu/drm/drm_usb.c                              |    2 
 drivers/gpu/drm/i915/i915_debugfs.c                    |   12 -
 drivers/gpu/drm/i915/i915_drv.h                        |    2 
 drivers/gpu/drm/i915/i915_gem.c                        |    5 
 drivers/gpu/drm/i915/i915_reg.h                        |    9 
 drivers/gpu/drm/i915/intel_crt.c                       |   14 -
 drivers/gpu/drm/i915/intel_ddi.c                       |   25 +-
 drivers/gpu/drm/i915/intel_display.c                   |   68 ++++---
 drivers/gpu/drm/i915/intel_drv.h                       |   11 -
 drivers/gpu/drm/i915/intel_panel.c                     |   13 -
 drivers/gpu/drm/i915/intel_sprite.c                    |    8 
 drivers/gpu/drm/nouveau/core/include/subdev/bios/dcb.h |    3 
 drivers/gpu/drm/nouveau/core/subdev/bios/dcb.c         |   32 ++-
 drivers/gpu/drm/nouveau/core/subdev/devinit/nv50.c     |   14 -
 drivers/gpu/drm/radeon/atombios_crtc.c                 |    6 
 drivers/gpu/drm/radeon/evergreen.c                     |   13 +
 drivers/gpu/drm/radeon/r600_hdmi.c                     |    1 
 drivers/gpu/drm/radeon/radeon_atpx_handler.c           |   73 +++++++
 drivers/gpu/drm/radeon/radeon_pm.c                     |    2 
 drivers/gpu/drm/udl/udl_drv.h                          |    2 
 drivers/gpu/drm/udl/udl_fb.c                           |   48 ++++-
 drivers/gpu/vga/vga_switcheroo.c                       |    3 
 drivers/hid/hid-wiimote-ext.c                          |    8 
 drivers/iommu/intel-iommu.c                            |    8 
 drivers/mmc/core/mmc.c                                 |    2 
 drivers/mmc/host/sdhci-esdhc-imx.c                     |   19 +-
 drivers/net/ethernet/mellanox/mlx4/en_netdev.c         |    4 
 drivers/net/ppp/ppp_generic.c                          |    8 
 drivers/net/usb/cdc_ncm.c                              |   11 -
 drivers/net/wireless/b43/dma.h                         |    2 
 drivers/net/wireless/p54/p54usb.c                      |    2 
 drivers/net/wireless/rtlwifi/rtl8192cu/sw.c            |    9 
 drivers/net/wireless/rtlwifi/usb.c                     |   49 +++--
 drivers/net/wireless/rtlwifi/usb.h                     |    3 
 drivers/net/xen-netback/interface.c                    |    3 
 drivers/net/xen-netback/netback.c                      |    8 
 drivers/pci/access.c                                   |    2 
 drivers/pcmcia/vrc4171_card.c                          |    1 
 drivers/pps/clients/pps-ldisc.c                        |   10 -
 drivers/pps/pps.c                                      |   47 ++++
 drivers/s390/kvm/kvm_virtio.c                          |   38 +++-
 drivers/staging/comedi/comedi_fops.c                   |    5 
 drivers/staging/comedi/drivers/ni_labpc.c              |   34 +--
 drivers/staging/vt6656/dpc.c                           |    4 
 drivers/staging/vt6656/rxtx.c                          |    2 
 drivers/staging/vt6656/usbpipe.c                       |   28 ++
 drivers/staging/zram/zram_drv.c                        |    9 
 drivers/staging/zsmalloc/zsmalloc-main.c               |   10 -
 drivers/tty/n_gsm.c                                    |   42 ++++
 drivers/tty/serial/imx.c                               |   11 -
 drivers/tty/tty_ioctl.c                                |    4 
 drivers/tty/vt/vt.c                                    |  138 ++++++++++----
 drivers/usb/host/ehci-omap.c                           |   10 -
 drivers/usb/musb/am35x.c                               |    2 
 drivers/usb/musb/blackfin.c                            |    2 
 drivers/usb/musb/da8xx.c                               |    7 
 drivers/usb/musb/davinci.c                             |    7 
 drivers/usb/musb/musb_core.c                           |    1 
 drivers/usb/musb/musb_dsps.c                           |    2 
 drivers/usb/musb/omap2430.c                            |    2 
 drivers/usb/musb/tusb6010.c                            |    2 
 drivers/usb/musb/ux500.c                               |   12 -
 drivers/usb/serial/ftdi_sio.c                          |   20 --
 drivers/usb/serial/mct_u232.c                          |   22 --
 drivers/usb/serial/option.c                            |   16 +
 drivers/usb/serial/quatech2.c                          |   18 -
 drivers/usb/serial/sierra.c                            |    8 
 drivers/usb/serial/ssu100.c                            |   19 --
 drivers/usb/serial/usb-serial.c                        |   14 +
 drivers/usb/serial/usb_wwan.c                          |    8 
 drivers/usb/storage/initializers.c                     |    4 
 drivers/usb/storage/unusual_cypress.h                  |    2 
 drivers/video/backlight/adp8860_bl.c                   |    2 
 drivers/video/backlight/adp8870_bl.c                   |    2 
 drivers/video/console/fbcon.c                          |   58 +++++-
 drivers/video/console/vgacon.c                         |   22 +-
 drivers/video/fbmem.c                                  |   11 -
 drivers/video/fbsysfs.c                                |    3 
 drivers/video/fsl-diu-fb.c                             |   64 +++---
 drivers/xen/evtchn.c                                   |   10 +
 fs/block_dev.c                                         |    1 
 fs/gfs2/bmap.c                                         |    4 
 fs/lockd/clntproc.c                                    |    3 
 fs/namespace.c                                         |   29 +--
 fs/nfs/blocklayout/blocklayout.c                       |    1 
 fs/nfs/callback_proc.c                                 |   61 ------
 fs/nfs/nfs4proc.c                                      |   35 ++-
 fs/nfs/objlayout/objio_osd.c                           |    1 
 fs/nfs/pnfs.c                                          |  150 +++++++++++++--
 fs/nfs/pnfs.h                                          |    7 
 fs/notify/inotify/inotify_user.c                       |    4 
 fs/ocfs2/dlmglue.c                                     |    5 
 include/linux/console.h                                |    2 
 include/linux/if_vlan.h                                |    6 
 include/linux/pps_kernel.h                             |   17 +
 include/linux/vt_kern.h                                |    3 
 include/net/dst.h                                      |    8 
 include/net/icmp.h                                     |    1 
 include/net/inet6_hashtables.h                         |    8 
 include/net/inet_sock.h                                |    1 
 include/net/ip6_fib.h                                  |   39 +---
 include/net/ipv6.h                                     |   12 +
 include/net/sock.h                                     |    2 
 include/uapi/linux/serial_core.h                       |    2 
 include/uapi/linux/usb/audio.h                         |    6 
 kernel/futex.c                                         |    2 
 kernel/futex_compat.c                                  |    2 
 kernel/hrtimer.c                                       |   36 +--
 kernel/irq/spurious.c                                  |    7 
 kernel/posix-cpu-timers.c                              |   23 ++
 kernel/timeconst.pl                                    |    6 
 kernel/workqueue.c                                     |    2 
 mm/fadvise.c                                           |   18 +
 mm/mmu_notifier.c                                      |   82 ++++----
 mm/shmem.c                                             |   10 -
 net/core/dst.c                                         |    1 
 net/core/sock_diag.c                                   |    3 
 net/ipv4/af_inet.c                                     |   11 -
 net/ipv4/icmp.c                                        |   23 ++
 net/ipv4/ping.c                                        |    4 
 net/ipv4/tcp_output.c                                  |   18 +
 net/ipv6/route.c                                       |    8 
 net/ipv6/xfrm6_policy.c                                |    2 
 net/mac80211/mlme.c                                    |    4 
 security/keys/process_keys.c                           |    2 
 sound/drivers/aloop.c                                  |    5 
 sound/pci/ali5451/ali5451.c                            |    2 
 sound/pci/hda/hda_codec.c                              |   43 ++--
 sound/pci/hda/hda_codec.h                              |    3 
 sound/pci/hda/hda_intel.c                              |    2 
 sound/pci/hda/patch_hdmi.c                             |   18 +
 sound/pci/hda/patch_realtek.c                          |    1 
 sound/pci/rme32.c                                      |    2 
 sound/soc/codecs/arizona.c                             |   11 +
 sound/soc/codecs/wm2200.c                              |    4 
 sound/usb/quirks-table.h                               |    2 
 sound/usb/quirks.c                                     |    2 
 tools/perf/Makefile                                    |    4 
 tools/perf/ui/hist.c                                   |    6 
 tools/perf/util/parse-events.y                         |    1 
 tools/perf/util/pmu.y                                  |    1 
 191 files changed, 1647 insertions(+), 991 deletions(-)

