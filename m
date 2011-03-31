From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.35.12 released
Date: Thu, 31 Mar 2011 20:59:11 GMT
Message-ID: <201103312059.p2VKxBYP017466@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.35.12 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.35/patch-2.6.35.12.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.35/linux-2.6.35.12.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               337617           1413933
Full source                       69331459         413091840

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/i2c/instantiating-devices          |    2 
 Documentation/kernel-parameters.txt              |    5 
 Documentation/power/interface.txt                |    2 
 Documentation/power/runtime_pm.txt               |    4 
 Documentation/sound/alsa/HD-Audio-Models.txt     |    2 
 Makefile                                         |    4 
 arch/alpha/kernel/err_marvel.c                   |    6 
 arch/alpha/kernel/proto.h                        |    3 
 arch/alpha/kernel/sys_cabriolet.c                |   19 +
 arch/alpha/kernel/sys_takara.c                   |   11 
 arch/arm/Kconfig                                 |   13 
 arch/arm/include/asm/assembler.h                 |    2 
 arch/arm/include/asm/ptrace.h                    |   17 -
 arch/arm/include/asm/tlbflush.h                  |    8 
 arch/arm/kernel/entry-common.S                   |    2 
 arch/arm/kernel/signal.c                         |    4 
 arch/arm/lib/findbit.S                           |    6 
 arch/arm/mach-at91/at91sam9g45_devices.c         |    2 
 arch/arm/mach-at91/include/mach/at91_mci.h       |    2 
 arch/arm/mach-cns3xxx/include/mach/debug-macro.S |    2 
 arch/arm/mach-ixp4xx/ixdp425-setup.c             |    1 
 arch/arm/mach-mx3/mach-qong.c                    |    1 
 arch/arm/mach-orion5x/ts78xx-setup.c             |    1 
 arch/arm/mach-pxa/cm-x300.c                      |    3 
 arch/arm/mach-vexpress/ct-ca9x4.c                |    2 
 arch/arm/mm/cache-v6.S                           |   28 +
 arch/arm/mm/fault-armv.c                         |   28 +
 arch/arm/oprofile/common.c                       |    7 
 arch/arm/plat-mxc/gpio.c                         |    8 
 arch/arm/plat-mxc/include/mach/gpio.h            |    2 
 arch/arm/plat-omap/dma.c                         |   50 ++-
 arch/arm/plat-omap/include/plat/dma.h            |    4 
 arch/blackfin/mach-bf537/boards/stamp.c          |    1 
 arch/blackfin/mach-bf561/boards/acvilon.c        |    1 
 arch/ia64/include/asm/compat.h                   |    2 
 arch/ia64/include/asm/system.h                   |    4 
 arch/ia64/kernel/fsys.S                          |   30 +-
 arch/ia64/kernel/msi_ia64.c                      |    2 
 arch/ia64/sn/kernel/msi_sn.c                     |    2 
 arch/microblaze/Makefile                         |    8 
 arch/mips/alchemy/mtx-1/platform.c               |    9 
 arch/mips/include/asm/compat.h                   |    2 
 arch/parisc/include/asm/compat.h                 |    2 
 arch/parisc/kernel/firmware.c                    |   23 -
 arch/parisc/kernel/irq.c                         |    2 
 arch/powerpc/Makefile                            |   16 -
 arch/powerpc/include/asm/compat.h                |    2 
 arch/powerpc/include/asm/reg.h                   |    1 
 arch/powerpc/include/asm/system.h                |    4 
 arch/powerpc/kernel/cpu_setup_6xx.S              |   40 +-
 arch/powerpc/kernel/head_64.S                    |   18 -
 arch/powerpc/kernel/machine_kexec_64.c           |   26 +
 arch/powerpc/kernel/perf_event.c                 |   24 +
 arch/powerpc/kernel/perf_event_fsl_emb.c         |    1 
 arch/powerpc/kernel/ppc970-pmu.c                 |    2 
 arch/powerpc/kernel/time.c                       |   23 -
 arch/powerpc/mm/hash_utils_64.c                  |    2 
 arch/powerpc/sysdev/fsl_rio.c                    |    1 
 arch/s390/include/asm/compat.h                   |    2 
 arch/s390/include/asm/processor.h                |    5 
 arch/s390/include/asm/system.h                   |    1 
 arch/s390/kernel/nmi.c                           |   10 
 arch/s390/kernel/traps.c                         |   37 --
 arch/s390/kernel/vtime.c                         |   19 +
 arch/s390/lib/delay.c                            |   14 
 arch/sh/include/asm/syscalls_32.h                |    4 
 arch/sparc/include/asm/atomic_64.h               |   10 
 arch/sparc/include/asm/compat.h                  |    2 
 arch/sparc/include/asm/fb.h                      |    4 
 arch/sparc/include/asm/openprom.h                |    2 
 arch/sparc/include/asm/oplib_32.h                |   35 --
 arch/sparc/include/asm/oplib_64.h                |   73 ----
 arch/sparc/include/asm/parport.h                 |    4 
 arch/sparc/include/asm/rwsem-const.h             |    2 
 arch/sparc/kernel/leon_kernel.c                  |    4 
 arch/sparc/prom/Makefile                         |    1 
 arch/sparc/prom/cif.S                            |   16 -
 arch/sparc/prom/console_32.c                     |   65 ----
 arch/sparc/prom/console_64.c                     |   71 +---
 arch/sparc/prom/devops_32.c                      |   87 -----
 arch/sparc/prom/devops_64.c                      |   41 --
 arch/sparc/prom/misc_64.c                        |  316 ++++++++++++++-------
 arch/sparc/prom/p1275.c                          |  102 ------
 arch/sparc/prom/printf.c                         |   35 +-
 arch/sparc/prom/tree_32.c                        |   15 -
 arch/sparc/prom/tree_64.c                        |  212 +++++++++-----
 arch/um/drivers/line.c                           |    5 
 arch/um/drivers/ubd_kern.c                       |    9 
 arch/um/kernel/uml.lds.S                         |    2 
 arch/um/os-Linux/time.c                          |    2 
 arch/x86/Kconfig                                 |   16 +
 arch/x86/ia32/ia32entry.S                        |   22 -
 arch/x86/include/asm/acpi.h                      |    1 
 arch/x86/include/asm/amd_iommu_proto.h           |    6 
 arch/x86/include/asm/amd_iommu_types.h           |   12 
 arch/x86/include/asm/cmpxchg_32.h                |  121 +++-----
 arch/x86/include/asm/cmpxchg_64.h                |   44 +-
 arch/x86/include/asm/compat.h                    |    2 
 arch/x86/include/asm/cpufeature.h                |    2 
 arch/x86/include/asm/hpet.h                      |    1 
 arch/x86/include/asm/io.h                        |    1 
 arch/x86/include/asm/kvm_emulate.h               |   10 
 arch/x86/include/asm/kvm_host.h                  |   26 -
 arch/x86/include/asm/mmu_context.h               |    5 
 arch/x86/include/asm/pgtable-3level.h            |   11 
 arch/x86/include/asm/pgtable_32.h                |    1 
 arch/x86/include/asm/processor.h                 |   23 -
 arch/x86/include/asm/pvclock.h                   |    1 
 arch/x86/include/asm/smp.h                       |    9 
 arch/x86/include/asm/smpboot_hooks.h             |    2 
 arch/x86/include/asm/trampoline.h                |    5 
 arch/x86/include/asm/tsc.h                       |    2 
 arch/x86/kernel/Makefile                         |    2 
 arch/x86/kernel/acpi/boot.c                      |   14 
 arch/x86/kernel/amd_iommu.c                      |    4 
 arch/x86/kernel/amd_iommu_init.c                 |   67 +++-
 arch/x86/kernel/apic/apic.c                      |   10 
 arch/x86/kernel/apic/io_apic.c                   |   18 -
 arch/x86/kernel/apic/probe_64.c                  |    7 
 arch/x86/kernel/cpu/amd.c                        |    3 
 arch/x86/kernel/cpu/common.c                     |    4 
 arch/x86/kernel/cpu/cpu.h                        |    1 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c       |    1 
 arch/x86/kernel/cpu/intel.c                      |    1 
 arch/x86/kernel/cpu/mcheck/mce_amd.c             |    9 
 arch/x86/kernel/cpu/mtrr/cleanup.c               |    2 
 arch/x86/kernel/cpu/mtrr/main.c                  |   66 +++-
 arch/x86/kernel/cpu/perf_event_amd.c             |    4 
 arch/x86/kernel/cpu/perf_event_intel.c           |   81 ++++-
 arch/x86/kernel/cpu/perf_event_p4.c              |   11 
 arch/x86/kernel/cpu/vmware.c                     |   10 
 arch/x86/kernel/crash_dump_64.c                  |    3 
 arch/x86/kernel/e820.c                           |   10 
 arch/x86/kernel/early-quirks.c                   |   39 --
 arch/x86/kernel/entry_64.S                       |    2 
 arch/x86/kernel/head_32.S                        |    8 
 arch/x86/kernel/hpet.c                           |   33 +-
 arch/x86/kernel/hw_breakpoint.c                  |    4 
 arch/x86/kernel/microcode_intel.c                |   16 -
 arch/x86/kernel/mpparse.c                        |   16 +
 arch/x86/kernel/olpc.c                           |    5 
 arch/x86/kernel/pvclock.c                        |    5 
 arch/x86/kernel/reboot.c                         |    2 
 arch/x86/kernel/setup.c                          |    2 
 arch/x86/kernel/smp.c                            |   15 -
 arch/x86/kernel/smpboot.c                        |  143 ++++++++-
 arch/x86/kernel/trampoline.c                     |   17 +
 arch/x86/kernel/traps.c                          |    1 
 arch/x86/kernel/tsc.c                            |   46 +++
 arch/x86/kernel/vm86_32.c                        |   10 
 arch/x86/kernel/xsave.c                          |    3 
 arch/x86/kvm/emulate.c                           |   13 
 arch/x86/kvm/i8259.c                             |    2 
 arch/x86/kvm/irq.h                               |    2 
 arch/x86/kvm/mmu.c                               |    8 
 arch/x86/kvm/paging_tmpl.h                       |   28 +
 arch/x86/kvm/svm.c                               |   54 +++
 arch/x86/kvm/vmx.c                               |   43 +-
 arch/x86/kvm/x86.c                               |   27 +
 arch/x86/lib/atomic64_386_32.S                   |  238 ++++++++--------
 arch/x86/mm/fault.c                              |   11 
 arch/x86/mm/kmmio.c                              |   16 -
 arch/x86/mm/pgtable.c                            |    3 
 arch/x86/mm/srat_64.c                            |    8 
 arch/x86/mm/testmmiotrace.c                      |   22 +
 arch/x86/oprofile/nmi_int.c                      |   44 ++
 arch/x86/oprofile/op_model_amd.c                 |   24 +
 arch/x86/pci/acpi.c                              |    9 
 arch/x86/power/cpu.c                             |    2 
 arch/x86/vdso/Makefile                           |    4 
 arch/x86/xen/enlighten.c                         |    6 
 arch/x86/xen/mmu.c                               |   13 
 arch/x86/xen/smp.c                               |    6 
 arch/x86/xen/time.c                              |   41 --
 block/blk-map.c                                  |    2 
 block/blk-merge.c                                |    6 
 block/blk-settings.c                             |   27 -
 block/blk-sysfs.c                                |    2 
 block/bsg.c                                      |    2 
 block/genhd.c                                    |    6 
 block/scsi_ioctl.c                               |   34 +-
 crypto/Kconfig                                   |    8 
 crypto/algboss.c                                 |    4 
 crypto/testmgr.c                                 |   14 
 drivers/acpi/acpica/aclocal.h                    |    1 
 drivers/acpi/acpica/dswexec.c                    |   19 +
 drivers/acpi/apei/erst.c                         |    1 
 drivers/acpi/battery.c                           |   38 ++
 drivers/acpi/blacklist.c                         |   16 +
 drivers/acpi/bus.c                               |   14 
 drivers/acpi/debug.c                             |    2 
 drivers/acpi/ec.c                                |    3 
 drivers/acpi/processor_core.c                    |    7 
 drivers/acpi/sleep.c                             |   22 +
 drivers/ata/ahci.c                               |    9 
 drivers/ata/ahci.h                               |   13 
 drivers/ata/ahci_platform.c                      |    6 
 drivers/ata/ata_piix.c                           |    8 
 drivers/ata/libahci.c                            |   36 +-
 drivers/ata/libata-core.c                        |   38 +-
 drivers/ata/libata-eh.c                          |    4 
 drivers/ata/libata-scsi.c                        |    5 
 drivers/ata/libata-sff.c                         |   14 
 drivers/ata/pata_cmd64x.c                        |    6 
 drivers/ata/pata_mpc52xx.c                       |    2 
 drivers/ata/pata_via.c                           |    2 
 drivers/ata/sata_mv.c                            |   44 ++
 drivers/ata/sata_via.c                           |    9 
 drivers/atm/solos-pci.c                          |    7 
 drivers/base/power/main.c                        |    1 
 drivers/block/cciss.h                            |    1 
 drivers/block/drbd/drbd_main.c                   |   27 +
 drivers/block/pktcdvd.c                          |    2 
 drivers/block/virtio_blk.c                       |    6 
 drivers/block/xen-blkfront.c                     |    2 
 drivers/bluetooth/btusb.c                        |    3 
 drivers/bluetooth/hci_ldisc.c                    |    7 
 drivers/char/agp/intel-agp.c                     |   46 ++-
 drivers/char/agp/intel-agp.h                     |   25 +
 drivers/char/agp/intel-gtt.c                     |  175 ++++++++---
 drivers/char/hpet.c                              |   17 +
 drivers/char/ipmi/ipmi_si_intf.c                 |   38 +-
 drivers/char/mem.c                               |    5 
 drivers/char/n_gsm.c                             |    6 
 drivers/char/nozomi.c                            |    4 
 drivers/char/pcmcia/synclink_cs.c                |    2 
 drivers/char/ramoops.c                           |   12 
 drivers/char/tpm/tpm.c                           |   28 +
 drivers/char/tpm/tpm.h                           |    2 
 drivers/char/tpm/tpm_tis.c                       |    4 
 drivers/char/tty_buffer.c                        |   14 
 drivers/char/tty_io.c                            |    4 
 drivers/char/tty_ldisc.c                         |   51 ++-
 drivers/char/virtio_console.c                    |   23 +
 drivers/char/vt_ioctl.c                          |   11 
 drivers/crypto/padlock-aes.c                     |    2 
 drivers/dma/ioat/dma.h                           |    1 
 drivers/dma/ioat/dma_v2.c                        |   26 +
 drivers/dma/ioat/dma_v3.c                        |    5 
 drivers/dma/mv_xor.c                             |    4 
 drivers/edac/amd64_edac.c                        |    8 
 drivers/edac/edac_mc.c                           |   10 
 drivers/edac/i7core_edac.c                       |    1 
 drivers/firewire/ohci.c                          |   79 +++--
 drivers/firewire/ohci.h                          |    8 
 drivers/firmware/dcdbas.c                        |    4 
 drivers/gpio/cs5535-gpio.c                       |   27 +
 drivers/gpio/rdc321x-gpio.c                      |    2 
 drivers/gpu/drm/Kconfig                          |    3 
 drivers/gpu/drm/drm_crtc.c                       |   10 
 drivers/gpu/drm/drm_crtc_helper.c                |    4 
 drivers/gpu/drm/drm_drv.c                        |    4 
 drivers/gpu/drm/drm_gem.c                        |   31 --
 drivers/gpu/drm/drm_irq.c                        |    3 
 drivers/gpu/drm/drm_vm.c                         |   28 +
 drivers/gpu/drm/i915/i915_dma.c                  |   56 ++-
 drivers/gpu/drm/i915/i915_drv.c                  |    6 
 drivers/gpu/drm/i915/i915_gem.c                  |   32 +-
 drivers/gpu/drm/i915/i915_reg.h                  |   12 
 drivers/gpu/drm/i915/intel_display.c             |  193 ++++++++-----
 drivers/gpu/drm/i915/intel_dp.c                  |   95 +++---
 drivers/gpu/drm/i915/intel_drv.h                 |    8 
 drivers/gpu/drm/i915/intel_lvds.c                |   10 
 drivers/gpu/drm/i915/intel_overlay.c             |   15 -
 drivers/gpu/drm/i915/intel_ringbuffer.c          |    8 
 drivers/gpu/drm/i915/intel_sdvo.c                |    8 
 drivers/gpu/drm/nouveau/nouveau_drv.h            |    6 
 drivers/gpu/drm/nouveau/nouveau_irq.c            |    1 
 drivers/gpu/drm/nouveau/nv50_display.c           |   35 +-
 drivers/gpu/drm/nouveau/nv50_instmem.c           |    2 
 drivers/gpu/drm/radeon/atombios_crtc.c           |   26 +
 drivers/gpu/drm/radeon/evergreen.c               |   95 ++++--
 drivers/gpu/drm/radeon/r100.c                    |    6 
 drivers/gpu/drm/radeon/r100_track.h              |    1 
 drivers/gpu/drm/radeon/r200.c                    |    2 
 drivers/gpu/drm/radeon/r600.c                    |   41 ++
 drivers/gpu/drm/radeon/r600_blit_kms.c           |    8 
 drivers/gpu/drm/radeon/r600_reg.h                |    1 
 drivers/gpu/drm/radeon/r600d.h                   |    1 
 drivers/gpu/drm/radeon/radeon.h                  |    6 
 drivers/gpu/drm/radeon/radeon_atombios.c         |   49 ++-
 drivers/gpu/drm/radeon/radeon_bios.c             |   13 
 drivers/gpu/drm/radeon/radeon_connectors.c       |   34 ++
 drivers/gpu/drm/radeon/radeon_cursor.c           |   28 -
 drivers/gpu/drm/radeon/radeon_device.c           |   11 
 drivers/gpu/drm/radeon/radeon_display.c          |    6 
 drivers/gpu/drm/radeon/radeon_encoders.c         |   36 ++
 drivers/gpu/drm/radeon/radeon_i2c.c              |    8 
 drivers/gpu/drm/radeon/radeon_irq_kms.c          |    5 
 drivers/gpu/drm/radeon/radeon_kms.c              |    4 
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c      |    2 
 drivers/gpu/drm/radeon/radeon_object.c           |   29 +
 drivers/gpu/drm/radeon/radeon_pm.c               |    5 
 drivers/gpu/drm/radeon/radeon_reg.h              |    1 
 drivers/gpu/drm/radeon/rs690.c                   |   27 -
 drivers/gpu/drm/radeon/rv515.c                   |   23 -
 drivers/gpu/drm/radeon/rv770.c                   |   57 +++
 drivers/gpu/drm/radeon/rv770d.h                  |    1 
 drivers/hid/hid-egalax.c                         |   16 -
 drivers/hid/hidraw.c                             |   11 
 drivers/hid/usbhid/hid-core.c                    |    3 
 drivers/hid/usbhid/hid-quirks.c                  |    1 
 drivers/hwmon/adm1026.c                          |   20 -
 drivers/hwmon/ads7871.c                          |   38 +-
 drivers/hwmon/emc1403.c                          |    1 
 drivers/hwmon/f71882fg.c                         |    2 
 drivers/hwmon/f75375s.c                          |    6 
 drivers/hwmon/hp_accel.c                         |    2 
 drivers/hwmon/k8temp.c                           |   35 ++
 drivers/hwmon/lis3lv02d.c                        |    4 
 drivers/hwmon/lm85.c                             |    1 
 drivers/hwmon/pc87360.c                          |   31 +-
 drivers/hwmon/sht15.c                            |    4 
 drivers/hwmon/via686a.c                          |   14 
 drivers/hwmon/w83627ehf.c                        |   59 +++-
 drivers/i2c/busses/i2c-pca-isa.c                 |   12 
 drivers/i2c/busses/i2c-pca-platform.c            |   13 
 drivers/i2c/i2c-core.c                           |   14 
 drivers/ide/ide-cd.c                             |   14 
 drivers/idle/intel_idle.c                        |    2 
 drivers/infiniband/core/cm.c                     |    1 
 drivers/infiniband/core/cma.c                    |   15 +
 drivers/infiniband/core/uverbs_cmd.c             |   99 +++---
 drivers/infiniband/hw/cxgb3/cxio_hal.h           |    2 
 drivers/infiniband/hw/cxgb3/iwch_cm.c            |    6 
 drivers/input/joydev.c                           |    3 
 drivers/input/mouse/appletouch.c                 |    6 
 drivers/input/mouse/bcm5974.c                    |   40 ++
 drivers/input/mouse/synaptics.h                  |    3 
 drivers/input/serio/i8042-x86ia64io.h            |   28 +
 drivers/input/serio/i8042.c                      |   73 +++-
 drivers/input/tablet/wacom_wac.c                 |    4 
 drivers/input/xen-kbdfront.c                     |   45 +--
 drivers/isdn/gigaset/bas-gigaset.c               |   89 ++----
 drivers/isdn/gigaset/capi.c                      |   17 -
 drivers/isdn/gigaset/isocdata.c                  |    8 
 drivers/isdn/hisax/config.c                      |   18 -
 drivers/isdn/hisax/hisax.h                       |    1 
 drivers/isdn/i4l/isdn_tty.c                      |    6 
 drivers/isdn/sc/ioctl.c                          |   10 
 drivers/leds/leds-ss4200.c                       |    1 
 drivers/md/dm-exception-store.c                  |    4 
 drivers/md/dm-exception-store.h                  |    3 
 drivers/md/dm-ioctl.c                            |   50 ++-
 drivers/md/dm-mpath.c                            |   12 
 drivers/md/dm-snap.c                             |   44 +-
 drivers/md/dm-table.c                            |    5 
 drivers/md/dm.c                                  |   68 +++-
 drivers/md/dm.h                                  |    5 
 drivers/md/md.c                                  |   86 +++--
 drivers/md/md.h                                  |    6 
 drivers/md/raid1.c                               |    1 
 drivers/md/raid10.c                              |   20 +
 drivers/media/IR/ir-keytable.c                   |    2 
 drivers/media/dvb/dvb-usb/dib0700_devices.c      |   55 +++
 drivers/media/dvb/frontends/dib7000p.c           |    2 
 drivers/media/dvb/frontends/dib7000p.h           |    3 
 drivers/media/dvb/ttpci/av7110_ca.c              |    2 
 drivers/media/radio/radio-aimslab.c              |   24 -
 drivers/media/video/cx231xx/Makefile             |    1 
 drivers/media/video/cx231xx/cx231xx-cards.c      |   17 -
 drivers/media/video/cx23885/cx23885-core.c       |    1 
 drivers/media/video/em28xx/em28xx-cards.c        |    4 
 drivers/media/video/gspca/gspca.c                |    1 
 drivers/media/video/gspca/sn9c20x.c              |    3 
 drivers/media/video/gspca/sonixj.c               |   20 -
 drivers/media/video/hdpvr/hdpvr-video.c          |    1 
 drivers/media/video/saa7134/saa7134-cards.c      |   24 -
 drivers/media/video/uvc/uvc_video.c              |   14 
 drivers/media/video/v4l2-compat-ioctl32.c        |   32 +-
 drivers/memstick/core/mspro_block.c              |    6 
 drivers/message/fusion/mptctl.c                  |    8 
 drivers/message/fusion/mptscsih.c                |    9 
 drivers/mfd/ucb1x00-ts.c                         |   12 
 drivers/mfd/wm831x-core.c                        |    8 
 drivers/mfd/wm831x-irq.c                         |    9 
 drivers/misc/ad525x_dpot-spi.c                   |    4 
 drivers/misc/enclosure.c                         |    7 
 drivers/misc/sgi-xp/xpc_partition.c              |   25 +
 drivers/misc/sgi-xp/xpc_uv.c                     |   17 +
 drivers/mmc/core/core.c                          |   73 ++++
 drivers/mmc/core/host.c                          |    6 
 drivers/mmc/core/sdio.c                          |    8 
 drivers/mmc/host/at91_mci.c                      |   13 
 drivers/mmc/host/atmel-mci.c                     |   18 -
 drivers/mmc/host/sdhci-s3c.c                     |    6 
 drivers/mmc/host/tmio_mmc.c                      |    7 
 drivers/mmc/host/tmio_mmc.h                      |   13 
 drivers/mtd/chips/cfi_cmdset_0001.c              |   20 -
 drivers/mtd/lpddr/lpddr_cmds.c                   |   20 -
 drivers/mtd/nand/mxc_nand.c                      |    2 
 drivers/mtd/nand/nand_base.c                     |    1 
 drivers/mtd/nand/omap2.c                         |    2 
 drivers/mtd/nand/plat_nand.c                     |    7 
 drivers/mtd/nand/pxa3xx_nand.c                   |    2 
 drivers/mtd/onenand/generic.c                    |    2 
 drivers/mtd/onenand/omap2.c                      |    2 
 drivers/net/8139cp.c                             |   10 
 drivers/net/atlx/atl1.c                          |    5 
 drivers/net/b44.c                                |    4 
 drivers/net/benet/be_cmds.c                      |    2 
 drivers/net/bonding/bond_3ad.c                   |    3 
 drivers/net/bonding/bond_alb.c                   |    3 
 drivers/net/bonding/bond_ipv6.c                  |    9 
 drivers/net/bonding/bonding.h                    |    4 
 drivers/net/cxgb3/cxgb3_main.c                   |    2 
 drivers/net/e100.c                               |    2 
 drivers/net/e1000/e1000_main.c                   |   15 -
 drivers/net/e1000e/82571.c                       |   31 +-
 drivers/net/e1000e/defines.h                     |    4 
 drivers/net/e1000e/hw.h                          |    2 
 drivers/net/e1000e/lib.c                         |   10 
 drivers/net/e1000e/netdev.c                      |   20 +
 drivers/net/eql.c                                |    2 
 drivers/net/gianfar.c                            |    6 
 drivers/net/gianfar_ethtool.c                    |    2 
 drivers/net/ifb.c                                |    2 
 drivers/net/igb/igb_main.c                       |   10 
 drivers/net/igbvf/netdev.c                       |    2 
 drivers/net/ixgb/ixgb_main.c                     |    2 
 drivers/net/ixgbe/ixgbe_main.c                   |    5 
 drivers/net/ixgbevf/ixgbevf_main.c               |    2 
 drivers/net/jme.c                                |   22 +
 drivers/net/myri10ge/myri10ge.c                  |    1 
 drivers/net/netxen/netxen_nic_init.c             |    3 
 drivers/net/pcmcia/pcnet_cs.c                    |    1 
 drivers/net/qlcnic/qlcnic_init.c                 |    5 
 drivers/net/r6040.c                              |   22 -
 drivers/net/r8169.c                              |   42 +-
 drivers/net/skge.c                               |   18 +
 drivers/net/smsc911x.c                           |   92 +++---
 drivers/net/tehuti.c                             |    4 
 drivers/net/usb/hso.c                            |    2 
 drivers/net/usb/usbnet.c                         |   11 
 drivers/net/wireless/ath/ath5k/base.c            |   25 +
 drivers/net/wireless/ath/ath9k/ar9002_calib.c    |    2 
 drivers/net/wireless/ath/ath9k/ar9003_eeprom.c   |    4 
 drivers/net/wireless/ath/ath9k/ath9k.h           |    4 
 drivers/net/wireless/ath/ath9k/eeprom.h          |    4 
 drivers/net/wireless/ath/ath9k/eeprom_4k.c       |    4 
 drivers/net/wireless/ath/ath9k/eeprom_9287.c     |    4 
 drivers/net/wireless/ath/ath9k/eeprom_def.c      |   18 -
 drivers/net/wireless/ath/ath9k/htc_drv_main.c    |    3 
 drivers/net/wireless/ath/ath9k/htc_drv_txrx.c    |   15 -
 drivers/net/wireless/ath/ath9k/hw.c              |   27 +
 drivers/net/wireless/ath/ath9k/main.c            |   11 
 drivers/net/wireless/ath/ath9k/xmit.c            |   95 +++---
 drivers/net/wireless/ath/regd.h                  |    1 
 drivers/net/wireless/b43/sdio.c                  |    3 
 drivers/net/wireless/hostap/hostap_cs.c          |   15 -
 drivers/net/wireless/iwlwifi/iwl-3945.c          |   17 -
 drivers/net/wireless/iwlwifi/iwl-agn-hcmd.c      |   17 -
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c        |   17 -
 drivers/net/wireless/iwlwifi/iwl-agn-tx.c        |   20 -
 drivers/net/wireless/iwlwifi/iwl-agn.c           |   98 +++++-
 drivers/net/wireless/iwlwifi/iwl-core.c          |   70 +---
 drivers/net/wireless/iwlwifi/iwl-core.h          |   13 
 drivers/net/wireless/iwlwifi/iwl-devtrace.h      |    2 
 drivers/net/wireless/iwlwifi/iwl-helpers.h       |    6 
 drivers/net/wireless/iwlwifi/iwl-scan.c          |   18 -
 drivers/net/wireless/iwlwifi/iwl3945-base.c      |   56 +++
 drivers/net/wireless/orinoco/main.c              |    6 
 drivers/net/wireless/orinoco/wext.c              |    4 
 drivers/net/wireless/p54/eeprom.c                |    4 
 drivers/net/wireless/p54/p54pci.c                |   14 
 drivers/net/wireless/p54/p54usb.c                |   22 +
 drivers/net/wireless/p54/txrx.c                  |    4 
 drivers/net/wireless/rt2x00/rt2400pci.c          |    6 
 drivers/net/wireless/rt2x00/rt2500pci.c          |   12 
 drivers/net/wireless/rt2x00/rt2500usb.c          |   12 
 drivers/net/wireless/rt2x00/rt2800.h             |    7 
 drivers/net/wireless/rt2x00/rt2800lib.c          |   59 ++--
 drivers/net/wireless/rt2x00/rt2x00.h             |    5 
 drivers/net/wireless/rt2x00/rt2x00dev.c          |    2 
 drivers/net/wireless/rt2x00/rt61pci.c            |   12 
 drivers/net/wireless/rt2x00/rt73usb.c            |   13 
 drivers/net/wireless/rtl818x/rtl8180_dev.c       |    2 
 drivers/net/wireless/wl12xx/wl1251_cmd.c         |    2 
 drivers/net/xen-netfront.c                       |    5 
 drivers/oprofile/buffer_sync.c                   |   27 -
 drivers/oprofile/cpu_buffer.c                    |    2 
 drivers/oprofile/timer_int.c                     |   13 
 drivers/parisc/led.c                             |    6 
 drivers/pci/dmar.c                               |    5 
 drivers/pci/hotplug/acpiphp_glue.c               |    1 
 drivers/pci/intel-iommu.c                        |  118 ++++----
 drivers/pci/msi.c                                |   27 +
 drivers/pci/pci-stub.c                           |    3 
 drivers/pci/pci-sysfs.c                          |   24 +
 drivers/pci/pci.h                                |    7 
 drivers/pci/proc.c                               |    2 
 drivers/pci/quirks.c                             |  108 ++++++-
 drivers/pcmcia/pcmcia_resource.c                 |    5 
 drivers/pcmcia/soc_common.c                      |    1 
 drivers/platform/x86/Kconfig                     |    1 
 drivers/platform/x86/acer-wmi.c                  |    4 
 drivers/platform/x86/asus-laptop.c               |    6 
 drivers/platform/x86/asus_acpi.c                 |    8 
 drivers/platform/x86/compal-laptop.c             |    9 
 drivers/platform/x86/dell-laptop.c               |    7 
 drivers/platform/x86/dell-wmi.c                  |    2 
 drivers/platform/x86/hp-wmi.c                    |   51 ++-
 drivers/platform/x86/tc1100-wmi.c                |    2 
 drivers/platform/x86/thinkpad_acpi.c             |   78 +++--
 drivers/platform/x86/wmi.c                       |    2 
 drivers/pnp/pnpacpi/core.c                       |   29 +
 drivers/power/apm_power.c                        |    1 
 drivers/power/ds2760_battery.c                   |    2 
 drivers/power/olpc_battery.c                     |    8 
 drivers/regulator/wm8994-regulator.c             |    5 
 drivers/rtc/rtc-cmos.c                           |   16 -
 drivers/rtc/rtc-rs5c372.c                        |    2 
 drivers/rtc/rtc-s3c.c                            |   13 
 drivers/s390/char/keyboard.c                     |    3 
 drivers/scsi/device_handler/scsi_dh_alua.c       |    2 
 drivers/scsi/gdth.c                              |    8 
 drivers/scsi/libsas/sas_ata.c                    |    1 
 drivers/scsi/libsas/sas_scsi_host.c              |    1 
 drivers/scsi/mpt2sas/mpt2sas_base.c              |   19 -
 drivers/scsi/mpt2sas/mpt2sas_scsih.c             |    3 
 drivers/scsi/qla2xxx/qla_iocb.c                  |    1 
 drivers/scsi/qla2xxx/qla_nx.c                    |    1 
 drivers/scsi/qla2xxx/qla_os.c                    |    1 
 drivers/scsi/scsi.c                              |    4 
 drivers/scsi/scsi_lib.c                          |    6 
 drivers/scsi/scsi_sysfs.c                        |    3 
 drivers/scsi/sd.c                                |   24 +
 drivers/scsi/ses.c                               |    4 
 drivers/serial/8250.c                            |    3 
 drivers/serial/8250_pci.c                        |   13 
 drivers/serial/bfin_sport_uart.c                 |    2 
 drivers/serial/suncore.c                         |   15 -
 drivers/ssb/b43_pci_bridge.c                     |    1 
 drivers/ssb/driver_chipcommon.c                  |    1 
 drivers/ssb/pci.c                                |   15 -
 drivers/staging/asus_oled/asus_oled.c            |    8 
 drivers/staging/batman-adv/hard-interface.c      |   21 -
 drivers/staging/batman-adv/originator.c          |   14 
 drivers/staging/batman-adv/soft-interface.c      |    4 
 drivers/staging/comedi/drivers/jr3_pci.c         |    7 
 drivers/staging/comedi/drivers/ni_labpc.c        |    3 
 drivers/staging/frontier/tranzport.c             |    2 
 drivers/staging/hv/Kconfig                       |    2 
 drivers/staging/hv/blkvsc_drv.c                  |    1 
 drivers/staging/hv/netvsc_drv.c                  |    4 
 drivers/staging/hv/ring_buffer.c                 |    3 
 drivers/staging/hv/storvsc_api.h                 |    4 
 drivers/staging/hv/storvsc_drv.c                 |   11 
 drivers/staging/iio/accel/adis16220_core.c       |    2 
 drivers/staging/line6/Kconfig                    |    1 
 drivers/staging/line6/control.c                  |  204 ++++++-------
 drivers/staging/line6/midi.c                     |    4 
 drivers/staging/line6/pod.c                      |   32 +-
 drivers/staging/line6/toneport.c                 |    4 
 drivers/staging/line6/variax.c                   |   12 
 drivers/staging/panel/panel.c                    |    2 
 drivers/staging/phison/phison.c                  |    2 
 drivers/staging/rt2860/usb_main_dev.c            |   44 ++
 drivers/staging/rtl8187se/r8185b_init.c          |   30 +-
 drivers/staging/samsung-laptop/samsung-laptop.c  |    2 
 drivers/staging/udlfb/udlfb.c                    |    2 
 drivers/staging/usbip/usbip_event.c              |   16 -
 drivers/staging/usbip/vhci.h                     |    6 
 drivers/staging/usbip/vhci_hcd.c                 |   70 +++-
 drivers/staging/usbip/vhci_rx.c                  |   15 -
 drivers/staging/vt6655/wpactl.c                  |   11 
 drivers/usb/atm/cxacru.c                         |   24 +
 drivers/usb/atm/ueagle-atm.c                     |    7 
 drivers/usb/class/cdc-acm.c                      |   31 +-
 drivers/usb/core/devio.c                         |    7 
 drivers/usb/core/file.c                          |   35 +-
 drivers/usb/core/hub.c                           |   41 ++
 drivers/usb/core/message.c                       |   37 +-
 drivers/usb/core/quirks.c                        |   11 
 drivers/usb/core/urb.c                           |   50 +--
 drivers/usb/gadget/atmel_usba_udc.c              |    3 
 drivers/usb/gadget/composite.c                   |   19 -
 drivers/usb/gadget/f_acm.c                       |    2 
 drivers/usb/gadget/g_ffs.c                       |    4 
 drivers/usb/gadget/multi.c                       |    4 
 drivers/usb/gadget/printer.c                     |   14 
 drivers/usb/gadget/rndis.c                       |   10 
 drivers/usb/host/ehci-hcd.c                      |   37 +-
 drivers/usb/host/ehci-pci.c                      |   40 ++
 drivers/usb/host/ehci-ppc-of.c                   |   12 
 drivers/usb/host/ehci-q.c                        |   12 
 drivers/usb/host/ehci-sched.c                    |   89 +++++-
 drivers/usb/host/ehci.h                          |    2 
 drivers/usb/host/isp1760-hcd.c                   |   22 +
 drivers/usb/host/isp1760-hcd.h                   |    1 
 drivers/usb/host/r8a66597.h                      |    2 
 drivers/usb/host/xhci-hub.c                      |    7 
 drivers/usb/host/xhci-mem.c                      |  173 +++++++++++
 drivers/usb/host/xhci-ring.c                     |   81 ++++-
 drivers/usb/host/xhci.c                          |   18 +
 drivers/usb/host/xhci.h                          |   41 ++
 drivers/usb/misc/cypress_cy7c63.c                |    6 
 drivers/usb/misc/iowarrior.c                     |    3 
 drivers/usb/misc/sisusbvga/sisusb.c              |    1 
 drivers/usb/misc/trancevibrator.c                |    2 
 drivers/usb/misc/usbled.c                        |    2 
 drivers/usb/misc/usbsevseg.c                     |   10 
 drivers/usb/misc/usbtest.c                       |    6 
 drivers/usb/misc/uss720.c                        |    7 
 drivers/usb/mon/mon_bin.c                        |    2 
 drivers/usb/musb/blackfin.c                      |    7 
 drivers/usb/musb/davinci.c                       |    2 
 drivers/usb/musb/musb_core.c                     |    5 
 drivers/usb/musb/musb_debugfs.c                  |   37 +-
 drivers/usb/musb/musb_gadget.c                   |   22 +
 drivers/usb/musb/musb_gadget.h                   |    2 
 drivers/usb/musb/musb_gadget_ep0.c               |    9 
 drivers/usb/musb/omap2430.c                      |    2 
 drivers/usb/musb/tusb6010.c                      |    4 
 drivers/usb/serial/ch341.c                       |   11 
 drivers/usb/serial/cp210x.c                      |   26 -
 drivers/usb/serial/digi_acceleport.c             |   10 
 drivers/usb/serial/ftdi_sio.c                    |  100 ++++++
 drivers/usb/serial/ftdi_sio_ids.h                |  118 +++++++-
 drivers/usb/serial/generic.c                     |   35 ++
 drivers/usb/serial/io_edgeport.c                 |    4 
 drivers/usb/serial/io_ti.c                       |    2 
 drivers/usb/serial/keyspan_pda.c                 |   17 -
 drivers/usb/serial/kobil_sct.c                   |    2 
 drivers/usb/serial/mct_u232.c                    |    7 
 drivers/usb/serial/mos7720.c                     |    3 
 drivers/usb/serial/mos7840.c                     |   35 +-
 drivers/usb/serial/navman.c                      |    1 
 drivers/usb/serial/opticon.c                     |    6 
 drivers/usb/serial/option.c                      |   66 ++++
 drivers/usb/serial/pl2303.c                      |   13 
 drivers/usb/serial/pl2303.h                      |    5 
 drivers/usb/serial/sierra.c                      |    4 
 drivers/usb/serial/spcp8x5.c                     |    5 
 drivers/usb/serial/ti_usb_3410_5052.c            |    2 
 drivers/usb/serial/usb-serial.c                  |    3 
 drivers/usb/serial/visor.c                       |   23 +
 drivers/usb/storage/sierra_ms.c                  |    2 
 drivers/usb/storage/unusual_cypress.h            |    5 
 drivers/usb/storage/unusual_devs.h               |   39 ++
 drivers/video/backlight/backlight.c              |   12 
 drivers/video/console/tileblit.c                 |    2 
 drivers/video/matrox/matroxfb_base.h             |    4 
 drivers/video/sis/sis_main.c                     |    3 
 drivers/video/via/accel.c                        |    7 
 drivers/video/via/ioctl.c                        |    2 
 drivers/video/via/via_i2c.c                      |   27 +
 drivers/video/w100fb.c                           |    4 
 drivers/virtio/virtio_pci.c                      |   20 -
 drivers/watchdog/rdc321x_wdt.c                   |    2 
 drivers/xen/events.c                             |   24 +
 firmware/Makefile                                |    2 
 fs/aio.c                                         |   17 -
 fs/binfmt_misc.c                                 |    2 
 fs/bio.c                                         |   23 +
 fs/block_dev.c                                   |   14 
 fs/char_dev.c                                    |    5 
 fs/cifs/cifsproto.h                              |    5 
 fs/cifs/cifssmb.c                                |    4 
 fs/cifs/connect.c                                |    6 
 fs/cifs/dir.c                                    |   12 
 fs/cifs/file.c                                   |   25 -
 fs/cifs/inode.c                                  |   12 
 fs/compat.c                                      |   30 +-
 fs/dcache.c                                      |    3 
 fs/direct-io.c                                   |   30 +-
 fs/ecryptfs/file.c                               |   60 ++--
 fs/ecryptfs/inode.c                              |   18 -
 fs/ecryptfs/keystore.c                           |    1 
 fs/ecryptfs/mmap.c                               |    5 
 fs/eventpoll.c                                   |   95 ++++++
 fs/exec.c                                        |   51 +++
 fs/ext2/namei.c                                  |    9 
 fs/ext3/namei.c                                  |    2 
 fs/ext3/super.c                                  |    7 
 fs/ext4/ext4.h                                   |    4 
 fs/ext4/inode.c                                  |   17 -
 fs/ext4/super.c                                  |    4 
 fs/file_table.c                                  |    2 
 fs/fuse/dev.c                                    |   16 -
 fs/fuse/file.c                                   |  134 ++++++++-
 fs/fuse/fuse_i.h                                 |    6 
 fs/gfs2/log.c                                    |    2 
 fs/jfs/xattr.c                                   |   87 ++---
 fs/minix/namei.c                                 |    2 
 fs/namespace.c                                   |    2 
 fs/nfs/client.c                                  |    2 
 fs/nfs/dir.c                                     |    2 
 fs/nfs/direct.c                                  |   34 +-
 fs/nfs/file.c                                    |   21 -
 fs/nfs/mount_clnt.c                              |    4 
 fs/nfs/nfs4proc.c                                |   17 -
 fs/nfs/nfs4state.c                               |   17 -
 fs/nfs/super.c                                   |   15 +
 fs/nfsd/nfs3xdr.c                                |    6 
 fs/nfsd/nfs4proc.c                               |    4 
 fs/nfsd/nfs4xdr.c                                |   11 
 fs/nfsd/vfs.c                                    |    2 
 fs/nfsd/xdr4.h                                   |   21 -
 fs/nilfs2/super.c                                |    4 
 fs/notify/inotify/inotify_user.c                 |    8 
 fs/ocfs2/acl.c                                   |   33 +-
 fs/ocfs2/aops.c                                  |    7 
 fs/ocfs2/dlm/dlmmaster.c                         |    9 
 fs/ocfs2/dlm/dlmrecovery.c                       |   22 -
 fs/ocfs2/dlm/dlmthread.c                         |  114 +++----
 fs/ocfs2/inode.c                                 |    6 
 fs/ocfs2/refcounttree.c                          |   27 +
 fs/ocfs2/stack_user.c                            |    2 
 fs/ocfs2/symlink.c                               |    2 
 fs/partitions/ldm.c                              |    5 
 fs/partitions/mac.c                              |   17 -
 fs/pipe.c                                        |   16 -
 fs/proc/array.c                                  |    7 
 fs/proc/task_mmu.c                               |   13 
 fs/proc/vmcore.c                                 |    2 
 fs/reiserfs/ioctl.c                              |   12 
 fs/reiserfs/xattr_acl.c                          |    6 
 fs/signalfd.c                                    |    2 
 fs/splice.c                                      |   24 -
 fs/super.c                                       |    6 
 fs/sysfs/file.c                                  |    2 
 fs/xfs/linux-2.6/xfs_aops.c                      |   24 +
 fs/xfs/linux-2.6/xfs_aops.h                      |    2 
 fs/xfs/linux-2.6/xfs_ioctl.c                     |    2 
 fs/xfs/linux-2.6/xfs_sync.c                      |   16 -
 fs/xfs/linux-2.6/xfs_sync.h                      |    1 
 fs/xfs/xfs_ialloc.c                              |   16 -
 fs/xfs/xfs_iget.c                                |    1 
 fs/xfs/xfs_inode.c                               |   49 +--
 include/acpi/platform/aclinux.h                  |   10 
 include/drm/drmP.h                               |   13 
 include/drm/drm_pciids.h                         |   10 
 include/keys/rxrpc-type.h                        |    1 
 include/linux/Kbuild                             |    1 
 include/linux/binfmts.h                          |    5 
 include/linux/blkdev.h                           |   13 
 include/linux/bootmem.h                          |    2 
 include/linux/compat.h                           |    3 
 include/linux/filter.h                           |   48 +++
 include/linux/fs.h                               |   10 
 include/linux/ftrace.h                           |    2 
 include/linux/gfp.h                              |    4 
 include/linux/hardirq.h                          |    9 
 include/linux/ieee80211.h                        |    2 
 include/linux/intel-gtt.h                        |   20 +
 include/linux/interrupt.h                        |    7 
 include/linux/klist.h                            |    2 
 include/linux/ksm.h                              |   20 -
 include/linux/kvm_host.h                         |    1 
 include/linux/libata.h                           |    1 
 include/linux/mfd/wm8994/pdata.h                 |    2 
 include/linux/mm.h                               |   14 
 include/linux/mm_types.h                         |    2 
 include/linux/mmc/host.h                         |    3 
 include/linux/mmzone.h                           |   13 
 include/linux/msi.h                              |    2 
 include/linux/mtd/flashchip.h                    |    2 
 include/linux/netdevice.h                        |    6 
 include/linux/netfilter.h                        |    2 
 include/linux/notifier.h                         |    1 
 include/linux/pci_ids.h                          |    4 
 include/linux/perf_event.h                       |    1 
 include/linux/pipe_fs_i.h                        |    1 
 include/linux/pm_runtime.h                       |    3 
 include/linux/radix-tree.h                       |   36 +-
 include/linux/sched.h                            |   33 +-
 include/linux/skbuff.h                           |    4 
 include/linux/socket.h                           |    5 
 include/linux/swap.h                             |    3 
 include/linux/tipc.h                             |   30 +-
 include/linux/tty.h                              |    3 
 include/linux/usb/quirks.h                       |    4 
 include/linux/usb/serial.h                       |    3 
 include/linux/user_namespace.h                   |   14 
 include/linux/vmstat.h                           |   22 +
 include/net/af_unix.h                            |    6 
 include/net/mac80211.h                           |   16 +
 include/net/scm.h                                |   28 +
 include/net/sock.h                               |    5 
 include/net/tcp.h                                |   36 ++
 include/net/udp.h                                |    1 
 include/scsi/scsi_device.h                       |    2 
 include/sound/emu10k1.h                          |    1 
 include/trace/events/timer.h                     |    8 
 include/xen/interface/io/ring.h                  |   11 
 init/calibrate.c                                 |    6 
 ipc/compat.c                                     |    6 
 ipc/compat_mq.c                                  |    5 
 ipc/shm.c                                        |    1 
 kernel/compat.c                                  |   21 +
 kernel/cpuset.c                                  |    7 
 kernel/cred.c                                    |   16 -
 kernel/exit.c                                    |   22 +
 kernel/fork.c                                    |    8 
 kernel/futex.c                                   |   31 +-
 kernel/gcov/fs.c                                 |  244 ++++++++++++----
 kernel/groups.c                                  |    5 
 kernel/hrtimer.c                                 |   13 
 kernel/hw_breakpoint.c                           |    3 
 kernel/irq/manage.c                              |    4 
 kernel/irq/proc.c                                |    2 
 kernel/latencytop.c                              |   17 -
 kernel/perf_event.c                              |   46 ++-
 kernel/power/hibernate.c                         |   22 -
 kernel/power/main.c                              |    1 
 kernel/power/power.h                             |    9 
 kernel/power/snapshot.c                          |  105 +++++--
 kernel/power/suspend.c                           |    5 
 kernel/power/user.c                              |    4 
 kernel/printk.c                                  |    4 
 kernel/ptrace.c                                  |    2 
 kernel/sched.c                                   |  338 +++++++++++++++++++----
 kernel/sched_fair.c                              |  137 +++++++--
 kernel/sched_features.h                          |    5 
 kernel/sched_rt.c                                |   34 +-
 kernel/signal.c                                  |   25 +
 kernel/smp.c                                     |   67 ++++
 kernel/softirq.c                                 |   64 ++--
 kernel/sys.c                                     |    2 
 kernel/time/tick-broadcast.c                     |   10 
 kernel/time/tick-common.c                        |    6 
 kernel/time/tick-internal.h                      |    3 
 kernel/time/tick-sched.c                         |    2 
 kernel/time/timekeeping.c                        |   14 
 kernel/timer.c                                   |    8 
 kernel/trace/ftrace.c                            |   71 ++++
 kernel/trace/ring_buffer.c                       |    5 
 kernel/trace/trace.c                             |   10 
 kernel/trace/trace_functions_graph.c             |   10 
 kernel/user.c                                    |    2 
 kernel/user_namespace.c                          |   44 ++
 lib/list_sort.c                                  |    2 
 lib/percpu_counter.c                             |    1 
 lib/radix-tree.c                                 |   78 +++--
 mm/backing-dev.c                                 |    2 
 mm/bounce.c                                      |    2 
 mm/compaction.c                                  |    7 
 mm/filemap.c                                     |   29 -
 mm/internal.h                                    |    2 
 mm/ksm.c                                         |    9 
 mm/memory.c                                      |   87 +++++
 mm/memory_hotplug.c                              |   18 -
 mm/mempolicy.c                                   |    2 
 mm/mlock.c                                       |   13 
 mm/mmap.c                                        |   41 ++
 mm/mmzone.c                                      |   21 +
 mm/mprotect.c                                    |    2 
 mm/mremap.c                                      |    4 
 mm/nommu.c                                       |    8 
 mm/page-writeback.c                              |   26 -
 mm/page_alloc.c                                  |   54 ++-
 mm/percpu.c                                      |    2 
 mm/shmem.c                                       |    1 
 mm/slab.c                                        |   12 
 mm/swapfile.c                                    |   29 +
 mm/vmalloc.c                                     |    9 
 mm/vmscan.c                                      |   43 ++
 mm/vmstat.c                                      |   15 -
 net/9p/trans_fd.c                                |    2 
 net/Kconfig                                      |    2 
 net/ax25/af_ax25.c                               |    2 
 net/bridge/br_device.c                           |    8 
 net/bridge/br_fdb.c                              |    2 
 net/bridge/br_input.c                            |    6 
 net/bridge/br_multicast.c                        |    2 
 net/bridge/br_netfilter.c                        |    6 
 net/bridge/br_stp_bpdu.c                         |    2 
 net/can/bcm.c                                    |   43 +-
 net/can/raw.c                                    |    4 
 net/compat.c                                     |   10 
 net/core/dev.c                                   |   42 +-
 net/core/dst.c                                   |    1 
 net/core/ethtool.c                               |    4 
 net/core/filter.c                                |  295 +++++++++++++-------
 net/core/iovec.c                                 |   15 -
 net/core/rtnetlink.c                             |    3 
 net/core/scm.c                                   |   24 +
 net/core/skbuff.c                                |    6 
 net/core/sock.c                                  |   15 +
 net/core/stream.c                                |    8 
 net/dccp/input.c                                 |    7 
 net/decnet/af_decnet.c                           |    2 
 net/econet/af_econet.c                           |   99 +++---
 net/ipv4/datagram.c                              |    5 
 net/ipv4/devinet.c                               |   29 +
 net/ipv4/ip_gre.c                                |    1 
 net/ipv4/ip_output.c                             |   19 -
 net/ipv4/ipip.c                                  |    1 
 net/ipv4/netfilter/arp_tables.c                  |    3 
 net/ipv4/netfilter/arpt_mangle.c                 |    6 
 net/ipv4/netfilter/ip_tables.c                   |    3 
 net/ipv4/route.c                                 |    7 
 net/ipv4/tcp.c                                   |   52 +--
 net/ipv4/tcp_input.c                             |    2 
 net/ipv4/tcp_ipv4.c                              |    8 
 net/ipv4/tcp_output.c                            |   42 +-
 net/ipv4/tcp_timer.c                             |   32 +-
 net/ipv4/udp.c                                   |   48 +++
 net/ipv4/xfrm4_policy.c                          |    2 
 net/ipv6/addrconf.c                              |    4 
 net/ipv6/datagram.c                              |    7 
 net/ipv6/ip6_output.c                            |   18 -
 net/ipv6/ip6_tunnel.c                            |    1 
 net/ipv6/netfilter/ip6_tables.c                  |    3 
 net/ipv6/route.c                                 |   28 +
 net/ipv6/sit.c                                   |    2 
 net/ipv6/udp.c                                   |   10 
 net/irda/af_irda.c                               |    4 
 net/irda/iriap.c                                 |    3 
 net/irda/irlan/irlan_common.c                    |    2 
 net/irda/parameters.c                            |    4 
 net/l2tp/l2tp_eth.c                              |    2 
 net/l2tp/l2tp_ip.c                               |    6 
 net/llc/af_llc.c                                 |    8 
 net/mac80211/agg-tx.c                            |    3 
 net/mac80211/cfg.c                               |    5 
 net/mac80211/ibss.c                              |    1 
 net/mac80211/ieee80211_i.h                       |    2 
 net/mac80211/main.c                              |    9 
 net/mac80211/mesh_plink.c                        |   42 ++
 net/mac80211/mlme.c                              |   48 ++-
 net/mac80211/offchannel.c                        |    7 
 net/mac80211/rate.c                              |    3 
 net/mac80211/rx.c                                |    7 
 net/mac80211/sta_info.c                          |    1 
 net/mac80211/status.c                            |    1 
 net/mac80211/tx.c                                |   24 +
 net/netfilter/nf_conntrack_core.c                |    3 
 net/netfilter/nf_log.c                           |    4 
 net/netfilter/xt_SECMARK.c                       |    2 
 net/netlink/af_netlink.c                         |   65 ++--
 net/packet/af_packet.c                           |    7 
 net/phonet/pep.c                                 |    3 
 net/rds/page.c                                   |   27 -
 net/rds/rdma.c                                   |    2 
 net/rds/recv.c                                   |    2 
 net/rose/af_rose.c                               |    4 
 net/sched/act_nat.c                              |    3 
 net/sched/cls_cgroup.c                           |    4 
 net/sched/sch_generic.c                          |   18 +
 net/sched/sch_sfq.c                              |   13 
 net/sctp/auth.c                                  |    8 
 net/sctp/output.c                                |    1 
 net/sctp/protocol.c                              |    4 
 net/socket.c                                     |    4 
 net/sunrpc/auth_gss/auth_gss.c                   |    9 
 net/sunrpc/rpc_pipe.c                            |    6 
 net/sunrpc/sched.c                               |   14 
 net/sunrpc/svc_xprt.c                            |    9 
 net/sunrpc/xprtsock.c                            |    2 
 net/tipc/subscr.c                                |   68 ++--
 net/tipc/subscr.h                                |    2 
 net/unix/af_unix.c                               |  101 ++++--
 net/unix/garbage.c                               |    9 
 net/wireless/chan.c                              |   53 +++
 net/wireless/mlme.c                              |   16 -
 net/wireless/nl80211.c                           |   11 
 net/wireless/reg.c                               |    2 
 net/wireless/scan.c                              |   17 -
 net/wireless/wext-compat.c                       |    3 
 net/wireless/wext-core.c                         |   16 +
 net/wireless/wext-priv.c                         |    2 
 net/x25/x25_facilities.c                         |   20 -
 net/x25/x25_in.c                                 |    2 
 net/x25/x25_link.c                               |    4 
 scripts/mkmakefile                               |    4 
 security/integrity/ima/ima.h                     |    1 
 security/integrity/ima/ima_iint.c                |    4 
 security/integrity/ima/ima_main.c                |    8 
 security/integrity/ima/ima_policy.c              |    2 
 security/keys/keyctl.c                           |    6 
 security/selinux/hooks.c                         |   11 
 security/selinux/nlmsgtab.c                      |    2 
 sound/core/control.c                             |    5 
 sound/core/hrtimer.c                             |    5 
 sound/core/init.c                                |    4 
 sound/core/oss/mixer_oss.c                       |   12 
 sound/core/oss/pcm_oss.c                         |   19 -
 sound/core/pcm_native.c                          |    4 
 sound/core/rawmidi.c                             |    4 
 sound/core/seq/oss/seq_oss_init.c                |    9 
 sound/oss/opl3.c                                 |   15 -
 sound/oss/soundcard.c                            |    8 
 sound/pci/au88x0/au88x0_pcm.c                    |   24 +
 sound/pci/ctxfi/ctatc.c                          |    2 
 sound/pci/ctxfi/ctdaio.c                         |    2 
 sound/pci/ctxfi/ctmixer.c                        |   19 -
 sound/pci/emu10k1/emu10k1.c                      |    4 
 sound/pci/emu10k1/emupcm.c                       |   30 +-
 sound/pci/emu10k1/memory.c                       |    4 
 sound/pci/hda/hda_codec.c                        |    2 
 sound/pci/hda/hda_eld.c                          |    2 
 sound/pci/hda/hda_intel.c                        |   19 +
 sound/pci/hda/patch_analog.c                     |    1 
 sound/pci/hda/patch_ca0110.c                     |    2 
 sound/pci/hda/patch_cirrus.c                     |   50 +++
 sound/pci/hda/patch_conexant.c                   |   92 ++++++
 sound/pci/hda/patch_nvhdmi.c                     |   61 ++--
 sound/pci/hda/patch_realtek.c                    |   76 ++++-
 sound/pci/hda/patch_sigmatel.c                   |   39 ++
 sound/pci/intel8x0.c                             |   12 
 sound/pci/oxygen/oxygen.c                        |    4 
 sound/pci/oxygen/oxygen.h                        |    1 
 sound/pci/oxygen/oxygen_lib.c                    |   21 +
 sound/pci/oxygen/virtuoso.c                      |    1 
 sound/pci/oxygen/xonar_wm87x6.c                  |   22 +
 sound/pci/riptide/riptide.c                      |   11 
 sound/pci/rme9652/hdsp.c                         |    1 
 sound/pci/rme9652/hdspm.c                        |    1 
 sound/soc/blackfin/bf5xx-ac97.c                  |    4 
 sound/soc/codecs/wm8580.c                        |    8 
 sound/soc/codecs/wm8776.c                        |    7 
 sound/soc/codecs/wm8900.c                        |    6 
 sound/soc/codecs/wm8904.c                        |    3 
 sound/soc/codecs/wm8955.c                        |    3 
 sound/soc/codecs/wm8961.c                        |    4 
 sound/soc/codecs/wm8990.c                        |   10 
 sound/soc/codecs/wm_hubs.c                       |    2 
 sound/soc/soc-cache.c                            |    4 
 sound/usb/caiaq/audio.c                          |    2 
 sound/usb/caiaq/midi.c                           |    2 
 sound/usb/card.c                                 |   19 -
 sound/usb/clock.c                                |    3 
 sound/usb/endpoint.c                             |   11 
 sound/usb/format.c                               |   14 
 sound/usb/mixer.c                                |   10 
 sound/usb/pcm.c                                  |    3 
 sound/usb/usx2y/us122l.c                         |   41 +-
 tools/perf/util/callchain.h                      |    1 
 tools/perf/util/session.c                        |    1 
 virt/kvm/eventfd.c                               |    3 
 virt/kvm/kvm_main.c                              |    5 
 1033 files changed, 12040 insertions(+), 5430 deletions(-)

