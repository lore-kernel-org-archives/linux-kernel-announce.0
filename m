From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.30.10 released
Date: Fri, 4 Dec 2009 06:22:11 GMT
Message-ID: <200912040622.nB46MB92018892@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.30.10 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.30.10.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.30.10.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               139995            586468
Full source                       59466365         353208320

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/RCU/rculist_nulls.txt                        |    7 
 Documentation/sysctl/vm.txt                                |   12 -
 Makefile                                                   |    7 
 arch/alpha/include/asm/percpu.h                            |    6 
 arch/arm/include/asm/cacheflush.h                          |    8 
 arch/arm/mm/highmem.c                                      |    8 
 arch/blackfin/kernel/irqchip.c                             |   50 +---
 arch/blackfin/kernel/setup.c                               |    3 
 arch/blackfin/mach-common/head.S                           |   16 -
 arch/blackfin/mach-common/smp.c                            |   13 -
 arch/ia64/kernel/pci-dma.c                                 |    5 
 arch/parisc/include/asm/system.h                           |    4 
 arch/parisc/include/asm/tlbflush.h                         |   14 -
 arch/parisc/kernel/cache.c                                 |   23 +-
 arch/parisc/kernel/pci-dma.c                               |   12 -
 arch/powerpc/boot/dts/asp834x-redboot.dts                  |    2 
 arch/powerpc/boot/dts/mpc8349emitx.dts                     |    2 
 arch/powerpc/boot/dts/mpc834x_mds.dts                      |    2 
 arch/powerpc/boot/dts/sbc8349.dts                          |    2 
 arch/powerpc/include/asm/mmu-hash64.h                      |    2 
 arch/powerpc/include/asm/pte-common.h                      |    2 
 arch/powerpc/kernel/lparcfg.c                              |    3 
 arch/powerpc/kernel/rtas.c                                 |    7 
 arch/powerpc/mm/pgtable.c                                  |   19 +
 arch/powerpc/mm/slb.c                                      |   16 +
 arch/powerpc/platforms/83xx/mpc83xx.h                      |    4 
 arch/powerpc/platforms/83xx/usb.c                          |   10 
 arch/powerpc/platforms/ps3/time.c                          |    4 
 arch/powerpc/platforms/pseries/reconfig.c                  |    9 
 arch/powerpc/sysdev/mpic.c                                 |   29 +-
 arch/sparc/include/asm/pgtable_64.h                        |   12 -
 arch/sparc/kernel/irq_64.c                                 |    2 
 arch/sparc/kernel/ktlb.S                                   |   42 +++
 arch/sparc/kernel/nmi.c                                    |    2 
 arch/sparc/kernel/sys32.S                                  |    2 
 arch/sparc/mm/init_64.c                                    |   43 ++-
 arch/sparc/mm/init_64.h                                    |    7 
 arch/sparc/prom/misc_64.c                                  |    2 
 arch/sparc/prom/printf.c                                   |    7 
 arch/x86/boot/video-vga.c                                  |   44 ++--
 arch/x86/crypto/aesni-intel_asm.S                          |    5 
 arch/x86/include/asm/apic.h                                |    2 
 arch/x86/include/asm/cpufeature.h                          |    1 
 arch/x86/include/asm/fixmap.h                              |   10 
 arch/x86/include/asm/io_apic.h                             |    2 
 arch/x86/include/asm/irqflags.h                            |    8 
 arch/x86/include/asm/kvm_host.h                            |    6 
 arch/x86/include/asm/kvm_x86_emulate.h                     |    6 
 arch/x86/include/asm/mce.h                                 |    2 
 arch/x86/include/asm/pci.h                                 |    2 
 arch/x86/include/asm/processor.h                           |   12 +
 arch/x86/include/asm/stackprotector.h                      |    4 
 arch/x86/include/asm/system.h                              |    2 
 arch/x86/include/asm/uaccess.h                             |    4 
 arch/x86/include/asm/uaccess_64.h                          |   10 
 arch/x86/include/asm/uv/uv_bau.h                           |    2 
 arch/x86/include/asm/uv/uv_hub.h                           |    6 
 arch/x86/include/asm/vmx.h                                 |    1 
 arch/x86/kernel/apic/es7000_32.c                           |    2 
 arch/x86/kernel/apic/io_apic.c                             |   14 -
 arch/x86/kernel/apic/ipi.c                                 |    3 
 arch/x86/kernel/apic/x2apic_uv_x.c                         |   15 -
 arch/x86/kernel/cpu/amd.c                                  |   14 +
 arch/x86/kernel/cpu/common.c                               |    2 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c                  |   15 -
 arch/x86/kernel/cpu/mcheck/mce_32.c                        |    1 
 arch/x86/kernel/cpu/mcheck/mce_64.c                        |    1 
 arch/x86/kernel/head_32.S                                  |    1 
 arch/x86/kernel/hpet.c                                     |    3 
 arch/x86/kernel/kvmclock.c                                 |    4 
 arch/x86/kernel/mfgpt_32.c                                 |    2 
 arch/x86/kernel/pci-gart_64.c                              |   10 
 arch/x86/kernel/reboot.c                                   |    9 
 arch/x86/kernel/setup.c                                    |   28 +-
 arch/x86/kernel/tlb_uv.c                                   |   24 +-
 arch/x86/kernel/tsc.c                                      |   11 -
 arch/x86/kernel/vm86_32.c                                  |    9 
 arch/x86/kernel/vmi_32.c                                   |    2 
 arch/x86/kernel/vsyscall_64.c                              |    8 
 arch/x86/kvm/lapic.c                                       |    9 
 arch/x86/kvm/mmu.c                                         |   94 +++++---
 arch/x86/kvm/svm.c                                         |   31 ++
 arch/x86/kvm/vmx.c                                         |  117 +++++++++-
 arch/x86/kvm/x86.c                                         |   95 ++++++++
 arch/x86/kvm/x86_emulate.c                                 |   20 +
 arch/x86/mm/gup.c                                          |    9 
 arch/x86/mm/memtest.c                                      |   14 -
 arch/x86/mm/pageattr.c                                     |   47 +++-
 arch/x86/mm/srat_64.c                                      |    6 
 arch/x86/mm/tlb.c                                          |   21 -
 arch/x86/pci/i386.c                                        |    7 
 block/Kconfig                                              |   11 -
 block/blk-core.c                                           |   10 
 drivers/acpi/pci_slot.c                                    |    4 
 drivers/acpi/processor_thermal.c                           |    6 
 drivers/acpi/processor_throttling.c                        |   26 +-
 drivers/acpi/sleep.c                                       |    8 
 drivers/ata/ahci.c                                         |    4 
 drivers/ata/libata-core.c                                  |   11 -
 drivers/ata/libata-eh.c                                    |    4 
 drivers/block/floppy.c                                     |    5 
 drivers/block/virtio_blk.c                                 |    3 
 drivers/char/agp/intel-agp.c                               |    9 
 drivers/char/epca.c                                        |    9 
 drivers/char/moxa.c                                        |    7 
 drivers/char/n_r3964.c                                     |   26 +-
 drivers/char/pcmcia/cm4000_cs.c                            |    3 
 drivers/char/rocket.c                                      |    6 
 drivers/char/tpm/tpm_tis.c                                 |   12 -
 drivers/char/vc_screen.c                                   |    4 
 drivers/char/vt_ioctl.c                                    |    3 
 drivers/edac/x38_edac.c                                    |    2 
 drivers/firewire/fw-sbp2.c                                 |   10 
 drivers/firmware/memmap.c                                  |   16 -
 drivers/gpu/drm/i915/i915_dma.c                            |    5 
 drivers/gpu/drm/i915/i915_drv.c                            |    4 
 drivers/gpu/drm/i915/i915_drv.h                            |    8 
 drivers/gpu/drm/i915/i915_gem.c                            |   13 +
 drivers/gpu/drm/i915/i915_irq.c                            |    2 
 drivers/gpu/drm/i915/i915_suspend.c                        |   20 +
 drivers/gpu/drm/i915/intel_bios.c                          |   10 
 drivers/gpu/drm/i915/intel_display.c                       |    2 
 drivers/gpu/drm/i915/intel_fb.c                            |    8 
 drivers/gpu/drm/i915/intel_lvds.c                          |   17 +
 drivers/hid/usbhid/hiddev.c                                |    4 
 drivers/hwmon/asus_atk0110.c                               |    6 
 drivers/hwmon/max6650.c                                    |    1 
 drivers/hwmon/smsc47m1.c                                   |   11 +
 drivers/i2c/chips/tsl2550.c                                |   17 -
 drivers/ide/ide-cd.c                                       |    2 
 drivers/ide/ide-disk.c                                     |    1 
 drivers/ide/ide-dma.c                                      |   21 -
 drivers/ide/ide-iops.c                                     |    3 
 drivers/ide/ide-probe.c                                    |   23 +-
 drivers/ieee1394/sbp2.c                                    |    1 
 drivers/ieee1394/sbp2.h                                    |    8 
 drivers/infiniband/hw/mlx4/qp.c                            |    4 
 drivers/input/joydev.c                                     |   66 +++---
 drivers/input/misc/wistron_btns.c                          |    9 
 drivers/isdn/gigaset/ev-layer.c                            |   44 +---
 drivers/isdn/hisax/hfc_pci.c                               |   41 ++-
 drivers/isdn/hisax/hisax.h                                 |    2 
 drivers/md/dm-exception-store.c                            |   22 +-
 drivers/md/dm-exception-store.h                            |    6 
 drivers/md/dm-log.c                                        |    2 
 drivers/md/dm-mpath.c                                      |   12 +
 drivers/md/dm-raid1.c                                      |    9 
 drivers/md/dm-snap-persistent.c                            |   88 ++++----
 drivers/md/dm-table.c                                      |    3 
 drivers/md/dm.c                                            |    4 
 drivers/md/md.c                                            |   23 +-
 drivers/md/raid5.c                                         |   30 +-
 drivers/media/dvb/frontends/lgdt3305.c                     |   17 -
 drivers/media/video/Makefile                               |   77 +++----
 drivers/media/video/cx18/cx18-controls.c                   |    2 
 drivers/media/video/cx2341x.c                              |    2 
 drivers/media/video/em28xx/em28xx-cards.c                  |    3 
 drivers/media/video/gspca/ov534.c                          |    4 
 drivers/media/video/ivtv/ivtv-controls.c                   |    2 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c                  |   56 ++---
 drivers/media/video/saa7134/Makefile                       |    3 
 drivers/mmc/host/mvsdio.c                                  |    4 
 drivers/net/8139too.c                                      |    1 
 drivers/net/arm/ixp4xx_eth.c                               |    4 
 drivers/net/atl1c/atl1c.h                                  |    8 
 drivers/net/atl1c/atl1c_ethtool.c                          |    2 
 drivers/net/atl1c/atl1c_main.c                             |    2 
 drivers/net/benet/be.h                                     |    2 
 drivers/net/benet/be_ethtool.c                             |    4 
 drivers/net/benet/be_main.c                                |   45 ++--
 drivers/net/bonding/bond_sysfs.c                           |    1 
 drivers/net/e100.c                                         |    3 
 drivers/net/e1000e/netdev.c                                |    2 
 drivers/net/ehea/ehea.h                                    |    2 
 drivers/net/ehea/ehea_main.c                               |    5 
 drivers/net/gianfar.c                                      |    2 
 drivers/net/mlx4/eq.c                                      |   42 ---
 drivers/net/mlx4/main.c                                    |    9 
 drivers/net/mlx4/mlx4.h                                    |    7 
 drivers/net/mv643xx_eth.c                                  |    7 
 drivers/net/plip.c                                         |    3 
 drivers/net/ppp_generic.c                                  |   34 +--
 drivers/net/pppol2tp.c                                     |    1 
 drivers/net/ps3_gelic_net.c                                |    1 
 drivers/net/ps3_gelic_wireless.c                           |    1 
 drivers/net/sky2.c                                         |   33 +--
 drivers/net/smc91x.c                                       |    1 
 drivers/net/smsc911x.c                                     |    1 
 drivers/net/sunvnet.c                                      |    2 
 drivers/net/tun.c                                          |   11 -
 drivers/net/usb/cdc_subset.c                               |    7 
 drivers/net/usb/kaweth.c                                   |    3 
 drivers/net/usb/pegasus.c                                  |   32 +-
 drivers/net/via-rhine.c                                    |    1 
 drivers/net/via-velocity.c                                 |    2 
 drivers/net/wireless/ar9170/main.c                         |    5 
 drivers/net/wireless/ath5k/base.c                          |    9 
 drivers/net/wireless/ath9k/calib.c                         |   67 ++----
 drivers/net/wireless/ath9k/main.c                          |   28 +-
 drivers/net/wireless/ath9k/pci.c                           |   18 +
 drivers/net/wireless/ath9k/regd.c                          |    2 
 drivers/net/wireless/ath9k/xmit.c                          |    5 
 drivers/net/wireless/iwlwifi/iwl-agn.c                     |   19 -
 drivers/net/wireless/iwlwifi/iwl-rfkill.c                  |   26 +-
 drivers/net/wireless/iwlwifi/iwl-sta.c                     |   12 +
 drivers/net/wireless/iwlwifi/iwl3945-base.c                |   19 -
 drivers/net/wireless/orinoco/main.c                        |    3 
 drivers/net/wireless/p54/p54usb.c                          |    1 
 drivers/net/wireless/rt2x00/rt2x00.h                       |    6 
 drivers/parisc/eisa_eeprom.c                               |    2 
 drivers/parport/parport_pc.c                               |   34 ++-
 drivers/pci/iov.c                                          |   23 ++
 drivers/pci/iova.c                                         |   26 ++
 drivers/pci/pci.c                                          |    7 
 drivers/pci/pci.h                                          |   13 +
 drivers/pci/pcie/aspm.c                                    |    4 
 drivers/pci/quirks.c                                       |    3 
 drivers/pci/setup-bus.c                                    |    4 
 drivers/pci/setup-res.c                                    |    6 
 drivers/pcmcia/at91_cf.c                                   |    2 
 drivers/pcmcia/au1000_generic.c                            |    2 
 drivers/pcmcia/bfin_cf_pcmcia.c                            |    2 
 drivers/pcmcia/cs.c                                        |    2 
 drivers/pcmcia/i82092.c                                    |    2 
 drivers/pcmcia/i82365.c                                    |    2 
 drivers/pcmcia/m32r_cfc.c                                  |    2 
 drivers/pcmcia/m32r_pcc.c                                  |    2 
 drivers/pcmcia/m8xx_pcmcia.c                               |    2 
 drivers/pcmcia/omap_cf.c                                   |    2 
 drivers/pcmcia/pd6729.c                                    |    2 
 drivers/pcmcia/pxa2xx_base.c                               |    2 
 drivers/pcmcia/sa1100_generic.c                            |    2 
 drivers/pcmcia/sa1111_generic.c                            |    2 
 drivers/pcmcia/tcic.c                                      |    2 
 drivers/pcmcia/vrc4171_card.c                              |    2 
 drivers/pcmcia/yenta_socket.c                              |   88 ++++----
 drivers/platform/x86/Kconfig                               |    4 
 drivers/platform/x86/thinkpad_acpi.c                       |   74 +++++-
 drivers/platform/x86/wmi.c                                 |    8 
 drivers/ps3/ps3stor_lib.c                                  |   65 +++++
 drivers/scsi/libsas/sas_port.c                             |   19 +
 drivers/scsi/mpt2sas/mpt2sas_base.c                        |   98 ++++++--
 drivers/scsi/mpt2sas/mpt2sas_base.h                        |    2 
 drivers/scsi/mpt2sas/mpt2sas_config.c                      |   91 ++------
 drivers/scsi/mpt2sas/mpt2sas_scsih.c                       |  124 ++++++++---
 drivers/scsi/qla2xxx/qla_dbg.c                             |    2 
 drivers/scsi/sd.c                                          |   45 +---
 drivers/scsi/sg.c                                          |    6 
 drivers/scsi/sym53c8xx_2/sym_hipd.c                        |    5 
 drivers/scsi/zalon.c                                       |    2 
 drivers/serial/bfin_5xx.c                                  |    5 
 drivers/spi/spi_mpc83xx.c                                  |    6 
 drivers/staging/rt2870/2870_main_dev.c                     |   67 ++++--
 drivers/staging/rt2870/common/2870_rtmp_init.c             |   35 +--
 drivers/staging/rt2870/common/cmm_data.c                   |    3 
 drivers/staging/rt2870/common/rtmp_init.c                  |    2 
 drivers/staging/rt2870/common/rtusb_io.c                   |    3 
 drivers/staging/rt2870/rt2870.h                            |    7 
 drivers/staging/rt2870/rt_linux.h                          |   11 -
 drivers/staging/rtl8187se/ieee80211/ieee80211_softmac_wx.c |   12 -
 drivers/staging/uc2322/aten2011.c                          |    4 
 drivers/usb/class/usbtmc.c                                 |    6 
 drivers/usb/core/devio.c                                   |   67 +++---
 drivers/usb/core/hcd.h                                     |    4 
 drivers/usb/core/hub.c                                     |   40 ++-
 drivers/usb/core/hub.h                                     |    6 
 drivers/usb/core/message.c                                 |   63 ++++-
 drivers/usb/gadget/ether.c                                 |   11 -
 drivers/usb/host/ehci-au1xxx.c                             |    2 
 drivers/usb/host/ehci-fsl.c                                |    2 
 drivers/usb/host/ehci-hcd.c                                |    5 
 drivers/usb/host/ehci-ixp4xx.c                             |    2 
 drivers/usb/host/ehci-orion.c                              |    2 
 drivers/usb/host/ehci-pci.c                                |    2 
 drivers/usb/host/ehci-ppc-of.c                             |    2 
 drivers/usb/host/ehci-ps3.c                                |    2 
 drivers/usb/host/ehci-q.c                                  |   97 ++++++--
 drivers/usb/host/ehci-sched.c                              |   12 -
 drivers/usb/host/ehci.h                                    |    2 
 drivers/usb/serial/aircable.c                              |    5 
 drivers/usb/serial/belkin_sa.c                             |    7 
 drivers/usb/serial/cp210x.c                                |    6 
 drivers/usb/serial/cyberjack.c                             |   20 +
 drivers/usb/serial/cypress_m8.c                            |   11 -
 drivers/usb/serial/digi_acceleport.c                       |   20 +
 drivers/usb/serial/empeg.c                                 |    8 
 drivers/usb/serial/ftdi_sio.c                              |   17 -
 drivers/usb/serial/ftdi_sio.h                              |   14 +
 drivers/usb/serial/garmin_gps.c                            |   16 +
 drivers/usb/serial/generic.c                               |    9 
 drivers/usb/serial/io_edgeport.c                           |   29 +-
 drivers/usb/serial/io_tables.h                             |   12 -
 drivers/usb/serial/io_ti.c                                 |   22 +-
 drivers/usb/serial/ipaq.c                                  |    7 
 drivers/usb/serial/iuu_phoenix.c                           |    6 
 drivers/usb/serial/keyspan.c                               |   13 +
 drivers/usb/serial/keyspan.h                               |   12 -
 drivers/usb/serial/keyspan_pda.c                           |    4 
 drivers/usb/serial/kl5kusb105.c                            |   39 ++-
 drivers/usb/serial/kobil_sct.c                             |   12 -
 drivers/usb/serial/mct_u232.c                              |   13 -
 drivers/usb/serial/mos7720.c                               |    9 
 drivers/usb/serial/mos7840.c                               |   42 +++
 drivers/usb/serial/omninet.c                               |   19 +
 drivers/usb/serial/opticon.c                               |   14 +
 drivers/usb/serial/option.c                                |   17 +
 drivers/usb/serial/oti6858.c                               |    7 
 drivers/usb/serial/pl2303.c                                |    5 
 drivers/usb/serial/sierra.c                                |   28 ++
 drivers/usb/serial/spcp8x5.c                               |    5 
 drivers/usb/serial/symbolserial.c                          |   14 +
 drivers/usb/serial/ti_usb_3410_5052.c                      |   13 -
 drivers/usb/serial/usb-serial.c                            |   29 +-
 drivers/usb/serial/visor.c                                 |   13 -
 drivers/usb/serial/whiteheat.c                             |    6 
 drivers/usb/storage/transport.c                            |    2 
 drivers/usb/storage/unusual_devs.h                         |    7 
 drivers/video/fbmon.c                                      |    4 
 drivers/video/xen-fbfront.c                                |    8 
 fs/Kconfig                                                 |   14 -
 fs/binfmt_elf.c                                            |   32 +-
 fs/binfmt_flat.c                                           |   17 +
 fs/bio.c                                                   |   22 +-
 fs/buffer.c                                                |    7 
 fs/cifs/cifs_dfs_ref.c                                     |   12 -
 fs/cifs/cifsglob.h                                         |    4 
 fs/cifs/connect.c                                          |   14 +
 fs/cifs/dir.c                                              |    9 
 fs/cifs/file.c                                             |   10 
 fs/compat_ioctl.c                                          |    1 
 fs/ecryptfs/keystore.c                                     |   13 +
 fs/eventpoll.c                                             |   21 +
 fs/exec.c                                                  |    4 
 fs/fs-writeback.c                                          |    2 
 fs/fuse/dev.c                                              |    2 
 fs/fuse/file.c                                             |    2 
 fs/hugetlbfs/inode.c                                       |   20 +
 fs/inode.c                                                 |   54 ++--
 fs/jffs2/wbuf.c                                            |   10 
 fs/jfs/jfs_extent.c                                        |    1 
 fs/nfs/direct.c                                            |   20 -
 fs/nfs/read.c                                              |    6 
 fs/nfs/write.c                                             |    6 
 fs/nfsd/vfs.c                                              |    3 
 fs/nilfs2/btnode.c                                         |    3 
 fs/nilfs2/cpfile.c                                         |    5 
 fs/nilfs2/dat.c                                            |    9 
 fs/nilfs2/segment.c                                        |   44 ++--
 fs/ocfs2/aops.c                                            |   66 ++++--
 fs/ocfs2/super.c                                           |   32 +-
 fs/partitions/check.c                                      |    2 
 fs/proc/base.c                                             |   27 +-
 fs/proc/kcore.c                                            |    8 
 fs/proc/task_mmu.c                                         |    1 
 fs/proc/task_nommu.c                                       |    1 
 fs/proc/uptime.c                                           |    7 
 fs/ramfs/inode.c                                           |    9 
 fs/select.c                                                |    1 
 fs/sysfs/dir.c                                             |    2 
 fs/udf/lowlevel.c                                          |    7 
 fs/xfs/xfs_bmap.c                                          |    1 
 fs/xfs/xfs_iget.c                                          |  142 ++++++-------
 fs/xfs/xfs_inode.h                                         |   17 -
 fs/xfs/xfs_log.c                                           |    2 
 include/acpi/processor.h                                   |    5 
 include/asm-generic/percpu.h                               |    4 
 include/linux/bitmap.h                                     |   18 -
 include/linux/blkdev.h                                     |    1 
 include/linux/cpumask.h                                    |   20 -
 include/linux/firmware-map.h                               |   12 -
 include/linux/fs.h                                         |    5 
 include/linux/hugetlb.h                                    |    6 
 include/linux/ide.h                                        |    2 
 include/linux/kvm_host.h                                   |    2 
 include/linux/kvm_para.h                                   |    1 
 include/linux/mlx4/qp.h                                    |    1 
 include/linux/mm.h                                         |    2 
 include/linux/netdevice.h                                  |    5 
 include/linux/nfs_fs.h                                     |    5 
 include/linux/percpu-defs.h                                |    3 
 include/linux/personality.h                                |    5 
 include/linux/sched.h                                      |    3 
 include/linux/security.h                                   |    2 
 include/linux/serial.h                                     |  116 ++++++----
 include/linux/usb/serial.h                                 |   12 -
 include/linux/vmstat.h                                     |    3 
 include/net/netfilter/nf_conntrack.h                       |    4 
 include/net/sctp/sctp.h                                    |    1 
 include/net/sock.h                                         |   34 +--
 include/net/x25.h                                          |    2 
 include/pcmcia/ss.h                                        |    2 
 init/main.c                                                |    7 
 ipc/shm.c                                                  |    8 
 kernel/acct.c                                              |    6 
 kernel/fork.c                                              |   42 +--
 kernel/freezer.c                                           |    7 
 kernel/futex.c                                             |   43 ++-
 kernel/kthread.c                                           |    2 
 kernel/posix-timers.c                                      |    7 
 kernel/resource.c                                          |    2 
 kernel/sched.c                                             |    1 
 kernel/sched_rt.c                                          |   18 +
 kernel/signal.c                                            |   15 -
 kernel/smp.c                                               |    2 
 kernel/sysctl.c                                            |    2 
 kernel/trace/ring_buffer.c                                 |   11 -
 kernel/trace/trace.c                                       |   10 
 kernel/trace/trace_functions.c                             |   10 
 kernel/trace/trace_functions_graph.c                       |   11 -
 lib/Kconfig.debug                                          |    2 
 lib/bitmap.c                                               |   12 -
 lib/dma-debug.c                                            |   45 +++-
 lib/genalloc.c                                             |    1 
 mm/Kconfig                                                 |   19 +
 mm/filemap.c                                               |    1 
 mm/hugetlb.c                                               |    4 
 mm/internal.h                                              |    4 
 mm/memory.c                                                |    3 
 mm/mmap.c                                                  |    7 
 mm/nommu.c                                                 |    3 
 mm/page_alloc.c                                            |   49 +++-
 mm/slab.c                                                  |    2 
 mm/slob.c                                                  |    2 
 mm/slub.c                                                  |    2 
 mm/vmscan.c                                                |   66 ++++--
 mm/vmstat.c                                                |    3 
 net/appletalk/ddp.c                                        |    1 
 net/ax25/af_ax25.c                                         |    2 
 net/ax25/ax25_in.c                                         |    3 
 net/bridge/br_netfilter.c                                  |    2 
 net/bridge/netfilter/ebt_ulog.c                            |    2 
 net/can/raw.c                                              |    1 
 net/core/dev.c                                             |   10 
 net/core/net_namespace.c                                   |    2 
 net/core/sock.c                                            |   39 +++
 net/dccp/proto.c                                           |    1 
 net/dsa/mv88e6xxx.c                                        |    2 
 net/econet/af_econet.c                                     |    1 
 net/ipv4/arp.c                                             |    7 
 net/ipv4/ip_fragment.c                                     |    2 
 net/ipv4/ip_gre.c                                          |    2 
 net/ipv4/ip_input.c                                        |    3 
 net/ipv4/ip_output.c                                       |    2 
 net/ipv4/netfilter/nf_nat_core.c                           |    2 
 net/ipv4/netfilter/nf_nat_helper.c                         |   17 +
 net/ipv4/route.c                                           |   36 +++
 net/ipv6/af_inet6.c                                        |    4 
 net/ipv6/ip6_input.c                                       |    3 
 net/irda/af_irda.c                                         |    4 
 net/irda/ircomm/ircomm_lmp.c                               |    1 
 net/llc/af_llc.c                                           |    1 
 net/mac80211/agg-tx.c                                      |    8 
 net/mac80211/rc80211_minstrel.c                            |    2 
 net/netfilter/nf_conntrack_core.c                          |   36 ++-
 net/netfilter/nf_conntrack_proto_tcp.c                     |    6 
 net/netfilter/nf_log.c                                     |   22 +-
 net/netfilter/xt_quota.c                                   |    1 
 net/netfilter/xt_rateest.c                                 |    2 
 net/netrom/af_netrom.c                                     |    1 
 net/packet/af_packet.c                                     |    4 
 net/rose/af_rose.c                                         |    1 
 net/socket.c                                               |    2 
 net/sunrpc/clnt.c                                          |    1 
 net/wireless/nl80211.c                                     |   26 +-
 net/wireless/reg.c                                         |   10 
 net/wireless/scan.c                                        |    7 
 net/x25/af_x25.c                                           |   23 +-
 net/x25/x25_timer.c                                        |    2 
 net/xfrm/xfrm_algo.c                                       |    4 
 scripts/kallsyms.c                                         |    2 
 security/Kconfig                                           |   22 --
 security/integrity/ima/ima_audit.c                         |    2 
 security/integrity/ima/ima_crypto.c                        |    6 
 security/integrity/ima/ima_main.c                          |   13 -
 security/security.c                                        |    3 
 sound/core/pcm_lib.c                                       |   39 ---
 sound/core/seq/seq_midi_event.c                            |    8 
 sound/isa/cmi8330.c                                        |    2 
 sound/pci/ca0106/ca0106_main.c                             |    4 
 sound/pci/ca0106/ca0106_mixer.c                            |    6 
 sound/pci/cs46xx/cs46xx_lib.h                              |    2 
 sound/pci/hda/patch_realtek.c                              |   71 +++---
 sound/pci/hda/patch_sigmatel.c                             |    7 
 sound/pci/intel8x0.c                                       |   24 +-
 sound/pci/oxygen/oxygen_io.c                               |   11 -
 sound/pci/oxygen/oxygen_lib.c                              |    3 
 sound/pci/oxygen/oxygen_pcm.c                              |    2 
 sound/pci/oxygen/virtuoso.c                                |    2 
 sound/soc/codecs/wm8350.c                                  |    2 
 sound/soc/codecs/wm8753.c                                  |    2 
 sound/soc/codecs/wm8903.c                                  |    4 
 sound/usb/usbaudio.c                                       |   14 +
 virt/kvm/irq_comm.c                                        |    4 
 virt/kvm/kvm_main.c                                        |   22 +-
 494 files changed, 4107 insertions(+), 2307 deletions(-)

