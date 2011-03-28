From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.33.9 released
Date: Mon, 28 Mar 2011 16:45:54 GMT
Message-ID: <201103281645.p2SGjsHS026353@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.33.9 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.33/patch-2.6.33.9.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.33/linux-2.6.33.9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               365818           1516044
Full source                       66226244         395294720

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/proc.txt              |    3 
 Documentation/filesystems/tmpfs.txt             |    6 
 Documentation/hwmon/ltc4245                     |    4 
 Documentation/i2c/busses/i2c-i801               |    3 
 Documentation/i2c/instantiating-devices         |    2 
 Documentation/kernel-parameters.txt             |    7 
 Documentation/laptops/thinkpad-acpi.txt         |    4 
 MAINTAINERS                                     |    6 
 Makefile                                        |    2 
 arch/Kconfig                                    |    2 
 arch/arm/boot/compressed/head.S                 |   52 -
 arch/arm/boot/compressed/vmlinux.lds.in         |    3 
 arch/arm/common/sa1111.c                        |    9 
 arch/arm/include/asm/assembler.h                |    2 
 arch/arm/kernel/kprobes-decode.c                |    5 
 arch/arm/kernel/signal.c                        |    4 
 arch/arm/lib/findbit.S                          |    6 
 arch/arm/mach-omap2/board-rx51-peripherals.c    |   17 
 arch/arm/mach-pxa/include/mach/colibri.h        |    1 
 arch/arm/mach-realview/Kconfig                  |    2 
 arch/arm/mach-realview/include/mach/barriers.h  |    8 
 arch/arm/mm/copypage-feroceon.c                 |    4 
 arch/arm/mm/copypage-v4wb.c                     |    4 
 arch/arm/mm/copypage-v4wt.c                     |    4 
 arch/arm/mm/copypage-xsc3.c                     |    4 
 arch/arm/mm/fault.c                             |    3 
 arch/arm/mm/init.c                              |    6 
 arch/arm/vfp/vfphw.S                            |    2 
 arch/blackfin/include/asm/cache.h               |    2 
 arch/frv/include/asm/cache.h                    |    2 
 arch/ia64/include/asm/compat.h                  |    2 
 arch/ia64/kernel/fsys.S                         |   30 
 arch/ia64/kvm/kvm-ia64.c                        |    9 
 arch/ia64/mm/tlb.c                              |    2 
 arch/m68k/include/asm/cache.h                   |    2 
 arch/mips/alchemy/mtx-1/platform.c              |    9 
 arch/mips/include/asm/compat.h                  |    2 
 arch/mips/include/asm/mach-sibyte/war.h         |    6 
 arch/mips/include/asm/mipsregs.h                |    9 
 arch/mips/math-emu/cp1emu.c                     |   15 
 arch/mips/sibyte/sb1250/setup.c                 |   15 
 arch/mn10300/include/asm/cache.h                |    2 
 arch/parisc/include/asm/compat.h                |    2 
 arch/parisc/kernel/irq.c                        |    2 
 arch/parisc/math-emu/decode_exc.c               |    1 
 arch/powerpc/include/asm/compat.h               |    2 
 arch/powerpc/include/asm/cpm.h                  |   24 
 arch/powerpc/include/asm/hvcall.h               |    1 
 arch/powerpc/include/asm/hw_irq.h               |   38 
 arch/powerpc/include/asm/reg.h                  |    1 
 arch/powerpc/kernel/asm-offsets.c               |    1 
 arch/powerpc/kernel/cpu_setup_6xx.S             |   40 -
 arch/powerpc/kernel/crash.c                     |   38 
 arch/powerpc/kernel/entry_64.S                  |    9 
 arch/powerpc/kernel/head_64.S                   |   11 
 arch/powerpc/kernel/irq.c                       |   11 
 arch/powerpc/kernel/machine_kexec_64.c          |   25 
 arch/powerpc/kernel/perf_event.c                |   32 
 arch/powerpc/kernel/ppc970-pmu.c                |    2 
 arch/powerpc/kernel/rtas_flash.c                |   39 -
 arch/powerpc/kernel/setup_64.c                  |   17 
 arch/powerpc/kernel/time.c                      |   60 +
 arch/powerpc/kvm/book3s.c                       |   15 
 arch/powerpc/kvm/booke.c                        |   15 
 arch/powerpc/kvm/powerpc.c                      |    3 
 arch/powerpc/lib/string.S                       |    4 
 arch/powerpc/mm/fsl_booke_mmu.c                 |    5 
 arch/powerpc/oprofile/op_model_cell.c           |    2 
 arch/powerpc/platforms/pseries/hotplug-cpu.c    |   72 -
 arch/powerpc/platforms/pseries/hvCall.S         |   38 
 arch/powerpc/platforms/pseries/lpar.c           |   70 +
 arch/powerpc/platforms/pseries/offline_states.h |   23 
 arch/powerpc/platforms/pseries/plpar_wrappers.h |   26 
 arch/powerpc/platforms/pseries/smp.c            |   28 
 arch/powerpc/sysdev/fsl_rio.c                   |    1 
 arch/powerpc/sysdev/micropatch.c                |   12 
 arch/s390/include/asm/compat.h                  |    2 
 arch/s390/include/asm/processor.h               |    5 
 arch/s390/include/asm/vdso.h                    |    2 
 arch/s390/kernel/ptrace.c                       |    5 
 arch/s390/kernel/traps.c                        |   37 
 arch/s390/kernel/vtime.c                        |   19 
 arch/s390/kvm/kvm-s390.c                        |    4 
 arch/s390/mm/vmem.c                             |   11 
 arch/sh/boot/compressed/misc.c                  |    2 
 arch/sh/include/asm/elf.h                       |    6 
 arch/sh/kernel/smp.c                            |    1 
 arch/sparc/include/asm/compat.h                 |    2 
 arch/sparc/include/asm/irqflags_64.h            |   23 
 arch/sparc/include/asm/stat.h                   |    4 
 arch/sparc/include/asm/thread_info_64.h         |    2 
 arch/sparc/kernel/pci_common.c                  |   11 
 arch/sparc/kernel/perf_event.c                  |    4 
 arch/sparc/kernel/ptrace_32.c                   |    4 
 arch/sparc/kernel/ptrace_64.c                   |    4 
 arch/sparc/kernel/rtrap_64.S                    |   12 
 arch/sparc/kernel/traps_64.c                    |   26 
 arch/sparc/kernel/unaligned_64.c                |    6 
 arch/sparc/prom/p1275.c                         |   12 
 arch/um/drivers/ubd_kern.c                      |    9 
 arch/um/kernel/uml.lds.S                        |    2 
 arch/um/os-Linux/time.c                         |    2 
 arch/um/sys-x86_64/Makefile                     |    3 
 arch/x86/Kconfig                                |    4 
 arch/x86/Kconfig.cpu                            |    2 
 arch/x86/ia32/ia32_aout.c                       |    1 
 arch/x86/ia32/ia32entry.S                       |   22 
 arch/x86/include/asm/acpi.h                     |    1 
 arch/x86/include/asm/amd_iommu_proto.h          |    6 
 arch/x86/include/asm/amd_iommu_types.h          |   12 
 arch/x86/include/asm/compat.h                   |    2 
 arch/x86/include/asm/cpufeature.h               |    2 
 arch/x86/include/asm/fixmap.h                   |    6 
 arch/x86/include/asm/io.h                       |    1 
 arch/x86/include/asm/io_apic.h                  |    1 
 arch/x86/include/asm/k8.h                       |    5 
 arch/x86/include/asm/kvm_host.h                 |    3 
 arch/x86/include/asm/mmu_context.h              |    5 
 arch/x86/include/asm/msr-index.h                |    8 
 arch/x86/include/asm/pgalloc.h                  |    5 
 arch/x86/include/asm/pgtable-3level.h           |   11 
 arch/x86/include/asm/pgtable_32.h               |    1 
 arch/x86/include/asm/processor.h                |   23 
 arch/x86/include/asm/pvclock.h                  |    1 
 arch/x86/include/asm/rwsem.h                    |   81 +-
 arch/x86/include/asm/smp.h                      |   18 
 arch/x86/include/asm/smpboot_hooks.h            |    2 
 arch/x86/include/asm/suspend_32.h               |    2 
 arch/x86/include/asm/suspend_64.h               |    2 
 arch/x86/include/asm/system.h                   |    2 
 arch/x86/include/asm/trampoline.h               |    5 
 arch/x86/include/asm/uv/uv_hub.h                |    3 
 arch/x86/include/asm/vmx.h                      |    1 
 arch/x86/kernel/Makefile                        |    2 
 arch/x86/kernel/acpi/boot.c                     |   23 
 arch/x86/kernel/acpi/cstate.c                   |    9 
 arch/x86/kernel/acpi/sleep.c                    |    2 
 arch/x86/kernel/amd_iommu.c                     |   26 
 arch/x86/kernel/amd_iommu_init.c                |   92 +-
 arch/x86/kernel/aperture_64.c                   |   15 
 arch/x86/kernel/apic/apic.c                     |   12 
 arch/x86/kernel/apic/io_apic.c                  |   85 +-
 arch/x86/kernel/apic/probe_64.c                 |    7 
 arch/x86/kernel/cpu/amd.c                       |    3 
 arch/x86/kernel/cpu/common.c                    |    4 
 arch/x86/kernel/cpu/cpu.h                       |    1 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c      |    1 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c       |    3 
 arch/x86/kernel/cpu/intel.c                     |   25 
 arch/x86/kernel/cpu/intel_cacheinfo.c           |  254 ++++--
 arch/x86/kernel/cpu/mcheck/mce_amd.c            |    9 
 arch/x86/kernel/cpu/mtrr/cleanup.c              |    2 
 arch/x86/kernel/cpu/mtrr/main.c                 |   10 
 arch/x86/kernel/cpu/perf_event.c                |  118 ++-
 arch/x86/kernel/crash.c                         |    6 
 arch/x86/kernel/crash_dump_64.c                 |    3 
 arch/x86/kernel/dumpstack_64.c                  |   10 
 arch/x86/kernel/e820.c                          |   10 
 arch/x86/kernel/early-quirks.c                  |   21 
 arch/x86/kernel/entry_64.S                      |    2 
 arch/x86/kernel/head64.c                        |    3 
 arch/x86/kernel/head_32.S                       |    8 
 arch/x86/kernel/hpet.c                          |   12 
 arch/x86/kernel/hw_breakpoint.c                 |    9 
 arch/x86/kernel/k8.c                            |   14 
 arch/x86/kernel/kgdb.c                          |    2 
 arch/x86/kernel/mpparse.c                       |    4 
 arch/x86/kernel/olpc.c                          |    5 
 arch/x86/kernel/pci-calgary_64.c                |   17 
 arch/x86/kernel/pci-gart_64.c                   |    5 
 arch/x86/kernel/process.c                       |   34 
 arch/x86/kernel/process_64.c                    |    4 
 arch/x86/kernel/pvclock.c                       |   29 
 arch/x86/kernel/reboot.c                        |   10 
 arch/x86/kernel/setup.c                         |   18 
 arch/x86/kernel/smp.c                           |   15 
 arch/x86/kernel/smpboot.c                       |  117 ++-
 arch/x86/kernel/tboot.c                         |    1 
 arch/x86/kernel/trampoline.c                    |   17 
 arch/x86/kernel/traps.c                         |   11 
 arch/x86/kvm/emulate.c                          |   55 -
 arch/x86/kvm/mmu.c                              |   28 
 arch/x86/kvm/svm.c                              |  285 +++++--
 arch/x86/kvm/vmx.c                              |   84 +-
 arch/x86/kvm/x86.c                              |  106 +-
 arch/x86/lib/Makefile                           |    3 
 arch/x86/lib/cache-smp.c                        |   19 
 arch/x86/lib/rwsem_64.S                         |   81 ++
 arch/x86/mm/fault.c                             |    7 
 arch/x86/mm/init.c                              |   19 
 arch/x86/mm/init_64.c                           |   11 
 arch/x86/mm/pageattr.c                          |   25 
 arch/x86/mm/pgtable.c                           |   34 
 arch/x86/mm/srat_64.c                           |    8 
 arch/x86/oprofile/nmi_int.c                     |   27 
 arch/x86/oprofile/op_model_amd.c                |   42 -
 arch/x86/oprofile/op_model_p4.c                 |    6 
 arch/x86/oprofile/op_model_ppro.c               |    6 
 arch/x86/pci/irq.c                              |    2 
 arch/x86/pci/mmconfig-shared.c                  |   17 
 arch/x86/power/cpu.c                            |    4 
 arch/x86/power/hibernate_asm_32.S               |   15 
 arch/x86/vdso/Makefile                          |    4 
 arch/x86/xen/enlighten.c                        |   11 
 arch/x86/xen/mmu.c                              |   24 
 arch/x86/xen/smp.c                              |    6 
 arch/x86/xen/suspend.c                          |    4 
 arch/x86/xen/time.c                             |    2 
 arch/xtensa/include/asm/cache.h                 |    1 
 block/blk-map.c                                 |    2 
 block/blk-settings.c                            |    2 
 block/blk-timeout.c                             |   12 
 block/bsg.c                                     |    2 
 block/cfq-iosched.c                             |   37 
 block/scsi_ioctl.c                              |   34 
 crypto/async_tx/async_raid6_recov.c             |   21 
 crypto/authenc.c                                |   16 
 drivers/Makefile                                |    2 
 drivers/acpi/acpica/aclocal.h                   |    1 
 drivers/acpi/acpica/dswexec.c                   |   19 
 drivers/acpi/acpica/exprep.c                    |   17 
 drivers/acpi/blacklist.c                        |   16 
 drivers/acpi/ec.c                               |   38 
 drivers/acpi/power_meter.c                      |    2 
 drivers/acpi/processor_idle.c                   |    2 
 drivers/acpi/sleep.c                            |  101 --
 drivers/acpi/video_detect.c                     |    2 
 drivers/ata/ahci.c                              |   61 +
 drivers/ata/ata_generic.c                       |    6 
 drivers/ata/ata_piix.c                          |    8 
 drivers/ata/libata-core.c                       |   34 
 drivers/ata/libata-eh.c                         |    5 
 drivers/ata/libata-scsi.c                       |    5 
 drivers/ata/libata-sff.c                        |    2 
 drivers/ata/pata_hpt3x2n.c                      |   20 
 drivers/ata/pata_mpc52xx.c                      |    2 
 drivers/ata/pata_via.c                          |    5 
 drivers/ata/sata_nv.c                           |    5 
 drivers/ata/sata_via.c                          |   13 
 drivers/base/core.c                             |   13 
 drivers/base/cpu.c                              |    2 
 drivers/base/devtmpfs.c                         |   13 
 drivers/base/firmware_class.c                   |   26 
 drivers/base/memory.c                           |    2 
 drivers/block/pktcdvd.c                         |    2 
 drivers/bluetooth/hci_ldisc.c                   |    7 
 drivers/char/agp/Kconfig                        |    2 
 drivers/char/agp/amd64-agp.c                    |   27 
 drivers/char/agp/intel-agp.c                    |   15 
 drivers/char/hpet.c                             |   17 
 drivers/char/hvc_iucv.c                         |    6 
 drivers/char/ipmi/ipmi_si_intf.c                |   11 
 drivers/char/mem.c                              |    3 
 drivers/char/pcmcia/synclink_cs.c               |    2 
 drivers/char/raw.c                              |    1 
 drivers/char/tpm/tpm.c                          |   10 
 drivers/char/tpm/tpm.h                          |    1 
 drivers/char/tpm/tpm_tis.c                      |   33 
 drivers/char/tty_buffer.c                       |   20 
 drivers/char/tty_io.c                           |    3 
 drivers/char/tty_ldisc.c                        |   91 +-
 drivers/char/vt_ioctl.c                         |   11 
 drivers/clocksource/sh_cmt.c                    |   53 -
 drivers/clocksource/sh_mtu2.c                   |    6 
 drivers/clocksource/sh_tmu.c                    |   26 
 drivers/cpufreq/cpufreq.c                       |   11 
 drivers/cpuidle/governors/menu.c                |    9 
 drivers/crypto/padlock-aes.c                    |    2 
 drivers/dma/mv_xor.c                            |    4 
 drivers/edac/Kconfig                            |    2 
 drivers/edac/amd64_edac.c                       |   26 
 drivers/edac/edac_mce_amd.c                     |   12 
 drivers/firewire/core-card.c                    |   33 
 drivers/firewire/ohci.c                         |   60 +
 drivers/firmware/dcdbas.c                       |    4 
 drivers/gpio/cs5535-gpio.c                      |    4 
 drivers/gpio/wm831x-gpio.c                      |   22 
 drivers/gpu/drm/Kconfig                         |    3 
 drivers/gpu/drm/drm_crtc.c                      |   10 
 drivers/gpu/drm/drm_crtc_helper.c               |    1 
 drivers/gpu/drm/drm_edid.c                      |   13 
 drivers/gpu/drm/drm_fops.c                      |   16 
 drivers/gpu/drm/drm_irq.c                       |    3 
 drivers/gpu/drm/i915/i915_debugfs.c             |    2 
 drivers/gpu/drm/i915/i915_dma.c                 |   16 
 drivers/gpu/drm/i915/i915_drv.c                 |   10 
 drivers/gpu/drm/i915/i915_drv.h                 |   33 
 drivers/gpu/drm/i915/i915_gem.c                 |  206 ++++-
 drivers/gpu/drm/i915/i915_gem_tiling.c          |   24 
 drivers/gpu/drm/i915/i915_irq.c                 |   26 
 drivers/gpu/drm/i915/i915_reg.h                 |   77 +-
 drivers/gpu/drm/i915/intel_bios.c               |    3 
 drivers/gpu/drm/i915/intel_crt.c                |   14 
 drivers/gpu/drm/i915/intel_display.c            |   62 -
 drivers/gpu/drm/i915/intel_lvds.c               |   23 
 drivers/gpu/drm/i915/intel_overlay.c            |   15 
 drivers/gpu/drm/i915/intel_sdvo.c               |   23 
 drivers/gpu/drm/nouveau/nouveau_connector.c     |    6 
 drivers/gpu/drm/radeon/atom.c                   |   14 
 drivers/gpu/drm/radeon/atombios_dp.c            |    4 
 drivers/gpu/drm/radeon/r100.c                   |   61 -
 drivers/gpu/drm/radeon/r200.c                   |    5 
 drivers/gpu/drm/radeon/r300.c                   |   10 
 drivers/gpu/drm/radeon/radeon_atombios.c        |   43 -
 drivers/gpu/drm/radeon/radeon_combios.c         |   20 
 drivers/gpu/drm/radeon/radeon_connectors.c      |   34 
 drivers/gpu/drm/radeon/radeon_cp.c              |   11 
 drivers/gpu/drm/radeon/radeon_cs.c              |   15 
 drivers/gpu/drm/radeon/radeon_device.c          |    8 
 drivers/gpu/drm/radeon/radeon_display.c         |    6 
 drivers/gpu/drm/radeon/radeon_drv.h             |    2 
 drivers/gpu/drm/radeon/radeon_encoders.c        |    8 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c |    1 
 drivers/gpu/drm/radeon/radeon_legacy_tv.c       |   33 
 drivers/gpu/drm/radeon/radeon_state.c           |    7 
 drivers/gpu/drm/radeon/rs600.c                  |    2 
 drivers/gpu/drm/ttm/ttm_bo.c                    |   84 +-
 drivers/gpu/drm/ttm/ttm_bo_util.c               |    1 
 drivers/gpu/drm/ttm/ttm_tt.c                    |   18 
 drivers/hid/hid-core.c                          |    3 
 drivers/hid/hid-gyration.c                      |    6 
 drivers/hid/hid-ids.h                           |    5 
 drivers/hid/usbhid/hid-core.c                   |   28 
 drivers/hid/usbhid/usbhid.h                     |    2 
 drivers/hwmon/adm1026.c                         |   20 
 drivers/hwmon/ams/ams-core.c                    |   11 
 drivers/hwmon/ams/ams-i2c.c                     |    2 
 drivers/hwmon/ams/ams-pmu.c                     |    2 
 drivers/hwmon/ams/ams.h                         |    1 
 drivers/hwmon/coretemp.c                        |   34 
 drivers/hwmon/f71882fg.c                        |    2 
 drivers/hwmon/fschmd.c                          |   15 
 drivers/hwmon/hp_accel.c                        |    2 
 drivers/hwmon/it87.c                            |   22 
 drivers/hwmon/k10temp.c                         |   14 
 drivers/hwmon/k8temp.c                          |   12 
 drivers/hwmon/lm85.c                            |    1 
 drivers/hwmon/ltc4245.c                         |   18 
 drivers/hwmon/sht15.c                           |   17 
 drivers/hwmon/tmp401.c                          |    7 
 drivers/hwmon/tmp421.c                          |   24 
 drivers/hwmon/via686a.c                         |   14 
 drivers/i2c/busses/Kconfig                      |    5 
 drivers/i2c/busses/i2c-i801.c                   |   11 
 drivers/i2c/busses/i2c-powermac.c               |   25 
 drivers/i2c/i2c-core.c                          |   35 
 drivers/ide/cmd640.c                            |    6 
 drivers/ide/icside.c                            |   64 +
 drivers/ide/ide-probe.c                         |   12 
 drivers/ide/ide-taskfile.c                      |    6 
 drivers/ide/pdc202xx_old.c                      |    4 
 drivers/infiniband/core/cm.c                    |    1 
 drivers/infiniband/core/cma.c                   |   15 
 drivers/infiniband/core/uverbs_cmd.c            |   99 +-
 drivers/infiniband/hw/cxgb3/iwch_cm.c           |    6 
 drivers/infiniband/ulp/ipoib/ipoib_cm.c         |    2 
 drivers/infiniband/ulp/ipoib/ipoib_main.c       |    4 
 drivers/input/joydev.c                          |    3 
 drivers/input/keyboard/twl4030_keypad.c         |   17 
 drivers/input/mouse/alps.c                      |    2 
 drivers/input/mouse/bcm5974.c                   |   40 +
 drivers/input/mouse/psmouse-base.c              |   14 
 drivers/input/serio/i8042-x86ia64io.h           |   14 
 drivers/input/sparse-keymap.c                   |    2 
 drivers/input/tablet/wacom_sys.c                |   12 
 drivers/input/xen-kbdfront.c                    |   45 -
 drivers/isdn/gigaset/capi.c                     |   46 -
 drivers/isdn/gigaset/common.c                   |    6 
 drivers/isdn/gigaset/dummyll.c                  |   14 
 drivers/isdn/gigaset/ev-layer.c                 |   12 
 drivers/isdn/gigaset/gigaset.h                  |    6 
 drivers/isdn/gigaset/i4l.c                      |   28 
 drivers/isdn/gigaset/interface.c                |    1 
 drivers/isdn/hisax/config.c                     |   18 
 drivers/isdn/hisax/hisax.h                      |    1 
 drivers/isdn/i4l/isdn_tty.c                     |    6 
 drivers/leds/leds-gpio.c                        |    3 
 drivers/leds/leds-ss4200.c                      |    1 
 drivers/macintosh/therm_adt746x.c               |   34 
 drivers/md/dm-ioctl.c                           |   24 
 drivers/md/dm-mpath.c                           |   12 
 drivers/md/dm.c                                 |   16 
 drivers/md/dm.h                                 |    4 
 drivers/md/linear.c                             |   13 
 drivers/md/md.c                                 |  126 ++-
 drivers/md/md.h                                 |    1 
 drivers/md/multipath.c                          |   20 
 drivers/md/raid0.c                              |   13 
 drivers/md/raid1.c                              |   10 
 drivers/md/raid10.c                             |   42 -
 drivers/md/raid5.c                              |   61 -
 drivers/media/dvb/dvb-core/dvb_net.c            |   13 
 drivers/media/dvb/dvb-usb/dib0700_devices.c     |   21 
 drivers/media/dvb/frontends/dib7000m.c          |   19 
 drivers/media/dvb/frontends/dib7000m.h          |   15 
 drivers/media/dvb/ttpci/Kconfig                 |    5 
 drivers/media/dvb/ttpci/av7110_ca.c             |    2 
 drivers/media/dvb/ttpci/budget.c                |    3 
 drivers/media/radio/radio-aimslab.c             |   24 
 drivers/media/video/cx231xx/cx231xx-cards.c     |   14 
 drivers/media/video/cx23885/cx23885-i2c.c       |   12 
 drivers/media/video/cx88/cx88-i2c.c             |   16 
 drivers/media/video/em28xx/em28xx-cards.c       |    4 
 drivers/media/video/em28xx/em28xx-dvb.c         |    1 
 drivers/media/video/gspca/mr97310a.c            |    6 
 drivers/media/video/gspca/stv06xx/stv06xx.c     |    2 
 drivers/media/video/ivtv/ivtvfb.c               |    2 
 drivers/media/video/soc_mediabus.c              |    3 
 drivers/media/video/uvc/uvc_driver.c            |   38 
 drivers/media/video/uvc/uvc_video.c             |   14 
 drivers/media/video/uvc/uvcvideo.h              |    7 
 drivers/media/video/v4l2-compat-ioctl32.c       |   32 
 drivers/message/fusion/mptctl.c                 |    8 
 drivers/message/fusion/mptscsih.c               |    9 
 drivers/mfd/ucb1x00-ts.c                        |   12 
 drivers/misc/sgi-xp/xpc_partition.c             |   25 
 drivers/misc/sgi-xp/xpc_uv.c                    |   17 
 drivers/mmc/core/sdio.c                         |    8 
 drivers/mmc/host/atmel-mci.c                    |   14 
 drivers/mmc/host/s3cmci.c                       |    4 
 drivers/mmc/host/sdhci-s3c.c                    |   22 
 drivers/mtd/chips/jedec_probe.c                 |   32 
 drivers/mtd/nand/omap2.c                        |    2 
 drivers/mtd/onenand/generic.c                   |    2 
 drivers/mtd/onenand/omap2.c                     |    2 
 drivers/net/3c503.c                             |   42 -
 drivers/net/arcnet/com20020-pci.c               |    4 
 drivers/net/atlx/atl1.c                         |    5 
 drivers/net/b44.c                               |    4 
 drivers/net/benet/be.h                          |    2 
 drivers/net/benet/be_main.c                     |   18 
 drivers/net/bnx2.c                              |   26 
 drivers/net/bonding/bond_main.c                 |    2 
 drivers/net/can/bfin_can.c                      |    3 
 drivers/net/can/sja1000/sja1000.c               |   20 
 drivers/net/can/sja1000/sja1000.h               |    1 
 drivers/net/cpmac.c                             |    3 
 drivers/net/cxgb3/ael1002.c                     |    2 
 drivers/net/dm9000.c                            |   38 
 drivers/net/e100.c                              |    2 
 drivers/net/e1000e/netdev.c                     |    5 
 drivers/net/forcedeth.c                         |    2 
 drivers/net/igb/igb_main.c                      |    2 
 drivers/net/ixgbe/ixgbe_main.c                  |    5 
 drivers/net/jme.c                               |   35 
 drivers/net/mlx4/icm.c                          |    3 
 drivers/net/netxen/netxen_nic_init.c            |    3 
 drivers/net/pppol2tp.c                          |    9 
 drivers/net/r6040.c                             |   12 
 drivers/net/r8169.c                             |   65 +
 drivers/net/sfc/efx.c                           |    4 
 drivers/net/sfc/falcon.c                        |    4 
 drivers/net/sfc/falcon_boards.c                 |   13 
 drivers/net/sfc/nic.h                           |    2 
 drivers/net/sfc/siena.c                         |   13 
 drivers/net/sky2.c                              |   19 
 drivers/net/tg3.c                               |    3 
 drivers/net/tun.c                               |    4 
 drivers/net/usb/cdc_ether.c                     |    1 
 drivers/net/usb/dm9601.c                        |    2 
 drivers/net/usb/pegasus.h                       |    2 
 drivers/net/veth.c                              |    1 
 drivers/net/wan/hdlc_ppp.c                      |    6 
 drivers/net/wireless/airo.c                     |   34 
 drivers/net/wireless/ath/ar9170/hw.h            |    1 
 drivers/net/wireless/ath/ar9170/main.c          |    2 
 drivers/net/wireless/ath/ar9170/usb.c           |   12 
 drivers/net/wireless/ath/ath5k/ath5k.h          |    3 
 drivers/net/wireless/ath/ath5k/attach.c         |    1 
 drivers/net/wireless/ath/ath5k/base.c           |   66 +
 drivers/net/wireless/ath/ath5k/phy.c            |   37 
 drivers/net/wireless/ath/ath5k/qcu.c            |    5 
 drivers/net/wireless/ath/ath5k/reg.h            |    1 
 drivers/net/wireless/ath/ath5k/reset.c          |    5 
 drivers/net/wireless/ath/ath9k/ath9k.h          |    1 
 drivers/net/wireless/ath/ath9k/beacon.c         |   16 
 drivers/net/wireless/ath/ath9k/hw.c             |   21 
 drivers/net/wireless/ath/ath9k/hw.h             |    1 
 drivers/net/wireless/ath/ath9k/initvals.h       |    8 
 drivers/net/wireless/ath/ath9k/main.c           |   40 -
 drivers/net/wireless/ath/ath9k/pci.c            |    1 
 drivers/net/wireless/ath/ath9k/phy.h            |    3 
 drivers/net/wireless/ath/ath9k/rc.c             |   21 
 drivers/net/wireless/ath/ath9k/xmit.c           |   28 
 drivers/net/wireless/b43/Kconfig                |    6 
 drivers/net/wireless/b43/Makefile               |    2 
 drivers/net/wireless/b43/b43.h                  |   12 
 drivers/net/wireless/b43/dma.c                  |    2 
 drivers/net/wireless/b43/main.c                 |   25 
 drivers/net/wireless/b43/pio.h                  |   40 -
 drivers/net/wireless/b43legacy/main.c           |    2 
 drivers/net/wireless/hostap/hostap_cs.c         |   15 
 drivers/net/wireless/hostap/hostap_hw.c         |   13 
 drivers/net/wireless/hostap/hostap_wlan.h       |    2 
 drivers/net/wireless/iwlwifi/iwl-3945.c         |    8 
 drivers/net/wireless/iwlwifi/iwl-4965.c         |   16 
 drivers/net/wireless/iwlwifi/iwl-5000.c         |    7 
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c       |   25 
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   25 
 drivers/net/wireless/iwlwifi/iwl-core.c         |   12 
 drivers/net/wireless/iwlwifi/iwl-helpers.h      |   13 
 drivers/net/wireless/iwlwifi/iwl-rx.c           |   21 
 drivers/net/wireless/iwlwifi/iwl-scan.c         |   28 
 drivers/net/wireless/iwlwifi/iwl-tx.c           |   48 -
 drivers/net/wireless/iwlwifi/iwl3945-base.c     |   27 
 drivers/net/wireless/libertas/if_sdio.c         |   22 
 drivers/net/wireless/orinoco/main.c             |    6 
 drivers/net/wireless/orinoco/wext.c             |    4 
 drivers/net/wireless/p54/eeprom.c               |    4 
 drivers/net/wireless/p54/p54pci.c               |   36 
 drivers/net/wireless/p54/p54usb.c               |   25 
 drivers/net/wireless/p54/txrx.c                 |    4 
 drivers/net/wireless/rt2x00/rt73usb.c           |    1 
 drivers/net/wireless/rtl818x/rtl8180_dev.c      |    1 
 drivers/net/wireless/wl12xx/wl1251_debugfs.c    |    3 
 drivers/net/wireless/wl12xx/wl1251_sdio.c       |    1 
 drivers/oprofile/cpu_buffer.c                   |   63 -
 drivers/pci/dmar.c                              |    5 
 drivers/pci/hotplug/acpiphp_glue.c              |    1 
 drivers/pci/hotplug/ibmphp_ebda.c               |   13 
 drivers/pci/pci-stub.c                          |    3 
 drivers/pci/pci-sysfs.c                         |   31 
 drivers/pci/pci.c                               |   73 +
 drivers/pci/pci.h                               |    7 
 drivers/pci/proc.c                              |    2 
 drivers/pci/quirks.c                            |  149 ++-
 drivers/platform/x86/Kconfig                    |   10 
 drivers/platform/x86/acer-wmi.c                 |    4 
 drivers/platform/x86/asus_acpi.c                |    8 
 drivers/platform/x86/classmate-laptop.c         |   31 
 drivers/platform/x86/eeepc-laptop.c             |   21 
 drivers/platform/x86/tc1100-wmi.c               |    2 
 drivers/platform/x86/thinkpad_acpi.c            |  116 ++-
 drivers/platform/x86/wmi.c                      |    2 
 drivers/power/ds2760_battery.c                  |    2 
 drivers/power/olpc_battery.c                    |    8 
 drivers/rtc/class.c                             |    1 
 drivers/rtc/rtc-cmos.c                          |   21 
 drivers/rtc/rtc-coh901331.c                     |    5 
 drivers/rtc/rtc-ds1307.c                        |    4 
 drivers/rtc/rtc-s3c.c                           |    5 
 drivers/s390/block/dasd.c                       |   17 
 drivers/s390/char/keyboard.c                    |    3 
 drivers/s390/cio/qdio.h                         |    6 
 drivers/s390/cio/qdio_main.c                    |   43 -
 drivers/scsi/aacraid/commctrl.c                 |    4 
 drivers/scsi/bfa/bfa_core.c                     |   22 
 drivers/scsi/device_handler/scsi_dh_alua.c      |    5 
 drivers/scsi/gdth.c                             |    8 
 drivers/scsi/libiscsi.c                         |    7 
 drivers/scsi/libsas/sas_ata.c                   |    5 
 drivers/scsi/libsas/sas_scsi_host.c             |    5 
 drivers/scsi/mpt2sas/mpt2sas_base.c             |   24 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c            |   21 
 drivers/scsi/qla1280.c                          |    4 
 drivers/scsi/qla2xxx/qla_isr.c                  |   28 
 drivers/scsi/qlogicpti.c                        |    2 
 drivers/scsi/scsi_debug.c                       |    3 
 drivers/scsi/scsi_error.c                       |   15 
 drivers/scsi/scsi_lib.c                         |   13 
 drivers/scsi/scsi_sysfs.c                       |    3 
 drivers/scsi/scsi_transport_fc.c                |   24 
 drivers/scsi/sd.c                               |   25 
 drivers/scsi/ses.c                              |    4 
 drivers/serial/8250.c                           |    3 
 drivers/serial/8250_pnp.c                       |    2 
 drivers/serial/cpm_uart/cpm_uart_core.c         |  143 ++-
 drivers/serial/imx.c                            |   16 
 drivers/spi/spi_mpc8xxx.c                       |   22 
 drivers/ssb/b43_pci_bridge.c                    |    1 
 drivers/ssb/driver_chipcommon.c                 |    3 
 drivers/ssb/pci.c                               |   28 
 drivers/ssb/pcmcia.c                            |    2 
 drivers/ssb/sprom.c                             |   15 
 drivers/staging/Kconfig                         |    2 
 drivers/staging/Makefile                        |    1 
 drivers/staging/asus_oled/asus_oled.c           |    8 
 drivers/staging/comedi/drivers/jr3_pci.c        |    7 
 drivers/staging/comedi/drivers/ni_labpc.c       |    3 
 drivers/staging/comedi/drivers/ni_mio_cs.c      |    2 
 drivers/staging/frontier/tranzport.c            |    2 
 drivers/staging/hv/Hv.c                         |    2 
 drivers/staging/hv/RndisFilter.c                |    1 
 drivers/staging/hv/blkvsc_drv.c                 |    1 
 drivers/staging/hv/netvsc_drv.c                 |    3 
 drivers/staging/hv/vmbus_drv.c                  |   30 
 drivers/staging/line6/control.c                 |  204 ++---
 drivers/staging/line6/midi.c                    |    4 
 drivers/staging/line6/pod.c                     |   32 
 drivers/staging/line6/toneport.c                |    4 
 drivers/staging/line6/variax.c                  |   12 
 drivers/staging/mimio/Kconfig                   |   10 
 drivers/staging/mimio/Makefile                  |    1 
 drivers/staging/mimio/mimio.c                   |  914 ------------------------
 drivers/staging/pohmelfs/inode.c                |   20 
 drivers/staging/pohmelfs/netfs.h                |    3 
 drivers/staging/rt2860/chips/rt3090.c           |    3 
 drivers/staging/rt2860/chips/rt30xx.c           |    4 
 drivers/staging/rt2860/rt_main_dev.c            |    2 
 drivers/staging/rt2860/usb_main_dev.c           |    2 
 drivers/staging/rtl8187se/r8185b_init.c         |   30 
 drivers/staging/rtl8192su/r8192U_core.c         |    2 
 drivers/staging/samsung-laptop/samsung-laptop.c |    2 
 drivers/staging/usbip/usbip_event.c             |   19 
 drivers/staging/usbip/vhci.h                    |    6 
 drivers/staging/usbip/vhci_hcd.c                |   70 +
 drivers/staging/usbip/vhci_rx.c                 |   15 
 drivers/staging/vt6655/device_main.c            |    2 
 drivers/staging/wlan-ng/Kconfig                 |    1 
 drivers/usb/atm/ueagle-atm.c                    |    6 
 drivers/usb/class/cdc-acm.c                     |   56 -
 drivers/usb/class/cdc-acm.h                     |    1 
 drivers/usb/core/devio.c                        |   24 
 drivers/usb/core/driver.c                       |   25 
 drivers/usb/core/file.c                         |   35 
 drivers/usb/core/generic.c                      |    2 
 drivers/usb/core/hcd.c                          |    2 
 drivers/usb/core/hcd.h                          |    2 
 drivers/usb/core/hub.c                          |   47 +
 drivers/usb/core/inode.c                        |    4 
 drivers/usb/core/message.c                      |   17 
 drivers/usb/core/quirks.c                       |   15 
 drivers/usb/core/usb.c                          |    3 
 drivers/usb/gadget/atmel_usba_udc.c             |    3 
 drivers/usb/gadget/f_mass_storage.c             |    1 
 drivers/usb/gadget/fsl_udc_core.c               |    2 
 drivers/usb/gadget/printer.c                    |   14 
 drivers/usb/gadget/u_serial.c                   |   16 
 drivers/usb/host/ehci-hcd.c                     |   32 
 drivers/usb/host/ehci-hub.c                     |   17 
 drivers/usb/host/ehci-mem.c                     |    2 
 drivers/usb/host/ehci-mxc.c                     |   13 
 drivers/usb/host/ehci-q.c                       |   12 
 drivers/usb/host/ehci-sched.c                   |   66 +
 drivers/usb/host/ehci.h                         |   10 
 drivers/usb/host/fhci.h                         |    9 
 drivers/usb/host/isp1760-hcd.c                  |   22 
 drivers/usb/host/isp1760-hcd.h                  |    1 
 drivers/usb/host/ohci-hub.c                     |    2 
 drivers/usb/host/ohci-pnx4008.c                 |    6 
 drivers/usb/host/r8a66597-hcd.c                 |   16 
 drivers/usb/host/uhci-hcd.c                     |    1 
 drivers/usb/host/xhci-ext-caps.h                |    7 
 drivers/usb/host/xhci-hcd.c                     |   55 +
 drivers/usb/host/xhci-mem.c                     |   65 +
 drivers/usb/host/xhci-pci.c                     |    2 
 drivers/usb/host/xhci-ring.c                    |   87 +-
 drivers/usb/host/xhci.h                         |    4 
 drivers/usb/misc/cypress_cy7c63.c               |    6 
 drivers/usb/misc/iowarrior.c                    |    3 
 drivers/usb/misc/sisusbvga/sisusb.c             |    6 
 drivers/usb/misc/trancevibrator.c               |    2 
 drivers/usb/misc/usbled.c                       |    2 
 drivers/usb/misc/usbsevseg.c                    |   10 
 drivers/usb/misc/uss720.c                       |   11 
 drivers/usb/musb/blackfin.c                     |    4 
 drivers/usb/musb/omap2430.c                     |    1 
 drivers/usb/serial/ch341.c                      |   11 
 drivers/usb/serial/cp210x.c                     |   30 
 drivers/usb/serial/digi_acceleport.c            |   10 
 drivers/usb/serial/ftdi_sio.c                   |   87 ++
 drivers/usb/serial/ftdi_sio_ids.h               |  101 ++
 drivers/usb/serial/generic.c                    |   20 
 drivers/usb/serial/io_edgeport.c                |    4 
 drivers/usb/serial/ir-usb.c                     |    2 
 drivers/usb/serial/keyspan_pda.c                |   17 
 drivers/usb/serial/kl5kusb105.c                 |    1 
 drivers/usb/serial/kobil_sct.c                  |    5 
 drivers/usb/serial/mos7840.c                    |    1 
 drivers/usb/serial/opticon.c                    |    6 
 drivers/usb/serial/option.c                     |  262 ++++++
 drivers/usb/serial/pl2303.c                     |   13 
 drivers/usb/serial/pl2303.h                     |    2 
 drivers/usb/serial/qcserial.c                   |   29 
 drivers/usb/serial/sierra.c                     |   24 
 drivers/usb/serial/spcp8x5.c                    |    6 
 drivers/usb/serial/ti_usb_3410_5052.c           |    2 
 drivers/usb/serial/visor.c                      |   13 
 drivers/usb/storage/sierra_ms.c                 |    2 
 drivers/usb/storage/unusual_cypress.h           |    5 
 drivers/usb/storage/unusual_devs.h              |  142 +++
 drivers/video/Kconfig                           |   12 
 drivers/video/Makefile                          |    1 
 drivers/video/backlight/backlight.c             |   12 
 drivers/video/backlight/mbp_nvidia_bl.c         |   45 +
 drivers/video/bfin-t350mcqb-fb.c                |   15 
 drivers/video/console/tileblit.c                |    2 
 drivers/video/efifb.c                           |   61 +
 drivers/video/sis/sis_main.c                    |    3 
 drivers/video/sunxvr1000.c                      |  228 +++++
 drivers/video/sunxvr500.c                       |   25 
 drivers/video/via/accel.c                       |    7 
 drivers/video/via/ioctl.c                       |    2 
 drivers/virtio/virtio_pci.c                     |   24 
 drivers/w1/slaves/w1_therm.c                    |    5 
 drivers/watchdog/hpwdt.c                        |    2 
 drivers/watchdog/iTCO_wdt.c                     |   99 ++
 drivers/xen/events.c                            |    2 
 drivers/xen/xenbus/xenbus_xs.c                  |    2 
 fs/9p/vfs_file.c                                |    2 
 fs/aio.c                                        |    7 
 fs/bio.c                                        |   23 
 fs/block_dev.c                                  |    3 
 fs/btrfs/acl.c                                  |    3 
 fs/btrfs/ioctl.c                                |    9 
 fs/btrfs/super.c                                |    5 
 fs/cachefiles/security.c                        |    4 
 fs/char_dev.c                                   |    4 
 fs/cifs/cifsfs.c                                |    6 
 fs/cifs/cifsglob.h                              |    1 
 fs/cifs/cifsproto.h                             |    8 
 fs/cifs/cifssmb.c                               |   23 
 fs/cifs/dir.c                                   |   20 
 fs/cifs/dns_resolve.c                           |   69 +
 fs/cifs/dns_resolve.h                           |    4 
 fs/cifs/file.c                                  |   28 
 fs/cifs/inode.c                                 |   25 
 fs/cifs/sess.c                                  |   10 
 fs/compat.c                                     |    2 
 fs/dcache.c                                     |    3 
 fs/ecryptfs/inode.c                             |  114 +-
 fs/ecryptfs/messaging.c                         |   17 
 fs/ecryptfs/super.c                             |    1 
 fs/eventpoll.c                                  |   95 ++
 fs/exec.c                                       |   24 
 fs/exofs/dir.c                                  |    2 
 fs/ext2/namei.c                                 |    9 
 fs/ext3/namei.c                                 |    2 
 fs/ext3/super.c                                 |    7 
 fs/ext4/balloc.c                                |    3 
 fs/ext4/ext4.h                                  |    8 
 fs/ext4/extents.c                               |   20 
 fs/ext4/inode.c                                 |    2 
 fs/ext4/mballoc.h                               |    2 
 fs/ext4/move_extent.c                           |    3 
 fs/ext4/resize.c                                |    3 
 fs/fat/namei_vfat.c                             |    6 
 fs/file_table.c                                 |    4 
 fs/fs-writeback.c                               |   14 
 fs/fuse/file.c                                  |  134 +++
 fs/fuse/fuse_i.h                                |    6 
 fs/gfs2/file.c                                  |    9 
 fs/jfs/resize.c                                 |    6 
 fs/libfs.c                                      |    3 
 fs/namespace.c                                  |    9 
 fs/nfs/client.c                                 |    5 
 fs/nfs/delegation.h                             |    6 
 fs/nfs/dir.c                                    |    6 
 fs/nfs/direct.c                                 |   34 
 fs/nfs/dns_resolve.c                            |   18 
 fs/nfs/file.c                                   |    7 
 fs/nfs/inode.c                                  |    2 
 fs/nfs/mount_clnt.c                             |    4 
 fs/nfs/nfs4proc.c                               |    4 
 fs/nfs/nfs4xdr.c                                |    4 
 fs/nfs/pagelist.c                               |   23 
 fs/nfs/super.c                                  |   22 
 fs/nfsd/nfs3xdr.c                               |    6 
 fs/nfsd/nfs4proc.c                              |    4 
 fs/nfsd/nfs4state.c                             |    2 
 fs/nfsd/nfs4xdr.c                               |   31 
 fs/nfsd/nfssvc.c                                |    2 
 fs/nfsd/vfs.c                                   |    2 
 fs/nfsd/xdr4.h                                  |   21 
 fs/nilfs2/segment.c                             |    3 
 fs/nilfs2/super.c                               |    1 
 fs/notify/inotify/inotify_fsnotify.c            |    2 
 fs/notify/inotify/inotify_user.c                |   16 
 fs/ocfs2/acl.c                                  |   77 +-
 fs/ocfs2/aops.c                                 |    5 
 fs/ocfs2/buffer_head_io.c                       |    2 
 fs/ocfs2/dlm/dlmfs.c                            |    2 
 fs/ocfs2/inode.c                                |    1 
 fs/ocfs2/refcounttree.c                         |   10 
 fs/ocfs2/stack_user.c                           |    2 
 fs/ocfs2/suballoc.c                             |   13 
 fs/ocfs2/symlink.c                              |    2 
 fs/partitions/ldm.c                             |    5 
 fs/partitions/mac.c                             |   17 
 fs/partitions/msdos.c                           |   85 +-
 fs/pipe.c                                       |    2 
 fs/proc/array.c                                 |   12 
 fs/proc/base.c                                  |    7 
 fs/proc/task_mmu.c                              |   31 
 fs/quota/dquot.c                                |   57 +
 fs/reiserfs/dir.c                               |    2 
 fs/reiserfs/ioctl.c                             |    7 
 fs/reiserfs/super.c                             |   10 
 fs/reiserfs/xattr.c                             |   19 
 fs/reiserfs/xattr_acl.c                         |    6 
 fs/sysfs/dir.c                                  |   82 +-
 fs/xfs/linux-2.6/xfs_aops.c                     |   93 +-
 fs/xfs/linux-2.6/xfs_ioctl.c                    |    2 
 fs/xfs/linux-2.6/xfs_super.c                    |    5 
 fs/xfs/linux-2.6/xfs_sync.c                     |  117 ++-
 fs/xfs/linux-2.6/xfs_sync.h                     |    7 
 fs/xfs/quota/xfs_qm_syscalls.c                  |    3 
 fs/xfs/xfs_ag.h                                 |    1 
 fs/xfs/xfs_iget.c                               |   19 
 fs/xfs/xfs_mount.h                              |    1 
 include/acpi/processor.h                        |    3 
 include/asm-generic/dma-mapping-common.h        |    4 
 include/drm/drmP.h                              |    2 
 include/drm/drm_pciids.h                        |    5 
 include/drm/ttm/ttm_bo_api.h                    |    4 
 include/keys/rxrpc-type.h                       |    1 
 include/linux/acpi.h                            |    1 
 include/linux/ata.h                             |    4 
 include/linux/blkdev.h                          |    4 
 include/linux/compat.h                          |    2 
 include/linux/cred.h                            |   21 
 include/linux/decompress/mm.h                   |   14 
 include/linux/dm-ioctl.h                        |    9 
 include/linux/ethtool.h                         |    2 
 include/linux/fb.h                              |    4 
 include/linux/firmware.h                        |    1 
 include/linux/freezer.h                         |    7 
 include/linux/fs.h                              |    8 
 include/linux/ftrace.h                          |    2 
 include/linux/ieee80211.h                       |    4 
 include/linux/if_tunnel.h                       |    1 
 include/linux/irq.h                             |    2 
 include/linux/kfifo.h                           |    5 
 include/linux/klist.h                           |    2 
 include/linux/kvm.h                             |    1 
 include/linux/kvm_host.h                        |    7 
 include/linux/mmc/sdio.h                        |    2 
 include/linux/mmzone.h                          |   13 
 include/linux/module.h                          |    2 
 include/linux/netdevice.h                       |   14 
 include/linux/netfilter/nfnetlink.h             |    2 
 include/linux/netlink.h                         |    2 
 include/linux/nfs_fs_sb.h                       |    1 
 include/linux/pci.h                             |    5 
 include/linux/pci_ids.h                         |    9 
 include/linux/perf_event.h                      |   12 
 include/linux/poison.h                          |    9 
 include/linux/quotaops.h                        |   11 
 include/linux/sched.h                           |    6 
 include/linux/skbuff.h                          |   19 
 include/linux/ssb/ssb.h                         |    4 
 include/linux/ssb/ssb_driver_chipcommon.h       |   15 
 include/linux/ssb/ssb_regs.h                    |    3 
 include/linux/swap.h                            |   10 
 include/linux/syscalls.h                        |    6 
 include/linux/tboot.h                           |    1 
 include/linux/tty.h                             |   11 
 include/linux/usb/serial.h                      |    3 
 include/linux/vmstat.h                          |   22 
 include/math-emu/op-common.h                    |    2 
 include/net/mac80211.h                          |    7 
 include/net/netlink.h                           |    6 
 include/net/sctp/command.h                      |    1 
 include/net/sctp/sctp.h                         |    1 
 include/net/sctp/sm.h                           |    1 
 include/net/sctp/structs.h                      |    4 
 include/net/sock.h                              |   25 
 include/net/udp.h                               |    1 
 include/net/x25.h                               |    4 
 include/net/xfrm.h                              |    3 
 include/trace/events/signal.h                   |    3 
 include/trace/ftrace.h                          |    3 
 init/calibrate.c                                |    6 
 init/initramfs.c                                |    3 
 init/main.c                                     |    2 
 ipc/compat.c                                    |    6 
 ipc/compat_mq.c                                 |    5 
 ipc/mqueue.c                                    |    3 
 ipc/sem.c                                       |    2 
 ipc/shm.c                                       |    1 
 kernel/cgroup_freezer.c                         |    9 
 kernel/compat.c                                 |   47 -
 kernel/cpuset.c                                 |   27 
 kernel/cred.c                                   |   43 -
 kernel/exit.c                                   |   22 
 kernel/fork.c                                   |    2 
 kernel/futex.c                                  |   48 -
 kernel/hrtimer.c                                |   13 
 kernel/hw_breakpoint.c                          |    4 
 kernel/irq/chip.c                               |   83 +-
 kernel/irq/manage.c                             |   33 
 kernel/irq/proc.c                               |    2 
 kernel/kthread.c                                |    2 
 kernel/latencytop.c                             |   17 
 kernel/lockdep.c                                |    6 
 kernel/module.c                                 |    6 
 kernel/mutex.c                                  |    7 
 kernel/perf_event.c                             |  213 +++--
 kernel/posix-timers.c                           |   11 
 kernel/power/process.c                          |    2 
 kernel/power/snapshot.c                         |    9 
 kernel/power/user.c                             |    2 
 kernel/printk.c                                 |    2 
 kernel/profile.c                                |    4 
 kernel/ptrace.c                                 |    2 
 kernel/sched.c                                  |  133 ++-
 kernel/signal.c                                 |   65 +
 kernel/smp.c                                    |   69 +
 kernel/softlockup.c                             |    4 
 kernel/sys.c                                    |    2 
 kernel/time/clocksource.c                       |    4 
 kernel/time/tick-broadcast.c                    |   10 
 kernel/time/tick-common.c                       |    6 
 kernel/time/tick-internal.h                     |    3 
 kernel/timer.c                                  |    6 
 kernel/trace/ftrace.c                           |   54 +
 kernel/trace/ring_buffer.c                      |   14 
 kernel/trace/trace.c                            |  171 +++-
 kernel/trace/trace.h                            |    3 
 lib/flex_array.c                                |    2 
 lib/percpu_counter.c                            |    1 
 mm/fadvise.c                                    |   10 
 mm/filemap.c                                    |   13 
 mm/hugetlb.c                                    |    7 
 mm/internal.h                                   |    2 
 mm/memcontrol.c                                 |    4 
 mm/memory.c                                     |   32 
 mm/memory_hotplug.c                             |    2 
 mm/mempolicy.c                                  |   42 -
 mm/mlock.c                                      |    8 
 mm/mmap.c                                       |   16 
 mm/mmzone.c                                     |   21 
 mm/mprotect.c                                   |    2 
 mm/mremap.c                                     |    4 
 mm/nommu.c                                      |    1 
 mm/page_alloc.c                                 |   33 
 mm/percpu.c                                     |    2 
 mm/readahead.c                                  |    6 
 mm/shmem.c                                      |    1 
 mm/slab.c                                       |    6 
 mm/swapfile.c                                   |    6 
 mm/vmalloc.c                                    |    9 
 mm/vmscan.c                                     |   53 +
 mm/vmstat.c                                     |   15 
 net/8021q/vlan_core.c                           |    4 
 net/bluetooth/l2cap.c                           |   15 
 net/bluetooth/rfcomm/core.c                     |   13 
 net/bluetooth/rfcomm/sock.c                     |   11 
 net/bluetooth/sco.c                             |   11 
 net/bridge/br_fdb.c                             |    6 
 net/can/bcm.c                                   |    2 
 net/compat.c                                    |   10 
 net/core/dev.c                                  |   45 -
 net/core/ethtool.c                              |   45 -
 net/core/iovec.c                                |   17 
 net/core/neighbour.c                            |    5 
 net/core/rtnetlink.c                            |    3 
 net/core/scm.c                                  |    2 
 net/core/skbuff.c                               |    1 
 net/core/sock.c                                 |   16 
 net/core/stream.c                               |    8 
 net/dccp/input.c                                |   13 
 net/dccp/minisocks.c                            |    2 
 net/decnet/af_decnet.c                          |    2 
 net/econet/af_econet.c                          |   91 +-
 net/ieee802154/af_ieee802154.c                  |    3 
 net/ipv4/arp.c                                  |    6 
 net/ipv4/datagram.c                             |    5 
 net/ipv4/inet_timewait_sock.c                   |    2 
 net/ipv4/ip_gre.c                               |    5 
 net/ipv4/ip_output.c                            |   19 
 net/ipv4/ipip.c                                 |    1 
 net/ipv4/route.c                                |   40 -
 net/ipv4/syncookies.c                           |    2 
 net/ipv4/tcp.c                                  |   77 +-
 net/ipv4/tcp_input.c                            |    5 
 net/ipv4/tcp_ipv4.c                             |    6 
 net/ipv4/tcp_minisocks.c                        |    2 
 net/ipv4/tcp_output.c                           |   30 
 net/ipv4/udp.c                                  |   60 +
 net/ipv4/xfrm4_policy.c                         |    9 
 net/ipv6/af_inet6.c                             |    2 
 net/ipv6/datagram.c                             |    7 
 net/ipv6/ip6_output.c                           |   18 
 net/ipv6/ndisc.c                                |    2 
 net/ipv6/netfilter/ip6t_REJECT.c                |    6 
 net/ipv6/route.c                                |   41 -
 net/ipv6/sit.c                                  |    2 
 net/ipv6/tcp_ipv6.c                             |    8 
 net/ipv6/udp.c                                  |   42 -
 net/ipv6/xfrm6_policy.c                         |    3 
 net/irda/iriap.c                                |    3 
 net/irda/parameters.c                           |    4 
 net/llc/llc_c_ac.c                              |    2 
 net/llc/llc_conn.c                              |    3 
 net/llc/llc_sap.c                               |    2 
 net/mac80211/Kconfig                            |    9 
 net/mac80211/agg-tx.c                           |    4 
 net/mac80211/cfg.c                              |    7 
 net/mac80211/ieee80211_i.h                      |    1 
 net/mac80211/mesh.c                             |    3 
 net/mac80211/mesh_hwmp.c                        |    4 
 net/mac80211/mlme.c                             |   40 -
 net/mac80211/rate.h                             |    5 
 net/mac80211/rx.c                               |   25 
 net/mac80211/scan.c                             |   21 
 net/mac80211/status.c                           |   17 
 net/mac80211/tx.c                               |   16 
 net/mac80211/util.c                             |   20 
 net/netfilter/ipvs/ip_vs_conn.c                 |    4 
 net/netfilter/nf_conntrack_core.c               |    3 
 net/netfilter/nf_conntrack_netlink.c            |    3 
 net/netfilter/nf_log.c                          |    4 
 net/netfilter/nfnetlink.c                       |    4 
 net/netfilter/xt_recent.c                       |    4 
 net/netlink/af_netlink.c                        |   17 
 net/phonet/pep.c                                |    3 
 net/rds/page.c                                  |   27 
 net/rds/rdma.c                                  |    2 
 net/rose/af_rose.c                              |    4 
 net/sctp/associola.c                            |    6 
 net/sctp/auth.c                                 |    8 
 net/sctp/endpointola.c                          |    1 
 net/sctp/input.c                                |   64 +
 net/sctp/output.c                               |    1 
 net/sctp/sm_make_chunk.c                        |   94 +-
 net/sctp/sm_sideeffect.c                        |   61 +
 net/sctp/sm_statefuns.c                         |    8 
 net/sctp/socket.c                               |   17 
 net/sctp/transport.c                            |    2 
 net/socket.c                                    |    4 
 net/sunrpc/auth_gss/auth_gss.c                  |    5 
 net/sunrpc/cache.c                              |    4 
 net/sunrpc/rpc_pipe.c                           |    2 
 net/sunrpc/sched.c                              |   14 
 net/sunrpc/svc_xprt.c                           |   27 
 net/sunrpc/svcsock.c                            |    1 
 net/sunrpc/xprtsock.c                           |   45 -
 net/tipc/bearer.c                               |   37 
 net/tipc/bearer.h                               |    2 
 net/tipc/net.c                                  |   25 
 net/tipc/socket.c                               |    6 
 net/wireless/core.h                             |    2 
 net/wireless/nl80211.c                          |   37 
 net/wireless/util.c                             |   33 
 net/wireless/wext-compat.c                      |    5 
 net/wireless/wext-priv.c                        |    2 
 net/x25/af_x25.c                                |   47 +
 net/x25/x25_dev.c                               |    2 
 net/x25/x25_facilities.c                        |   32 
 net/x25/x25_in.c                                |   17 
 net/x25/x25_link.c                              |    4 
 net/xfrm/xfrm_policy.c                          |    7 
 scripts/get_maintainer.pl                       |    4 
 scripts/kconfig/Makefile                        |    2 
 scripts/mod/modpost.c                           |    2 
 security/inode.c                                |    4 
 security/integrity/ima/ima_iint.c               |    3 
 security/integrity/ima/ima_policy.c             |    2 
 security/keys/keyctl.c                          |    6 
 security/keys/keyring.c                         |   18 
 security/keys/process_keys.c                    |    6 
 security/keys/request_key.c                     |    9 
 security/min_addr.c                             |    2 
 security/selinux/hooks.c                        |   11 
 security/selinux/nlmsgtab.c                     |    2 
 security/selinux/ss/ebitmap.c                   |    2 
 sound/core/control.c                            |    5 
 sound/core/hrtimer.c                            |    5 
 sound/core/pcm_native.c                         |    8 
 sound/core/rawmidi.c                            |    4 
 sound/oss/soundcard.c                           |    4 
 sound/pci/ac97/ac97_patch.c                     |    2 
 sound/pci/au88x0/au88x0_pcm.c                   |   24 
 sound/pci/cmipci.c                              |   14 
 sound/pci/ctxfi/ctatc.c                         |    2 
 sound/pci/ctxfi/ctdaio.c                        |    2 
 sound/pci/ctxfi/ctmixer.c                       |   19 
 sound/pci/echoaudio/echoaudio.c                 |    4 
 sound/pci/hda/hda_eld.c                         |    2 
 sound/pci/hda/hda_intel.c                       |   34 
 sound/pci/hda/patch_analog.c                    |   11 
 sound/pci/hda/patch_conexant.c                  |   33 
 sound/pci/hda/patch_realtek.c                   |   28 
 sound/pci/hda/patch_sigmatel.c                  |   27 
 sound/pci/hda/patch_via.c                       |   14 
 sound/pci/ice1712/maya44.c                      |    6 
 sound/pci/intel8x0.c                            |    6 
 sound/pci/maestro3.c                            |    9 
 sound/pci/mixart/mixart.c                       |   24 
 sound/pci/oxygen/oxygen.c                       |    4 
 sound/pci/oxygen/xonar_cs43xx.c                 |    3 
 sound/pci/rme9652/hdsp.c                        |    1 
 sound/pci/rme9652/hdspm.c                       |    1 
 sound/pci/via82xx.c                             |    6 
 sound/soc/blackfin/bf5xx-ac97.c                 |    4 
 sound/soc/codecs/ak4104.c                       |    6 
 sound/soc/codecs/wm8350.c                       |    4 
 sound/soc/codecs/wm8400.c                       |   18 
 sound/soc/codecs/wm8776.c                       |    1 
 sound/soc/codecs/wm8990.c                       |   28 
 sound/usb/caiaq/audio.c                         |    2 
 sound/usb/caiaq/midi.c                          |    2 
 sound/usb/usbaudio.c                            |   32 
 sound/usb/usbmidi.c                             |   48 +
 sound/usb/usbquirks.h                           |   27 
 sound/usb/usx2y/us122l.c                        |   41 -
 tools/perf/Documentation/Makefile               |    4 
 tools/perf/Makefile                             |    4 
 tools/perf/builtin-annotate.c                   |   63 -
 tools/perf/builtin-probe.c                      |    1 
 tools/perf/util/callchain.h                     |    3 
 tools/perf/util/probe-finder.c                  |    3 
 tools/perf/util/symbol.c                        |    4 
 tools/perf/util/symbol.h                        |    2 
 virt/kvm/ioapic.c                               |    3 
 virt/kvm/kvm_main.c                             |   13 
 1107 files changed, 12586 insertions(+), 6155 deletions(-)

