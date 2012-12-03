From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.6.9 released
Date: Mon,  3 Dec 2012 19:50:22 +0000 (UTC)
Message-ID: <20121203195022.916E1E89@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 3.6.9 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.6.9.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.6.9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               207593            909721
Full source                       82318549         489297920

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/cgroups/memory.txt                                    |    4 
 Documentation/devicetree/bindings/arm/atmel-at91.txt                |    2 
 Documentation/devicetree/bindings/pinctrl/nvidia,tegra20-pinmux.txt |    2 
 Documentation/devicetree/bindings/pinctrl/nvidia,tegra30-pinmux.txt |    2 
 Documentation/dvb/get_dvb_firmware                                  |    2 
 Documentation/hwmon/coretemp                                        |    1 
 Makefile                                                            |    2 
 arch/alpha/kernel/process.c                                         |    3 
 arch/arm/Kconfig                                                    |   10 
 arch/arm/boot/dts/tegra30.dtsi                                      |    4 
 arch/arm/include/asm/syscall.h                                      |    1 
 arch/arm/include/asm/vfpmacros.h                                    |    4 
 arch/arm/kernel/smp.c                                               |   14 
 arch/arm/mach-at91/at91rm9200_devices.c                             |    2 
 arch/arm/mach-at91/at91sam9260_devices.c                            |    2 
 arch/arm/mach-at91/at91sam9261_devices.c                            |    2 
 arch/arm/mach-at91/at91sam9263_devices.c                            |    2 
 arch/arm/mach-at91/at91sam9g45_devices.c                            |   12 
 arch/arm/mach-at91/at91sam9rl_devices.c                             |    2 
 arch/arm/mach-at91/board-neocore926.c                               |    2 
 arch/arm/mach-at91/board-sam9261ek.c                                |    2 
 arch/arm/mach-at91/board-sam9263ek.c                                |    2 
 arch/arm/mach-at91/generic.h                                        |    3 
 arch/arm/mach-at91/irq.c                                            |    9 
 arch/arm/mach-at91/setup.c                                          |    4 
 arch/arm/mach-exynos/common.c                                       |    5 
 arch/arm/mach-imx/ehci-imx25.c                                      |    2 
 arch/arm/mach-imx/ehci-imx35.c                                      |    2 
 arch/arm/mach-s3c24xx/s3c2416.c                                     |    2 
 arch/arm/mach-s3c24xx/s3c2443.c                                     |    4 
 arch/arm/mach-s5p64x0/common.c                                      |    3 
 arch/arm/mach-s5pc100/common.c                                      |    3 
 arch/arm/mach-s5pv210/common.c                                      |    3 
 arch/arm/mm/cache-v7.S                                              |    3 
 arch/arm/plat-omap/counter_32k.c                                    |   21 
 arch/arm/plat-samsung/include/plat/spi-core.h                       |   30 +
 arch/cris/kernel/process.c                                          |    3 
 arch/frv/kernel/process.c                                           |    3 
 arch/h8300/kernel/process.c                                         |    3 
 arch/ia64/kernel/process.c                                          |    3 
 arch/m32r/kernel/process.c                                          |    3 
 arch/m68k/include/asm/signal.h                                      |    6 
 arch/m68k/kernel/process.c                                          |    3 
 arch/mips/Makefile                                                  |    2 
 arch/mips/ath79/clock.c                                             |  109 ++-
 arch/mips/include/asm/mach-ath79/ar71xx_regs.h                      |   23 
 arch/mips/kernel/Makefile                                           |    2 
 arch/mips/kernel/kgdb.c                                             |    9 
 arch/mn10300/Makefile                                               |    2 
 arch/mn10300/kernel/process.c                                       |    3 
 arch/parisc/kernel/process.c                                        |    3 
 arch/parisc/kernel/signal32.c                                       |    6 
 arch/parisc/kernel/sys_parisc.c                                     |    2 
 arch/powerpc/include/asm/pci-bridge.h                               |    8 
 arch/powerpc/kernel/iommu.c                                         |    5 
 arch/powerpc/lib/memcpy_power7.S                                    |    4 
 arch/powerpc/platforms/pseries/eeh.c                                |    2 
 arch/powerpc/platforms/pseries/eeh_driver.c                         |   95 ++-
 arch/powerpc/sysdev/dart_iommu.c                                    |   12 
 arch/s390/boot/compressed/vmlinux.lds.S                             |    2 
 arch/s390/include/asm/compat.h                                      |    2 
 arch/s390/include/asm/ptrace.h                                      |    4 
 arch/s390/kernel/compat_signal.c                                    |   14 
 arch/s390/kernel/signal.c                                           |   14 
 arch/s390/kernel/vmlinux.lds.S                                      |    2 
 arch/s390/mm/gup.c                                                  |    2 
 arch/score/kernel/process.c                                         |    4 
 arch/sparc/kernel/perf_event.c                                      |   15 
 arch/sparc/kernel/signal_64.c                                       |    4 
 arch/sparc/kernel/syscalls.S                                        |   32 -
 arch/tile/Makefile                                                  |    4 
 arch/x86/Makefile                                                   |    2 
 arch/x86/boot/compressed/Makefile                                   |    3 
 arch/x86/boot/compressed/eboot.c                                    |    2 
 arch/x86/include/asm/efi.h                                          |    1 
 arch/x86/include/asm/pgtable.h                                      |   11 
 arch/x86/include/asm/ptrace.h                                       |   15 
 arch/x86/kernel/cpu/mcheck/mce_amd.c                                |   10 
 arch/x86/kernel/e820.c                                              |    3 
 arch/x86/kernel/entry_32.S                                          |    8 
 arch/x86/kernel/entry_64.S                                          |    2 
 arch/x86/kernel/microcode_amd.c                                     |    4 
 arch/x86/kernel/ptrace.c                                            |   30 +
 arch/x86/kernel/setup.c                                             |   30 -
 arch/x86/kvm/cpuid.h                                                |    3 
 arch/x86/kvm/vmx.c                                                  |   11 
 arch/x86/kvm/x86.c                                                  |    3 
 arch/x86/mm/init.c                                                  |   58 +
 arch/x86/mm/init_64.c                                               |    7 
 arch/x86/oprofile/nmi_int.c                                         |    2 
 arch/x86/platform/efi/efi.c                                         |   44 -
 arch/x86/xen/enlighten.c                                            |   18 
 arch/x86/xen/mmu.c                                                  |   21 
 arch/xtensa/include/asm/unistd.h                                    |   91 ++-
 arch/xtensa/kernel/process.c                                        |    3 
 block/blk-cgroup.c                                                  |    7 
 block/blk-core.c                                                    |    2 
 block/blk-exec.c                                                    |    8 
 crypto/cryptd.c                                                     |   11 
 drivers/acpi/bus.c                                                  |    8 
 drivers/acpi/ec.c                                                   |   30 -
 drivers/acpi/video.c                                                |   11 
 drivers/ata/libata-acpi.c                                           |   11 
 drivers/ata/sata_svw.c                                              |   35 +
 drivers/base/power/main.c                                           |    2 
 drivers/base/power/qos.c                                            |    2 
 drivers/bcma/main.c                                                 |    5 
 drivers/block/floppy.c                                              |   27 
 drivers/char/tpm/tpm.c                                              |   21 
 drivers/char/ttyprintk.c                                            |    2 
 drivers/cpufreq/powernow-k8.c                                       |    9 
 drivers/dma/dmaengine.c                                             |    2 
 drivers/dma/imx-dma.c                                               |    4 
 drivers/dma/sirf-dma.c                                              |    4 
 drivers/edac/amd64_edac.c                                           |   11 
 drivers/extcon/extcon_class.c                                       |    7 
 drivers/firewire/core-cdev.c                                        |    4 
 drivers/firmware/efivars.c                                          |   17 
 drivers/gpio/gpio-timberdale.c                                      |    4 
 drivers/gpio/gpiolib.c                                              |   10 
 drivers/gpu/drm/drm_crtc.c                                          |    8 
 drivers/gpu/drm/drm_fops.c                                          |   44 +
 drivers/gpu/drm/i915/i915_dma.c                                     |    3 
 drivers/gpu/drm/i915/i915_gem.c                                     |    1 
 drivers/gpu/drm/i915/i915_gem_execbuffer.c                          |    1 
 drivers/gpu/drm/i915/i915_irq.c                                     |   16 
 drivers/gpu/drm/i915/i915_reg.h                                     |    9 
 drivers/gpu/drm/i915/intel_display.c                                |   30 -
 drivers/gpu/drm/i915/intel_hdmi.c                                   |   15 
 drivers/gpu/drm/i915/intel_overlay.c                                |   14 
 drivers/gpu/drm/i915/intel_pm.c                                     |    9 
 drivers/gpu/drm/i915/intel_sdvo.c                                   |   84 ++
 drivers/gpu/drm/i915/intel_sdvo_regs.h                              |    2 
 drivers/gpu/drm/nouveau/nouveau_drv.c                               |   20 
 drivers/gpu/drm/nouveau/nouveau_state.c                             |    4 
 drivers/gpu/drm/nouveau/nv04_dac.c                                  |    8 
 drivers/gpu/drm/nouveau/nv04_dfp.c                                  |    6 
 drivers/gpu/drm/nouveau/nv04_tv.c                                   |    4 
 drivers/gpu/drm/nouveau/nvc0_fence.c                                |   25 
 drivers/gpu/drm/radeon/atombios_encoders.c                          |    2 
 drivers/gpu/drm/radeon/evergreen_cs.c                               |   63 +-
 drivers/gpu/drm/radeon/evergreend.h                                 |    4 
 drivers/gpu/drm/radeon/r600_cs.c                                    |    3 
 drivers/gpu/drm/radeon/radeon_agp.c                                 |    5 
 drivers/gpu/drm/radeon/radeon_drv.c                                 |    4 
 drivers/gpu/drm/radeon/radeon_irq_kms.c                             |   10 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c                     |    7 
 drivers/gpu/drm/radeon/radeon_pm.c                                  |    8 
 drivers/gpu/drm/radeon/si.c                                         |    1 
 drivers/gpu/drm/radeon/sid.h                                        |    1 
 drivers/gpu/drm/savage/savage_bci.c                                 |    2 
 drivers/gpu/drm/ttm/ttm_page_alloc.c                                |    5 
 drivers/gpu/drm/udl/udl_drv.h                                       |    2 
 drivers/gpu/drm/udl/udl_fb.c                                        |   12 
 drivers/gpu/drm/udl/udl_transfer.c                                  |    5 
 drivers/gpu/drm/vmwgfx/vmwgfx_dmabuf.c                              |    2 
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c                                 |    5 
 drivers/hid/hid-core.c                                              |   16 
 drivers/hid/hid-ids.h                                               |    3 
 drivers/hid/hid-microsoft.c                                         |   18 
 drivers/hid/hidraw.c                                                |   69 --
 drivers/hid/usbhid/hid-core.c                                       |    6 
 drivers/hid/usbhid/hid-quirks.c                                     |    1 
 drivers/hv/channel.c                                                |   24 
 drivers/hwmon/coretemp.c                                            |    7 
 drivers/hwmon/w83627ehf.c                                           |    1 
 drivers/i2c/busses/i2c-piix4.c                                      |    1 
 drivers/i2c/muxes/i2c-mux-pinctrl.c                                 |    2 
 drivers/infiniband/core/cma.c                                       |    3 
 drivers/infiniband/core/netlink.c                                   |    1 
 drivers/infiniband/hw/qib/qib_keys.c                                |    5 
 drivers/infiniband/ulp/ipoib/ipoib_main.c                           |    2 
 drivers/infiniband/ulp/ipoib/ipoib_multicast.c                      |   19 
 drivers/infiniband/ulp/srp/ib_srp.c                                 |    3 
 drivers/input/mouse/synaptics.c                                     |   31 -
 drivers/input/touchscreen/tsc40.c                                   |    1 
 drivers/iommu/intel-iommu.c                                         |    8 
 drivers/iommu/tegra-smmu.c                                          |    2 
 drivers/isdn/gigaset/bas-gigaset.c                                  |   19 
 drivers/md/dm.c                                                     |    8 
 drivers/md/md.c                                                     |   11 
 drivers/md/raid1.c                                                  |    2 
 drivers/md/raid10.c                                                 |  114 +--
 drivers/media/dvb/frontends/drxk.h                                  |    2 
 drivers/media/dvb/frontends/drxk_hard.c                             |   20 
 drivers/media/rc/ite-cir.c                                          |    2 
 drivers/media/video/au0828/au0828-video.c                           |   12 
 drivers/media/video/em28xx/em28xx-cards.c                           |   22 
 drivers/media/video/em28xx/em28xx-dvb.c                             |    5 
 drivers/media/video/gspca/pac7302.c                                 |    3 
 drivers/mfd/88pm860x-core.c                                         |   92 ++-
 drivers/mfd/max8925-core.c                                          |   10 
 drivers/mmc/core/slot-gpio.c                                        |    8 
 drivers/mmc/host/omap_hsmmc.c                                       |    3 
 drivers/mmc/host/sdhci-s3c.c                                        |    2 
 drivers/mmc/host/sdhci.c                                            |   23 
 drivers/mmc/host/sh_mmcif.c                                         |    6 
 drivers/mtd/devices/slram.c                                         |    2 
 drivers/mtd/maps/autcpu12-nvram.c                                   |   19 
 drivers/mtd/mtdpart.c                                               |    5 
 drivers/mtd/nand/nand_base.c                                        |    8 
 drivers/mtd/nand/nand_bbt.c                                         |    2 
 drivers/mtd/nand/nandsim.c                                          |    1 
 drivers/mtd/nand/omap2.c                                            |    3 
 drivers/mtd/ofpart.c                                                |    2 
 drivers/mtd/ubi/attach.c                                            |    2 
 drivers/mtd/ubi/build.c                                             |    5 
 drivers/net/can/mscan/mpc5xxx_can.c                                 |    4 
 drivers/net/can/usb/peak_usb/pcan_usb.c                             |    8 
 drivers/net/can/usb/peak_usb/pcan_usb_pro.c                         |    8 
 drivers/net/ethernet/broadcom/Kconfig                               |    1 
 drivers/net/ethernet/broadcom/tg3.c                                 |    9 
 drivers/net/ethernet/calxeda/xgmac.c                                |   19 
 drivers/net/ethernet/freescale/gianfar.c                            |   27 
 drivers/net/ethernet/freescale/gianfar.h                            |    2 
 drivers/net/ethernet/freescale/ucc_geth.c                           |   29 
 drivers/net/ethernet/freescale/ucc_geth.h                           |    2 
 drivers/net/ethernet/intel/e1000e/e1000.h                           |    6 
 drivers/net/ethernet/intel/e1000e/netdev.c                          |    2 
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c                     |    1 
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c                    |    8 
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c                       |    2 
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h                       |    1 
 drivers/net/ethernet/marvell/mv643xx_eth.c                          |   18 
 drivers/net/ethernet/marvell/skge.c                                 |    7 
 drivers/net/ethernet/nxp/lpc_eth.c                                  |    1 
 drivers/net/ethernet/realtek/r8169.c                                |    7 
 drivers/net/ethernet/stmicro/stmmac/stmmac.h                        |    1 
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c                   |   20 
 drivers/net/ethernet/ti/davinci_cpdma.c                             |    1 
 drivers/net/ethernet/tile/tilegx.c                                  |   35 -
 drivers/net/rionet.c                                                |   20 
 drivers/net/usb/asix_devices.c                                      |    4 
 drivers/net/usb/cdc_ether.c                                         |   41 -
 drivers/net/usb/mcs7830.c                                           |   30 -
 drivers/net/usb/qmi_wwan.c                                          |   14 
 drivers/net/usb/usbnet.c                                            |    3 
 drivers/net/wireless/ath/ath9k/ar9003_2p2_initvals.h                |  164 ++---
 drivers/net/wireless/ath/ath9k/beacon.c                             |    2 
 drivers/net/wireless/ath/ath9k/main.c                               |    2 
 drivers/net/wireless/ath/ath9k/pci.c                                |    5 
 drivers/net/wireless/ath/ath9k/xmit.c                               |   63 +-
 drivers/net/wireless/b43/main.c                                     |    4 
 drivers/net/wireless/b43legacy/main.c                               |    2 
 drivers/net/wireless/ipw2x00/ipw2200.c                              |    2 
 drivers/net/wireless/iwlwifi/dvm/devices.c                          |   39 -
 drivers/net/wireless/iwlwifi/dvm/mac80211.c                         |   14 
 drivers/net/wireless/iwlwifi/pcie/rx.c                              |   23 
 drivers/net/wireless/iwlwifi/pcie/tx.c                              |    8 
 drivers/net/wireless/mwifiex/cmdevt.c                               |   11 
 drivers/net/wireless/mwifiex/sdio.c                                 |   11 
 drivers/net/wireless/rt2x00/rt2800lib.c                             |    2 
 drivers/net/wireless/rtlwifi/rtl8192cu/sw.c                         |    1 
 drivers/nfc/pn533.c                                                 |   22 
 drivers/pci/pci-driver.c                                            |   12 
 drivers/pci/pci-sysfs.c                                             |   34 -
 drivers/pci/pci.c                                                   |   32 +
 drivers/pci/pci.h                                                   |    2 
 drivers/pci/probe.c                                                 |    6 
 drivers/pci/proc.c                                                  |    8 
 drivers/pcmcia/pxa2xx_sharpsl.c                                     |    2 
 drivers/pinctrl/core.c                                              |    4 
 drivers/pinctrl/pinconf.c                                           |    4 
 drivers/pinctrl/pinctrl-tegra.c                                     |    2 
 drivers/pinctrl/pinctrl-tegra30.c                                   |   24 
 drivers/regulator/core.c                                            |    2 
 drivers/remoteproc/Kconfig                                          |    1 
 drivers/remoteproc/remoteproc_core.c                                |   22 
 drivers/rtc/rtc-imxdi.c                                             |    2 
 drivers/s390/scsi/zfcp_aux.c                                        |    1 
 drivers/s390/scsi/zfcp_ccw.c                                        |   73 ++
 drivers/s390/scsi/zfcp_cfdc.c                                       |    2 
 drivers/s390/scsi/zfcp_dbf.c                                        |   22 
 drivers/s390/scsi/zfcp_dbf.h                                        |    1 
 drivers/s390/scsi/zfcp_def.h                                        |    2 
 drivers/s390/scsi/zfcp_ext.h                                        |    2 
 drivers/s390/scsi/zfcp_fsf.c                                        |   57 +
 drivers/s390/scsi/zfcp_qdio.c                                       |   16 
 drivers/s390/scsi/zfcp_sysfs.c                                      |   18 
 drivers/s390/scsi/zfcp_unit.c                                       |   36 -
 drivers/scsi/atp870u.c                                              |   11 
 drivers/scsi/device_handler/scsi_dh_alua.c                          |    3 
 drivers/scsi/hpsa.c                                                 |    2 
 drivers/scsi/ibmvscsi/ibmvscsi.c                                    |    3 
 drivers/scsi/isci/host.c                                            |   10 
 drivers/scsi/isci/init.c                                            |    1 
 drivers/scsi/isci/probe_roms.c                                      |    1 
 drivers/scsi/isci/request.c                                         |    2 
 drivers/scsi/qla2xxx/qla_target.c                                   |   27 
 drivers/scsi/qla2xxx/qla_target.h                                   |    1 
 drivers/scsi/qla2xxx/tcm_qla2xxx.c                                  |   73 ++
 drivers/scsi/scsi_debug.c                                           |    2 
 drivers/scsi/scsi_sysfs.c                                           |   30 -
 drivers/scsi/storvsc_drv.c                                          |    5 
 drivers/scsi/virtio_scsi.c                                          |    2 
 drivers/staging/android/android_alarm.h                             |    4 
 drivers/staging/android/binder.c                                    |   30 -
 drivers/staging/comedi/comedi_fops.c                                |    5 
 drivers/staging/comedi/drivers/amplc_dio200.c                       |    2 
 drivers/staging/comedi/drivers/amplc_pc236.c                        |    6 
 drivers/staging/comedi/drivers/amplc_pc263.c                        |    3 
 drivers/staging/comedi/drivers/das08.c                              |    2 
 drivers/staging/comedi/drivers/jr3_pci.c                            |    2 
 drivers/staging/comedi/drivers/ni_daq_700.c                         |    2 
 drivers/staging/comedi/drivers/ni_labpc.c                           |    2 
 drivers/staging/comedi/drivers/s626.c                               |    2 
 drivers/staging/rtl8712/rtl8712_recv.c                              |    5 
 drivers/staging/speakup/speakup_soft.c                              |   13 
 drivers/staging/zram/zram_drv.c                                     |   12 
 drivers/target/iscsi/iscsi_target.c                                 |    6 
 drivers/target/iscsi/iscsi_target_core.h                            |    5 
 drivers/target/iscsi/iscsi_target_login.c                           |    1 
 drivers/target/iscsi/iscsi_target_tpg.c                             |   12 
 drivers/target/iscsi/iscsi_target_util.c                            |   22 
 drivers/target/iscsi/iscsi_target_util.h                            |    1 
 drivers/target/target_core_configfs.c                               |   11 
 drivers/target/target_core_device.c                                 |   18 
 drivers/target/target_core_file.c                                   |   41 +
 drivers/target/target_core_file.h                                   |    1 
 drivers/target/target_core_sbc.c                                    |   18 
 drivers/target/target_core_spc.c                                    |   48 -
 drivers/target/target_core_tmr.c                                    |    6 
 drivers/target/target_core_transport.c                              |    1 
 drivers/tty/n_gsm.c                                                 |   26 
 drivers/tty/n_tty.c                                                 |    3 
 drivers/tty/serial/8250/8250_pci.c                                  |    9 
 drivers/tty/serial/amba-pl011.c                                     |   15 
 drivers/tty/vt/keyboard.c                                           |    3 
 drivers/tty/vt/vt.c                                                 |   13 
 drivers/usb/class/cdc-acm.c                                         |   25 
 drivers/usb/core/devio.c                                            |    1 
 drivers/usb/core/driver.c                                           |    4 
 drivers/usb/core/hub.c                                              |   40 -
 drivers/usb/dwc3/gadget.c                                           |    1 
 drivers/usb/gadget/at91_udc.c                                       |    2 
 drivers/usb/gadget/printer.c                                        |  128 ++--
 drivers/usb/gadget/tcm_usb_gadget.c                                 |   33 -
 drivers/usb/gadget/tcm_usb_gadget.h                                 |   14 
 drivers/usb/host/ehci-timer.c                                       |    6 
 drivers/usb/host/pci-quirks.c                                       |    9 
 drivers/usb/host/xhci-mem.c                                         |    7 
 drivers/usb/host/xhci-pci.c                                         |    1 
 drivers/usb/host/xhci-ring.c                                        |  297 +++++++++-
 drivers/usb/host/xhci.c                                             |   45 +
 drivers/usb/host/xhci.h                                             |   20 
 drivers/usb/musb/am35x.c                                            |    6 
 drivers/usb/otg/mxs-phy.c                                           |   38 +
 drivers/usb/serial/ark3116.c                                        |   26 
 drivers/usb/serial/belkin_sa.c                                      |   31 -
 drivers/usb/serial/ch341.c                                          |   23 
 drivers/usb/serial/cp210x.c                                         |   41 -
 drivers/usb/serial/cyberjack.c                                      |   48 -
 drivers/usb/serial/cypress_m8.c                                     |   82 +-
 drivers/usb/serial/digi_acceleport.c                                |  117 ++-
 drivers/usb/serial/f81232.c                                         |   43 -
 drivers/usb/serial/ftdi_sio.c                                       |    2 
 drivers/usb/serial/ftdi_sio_ids.h                                   |    5 
 drivers/usb/serial/garmin_gps.c                                     |   24 
 drivers/usb/serial/io_edgeport.c                                    |   55 -
 drivers/usb/serial/io_tables.h                                      |    8 
 drivers/usb/serial/io_ti.c                                          |   91 +--
 drivers/usb/serial/ipw.c                                            |    7 
 drivers/usb/serial/iuu_phoenix.c                                    |   85 +-
 drivers/usb/serial/keyspan.c                                        |  182 ++----
 drivers/usb/serial/keyspan.h                                        |    8 
 drivers/usb/serial/keyspan_pda.c                                    |   30 -
 drivers/usb/serial/kl5kusb105.c                                     |   66 --
 drivers/usb/serial/kobil_sct.c                                      |   23 
 drivers/usb/serial/mct_u232.c                                       |   59 +
 drivers/usb/serial/metro-usb.c                                      |   65 --
 drivers/usb/serial/mos7720.c                                        |   62 +-
 drivers/usb/serial/mos7840.c                                        |  226 ++-----
 drivers/usb/serial/omninet.c                                        |   36 -
 drivers/usb/serial/opticon.c                                        |   11 
 drivers/usb/serial/option.c                                         |  119 +++-
 drivers/usb/serial/oti6858.c                                        |   68 --
 drivers/usb/serial/pl2303.c                                         |   90 +--
 drivers/usb/serial/qcaux.c                                          |   10 
 drivers/usb/serial/qcserial.c                                       |   33 -
 drivers/usb/serial/quatech2.c                                       |  135 ++--
 drivers/usb/serial/sierra.c                                         |  133 ++--
 drivers/usb/serial/spcp8x5.c                                        |   46 -
 drivers/usb/serial/ssu100.c                                         |   34 -
 drivers/usb/serial/ti_usb_3410_5052.c                               |   88 +-
 drivers/usb/serial/usb-serial.c                                     |    3 
 drivers/usb/serial/usb-wwan.h                                       |    2 
 drivers/usb/serial/usb_wwan.c                                       |  134 +---
 drivers/usb/serial/whiteheat.c                                      |   60 --
 drivers/usb/storage/unusual_devs.h                                  |    6 
 drivers/vfio/pci/vfio_pci_intrs.c                                   |   18 
 drivers/vhost/net.c                                                 |    3 
 drivers/video/udlfb.c                                               |    2 
 drivers/video/via/via_clock.c                                       |   19 
 drivers/virtio/virtio.c                                             |    4 
 drivers/xen/events.c                                                |    2 
 drivers/xen/gntdev.c                                                |   36 -
 drivers/xen/xen-pciback/pci_stub.c                                  |    1 
 drivers/xen/xenbus/xenbus_xs.c                                      |   21 
 fs/autofs4/root.c                                                   |    6 
 fs/binfmt_elf.c                                                     |   19 
 fs/buffer.c                                                         |   13 
 fs/ceph/addr.c                                                      |   11 
 fs/ceph/export.c                                                    |   20 
 fs/ceph/mds_client.c                                                |    3 
 fs/cifs/cifs_unicode.c                                              |   22 
 fs/cifs/cifsacl.c                                                   |   49 -
 fs/cifs/connect.c                                                   |    9 
 fs/cifs/dir.c                                                       |   11 
 fs/compat_ioctl.c                                                   |    2 
 fs/exec.c                                                           |    3 
 fs/ext4/balloc.c                                                    |    8 
 fs/ext4/bitmap.c                                                    |    6 
 fs/ext4/ext4.h                                                      |    7 
 fs/ext4/ext4_jbd2.c                                                 |    8 
 fs/ext4/extents.c                                                   |   57 +
 fs/ext4/ialloc.c                                                    |   23 
 fs/ext4/inode.c                                                     |   26 
 fs/ext4/mballoc.c                                                   |   14 
 fs/ext4/move_extent.c                                               |  174 +----
 fs/ext4/namei.c                                                     |    2 
 fs/ext4/resize.c                                                    |   31 -
 fs/ext4/super.c                                                     |    9 
 fs/fs-writeback.c                                                   |    3 
 fs/gfs2/export.c                                                    |    4 
 fs/gfs2/file.c                                                      |   12 
 fs/gfs2/lops.c                                                      |   14 
 fs/gfs2/super.c                                                     |    3 
 fs/gfs2/trans.c                                                     |    8 
 fs/inode.c                                                          |   16 
 fs/internal.h                                                       |    1 
 fs/isofs/export.c                                                   |    2 
 fs/jbd/commit.c                                                     |   45 +
 fs/jbd/transaction.c                                                |   66 +-
 fs/jbd2/journal.c                                                   |    5 
 fs/jffs2/file.c                                                     |   39 -
 fs/jffs2/super.c                                                    |    4 
 fs/jffs2/wbuf.c                                                     |    8 
 fs/lockd/clntxdr.c                                                  |    2 
 fs/lockd/mon.c                                                      |   93 ++-
 fs/lockd/netns.h                                                    |    4 
 fs/lockd/svc.c                                                      |    1 
 fs/lockd/svcproc.c                                                  |    3 
 fs/namei.c                                                          |    6 
 fs/nfs/blocklayout/blocklayout.c                                    |  270 +++++++--
 fs/nfs/blocklayout/blocklayout.h                                    |    1 
 fs/nfs/client.c                                                     |    1 
 fs/nfs/dns_resolve.c                                                |    5 
 fs/nfs/internal.h                                                   |    5 
 fs/nfs/mount_clnt.c                                                 |    2 
 fs/nfs/namespace.c                                                  |   19 
 fs/nfs/nfs4namespace.c                                              |    3 
 fs/nfs/nfs4proc.c                                                   |   49 +
 fs/nfs/super.c                                                      |    2 
 fs/nfsd/nfs4idmap.c                                                 |    2 
 fs/nfsd/nfs4state.c                                                 |   19 
 fs/nilfs2/file.c                                                    |    1 
 fs/notify/fanotify/fanotify.c                                       |    1 
 fs/proc/page.c                                                      |    8 
 fs/proc/stat.c                                                      |   14 
 fs/pstore/platform.c                                                |    3 
 fs/pstore/ram.c                                                     |    2 
 fs/reiserfs/inode.c                                                 |   16 
 fs/reiserfs/stree.c                                                 |    4 
 fs/reiserfs/super.c                                                 |   60 +-
 fs/sysfs/dir.c                                                      |   16 
 fs/ubifs/find.c                                                     |   12 
 fs/ubifs/lprops.c                                                   |    6 
 fs/ubifs/ubifs.h                                                    |    3 
 fs/xfs/xfs_buf.c                                                    |   14 
 fs/xfs/xfs_buf_item.c                                               |   18 
 fs/xfs/xfs_export.c                                                 |    3 
 fs/xfs/xfs_log_recover.c                                            |    2 
 include/drm/drm_pciids.h                                            |    4 
 include/linux/ceph/osd_client.h                                     |    2 
 include/linux/ceph/osdmap.h                                         |    6 
 include/linux/efi.h                                                 |    5 
 include/linux/if_vlan.h                                             |    8 
 include/linux/memblock.h                                            |    1 
 include/linux/mempolicy.h                                           |    2 
 include/linux/mmzone.h                                              |    2 
 include/linux/mtd/nand.h                                            |    3 
 include/linux/netlink.h                                             |   21 
 include/linux/pci_ids.h                                             |    1 
 include/linux/ptp_clock_kernel.h                                    |    3 
 include/linux/skbuff.h                                              |   24 
 include/net/cfg80211.h                                              |   10 
 include/net/flow.h                                                  |    1 
 include/net/ip_fib.h                                                |    1 
 include/net/route.h                                                 |    3 
 include/rdma/rdma_netlink.h                                         |    1 
 include/sound/core.h                                                |    3 
 include/trace/events/xen.h                                          |    8 
 init/main.c                                                         |    3 
 kernel/audit.c                                                      |    2 
 kernel/cgroup.c                                                     |   41 -
 kernel/debug/kdb/kdb_io.c                                           |   33 -
 kernel/futex.c                                                      |   59 +
 kernel/module.c                                                     |   31 -
 kernel/rcutree.c                                                    |    4 
 kernel/sched/core.c                                                 |    2 
 kernel/sys.c                                                        |   13 
 kernel/time/tick-sched.c                                            |    2 
 kernel/time/timekeeping.c                                           |    2 
 kernel/timer.c                                                      |   10 
 kernel/trace/ring_buffer.c                                          |    4 
 kernel/watchdog.c                                                   |    4 
 kernel/workqueue.c                                                  |   27 
 lib/gcd.c                                                           |    3 
 lib/genalloc.c                                                      |    2 
 lib/mpi/longlong.h                                                  |   19 
 mm/hugetlb.c                                                        |    3 
 mm/memblock.c                                                       |   24 
 mm/memcontrol.c                                                     |   67 +-
 mm/mempolicy.c                                                      |  137 ++--
 mm/mmzone.c                                                         |    6 
 mm/page_alloc.c                                                     |    2 
 mm/rmap.c                                                           |   20 
 mm/shmem.c                                                          |   24 
 mm/slab.c                                                           |    6 
 mm/truncate.c                                                       |    3 
 mm/vmscan.c                                                         |   39 -
 net/8021q/vlan_core.c                                               |   13 
 net/batman-adv/bridge_loop_avoidance.c                              |    8 
 net/batman-adv/routing.c                                            |    8 
 net/bluetooth/mgmt.c                                                |   11 
 net/bluetooth/smp.c                                                 |    6 
 net/can/bcm.c                                                       |    3 
 net/ceph/messenger.c                                                |    6 
 net/ceph/osd_client.c                                               |   32 -
 net/ceph/osdmap.c                                                   |   18 
 net/core/dev.c                                                      |   13 
 net/core/dev_addr_lists.c                                           |    3 
 net/core/neighbour.c                                                |    6 
 net/core/net-sysfs.c                                                |   20 
 net/core/pktgen.c                                                   |    2 
 net/core/skbuff.c                                                   |   53 -
 net/ipv4/fib_frontend.c                                             |    3 
 net/ipv4/fib_semantics.c                                            |    4 
 net/ipv4/inet_connection_sock.c                                     |    4 
 net/ipv4/inet_diag.c                                                |    5 
 net/ipv4/ip_forward.c                                               |    2 
 net/ipv4/ip_output.c                                                |    4 
 net/ipv4/ip_sockglue.c                                              |   35 -
 net/ipv4/ip_vti.c                                                   |    5 
 net/ipv4/netfilter/nf_nat_standalone.c                              |    6 
 net/ipv4/route.c                                                    |  155 +++--
 net/ipv4/tcp.c                                                      |   12 
 net/ipv4/tcp_illinois.c                                             |    8 
 net/ipv4/tcp_input.c                                                |    3 
 net/ipv4/tcp_ipv4.c                                                 |    7 
 net/ipv4/tcp_metrics.c                                              |   12 
 net/ipv4/tcp_output.c                                               |    4 
 net/ipv4/xfrm4_policy.c                                             |    1 
 net/ipv6/addrconf.c                                                 |   25 
 net/ipv6/af_inet6.c                                                 |   11 
 net/ipv6/ipv6_sockglue.c                                            |    1 
 net/ipv6/ndisc.c                                                    |    3 
 net/ipv6/route.c                                                    |   15 
 net/ipv6/tcp_ipv6.c                                                 |    3 
 net/l2tp/l2tp_eth.c                                                 |    1 
 net/mac80211/ibss.c                                                 |   10 
 net/mac80211/ieee80211_i.h                                          |    2 
 net/mac80211/iface.c                                                |    2 
 net/mac80211/mesh_sync.c                                            |    3 
 net/mac80211/mlme.c                                                 |   35 -
 net/mac80211/rx.c                                                   |   72 +-
 net/mac80211/sta_info.c                                             |   15 
 net/mac80211/status.c                                               |   13 
 net/mac80211/tx.c                                                   |   31 -
 net/mac80211/util.c                                                 |   48 +
 net/mac80211/wpa.c                                                  |    3 
 net/netfilter/ipvs/ip_vs_xmit.c                                     |    8 
 net/netfilter/nf_conntrack_h323_main.c                              |    3 
 net/netfilter/xt_TEE.c                                              |    1 
 net/netlink/af_netlink.c                                            |   48 +
 net/nfc/llcp/llcp.c                                                 |    6 
 net/rds/send.c                                                      |    2 
 net/sctp/sm_sideeffect.c                                            |    3 
 net/sunrpc/cache.c                                                  |    4 
 net/sunrpc/xprtsock.c                                               |   63 --
 net/wireless/core.c                                                 |    3 
 net/wireless/mlme.c                                                 |   12 
 net/wireless/reg.c                                                  |    5 
 net/wireless/util.c                                                 |   14 
 scripts/Kbuild.include                                              |   14 
 scripts/gcc-version.sh                                              |    6 
 scripts/gcc-x86_32-has-stack-protector.sh                           |    2 
 scripts/gcc-x86_64-has-stack-protector.sh                           |    2 
 scripts/kconfig/check.sh                                            |    2 
 scripts/kconfig/lxdialog/check-lxdialog.sh                          |    2 
 scripts/kconfig/streamline_config.pl                                |    2 
 scripts/package/buildtar                                            |    2 
 security/selinux/netnode.c                                          |    3 
 security/yama/yama_lsm.c                                            |    2 
 sound/core/compress_offload.c                                       |    9 
 sound/core/control.c                                                |    5 
 sound/core/hwdep.c                                                  |   12 
 sound/core/init.c                                                   |   50 +
 sound/core/oss/mixer_oss.c                                          |   11 
 sound/core/oss/pcm_oss.c                                            |    7 
 sound/core/pcm.c                                                    |   13 
 sound/core/pcm_native.c                                             |   35 -
 sound/core/rawmidi.c                                                |   26 
 sound/core/sound.c                                                  |   11 
 sound/core/sound_oss.c                                              |   10 
 sound/drivers/aloop.c                                               |    6 
 sound/pci/ac97/ac97_codec.c                                         |    2 
 sound/pci/emu10k1/emu10k1_main.c                                    |    9 
 sound/pci/hda/hda_codec.c                                           |   10 
 sound/pci/hda/hda_intel.c                                           |   71 +-
 sound/pci/hda/patch_analog.c                                        |    1 
 sound/pci/hda/patch_cirrus.c                                        |   23 
 sound/pci/hda/patch_conexant.c                                      |    1 
 sound/pci/hda/patch_realtek.c                                       |   69 +-
 sound/pci/hda/patch_via.c                                           |   61 +-
 sound/soc/codecs/cs42l52.c                                          |    3 
 sound/soc/codecs/wm2200.c                                           |    3 
 sound/soc/codecs/wm5110.c                                           |    4 
 sound/soc/codecs/wm8978.c                                           |    2 
 sound/soc/codecs/wm9712.c                                           |    2 
 sound/soc/codecs/wm_hubs.c                                          |    5 
 sound/soc/omap/omap-abe-twl6040.c                                   |    2 
 sound/soc/sh/fsi.c                                                  |   15 
 sound/soc/soc-core.c                                                |    5 
 sound/soc/soc-dapm.c                                                |    2 
 sound/usb/card.c                                                    |   14 
 sound/usb/card.h                                                    |    3 
 sound/usb/endpoint.c                                                |   21 
 sound/usb/endpoint.h                                                |    1 
 sound/usb/helper.c                                                  |    5 
 sound/usb/midi.c                                                    |    8 
 sound/usb/mixer.c                                                   |   72 +-
 sound/usb/mixer_quirks.c                                            |   58 +
 sound/usb/pcm.c                                                     |   52 +
 sound/usb/proc.c                                                    |    4 
 sound/usb/quirks-table.h                                            |   53 +
 sound/usb/quirks.c                                                  |   24 
 sound/usb/quirks.h                                                  |   10 
 sound/usb/stream.c                                                  |    1 
 sound/usb/usbaudio.h                                                |    2 
 tools/hv/hv_kvp_daemon.c                                            |   45 +
 tools/lguest/lguest.c                                               |    1 
 tools/perf/Makefile                                                 |    2 
 tools/power/cpupower/Makefile                                       |    2 
 usr/gen_init_cpio.c                                                 |   43 -
 645 files changed, 7215 insertions(+), 3914 deletions(-)

