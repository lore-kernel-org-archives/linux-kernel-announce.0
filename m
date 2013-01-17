From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.34.14 released
Date: Thu, 17 Jan 2013 02:18:19 +0000 (UTC)
Message-ID: <20130117021819.D7A5F971@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 2.6.34.14 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.34/patch-2.6.34.14.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/longterm/v2.6.34/linux-2.6.34.14.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               551046           2341549
Full source                       67716639         404981760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/.gitignore                        |    7 
 Documentation/Makefile                          |    2 
 Documentation/hwmon/ltc4245                     |    4 
 Documentation/i2c/instantiating-devices         |    2 
 Documentation/kbuild/kbuild.txt                 |    5 
 Documentation/kbuild/makefiles.txt              |   12 
 Documentation/kernel-parameters.txt             |    5 
 Documentation/stable_kernel_rules.txt           |   14 
 Documentation/usb/proc_usb_info.txt             |   34 -
 Documentation/video4linux/Makefile              |    8 
 Documentation/video4linux/v4lgrab.c             |  201 ------
 MAINTAINERS                                     |    9 
 Makefile                                        |   17 
 arch/alpha/kernel/err_marvel.c                  |    6 
 arch/alpha/kernel/osf_sys.c                     |   11 
 arch/arm/Kconfig                                |   24 
 arch/arm/common/sa1111.c                        |    9 
 arch/arm/include/asm/assembler.h                |    2 
 arch/arm/include/asm/atomic.h                   |  132 ++--
 arch/arm/include/asm/ptrace.h                   |   17 
 arch/arm/include/asm/tlbflush.h                 |    8 
 arch/arm/kernel/entry-common.S                  |    2 
 arch/arm/kernel/kprobes-decode.c                |    5 
 arch/arm/kernel/perf_event.c                    |    2 
 arch/arm/kernel/process.c                       |    3 
 arch/arm/kernel/signal.c                        |    4 
 arch/arm/kernel/sys_oabi-compat.c               |    2 
 arch/arm/lib/findbit.S                          |    6 
 arch/arm/mach-at91/at91sam9g45_devices.c        |    2 
 arch/arm/mach-davinci/board-da850-evm.c         |   28 
 arch/arm/mach-davinci/board-dm365-evm.c         |    4 
 arch/arm/mach-davinci/board-dm646x-evm.c        |    6 
 arch/arm/mach-ixp4xx/ixdp425-setup.c            |    1 
 arch/arm/mach-mx2/devices.c                     |    4 
 arch/arm/mach-mx3/mach-qong.c                   |    1 
 arch/arm/mach-omap2/board-rx51-peripherals.c    |   17 
 arch/arm/mach-orion5x/ts78xx-setup.c            |    1 
 arch/arm/mach-pxa/cm-x300.c                     |   11 
 arch/arm/mach-realview/Kconfig                  |    2 
 arch/arm/mach-realview/include/mach/barriers.h  |    8 
 arch/arm/mm/cache-v7.S                          |    4 
 arch/arm/mm/copypage-feroceon.c                 |    4 
 arch/arm/mm/copypage-v4wb.c                     |    4 
 arch/arm/mm/copypage-v4wt.c                     |    4 
 arch/arm/mm/copypage-xsc3.c                     |    4 
 arch/arm/mm/fault.c                             |    3 
 arch/arm/mm/init.c                              |    6 
 arch/arm/plat-mxc/gpio.c                        |    8 
 arch/arm/plat-mxc/include/mach/gpio.h           |    2 
 arch/arm/plat-mxc/include/mach/iomux-v3.h       |   10 
 arch/arm/vfp/vfphw.S                            |    2 
 arch/blackfin/include/asm/cache.h               |    2 
 arch/blackfin/mach-bf537/boards/stamp.c         |    1 
 arch/blackfin/mach-bf561/boards/acvilon.c       |    1 
 arch/frv/include/asm/cache.h                    |    2 
 arch/ia64/hp/sim/simserial.c                    |   12 
 arch/ia64/include/asm/compat.h                  |    2 
 arch/ia64/kernel/fsys.S                         |   30 -
 arch/ia64/kernel/irq_ia64.c                     |    1 
 arch/ia64/kernel/mca.c                          |    3 
 arch/ia64/kernel/msi_ia64.c                     |    2 
 arch/ia64/kvm/kvm-ia64.c                        |    5 
 arch/ia64/mm/tlb.c                              |    2 
 arch/ia64/sn/kernel/msi_sn.c                    |    2 
 arch/ia64/sn/pci/tioca_provider.c               |    2 
 arch/m68k/include/asm/cache.h                   |    2 
 arch/m68k/mm/motorola.c                         |    2 
 arch/microblaze/Makefile                        |    8 
 arch/mips/alchemy/mtx-1/board_setup.c           |    8 
 arch/mips/alchemy/mtx-1/platform.c              |    9 
 arch/mips/include/asm/atomic.h                  |   24 
 arch/mips/include/asm/compat.h                  |    2 
 arch/mips/kernel/ptrace.c                       |    4 
 arch/mips/mti-malta/malta-pci.c                 |    2 
 arch/mips/nxp/pnx8550/common/pci.c              |    1 
 arch/mips/nxp/pnx8550/common/setup.c            |    2 
 arch/mips/pci/ops-pmcmsp.c                      |    1 
 arch/mips/pci/pci-yosemite.c                    |    1 
 arch/mn10300/include/asm/cache.h                |    2 
 arch/parisc/include/asm/compat.h                |    2 
 arch/parisc/kernel/firmware.c                   |   23 
 arch/parisc/kernel/irq.c                        |    2 
 arch/parisc/math-emu/decode_exc.c               |    1 
 arch/parisc/mm/init.c                           |    4 
 arch/powerpc/Makefile                           |   16 
 arch/powerpc/boot/Makefile                      |    2 
 arch/powerpc/include/asm/compat.h               |    2 
 arch/powerpc/include/asm/cpm.h                  |   24 
 arch/powerpc/include/asm/hvcall.h               |    1 
 arch/powerpc/include/asm/kexec.h                |    4 
 arch/powerpc/include/asm/paca.h                 |    1 
 arch/powerpc/include/asm/reg.h                  |    1 
 arch/powerpc/kernel/asm-offsets.c               |    9 
 arch/powerpc/kernel/cpu_setup_6xx.S             |   40 -
 arch/powerpc/kernel/crash.c                     |   38 +
 arch/powerpc/kernel/head_64.S                   |   18 
 arch/powerpc/kernel/head_fsl_booke.S            |   13 
 arch/powerpc/kernel/irq.c                       |    5 
 arch/powerpc/kernel/machine_kexec_64.c          |   73 +-
 arch/powerpc/kernel/misc_64.S                   |   13 
 arch/powerpc/kernel/paca.c                      |    2 
 arch/powerpc/kernel/pci_of_scan.c               |    2 
 arch/powerpc/kernel/perf_event.c                |   24 
 arch/powerpc/kernel/ppc970-pmu.c                |    2 
 arch/powerpc/kernel/prom_init.c                 |    6 
 arch/powerpc/kernel/rtas_flash.c                |   39 -
 arch/powerpc/kernel/setup_64.c                  |   17 
 arch/powerpc/kvm/book3s.c                       |   10 
 arch/powerpc/kvm/booke.c                        |   15 
 arch/powerpc/kvm/powerpc.c                      |    3 
 arch/powerpc/lib/string.S                       |    4 
 arch/powerpc/mm/fsl_booke_mmu.c                 |   25 
 arch/powerpc/mm/mmu_decl.h                      |   10 
 arch/powerpc/mm/pgtable_32.c                    |    8 
 arch/powerpc/mm/pgtable_64.c                    |    8 
 arch/powerpc/mm/tlb_nohash_low.S                |   28 
 arch/powerpc/oprofile/op_model_cell.c           |    2 
 arch/powerpc/oprofile/op_model_power4.c         |   24 
 arch/powerpc/platforms/pseries/hotplug-cpu.c    |   30 -
 arch/powerpc/platforms/pseries/hvCall.S         |   38 +
 arch/powerpc/platforms/pseries/hvconsole.c      |    2 
 arch/powerpc/platforms/pseries/lpar.c           |   35 -
 arch/powerpc/platforms/pseries/plpar_wrappers.h |   26 
 arch/powerpc/platforms/pseries/smp.c            |   28 
 arch/powerpc/sysdev/fsl_rio.c                   |    1 
 arch/powerpc/sysdev/micropatch.c                |   12 
 arch/s390/include/asm/compat.h                  |    2 
 arch/s390/include/asm/processor.h               |    5 
 arch/s390/kernel/nmi.c                          |   10 
 arch/s390/kernel/traps.c                        |   37 -
 arch/s390/kvm/kvm-s390.c                        |   18 
 arch/s390/lib/delay.c                           |   14 
 arch/score/kernel/entry.S                       |    2 
 arch/sparc/include/asm/atomic_64.h              |   10 
 arch/sparc/include/asm/compat.h                 |    2 
 arch/sparc/include/asm/oplib_64.h               |   27 
 arch/sparc/include/asm/parport.h                |    4 
 arch/sparc/include/asm/rwsem-const.h            |    2 
 arch/sparc/include/asm/sigcontext.h             |   14 
 arch/sparc/kernel/Makefile                      |    1 
 arch/sparc/kernel/pcic.c                        |    4 
 arch/sparc/kernel/signal32.c                    |  337 ++++++-----
 arch/sparc/kernel/signal_32.c                   |  227 +++----
 arch/sparc/kernel/signal_64.c                   |  153 ++---
 arch/sparc/kernel/sigutil.h                     |    9 
 arch/sparc/kernel/sigutil_32.c                  |  120 ++++
 arch/sparc/kernel/sigutil_64.c                  |   93 +++
 arch/sparc/prom/cif.S                           |   16 
 arch/sparc/prom/console_64.c                    |   48 +
 arch/sparc/prom/devops_64.c                     |   36 +
 arch/sparc/prom/misc_64.c                       |  314 +++++++---
 arch/sparc/prom/p1275.c                         |  102 ---
 arch/sparc/prom/tree_64.c                       |  210 +++++--
 arch/um/Kconfig.x86                             |    4 
 arch/um/drivers/line.c                          |    5 
 arch/um/drivers/ubd_kern.c                      |   40 +
 arch/um/kernel/dyn.lds.S                        |   14 
 arch/um/kernel/uml.lds.S                        |   19 
 arch/um/os-Linux/mem.c                          |    1 
 arch/um/os-Linux/time.c                         |    2 
 arch/x86/.gitignore                             |    3 
 arch/x86/Kconfig                                |   14 
 arch/x86/ia32/ia32entry.S                       |   22 
 arch/x86/include/asm/acpi.h                     |    1 
 arch/x86/include/asm/amd_iommu_proto.h          |    6 
 arch/x86/include/asm/amd_iommu_types.h          |   12 
 arch/x86/include/asm/apicdef.h                  |    1 
 arch/x86/include/asm/archrandom.h               |   73 ++
 arch/x86/include/asm/cmpxchg_32.h               |  121 +---
 arch/x86/include/asm/cmpxchg_64.h               |   44 -
 arch/x86/include/asm/compat.h                   |    2 
 arch/x86/include/asm/cpufeature.h               |    4 
 arch/x86/include/asm/io.h                       |    1 
 arch/x86/include/asm/kvm_host.h                 |   27 
 arch/x86/include/asm/linkage.h                  |    5 
 arch/x86/include/asm/mmu_context.h              |    5 
 arch/x86/include/asm/msr-index.h                |   10 
 arch/x86/include/asm/mwait.h                    |   15 
 arch/x86/include/asm/pgtable-3level.h           |   11 
 arch/x86/include/asm/pgtable_32.h               |    1 
 arch/x86/include/asm/processor.h                |   42 -
 arch/x86/include/asm/pvclock.h                  |   39 +
 arch/x86/include/asm/rwsem.h                    |   12 
 arch/x86/include/asm/smp.h                      |    9 
 arch/x86/include/asm/smpboot_hooks.h            |    2 
 arch/x86/include/asm/suspend_32.h               |    2 
 arch/x86/include/asm/suspend_64.h               |    2 
 arch/x86/include/asm/system.h                   |    2 
 arch/x86/include/asm/timer.h                    |   23 
 arch/x86/include/asm/trampoline.h               |    5 
 arch/x86/include/asm/tsc.h                      |    2 
 arch/x86/include/asm/uaccess.h                  |    2 
 arch/x86/kernel/Makefile                        |    2 
 arch/x86/kernel/acpi/boot.c                     |   14 
 arch/x86/kernel/acpi/cstate.c                   |   20 
 arch/x86/kernel/acpi/sleep.c                    |    2 
 arch/x86/kernel/amd_iommu.c                     |   22 
 arch/x86/kernel/amd_iommu_init.c                |   95 ++-
 arch/x86/kernel/apic/apic.c                     |   51 +
 arch/x86/kernel/apic/io_apic.c                  |   27 
 arch/x86/kernel/apic/probe_64.c                 |    7 
 arch/x86/kernel/apic/x2apic_uv_x.c              |   10 
 arch/x86/kernel/cpu/amd.c                       |   94 +++
 arch/x86/kernel/cpu/common.c                    |    4 
 arch/x86/kernel/cpu/cpu.h                       |    1 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c      |    1 
 arch/x86/kernel/cpu/intel.c                     |    1 
 arch/x86/kernel/cpu/mcheck/mce_amd.c            |   10 
 arch/x86/kernel/cpu/mcheck/therm_throt.c        |   12 
 arch/x86/kernel/cpu/mtrr/cleanup.c              |    2 
 arch/x86/kernel/cpu/mtrr/main.c                 |   30 -
 arch/x86/kernel/cpu/perf_event.c                |    5 
 arch/x86/kernel/cpu/perf_event_amd.c            |    4 
 arch/x86/kernel/cpu/perf_event_intel.c          |    1 
 arch/x86/kernel/cpu/vmware.c                    |   10 
 arch/x86/kernel/crash_dump_64.c                 |    3 
 arch/x86/kernel/e820.c                          |   10 
 arch/x86/kernel/early-quirks.c                  |   21 
 arch/x86/kernel/efi.c                           |    3 
 arch/x86/kernel/entry_64.S                      |    2 
 arch/x86/kernel/head_32.S                       |    8 
 arch/x86/kernel/hpet.c                          |   57 +
 arch/x86/kernel/i8259.c                         |   25 
 arch/x86/kernel/kprobes.c                       |    6 
 arch/x86/kernel/microcode_amd.c                 |   74 +-
 arch/x86/kernel/mpparse.c                       |    2 
 arch/x86/kernel/olpc.c                          |    5 
 arch/x86/kernel/pci-calgary_64.c                |   17 
 arch/x86/kernel/process.c                       |   39 -
 arch/x86/kernel/process_32.c                    |    1 
 arch/x86/kernel/process_64.c                    |    1 
 arch/x86/kernel/ptrace.c                        |    4 
 arch/x86/kernel/pvclock.c                       |   32 +
 arch/x86/kernel/reboot.c                        |   10 
 arch/x86/kernel/relocate_kernel_32.S            |    2 
 arch/x86/kernel/relocate_kernel_64.S            |    2 
 arch/x86/kernel/setup.c                         |   13 
 arch/x86/kernel/smp.c                           |   15 
 arch/x86/kernel/smpboot.c                       |  131 +++-
 arch/x86/kernel/tboot.c                         |    1 
 arch/x86/kernel/trampoline.c                    |   17 
 arch/x86/kernel/traps.c                         |   11 
 arch/x86/kernel/tsc.c                           |   38 +
 arch/x86/kvm/i8254.c                            |   10 
 arch/x86/kvm/mmu.c                              |   17 
 arch/x86/kvm/paging_tmpl.h                      |   30 -
 arch/x86/kvm/svm.c                              |  276 +++++++--
 arch/x86/kvm/vmx.c                              |   79 +-
 arch/x86/kvm/x86.c                              |   73 +-
 arch/x86/lib/copy_user_64.S                     |    4 
 arch/x86/lib/semaphore_32.S                     |    2 
 arch/x86/mm/fault.c                             |   11 
 arch/x86/mm/kmmio.c                             |   16 
 arch/x86/mm/pgtable.c                           |    3 
 arch/x86/mm/testmmiotrace.c                     |   22 
 arch/x86/oprofile/backtrace.c                   |   46 +
 arch/x86/oprofile/init.c                        |    7 
 arch/x86/oprofile/nmi_int.c                     |   54 +
 arch/x86/pci/acpi.c                             |   19 
 arch/x86/pci/mrst.c                             |    7 
 arch/x86/power/cpu.c                            |    6 
 arch/x86/vdso/Makefile                          |    4 
 arch/x86/vdso/vdso32/sysenter.S                 |    2 
 arch/x86/xen/enlighten.c                        |    6 
 arch/x86/xen/mmu.c                              |   10 
 arch/x86/xen/multicalls.c                       |   12 
 arch/x86/xen/smp.c                              |   16 
 arch/x86/xen/suspend.c                          |    4 
 arch/x86/xen/time.c                             |   45 -
 arch/x86/xen/xen-asm_32.S                       |    8 
 arch/xtensa/include/asm/cache.h                 |    1 
 arch/xtensa/kernel/ptrace.c                     |    3 
 block/blk-core.c                                |    4 
 block/blk-map.c                                 |    3 
 block/blk-merge.c                               |    6 
 block/blk-settings.c                            |   27 
 block/blk-sysfs.c                               |    6 
 block/blk.h                                     |    3 
 block/bsg.c                                     |    2 
 block/cfq-iosched.c                             |   41 +
 block/scsi_ioctl.c                              |   34 -
 crypto/Kconfig                                  |    8 
 crypto/algboss.c                                |    4 
 crypto/md5.c                                    |   92 ---
 crypto/testmgr.c                                |   14 
 drivers/acpi/ac.c                               |    4 
 drivers/acpi/acpi_pad.c                         |    7 
 drivers/acpi/acpica/acevents.h                  |    4 
 drivers/acpi/acpica/achware.h                   |    6 
 drivers/acpi/acpica/aclocal.h                   |    1 
 drivers/acpi/acpica/dswexec.c                   |   19 
 drivers/acpi/acpica/evgpe.c                     |   85 --
 drivers/acpi/acpica/evgpeblk.c                  |   14 
 drivers/acpi/acpica/evxfevnt.c                  |   66 +-
 drivers/acpi/acpica/hwgpe.c                     |   94 ++-
 drivers/acpi/blacklist.c                        |   16 
 drivers/acpi/button.c                           |    4 
 drivers/acpi/debug.c                            |    2 
 drivers/acpi/ec.c                               |    3 
 drivers/acpi/processor_core.c                   |    8 
 drivers/acpi/processor_idle.c                   |    2 
 drivers/acpi/sleep.c                            |  157 -----
 drivers/acpi/system.c                           |    6 
 drivers/acpi/video_detect.c                     |    2 
 drivers/acpi/wakeup.c                           |   20 
 drivers/ata/ahci.c                              |   27 
 drivers/ata/ata_generic.c                       |   30 -
 drivers/ata/ata_piix.c                          |    8 
 drivers/ata/libata-core.c                       |   45 +
 drivers/ata/libata-eh.c                         |   16 
 drivers/ata/libata-scsi.c                       |   29 
 drivers/ata/libata-sff.c                        |    2 
 drivers/ata/pata_cmd64x.c                       |   42 +
 drivers/ata/pata_mpc52xx.c                      |    2 
 drivers/ata/sata_mv.c                           |   44 +
 drivers/ata/sata_nv.c                           |    5 
 drivers/ata/sata_via.c                          |   13 
 drivers/atm/solos-pci.c                         |   16 
 drivers/base/cpu.c                              |    2 
 drivers/base/firmware_class.c                   |   26 
 drivers/base/sys.c                              |    6 
 drivers/block/brd.c                             |   11 
 drivers/block/cciss.h                           |    1 
 drivers/block/drbd/drbd_main.c                  |   17 
 drivers/block/loop.c                            |   11 
 drivers/block/nbd.c                             |    6 
 drivers/block/pktcdvd.c                         |    2 
 drivers/block/xen-blkfront.c                    |    2 
 drivers/bluetooth/btusb.c                       |   15 
 drivers/bluetooth/hci_ldisc.c                   |    7 
 drivers/char/agp/amd64-agp.c                    |   27 
 drivers/char/agp/generic.c                      |   19 
 drivers/char/agp/sis-agp.c                      |    8 
 drivers/char/amiserial.c                        |   56 +
 drivers/char/cyclades.c                         |   49 -
 drivers/char/hpet.c                             |   17 
 drivers/char/hvc_console.c                      |    8 
 drivers/char/i8k.c                              |   11 
 drivers/char/ip2/ip2main.c                      |   72 +-
 drivers/char/ipmi/ipmi_si_intf.c                |   13 
 drivers/char/mem.c                              |    3 
 drivers/char/mxser.c                            |   62 +-
 drivers/char/nozomi.c                           |   42 -
 drivers/char/pcmcia/synclink_cs.c               |   63 +-
 drivers/char/random.c                           |  718 ++++++++----------------
 drivers/char/synclink.c                         |   73 +-
 drivers/char/synclink_gt.c                      |   56 -
 drivers/char/synclinkmp.c                       |   61 --
 drivers/char/tpm/tpm.c                          |   22 
 drivers/char/tpm/tpm.h                          |    1 
 drivers/char/tpm/tpm_tis.c                      |    9 
 drivers/char/tty_buffer.c                       |   14 
 drivers/char/tty_io.c                           |   24 
 drivers/char/tty_ldisc.c                        |   53 +
 drivers/char/vt_ioctl.c                         |   11 
 drivers/clocksource/sh_cmt.c                    |   21 
 drivers/clocksource/sh_tmu.c                    |   20 
 drivers/cpufreq/cpufreq.c                       |   31 -
 drivers/cpufreq/cpufreq_stats.c                 |   22 
 drivers/cpuidle/governors/menu.c                |    4 
 drivers/crypto/padlock-aes.c                    |    2 
 drivers/dma/ioat/dma.h                          |    1 
 drivers/dma/ioat/dma_v2.c                       |   24 
 drivers/dma/ioat/dma_v3.c                       |    5 
 drivers/dma/mv_xor.c                            |    4 
 drivers/edac/Kconfig                            |    2 
 drivers/edac/amd64_edac.c                       |   32 -
 drivers/firewire/core-card.c                    |   24 
 drivers/firewire/ohci.c                         |   60 +-
 drivers/firmware/dcdbas.c                       |    4 
 drivers/firmware/dmi_scan.c                     |    3 
 drivers/gpu/drm/Kconfig                         |    3 
 drivers/gpu/drm/drm_crtc.c                      |   14 
 drivers/gpu/drm/drm_crtc_helper.c               |    4 
 drivers/gpu/drm/drm_drv.c                       |    4 
 drivers/gpu/drm/drm_edid.c                      |    6 
 drivers/gpu/drm/drm_irq.c                       |    3 
 drivers/gpu/drm/i915/dvo_tfp410.c               |    2 
 drivers/gpu/drm/i915/i915_debugfs.c             |    2 
 drivers/gpu/drm/i915/i915_dma.c                 |   16 
 drivers/gpu/drm/i915/i915_drv.c                 |    1 
 drivers/gpu/drm/i915/i915_drv.h                 |    1 
 drivers/gpu/drm/i915/i915_gem.c                 |   77 +-
 drivers/gpu/drm/i915/i915_irq.c                 |   16 
 drivers/gpu/drm/i915/i915_reg.h                 |   69 ++
 drivers/gpu/drm/i915/intel_display.c            |  252 +++++---
 drivers/gpu/drm/i915/intel_dp.c                 |   90 ++-
 drivers/gpu/drm/i915/intel_drv.h                |    9 
 drivers/gpu/drm/i915/intel_lvds.c               |   16 
 drivers/gpu/drm/i915/intel_overlay.c            |    7 
 drivers/gpu/drm/radeon/atom.c                   |    6 
 drivers/gpu/drm/radeon/r100.c                   |   61 +-
 drivers/gpu/drm/radeon/r200.c                   |    5 
 drivers/gpu/drm/radeon/r300.c                   |    5 
 drivers/gpu/drm/radeon/r600.c                   |   24 
 drivers/gpu/drm/radeon/r600d.h                  |    1 
 drivers/gpu/drm/radeon/radeon.h                 |    1 
 drivers/gpu/drm/radeon/radeon_agp.c             |    5 
 drivers/gpu/drm/radeon/radeon_atombios.c        |   54 +
 drivers/gpu/drm/radeon/radeon_combios.c         |    4 
 drivers/gpu/drm/radeon/radeon_connectors.c      |   27 
 drivers/gpu/drm/radeon/radeon_device.c          |    5 
 drivers/gpu/drm/radeon/radeon_display.c         |    9 
 drivers/gpu/drm/radeon/radeon_encoders.c        |    4 
 drivers/gpu/drm/radeon/radeon_i2c.c             |    7 
 drivers/gpu/drm/radeon/radeon_irq_kms.c         |    5 
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c     |    2 
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c |    1 
 drivers/gpu/drm/radeon/radeon_legacy_tv.c       |    4 
 drivers/gpu/drm/radeon/radeon_object.c          |   27 
 drivers/gpu/drm/radeon/radeon_state.c           |    5 
 drivers/gpu/drm/radeon/rs600.c                  |    1 
 drivers/gpu/drm/radeon/rs690.c                  |   29 
 drivers/gpu/drm/radeon/rv515.c                  |   23 
 drivers/gpu/drm/radeon/rv770.c                  |    5 
 drivers/gpu/drm/radeon/rv770d.h                 |    1 
 drivers/gpu/drm/ttm/ttm_bo.c                    |    4 
 drivers/gpu/drm/ttm/ttm_bo_util.c               |    1 
 drivers/hid/hid-apple.c                         |   46 +
 drivers/hid/hid-core.c                          |   13 
 drivers/hid/hid-gyration.c                      |    1 
 drivers/hid/hid-ids.h                           |   10 
 drivers/hid/hidraw.c                            |   27 
 drivers/hid/usbhid/hid-core.c                   |    7 
 drivers/hid/usbhid/hid-quirks.c                 |    1 
 drivers/hid/usbhid/usbkbd.c                     |    1 
 drivers/hwmon/adm1026.c                         |   20 
 drivers/hwmon/applesmc.c                        |   48 +
 drivers/hwmon/coretemp.c                        |   32 +
 drivers/hwmon/f71882fg.c                        |    2 
 drivers/hwmon/f75375s.c                         |    6 
 drivers/hwmon/i5k_amb.c                         |    6 
 drivers/hwmon/ibmaem.c                          |   15 
 drivers/hwmon/it87.c                            |   22 
 drivers/hwmon/k10temp.c                         |   14 
 drivers/hwmon/k8temp.c                          |   43 +
 drivers/hwmon/lm85.c                            |    1 
 drivers/hwmon/ltc4245.c                         |   18 
 drivers/hwmon/max1111.c                         |   11 
 drivers/hwmon/pc87360.c                         |   31 -
 drivers/hwmon/sht15.c                           |    4 
 drivers/hwmon/via686a.c                         |   14 
 drivers/hwmon/w83627ehf.c                       |   28 
 drivers/i2c/algos/i2c-algo-bit.c                |    4 
 drivers/i2c/busses/i2c-pca-isa.c                |   12 
 drivers/i2c/busses/i2c-pca-platform.c           |   13 
 drivers/i2c/busses/i2c-taos-evm.c               |    8 
 drivers/i2c/i2c-core.c                          |   14 
 drivers/ide/cmd640.c                            |    6 
 drivers/ide/ide-cd.c                            |   14 
 drivers/infiniband/core/cm.c                    |    1 
 drivers/infiniband/core/cma.c                   |   15 
 drivers/infiniband/core/uverbs_cmd.c            |   99 +--
 drivers/infiniband/hw/cxgb3/iwch_cm.c           |    6 
 drivers/infiniband/ulp/ipoib/ipoib_main.c       |    4 
 drivers/input/joydev.c                          |    3 
 drivers/input/joystick/gamecon.c                |    5 
 drivers/input/keyboard/twl4030_keypad.c         |   17 
 drivers/input/mouse/bcm5974.c                   |   40 +
 drivers/input/mouse/elantech.c                  |   41 -
 drivers/input/mouse/elantech.h                  |    7 
 drivers/input/serio/i8042-x86ia64io.h           |   35 +
 drivers/input/serio/i8042.c                     |    8 
 drivers/input/xen-kbdfront.c                    |   36 -
 drivers/isdn/capi/kcapi.c                       |    6 
 drivers/isdn/gigaset/asyncdata.c                |   44 -
 drivers/isdn/gigaset/capi.c                     |  450 +++++++++------
 drivers/isdn/gigaset/common.c                   |   36 -
 drivers/isdn/gigaset/ev-layer.c                 |    4 
 drivers/isdn/gigaset/gigaset.h                  |   38 -
 drivers/isdn/gigaset/i4l.c                      |   21 
 drivers/isdn/gigaset/isocdata.c                 |   72 --
 drivers/isdn/hisax/config.c                     |   18 
 drivers/isdn/hisax/hisax.h                      |    1 
 drivers/isdn/i4l/isdn_tty.c                     |    6 
 drivers/isdn/sc/ioctl.c                         |   10 
 drivers/md/bitmap.c                             |    4 
 drivers/md/bitmap.h                             |    1 
 drivers/md/dm-exception-store.c                 |    4 
 drivers/md/dm-exception-store.h                 |    3 
 drivers/md/dm-ioctl.c                           |   44 -
 drivers/md/dm-mpath.c                           |   18 
 drivers/md/dm-snap.c                            |   44 -
 drivers/md/dm-table.c                           |   22 
 drivers/md/dm.c                                 |   16 
 drivers/md/linear.c                             |    1 
 drivers/md/linear.h                             |    2 
 drivers/md/md.c                                 |  144 +++-
 drivers/md/md.h                                 |    5 
 drivers/md/raid1.c                              |   35 -
 drivers/md/raid10.c                             |   32 -
 drivers/md/raid5.c                              |   47 -
 drivers/media/dvb/b2c2/flexcop-pci.c            |    2 
 drivers/media/dvb/dvb-core/dvb_net.c            |   12 
 drivers/media/dvb/dvb-usb/dib0700_devices.c     |   46 +
 drivers/media/dvb/dvb-usb/dvb-usb-ids.h         |    1 
 drivers/media/dvb/ttpci/Kconfig                 |    5 
 drivers/media/dvb/ttpci/av7110_ca.c             |    2 
 drivers/media/radio/radio-aimslab.c             |   24 
 drivers/media/radio/si4713-i2c.c                |    4 
 drivers/media/video/bt8xx/bttv-driver.c         |    2 
 drivers/media/video/cx231xx/cx231xx-cards.c     |   14 
 drivers/media/video/cx23885/cx23885-dvb.c       |    2 
 drivers/media/video/cx23885/cx23885-i2c.c       |   12 
 drivers/media/video/cx88/cx88-i2c.c             |   16 
 drivers/media/video/em28xx/em28xx-cards.c       |    4 
 drivers/media/video/ivtv/ivtvfb.c               |    2 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c       |    4 
 drivers/media/video/sn9c102/sn9c102_core.c      |    6 
 drivers/media/video/uvc/uvc_ctrl.c              |    2 
 drivers/media/video/uvc/uvc_driver.c            |   27 
 drivers/media/video/uvc/uvc_queue.c             |    2 
 drivers/media/video/uvc/uvc_video.c             |   24 
 drivers/media/video/uvc/uvcvideo.h              |    6 
 drivers/media/video/v4l2-compat-ioctl32.c       |   32 -
 drivers/media/video/v4l2-ioctl.c                |    6 
 drivers/memstick/core/mspro_block.c             |    6 
 drivers/message/fusion/mptctl.c                 |    8 
 drivers/message/fusion/mptscsih.c               |    9 
 drivers/mfd/88pm860x-i2c.c                      |    1 
 drivers/mfd/ab3100-core.c                       |    9 
 drivers/mfd/max8925-i2c.c                       |    2 
 drivers/mfd/ucb1x00-ts.c                        |   12 
 drivers/mfd/wm831x-otp.c                        |    8 
 drivers/misc/enclosure.c                        |    7 
 drivers/misc/ep93xx_pwm.c                       |    6 
 drivers/misc/sgi-xp/xpc_partition.c             |   25 
 drivers/misc/sgi-xp/xpc_uv.c                    |   17 
 drivers/misc/vmware_balloon.c                   |   18 
 drivers/mmc/core/core.c                         |   83 +-
 drivers/mmc/core/host.c                         |    6 
 drivers/mmc/core/sdio.c                         |    8 
 drivers/mmc/host/sdhci-pci.c                    |    1 
 drivers/mmc/host/sdhci-s3c.c                    |   22 
 drivers/mmc/host/sdhci.c                        |    9 
 drivers/mmc/host/tmio_mmc.c                     |    7 
 drivers/mmc/host/tmio_mmc.h                     |   13 
 drivers/mtd/mtdchar.c                           |    1 
 drivers/mtd/mtdconcat.c                         |    4 
 drivers/mtd/nand/omap2.c                        |    2 
 drivers/mtd/nand/plat_nand.c                    |    2 
 drivers/mtd/nand/pxa3xx_nand.c                  |    2 
 drivers/mtd/onenand/generic.c                   |    2 
 drivers/mtd/onenand/omap2.c                     |    2 
 drivers/net/3c503.c                             |   42 +
 drivers/net/Makefile                            |    6 
 drivers/net/arcnet/com20020-pci.c               |    4 
 drivers/net/atlx/atl1.c                         |    5 
 drivers/net/b44.c                               |    4 
 drivers/net/benet/be_cmds.c                     |    2 
 drivers/net/bnx2.c                              |   14 
 drivers/net/bonding/bond_3ad.c                  |    7 
 drivers/net/bonding/bond_alb.c                  |    7 
 drivers/net/bonding/bond_ipv6.c                 |    9 
 drivers/net/bonding/bond_main.c                 |    4 
 drivers/net/bonding/bonding.h                   |    4 
 drivers/net/can/sja1000/sja1000.c               |   20 
 drivers/net/can/sja1000/sja1000.h               |    1 
 drivers/net/cnic.c                              |    4 
 drivers/net/cpmac.c                             |    3 
 drivers/net/cxgb3/cxgb3_main.c                  |    2 
 drivers/net/dm9000.c                            |   38 -
 drivers/net/e100.c                              |    2 
 drivers/net/e1000/e1000_hw.c                    |    6 
 drivers/net/e1000/e1000_main.c                  |  165 +++--
 drivers/net/e1000e/82571.c                      |   31 -
 drivers/net/e1000e/defines.h                    |    4 
 drivers/net/e1000e/hw.h                         |    2 
 drivers/net/e1000e/ich8lan.c                    |   10 
 drivers/net/e1000e/lib.c                        |   10 
 drivers/net/e1000e/netdev.c                     |   20 
 drivers/net/ehea/ehea_ethtool.c                 |   21 
 drivers/net/eql.c                               |    2 
 drivers/net/gianfar.c                           |    6 
 drivers/net/hamradio/6pack.c                    |    4 
 drivers/net/hamradio/mkiss.c                    |    4 
 drivers/net/hydra.c                             |   14 
 drivers/net/ifb.c                               |    2 
 drivers/net/igb/e1000_82575.c                   |    1 
 drivers/net/igb/igb_main.c                      |   10 
 drivers/net/igbvf/igbvf.h                       |    1 
 drivers/net/igbvf/netdev.c                      |    2 
 drivers/net/irda/smsc-ircc2.c                   |    2 
 drivers/net/ixgb/ixgb_main.c                    |    2 
 drivers/net/ixgbe/ixgbe_main.c                  |   12 
 drivers/net/ixgbevf/ixgbevf_main.c              |    2 
 drivers/net/jme.c                               |   42 +
 drivers/net/mlx4/icm.c                          |    3 
 drivers/net/myri10ge/myri10ge.c                 |    1 
 drivers/net/ne-h8300.c                          |   16 
 drivers/net/netxen/netxen_nic_init.c            |    3 
 drivers/net/niu.c                               |   16 
 drivers/net/r8169.c                             |   35 -
 drivers/net/rionet.c                            |    4 
 drivers/net/skge.c                              |   18 
 drivers/net/sky2.c                              |   20 
 drivers/net/slip.c                              |    4 
 drivers/net/smsc911x.c                          |   92 +--
 drivers/net/tehuti.c                            |    4 
 drivers/net/tun.c                               |    3 
 drivers/net/usb/asix.c                          |    4 
 drivers/net/usb/cdc-phonet.c                    |    9 
 drivers/net/usb/hso.c                           |    2 
 drivers/net/usb/pegasus.h                       |    2 
 drivers/net/usb/usbnet.c                        |    5 
 drivers/net/virtio_net.c                        |   55 +
 drivers/net/vmxnet3/vmxnet3_ethtool.c           |    3 
 drivers/net/wireless/ath/ar9170/hw.h            |    1 
 drivers/net/wireless/ath/ar9170/main.c          |    2 
 drivers/net/wireless/ath/ar9170/usb.c           |   10 
 drivers/net/wireless/ath/ath5k/attach.c         |    1 
 drivers/net/wireless/ath/ath5k/base.c           |   43 +
 drivers/net/wireless/ath/ath5k/eeprom.c         |    8 
 drivers/net/wireless/ath/ath9k/ath9k.h          |    4 
 drivers/net/wireless/ath/ath9k/eeprom.h         |    4 
 drivers/net/wireless/ath/ath9k/eeprom_4k.c      |    4 
 drivers/net/wireless/ath/ath9k/eeprom_9287.c    |    4 
 drivers/net/wireless/ath/ath9k/eeprom_def.c     |    6 
 drivers/net/wireless/ath/ath9k/hw.c             |   27 
 drivers/net/wireless/ath/ath9k/init.c           |    3 
 drivers/net/wireless/ath/ath9k/initvals.h       |    8 
 drivers/net/wireless/ath/ath9k/main.c           |    4 
 drivers/net/wireless/ath/ath9k/xmit.c           |   78 +-
 drivers/net/wireless/ath/regd.h                 |    1 
 drivers/net/wireless/ath/regd_common.h          |    1 
 drivers/net/wireless/b43/dma.c                  |    2 
 drivers/net/wireless/b43/dma.h                  |    2 
 drivers/net/wireless/b43/main.c                 |    3 
 drivers/net/wireless/b43/sdio.c                 |    3 
 drivers/net/wireless/hostap/hostap_cs.c         |    8 
 drivers/net/wireless/hostap/hostap_hw.c         |   13 
 drivers/net/wireless/hostap/hostap_pci.c        |    1 
 drivers/net/wireless/hostap/hostap_wlan.h       |    2 
 drivers/net/wireless/iwlwifi/iwl-1000.c         |    3 
 drivers/net/wireless/iwlwifi/iwl-3945.c         |    3 
 drivers/net/wireless/iwlwifi/iwl-4965.c         |    1 
 drivers/net/wireless/iwlwifi/iwl-5000.c         |    9 
 drivers/net/wireless/iwlwifi/iwl-6000.c         |    8 
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c       |   10 
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   31 -
 drivers/net/wireless/iwlwifi/iwl-core.c         |   93 +++
 drivers/net/wireless/iwlwifi/iwl-core.h         |    7 
 drivers/net/wireless/iwlwifi/iwl-dev.h          |   10 
 drivers/net/wireless/iwlwifi/iwl-devtrace.h     |    2 
 drivers/net/wireless/iwlwifi/iwl-helpers.h      |    6 
 drivers/net/wireless/iwlwifi/iwl-scan.c         |   38 -
 drivers/net/wireless/iwlwifi/iwl-tx.c           |   17 
 drivers/net/wireless/iwlwifi/iwl3945-base.c     |   16 
 drivers/net/wireless/libertas/cmd.c             |    6 
 drivers/net/wireless/libertas/if_sdio.c         |   22 
 drivers/net/wireless/orinoco/main.c             |    6 
 drivers/net/wireless/orinoco/wext.c             |    4 
 drivers/net/wireless/p54/eeprom.c               |    4 
 drivers/net/wireless/p54/p54pci.c               |   16 
 drivers/net/wireless/p54/p54spi.c               |    5 
 drivers/net/wireless/p54/p54usb.c               |   26 
 drivers/net/wireless/p54/txrx.c                 |    6 
 drivers/net/wireless/rt2x00/rt2500usb.c         |   10 
 drivers/net/wireless/rt2x00/rt2x00usb.c         |   14 
 drivers/net/wireless/rt2x00/rt73usb.c           |    1 
 drivers/net/wireless/rtl818x/rtl8180_dev.c      |    1 
 drivers/net/wireless/wl12xx/wl1251_cmd.c        |    2 
 drivers/net/wireless/wl12xx/wl1251_sdio.c       |    1 
 drivers/net/xen-netfront.c                      |    1 
 drivers/net/zorro8390.c                         |   12 
 drivers/oprofile/buffer_sync.c                  |   18 
 drivers/oprofile/cpu_buffer.c                   |   65 --
 drivers/parisc/led.c                            |    6 
 drivers/pci/dmar.c                              |    5 
 drivers/pci/hotplug/acpiphp_glue.c              |    1 
 drivers/pci/hotplug/pcihp_slot.c                |   45 +
 drivers/pci/hotplug/shpchp_core.c               |    4 
 drivers/pci/hotplug/shpchp_hpc.c                |    4 
 drivers/pci/intel-iommu.c                       |  140 +++-
 drivers/pci/msi.c                               |   27 
 drivers/pci/pci-stub.c                          |    3 
 drivers/pci/pci-sysfs.c                         |   32 -
 drivers/pci/pci.c                               |    8 
 drivers/pci/pci.h                               |    7 
 drivers/pci/pcie/pme/pcie_pme.c                 |   19 
 drivers/pci/proc.c                              |    2 
 drivers/pci/quirks.c                            |  183 +++---
 drivers/pcmcia/ds.c                             |    4 
 drivers/pcmcia/pcmcia_resource.c                |    5 
 drivers/pcmcia/yenta_socket.c                   |    5 
 drivers/platform/x86/Kconfig                    |    1 
 drivers/platform/x86/acer-wmi.c                 |    4 
 drivers/platform/x86/asus_acpi.c                |    8 
 drivers/platform/x86/compal-laptop.c            |    9 
 drivers/platform/x86/dell-laptop.c              |   14 
 drivers/platform/x86/tc1100-wmi.c               |    2 
 drivers/platform/x86/thinkpad_acpi.c            |    6 
 drivers/power/apm_power.c                       |    1 
 drivers/power/ds2760_battery.c                  |    2 
 drivers/power/olpc_battery.c                    |    8 
 drivers/regulator/wm8994-regulator.c            |    5 
 drivers/rtc/rtc-cmos.c                          |   21 
 drivers/rtc/rtc-ds1307.c                        |    4 
 drivers/rtc/rtc-ds1511.c                        |    2 
 drivers/rtc/rtc-s3c.c                           |    5 
 drivers/rtc/rtc-wm831x.c                        |   24 
 drivers/s390/block/dasd_eckd.c                  |    2 
 drivers/s390/char/keyboard.c                    |    3 
 drivers/s390/cio/ccwgroup.c                     |   42 -
 drivers/scsi/3w-9xxx.c                          |    2 
 drivers/scsi/aacraid/commctrl.c                 |    4 
 drivers/scsi/aacraid/commsup.c                  |    2 
 drivers/scsi/bfa/bfa_core.c                     |   22 
 drivers/scsi/device_handler/scsi_dh_emc.c       |    2 
 drivers/scsi/gdth.c                             |    8 
 drivers/scsi/hosts.c                            |    9 
 drivers/scsi/ibmvscsi/ibmvfc.c                  |    8 
 drivers/scsi/ibmvscsi/ibmvfc.h                  |    1 
 drivers/scsi/ipr.c                              |    2 
 drivers/scsi/libiscsi_tcp.c                     |   14 
 drivers/scsi/libsas/sas_ata.c                   |    6 
 drivers/scsi/libsas/sas_expander.c              |   17 
 drivers/scsi/libsas/sas_scsi_host.c             |   17 
 drivers/scsi/megaraid/megaraid_sas.c            |    3 
 drivers/scsi/mpt2sas/mpt2sas_base.c             |   19 
 drivers/scsi/mpt2sas/mpt2sas_ctl.c              |   23 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c            |    7 
 drivers/scsi/pmcraid.c                          |    6 
 drivers/scsi/qla2xxx/qla_init.c                 |    3 
 drivers/scsi/qla2xxx/qla_isr.c                  |    1 
 drivers/scsi/scsi_devinfo.c                     |    2 
 drivers/scsi/scsi_lib.c                         |   25 
 drivers/scsi/scsi_scan.c                        |    2 
 drivers/scsi/scsi_sysfs.c                       |   20 
 drivers/scsi/sd.c                               |   24 
 drivers/scsi/ses.c                              |   10 
 drivers/scsi/st.c                               |    4 
 drivers/scsi/ultrastor.c                        |    2 
 drivers/serial/68328serial.c                    |    2 
 drivers/serial/68360serial.c                    |   51 -
 drivers/serial/8250.c                           |    3 
 drivers/serial/8250_pci.c                       |   13 
 drivers/serial/cpm_uart/cpm_uart_core.c         |  143 ++--
 drivers/serial/imx.c                            |    3 
 drivers/serial/serial_core.c                    |   35 -
 drivers/spi/spi_mpc8xxx.c                       |   22 
 drivers/ssb/b43_pci_bridge.c                    |    1 
 drivers/ssb/driver_chipcommon.c                 |    3 
 drivers/ssb/pci.c                               |   28 
 drivers/ssb/sprom.c                             |   15 
 drivers/staging/asus_oled/asus_oled.c           |    8 
 drivers/staging/batman-adv/proc.c               |   51 +
 drivers/staging/batman-adv/vis.c                |  235 +++++--
 drivers/staging/batman-adv/vis.h                |    8 
 drivers/staging/comedi/Kconfig                  |    5 
 drivers/staging/comedi/comedi_fops.c            |   79 +-
 drivers/staging/comedi/drivers/Makefile         |    4 
 drivers/staging/comedi/drivers/jr3_pci.c        |    7 
 drivers/staging/comedi/drivers/ni_labpc.c       |    3 
 drivers/staging/comedi/drivers/ni_mio_cs.c      |    2 
 drivers/staging/frontier/tranzport.c            |    2 
 drivers/staging/hv/Channel.c                    |    8 
 drivers/staging/hv/Connection.c                 |    4 
 drivers/staging/hv/RingBuffer.c                 |    3 
 drivers/staging/hv/StorVscApi.h                 |    4 
 drivers/staging/hv/Vmbus.c                      |    2 
 drivers/staging/hv/VmbusPrivate.h               |    1 
 drivers/staging/hv/blkvsc_drv.c                 |    1 
 drivers/staging/hv/netvsc_drv.c                 |   28 
 drivers/staging/hv/storvsc_drv.c                |    9 
 drivers/staging/line6/Kconfig                   |    1 
 drivers/staging/line6/control.c                 |  204 +++---
 drivers/staging/line6/midi.c                    |    4 
 drivers/staging/line6/pod.c                     |   32 -
 drivers/staging/line6/toneport.c                |    4 
 drivers/staging/line6/variax.c                  |   12 
 drivers/staging/panel/panel.c                   |    2 
 drivers/staging/quatech_usb2/quatech_usb2.c     |    9 
 drivers/staging/rt2860/usb_main_dev.c           |    2 
 drivers/staging/rtl8187se/r8185b_init.c         |   30 -
 drivers/staging/rtl8192su/r8192S_firmware.c     |  135 ++--
 drivers/staging/rtl8192su/r8192U_core.c         |  122 +++-
 drivers/staging/rtl8192su/r819xU_cmdpkt.c       |    6 
 drivers/staging/usbip/stub_rx.c                 |   40 -
 drivers/staging/usbip/stub_tx.c                 |   74 ++
 drivers/staging/usbip/usbip_common.c            |   64 ++
 drivers/staging/usbip/usbip_common.h            |    2 
 drivers/staging/usbip/usbip_event.c             |   16 
 drivers/staging/usbip/vhci.h                    |    6 
 drivers/staging/usbip/vhci_hcd.c                |   72 +-
 drivers/staging/usbip/vhci_rx.c                 |   28 
 drivers/staging/vt6655/device_main.c            |    2 
 drivers/staging/vt6655/wpactl.c                 |   11 
 drivers/usb/atm/ueagle-atm.c                    |    6 
 drivers/usb/class/cdc-acm.c                     |   53 +
 drivers/usb/class/usbtmc.c                      |    2 
 drivers/usb/core/devices.c                      |   21 
 drivers/usb/core/devio.c                        |   13 
 drivers/usb/core/driver.c                       |   26 
 drivers/usb/core/file.c                         |   35 -
 drivers/usb/core/hcd-pci.c                      |    4 
 drivers/usb/core/hcd.c                          |  172 +++--
 drivers/usb/core/hub.c                          |   66 +-
 drivers/usb/core/message.c                      |   60 --
 drivers/usb/core/quirks.c                       |   63 ++
 drivers/usb/core/urb.c                          |   59 -
 drivers/usb/core/usb.c                          |    4 
 drivers/usb/gadget/at91_udc.c                   |    2 
 drivers/usb/gadget/atmel_usba_udc.c             |    3 
 drivers/usb/gadget/dummy_hcd.c                  |    1 
 drivers/usb/gadget/f_rndis.c                    |    3 
 drivers/usb/gadget/fsl_udc_core.c               |    2 
 drivers/usb/gadget/printer.c                    |   14 
 drivers/usb/gadget/rndis.c                      |   10 
 drivers/usb/gadget/u_serial.c                   |   16 
 drivers/usb/host/ehci-au1xxx.c                  |   16 
 drivers/usb/host/ehci-fsl.c                     |    2 
 drivers/usb/host/ehci-hcd.c                     |   37 -
 drivers/usb/host/ehci-hub.c                     |  168 ++++-
 drivers/usb/host/ehci-mxc.c                     |   13 
 drivers/usb/host/ehci-pci.c                     |   55 +
 drivers/usb/host/ehci-ppc-of.c                  |   12 
 drivers/usb/host/ehci-q.c                       |   30 -
 drivers/usb/host/ehci-sched.c                   |   89 ++
 drivers/usb/host/ehci.h                         |   13 
 drivers/usb/host/fhci-sched.c                   |   19 
 drivers/usb/host/fhci.h                         |    9 
 drivers/usb/host/ohci-hcd.c                     |    9 
 drivers/usb/host/ohci-pci.c                     |   26 
 drivers/usb/host/ohci.h                         |    1 
 drivers/usb/host/pci-quirks.c                   |   48 +
 drivers/usb/host/whci/qset.c                    |    4 
 drivers/usb/host/xhci-mem.c                     |  145 +++-
 drivers/usb/host/xhci-pci.c                     |    2 
 drivers/usb/host/xhci-ring.c                    |   91 ++-
 drivers/usb/host/xhci.c                         |   76 ++
 drivers/usb/host/xhci.h                         |    6 
 drivers/usb/misc/cypress_cy7c63.c               |    6 
 drivers/usb/misc/iowarrior.c                    |    3 
 drivers/usb/misc/sisusbvga/sisusb.c             |    6 
 drivers/usb/misc/trancevibrator.c               |    2 
 drivers/usb/misc/usbled.c                       |    2 
 drivers/usb/misc/usbsevseg.c                    |   10 
 drivers/usb/misc/usbtest.c                      |    6 
 drivers/usb/misc/uss720.c                       |   11 
 drivers/usb/mon/mon_bin.c                       |    6 
 drivers/usb/mon/mon_text.c                      |    4 
 drivers/usb/musb/blackfin.c                     |    4 
 drivers/usb/musb/musb_core.c                    |   10 
 drivers/usb/musb/musb_core.h                    |    6 
 drivers/usb/musb/musb_gadget.c                  |   22 
 drivers/usb/musb/musb_gadget.h                  |    2 
 drivers/usb/musb/musb_gadget_ep0.c              |    9 
 drivers/usb/musb/omap2430.c                     |    1 
 drivers/usb/musb/tusb6010.c                     |   13 
 drivers/usb/serial/ch341.c                      |   11 
 drivers/usb/serial/cp210x.c                     |   41 -
 drivers/usb/serial/cypress_m8.c                 |    2 
 drivers/usb/serial/digi_acceleport.c            |   14 
 drivers/usb/serial/ftdi_sio.c                   |  159 +++++
 drivers/usb/serial/ftdi_sio_ids.h               |  163 +++++
 drivers/usb/serial/garmin_gps.c                 |   20 
 drivers/usb/serial/generic.c                    |   20 
 drivers/usb/serial/io_edgeport.c                |    4 
 drivers/usb/serial/io_ti.c                      |    2 
 drivers/usb/serial/ir-usb.c                     |    2 
 drivers/usb/serial/keyspan_pda.c                |   17 
 drivers/usb/serial/kl5kusb105.c                 |    1 
 drivers/usb/serial/kobil_sct.c                  |    5 
 drivers/usb/serial/mos7720.c                    |    3 
 drivers/usb/serial/mos7840.c                    |   36 -
 drivers/usb/serial/moto_modem.c                 |    1 
 drivers/usb/serial/navman.c                     |    1 
 drivers/usb/serial/opticon.c                    |    6 
 drivers/usb/serial/option.c                     |  263 ++++++++
 drivers/usb/serial/pl2303.c                     |   40 +
 drivers/usb/serial/pl2303.h                     |   15 
 drivers/usb/serial/qcaux.c                      |    5 
 drivers/usb/serial/qcserial.c                   |    3 
 drivers/usb/serial/sierra.c                     |    4 
 drivers/usb/serial/spcp8x5.c                    |   10 
 drivers/usb/serial/ti_usb_3410_5052.c           |    2 
 drivers/usb/serial/usb-serial.c                 |   13 
 drivers/usb/serial/visor.c                      |   13 
 drivers/usb/storage/protocol.c                  |    7 
 drivers/usb/storage/sierra_ms.c                 |    2 
 drivers/usb/storage/transport.c                 |   34 -
 drivers/usb/storage/unusual_cypress.h           |    5 
 drivers/usb/storage/unusual_devs.h              |   71 ++
 drivers/vhost/net.c                             |    2 
 drivers/video/arcfb.c                           |    8 
 drivers/video/backlight/backlight.c             |   12 
 drivers/video/backlight/mbp_nvidia_bl.c         |   18 
 drivers/video/carminefb.c                       |    6 
 drivers/video/console/tileblit.c                |    2 
 drivers/video/efifb.c                           |  103 +++
 drivers/video/hgafb.c                           |   10 
 drivers/video/matrox/matroxfb_base.h            |    4 
 drivers/video/sis/sis_main.c                    |    3 
 drivers/video/vfb.c                             |    4 
 drivers/video/vga16fb.c                         |   10 
 drivers/video/via/accel.c                       |    7 
 drivers/video/via/ioctl.c                       |    2 
 drivers/video/w100fb.c                          |   14 
 drivers/virtio/virtio_pci.c                     |   23 
 drivers/virtio/virtio_ring.c                    |    7 
 drivers/watchdog/mtx-1_wdt.c                    |    9 
 drivers/xen/events.c                            |   32 -
 drivers/xen/xenbus/xenbus_xs.c                  |    2 
 firmware/Makefile                               |    2 
 fs/aio.c                                        |   72 +-
 fs/befs/linuxvfs.c                              |   23 
 fs/binfmt_elf.c                                 |    2 
 fs/binfmt_misc.c                                |    2 
 fs/bio.c                                        |   23 
 fs/block_dev.c                                  |   10 
 fs/btrfs/acl.c                                  |    3 
 fs/btrfs/ctree.h                                |    4 
 fs/btrfs/disk-io.c                              |    4 
 fs/btrfs/ioctl.c                                |    8 
 fs/btrfs/root-tree.c                            |   18 
 fs/btrfs/transaction.c                          |    1 
 fs/btrfs/volumes.c                              |    4 
 fs/char_dev.c                                   |    4 
 fs/cifs/cifsfs.c                                |    6 
 fs/cifs/cifsglob.h                              |    2 
 fs/cifs/cifsproto.h                             |    8 
 fs/cifs/cifssmb.c                               |    7 
 fs/cifs/connect.c                               |   40 -
 fs/cifs/dir.c                                   |   40 +
 fs/cifs/dns_resolve.c                           |   69 ++
 fs/cifs/dns_resolve.h                           |    4 
 fs/cifs/file.c                                  |   32 -
 fs/cifs/inode.c                                 |   16 
 fs/cifs/misc.c                                  |    3 
 fs/cifs/sess.c                                  |   14 
 fs/compat.c                                     |  160 +++--
 fs/dcache.c                                     |    4 
 fs/dcookies.c                                   |    3 
 fs/ecryptfs/crypto.c                            |    4 
 fs/ecryptfs/file.c                              |   60 +-
 fs/ecryptfs/inode.c                             |   11 
 fs/ecryptfs/keystore.c                          |   47 -
 fs/ecryptfs/messaging.c                         |   17 
 fs/ecryptfs/mmap.c                              |    5 
 fs/eventpoll.c                                  |  138 ++++
 fs/exec.c                                       |   56 +
 fs/exofs/dir.c                                  |    2 
 fs/ext2/namei.c                                 |    9 
 fs/ext3/namei.c                                 |   17 
 fs/ext3/super.c                                 |    7 
 fs/ext3/xattr.c                                 |   12 
 fs/ext4/dir.c                                   |    4 
 fs/ext4/ext4.h                                  |  132 +++-
 fs/ext4/ext4_jbd2.h                             |    8 
 fs/ext4/extents.c                               |  140 +++-
 fs/ext4/file.c                                  |    2 
 fs/ext4/fsync.c                                 |   33 +
 fs/ext4/ialloc.c                                |   89 +-
 fs/ext4/inode.c                                 |  101 +--
 fs/ext4/ioctl.c                                 |   25 
 fs/ext4/mballoc.c                               |  110 ++-
 fs/ext4/migrate.c                               |    2 
 fs/ext4/move_extent.c                           |    7 
 fs/ext4/namei.c                                 |   12 
 fs/ext4/resize.c                                |    3 
 fs/ext4/super.c                                 |   72 +-
 fs/ext4/xattr.c                                 |    4 
 fs/fat/file.c                                   |    2 
 fs/file_table.c                                 |    2 
 fs/fs-writeback.c                               |   14 
 fs/fuse/dev.c                                   |   20 
 fs/fuse/file.c                                  |  134 ++++
 fs/fuse/fuse_i.h                                |    6 
 fs/gfs2/dir.c                                   |    2 
 fs/gfs2/file.c                                  |    7 
 fs/gfs2/main.c                                  |    9 
 fs/gfs2/quota.c                                 |   84 +-
 fs/hfs/btree.c                                  |   20 
 fs/hfs/trans.c                                  |    2 
 fs/hfsplus/catalog.c                            |    4 
 fs/hfsplus/dir.c                                |   11 
 fs/inode.c                                      |   22 
 fs/jbd/commit.c                                 |    9 
 fs/jbd/journal.c                                |   24 
 fs/jbd2/journal.c                               |    8 
 fs/jfs/xattr.c                                  |   87 +-
 fs/libfs.c                                      |    3 
 fs/lockd/clntproc.c                             |    8 
 fs/locks.c                                      |    6 
 fs/namei.c                                      |    2 
 fs/namespace.c                                  |    2 
 fs/nfs/client.c                                 |    2 
 fs/nfs/direct.c                                 |   34 -
 fs/nfs/file.c                                   |   15 
 fs/nfs/inode.c                                  |   26 
 fs/nfs/mount_clnt.c                             |    4 
 fs/nfs/nfs4proc.c                               |   44 +
 fs/nfs/nfs4state.c                              |    4 
 fs/nfs/nfs4xdr.c                                |    6 
 fs/nfs/super.c                                  |   38 +
 fs/nfs/write.c                                  |   27 
 fs/nfsd/lockd.c                                 |    1 
 fs/nfsd/nfs3xdr.c                               |    6 
 fs/nfsd/nfs4proc.c                              |    6 
 fs/nfsd/nfs4state.c                             |    2 
 fs/nfsd/nfs4xdr.c                               |   11 
 fs/nfsd/nfssvc.c                                |    2 
 fs/nfsd/vfs.c                                   |   22 
 fs/nfsd/vfs.h                                   |    1 
 fs/nfsd/xdr4.h                                  |   21 
 fs/nilfs2/btnode.c                              |   14 
 fs/nilfs2/btnode.h                              |    1 
 fs/nilfs2/file.c                                |   12 
 fs/nilfs2/super.c                               |    6 
 fs/notify/inotify/inotify_fsnotify.c            |    3 
 fs/notify/inotify/inotify_user.c                |    8 
 fs/ocfs2/acl.c                                  |   33 -
 fs/ocfs2/aops.c                                 |   58 -
 fs/ocfs2/dlm/dlmmaster.c                        |    9 
 fs/ocfs2/dlm/dlmrecovery.c                      |   22 
 fs/ocfs2/dlm/dlmthread.c                        |  114 +--
 fs/ocfs2/file.c                                 |  118 ++-
 fs/ocfs2/inode.c                                |    6 
 fs/ocfs2/refcounttree.c                         |   27 
 fs/ocfs2/stack_user.c                           |    2 
 fs/ocfs2/symlink.c                              |    2 
 fs/ocfs2/xattr.c                                |   82 +-
 fs/partitions/efi.c                             |   15 
 fs/partitions/ibm.c                             |   13 
 fs/partitions/ldm.c                             |   26 
 fs/partitions/mac.c                             |   17 
 fs/partitions/osf.c                             |   12 
 fs/pipe.c                                       |    2 
 fs/proc/array.c                                 |    9 
 fs/proc/base.c                                  |   85 ++
 fs/proc/task_mmu.c                              |   13 
 fs/quota/dquot.c                                |   13 
 fs/ramfs/file-nommu.c                           |    1 
 fs/signalfd.c                                   |    2 
 fs/splice.c                                     |   21 
 fs/squashfs/dir.c                               |    9 
 fs/squashfs/namei.c                             |   12 
 fs/super.c                                      |    8 
 fs/sync.c                                       |    4 
 fs/sysfs/file.c                                 |    2 
 fs/sysv/ialloc.c                                |    6 
 fs/ubifs/commit.c                               |    2 
 fs/ubifs/debug.c                                |   47 +
 fs/ubifs/file.c                                 |    3 
 fs/ubifs/journal.c                              |    1 
 fs/ubifs/lpt.c                                  |    7 
 fs/ubifs/recovery.c                             |   26 
 fs/ubifs/sb.c                                   |    3 
 fs/ubifs/shrinker.c                             |    6 
 fs/ubifs/super.c                                |    1 
 fs/udf/super.c                                  |   96 ++-
 fs/xfs/linux-2.6/xfs_acl.c                      |    4 
 fs/xfs/linux-2.6/xfs_export.c                   |   11 
 fs/xfs/linux-2.6/xfs_ioctl.c                    |   20 
 fs/xfs/linux-2.6/xfs_ioctl32.c                  |   15 
 fs/xfs/linux-2.6/xfs_sync.c                     |   10 
 fs/xfs/linux-2.6/xfs_sync.h                     |    2 
 fs/xfs/quota/xfs_qm.c                           |   18 
 fs/xfs/quota/xfs_qm_syscalls.c                  |   27 
 fs/xfs/xfs_dfrag.c                              |    5 
 fs/xfs/xfs_fsops.c                              |    3 
 fs/xfs/xfs_ialloc.c                             |  146 ++--
 fs/xfs/xfs_iget.c                               |   11 
 fs/xfs/xfs_inode.c                              |    5 
 fs/xfs/xfs_inode.h                              |    6 
 fs/xfs/xfs_itable.c                             |  285 +--------
 fs/xfs/xfs_itable.h                             |   17 
 fs/xfs/xfs_log_recover.c                        |    2 
 fs/xfs/xfs_mount.c                              |    2 
 fs/xfs/xfs_rtalloc.c                            |    4 
 fs/xfs/xfs_trans_inode.c                        |    2 
 fs/xfs/xfs_vnodeops.c                           |   17 
 include/acpi/acexcep.h                          |    2 
 include/acpi/actypes.h                          |    1 
 include/acpi/processor.h                        |    3 
 include/asm-generic/bug.h                       |   16 
 include/asm-generic/mutex-xchg.h                |   11 
 include/drm/drmP.h                              |    2 
 include/drm/drm_mode.h                          |    2 
 include/drm/drm_pciids.h                        |   10 
 include/keys/rxrpc-type.h                       |    1 
 include/linux/acpi.h                            |    1 
 include/linux/aio.h                             |    5 
 include/linux/binfmts.h                         |    5 
 include/linux/blkdev.h                          |   13 
 include/linux/clocksource.h                     |    1 
 include/linux/compat.h                          |    7 
 include/linux/compiler-gcc.h                    |   10 
 include/linux/compiler-gcc4.h                   |    4 
 include/linux/cpuset.h                          |   16 
 include/linux/cred.h                            |   21 
 include/linux/cryptohash.h                      |    5 
 include/linux/ethtool.h                         |    2 
 include/linux/ext2_fs.h                         |    4 
 include/linux/ext3_fs.h                         |    4 
 include/linux/fb.h                              |    4 
 include/linux/firmware.h                        |    1 
 include/linux/fs.h                              |   11 
 include/linux/ftrace.h                          |    2 
 include/linux/hrtimer.h                         |    9 
 include/linux/ieee80211.h                       |    2 
 include/linux/if_packet.h                       |    2 
 include/linux/interrupt.h                       |   14 
 include/linux/irq.h                             |    1 
 include/linux/jiffies.h                         |    2 
 include/linux/klist.h                           |    2 
 include/linux/ktime.h                           |    7 
 include/linux/kvm_host.h                        |    7 
 include/linux/libata.h                          |    1 
 include/linux/linkage.h                         |    4 
 include/linux/log2.h                            |    1 
 include/linux/miscdevice.h                      |    7 
 include/linux/mm.h                              |   14 
 include/linux/mm_types.h                        |    2 
 include/linux/mmc/host.h                        |    3 
 include/linux/mmc/sdio.h                        |    2 
 include/linux/mmzone.h                          |   13 
 include/linux/msi.h                             |    2 
 include/linux/netdevice.h                       |   10 
 include/linux/nfs_fs.h                          |    7 
 include/linux/notifier.h                        |    1 
 include/linux/pci_ids.h                         |    8 
 include/linux/perf_event.h                      |    9 
 include/linux/pid.h                             |    2 
 include/linux/random.h                          |   30 -
 include/linux/regset.h                          |    6 
 include/linux/sched.h                           |    9 
 include/linux/seqlock.h                         |    4 
 include/linux/slub_def.h                        |   11 
 include/linux/ssb/ssb.h                         |    4 
 include/linux/ssb/ssb_driver_chipcommon.h       |   15 
 include/linux/ssb/ssb_regs.h                    |    3 
 include/linux/sunrpc/sched.h                    |    1 
 include/linux/swap.h                            |   10 
 include/linux/tboot.h                           |    1 
 include/linux/time.h                            |   29 
 include/linux/timex.h                           |    2 
 include/linux/tty_driver.h                      |    9 
 include/linux/usb.h                             |    9 
 include/linux/usb/serial.h                      |    5 
 include/linux/vmalloc.h                         |    1 
 include/linux/vmstat.h                          |   22 
 include/math-emu/op-common.h                    |    2 
 include/net/af_unix.h                           |    2 
 include/net/dn.h                                |    2 
 include/net/netlink.h                           |    2 
 include/net/rose.h                              |    8 
 include/net/scm.h                               |    5 
 include/net/sctp/command.h                      |    1 
 include/net/sctp/ulpevent.h                     |    2 
 include/net/secure_seq.h                        |   20 
 include/net/sock.h                              |   29 
 include/net/tcp.h                               |   40 +
 include/net/udp.h                               |    5 
 include/scsi/scsi_device.h                      |    2 
 include/sound/emu10k1.h                         |    1 
 include/sound/soc-dapm.h                        |   16 
 include/trace/events/random.h                   |  134 ++++
 include/trace/events/signal.h                   |    3 
 include/trace/events/timer.h                    |    8 
 init/Kconfig                                    |    4 
 init/calibrate.c                                |    6 
 init/main.c                                     |   12 
 ipc/compat.c                                    |    6 
 ipc/compat_mq.c                                 |    5 
 ipc/sem.c                                       |    2 
 ipc/shm.c                                       |    1 
 kernel/capability.c                             |    1 
 kernel/cgroup.c                                 |    2 
 kernel/compat.c                                 |   46 +
 kernel/cpu.c                                    |   18 
 kernel/cpuset.c                                 |   74 +-
 kernel/cred-internals.h                         |   21 
 kernel/cred.c                                   |   44 +
 kernel/early_res.c                              |    6 
 kernel/exit.c                                   |   23 
 kernel/fork.c                                   |    7 
 kernel/futex.c                                  |  116 ++-
 kernel/gcov/fs.c                                |  244 ++++++--
 kernel/groups.c                                 |    5 
 kernel/hrtimer.c                                |   65 +-
 kernel/irq/handle.c                             |    7 
 kernel/irq/manage.c                             |   40 -
 kernel/irq/pm.c                                 |   34 -
 kernel/kgdb.c                                   |    9 
 kernel/kmod.c                                   |    4 
 kernel/latencytop.c                             |   17 
 kernel/lockdep.c                                |    2 
 kernel/module.c                                 |    4 
 kernel/mutex.c                                  |    7 
 kernel/perf_event.c                             |  408 ++++++++-----
 kernel/pid.c                                    |    5 
 kernel/posix-timers.c                           |   11 
 kernel/power/snapshot.c                         |   96 ++-
 kernel/power/suspend.c                          |    2 
 kernel/power/user.c                             |    6 
 kernel/printk.c                                 |    2 
 kernel/ptrace.c                                 |    2 
 kernel/sched.c                                  |  267 ++++----
 kernel/sched_debug.c                            |    5 
 kernel/sched_fair.c                             |  161 +++--
 kernel/sched_idletask.c                         |    3 
 kernel/sched_rt.c                               |   10 
 kernel/signal.c                                 |   31 -
 kernel/smp.c                                    |   69 ++
 kernel/sys.c                                    |    2 
 kernel/sysctl.c                                 |    2 
 kernel/sysctl_check.c                           |    9 
 kernel/taskstats.c                              |   16 
 kernel/time.c                                   |    2 
 kernel/time/clocksource.c                       |   26 
 kernel/time/ntp.c                               |  128 +---
 kernel/time/tick-broadcast.c                    |   24 
 kernel/time/tick-common.c                       |    6 
 kernel/time/tick-internal.h                     |    3 
 kernel/time/timekeeping.c                       |  125 +++-
 kernel/timer.c                                  |    6 
 kernel/trace/ftrace.c                           |   83 ++
 kernel/trace/ring_buffer.c                      |    5 
 kernel/trace/trace.c                            |   10 
 kernel/trace/trace_functions_graph.c            |   10 
 kernel/user.c                                   |   12 
 lib/Makefile                                    |    2 
 lib/debugobjects.c                              |    2 
 lib/genalloc.c                                  |    2 
 lib/idr.c                                       |    5 
 lib/kobject_uevent.c                            |    2 
 lib/locking-selftest.c                          |    2 
 lib/md5.c                                       |   95 +++
 lib/nlattr.c                                    |    1 
 lib/percpu_counter.c                            |    1 
 lib/rwsem.c                                     |   10 
 mm/backing-dev.c                                |    2 
 mm/bootmem.c                                    |   24 
 mm/bounce.c                                     |    2 
 mm/filemap.c                                    |   13 
 mm/hugetlb.c                                    |   12 
 mm/internal.h                                   |    2 
 mm/kmemleak.c                                   |    7 
 mm/ksm.c                                        |    6 
 mm/memory.c                                     |   64 +-
 mm/memory_hotplug.c                             |   18 
 mm/mempolicy.c                                  |    2 
 mm/migrate.c                                    |    2 
 mm/mlock.c                                      |   13 
 mm/mmap.c                                       |   60 +-
 mm/mmzone.c                                     |   21 
 mm/mprotect.c                                   |    2 
 mm/mremap.c                                     |   15 
 mm/nommu.c                                      |    8 
 mm/page_alloc.c                                 |   43 +
 mm/percpu.c                                     |   64 +-
 mm/shmem.c                                      |    1 
 mm/slab.c                                       |    4 
 mm/slub.c                                       |   33 -
 mm/swapfile.c                                   |    6 
 mm/util.c                                       |   13 
 mm/vmalloc.c                                    |   84 ++
 mm/vmscan.c                                     |   53 +
 mm/vmstat.c                                     |   15 
 net/9p/client.c                                 |   13 
 net/9p/trans_fd.c                               |    2 
 net/atm/atm_sysfs.c                             |   10 
 net/atm/br2684.c                                |    9 
 net/ax25/af_ax25.c                              |    2 
 net/bluetooth/bnep/sock.c                       |    1 
 net/bluetooth/l2cap.c                           |    4 
 net/bluetooth/rfcomm/sock.c                     |    1 
 net/bluetooth/rfcomm/tty.c                      |    4 
 net/bluetooth/sco.c                             |    1 
 net/bridge/br_device.c                          |    8 
 net/bridge/br_fdb.c                             |    8 
 net/bridge/br_input.c                           |    6 
 net/bridge/br_netfilter.c                       |    9 
 net/bridge/br_private.h                         |    1 
 net/bridge/br_stp.c                             |    4 
 net/bridge/br_stp_bpdu.c                        |    2 
 net/bridge/netfilter/ebtables.c                 |    2 
 net/can/bcm.c                                   |   52 +
 net/can/raw.c                                   |    7 
 net/compat.c                                    |   10 
 net/core/Makefile                               |    2 
 net/core/dev.c                                  |   40 -
 net/core/ethtool.c                              |   47 +
 net/core/filter.c                               |   87 +-
 net/core/iovec.c                                |   17 
 net/core/neighbour.c                            |    5 
 net/core/rtnetlink.c                            |    4 
 net/core/scm.c                                  |   10 
 net/core/secure_seq.c                           |  184 ++++++
 net/core/skbuff.c                               |   15 
 net/core/sock.c                                 |   26 
 net/core/stream.c                               |    8 
 net/dccp/input.c                                |   13 
 net/dccp/ipv4.c                                 |    1 
 net/dccp/ipv6.c                                 |    9 
 net/dccp/options.c                              |    2 
 net/decnet/af_decnet.c                          |    4 
 net/decnet/sysctl_net_decnet.c                  |    4 
 net/econet/af_econet.c                          |  101 +--
 net/ipv4/af_inet.c                              |    3 
 net/ipv4/datagram.c                             |    5 
 net/ipv4/devinet.c                              |   29 
 net/ipv4/inet_diag.c                            |   41 -
 net/ipv4/inet_hashtables.c                      |    1 
 net/ipv4/inetpeer.c                             |    1 
 net/ipv4/ip_gre.c                               |    1 
 net/ipv4/ip_output.c                            |   28 
 net/ipv4/ipip.c                                 |    1 
 net/ipv4/netfilter/arp_tables.c                 |    3 
 net/ipv4/netfilter/ip_tables.c                  |    3 
 net/ipv4/netfilter/ipt_CLUSTERIP.c              |    5 
 net/ipv4/netfilter/nf_nat_proto_common.c        |    1 
 net/ipv4/proc.c                                 |    8 
 net/ipv4/route.c                                |    8 
 net/ipv4/syncookies.c                           |    2 
 net/ipv4/sysctl_net_ipv4.c                      |    5 
 net/ipv4/tcp.c                                  |   54 -
 net/ipv4/tcp_input.c                            |   13 
 net/ipv4/tcp_ipv4.c                             |    9 
 net/ipv4/tcp_output.c                           |   27 
 net/ipv4/tcp_timer.c                            |    8 
 net/ipv4/udp.c                                  |   55 +
 net/ipv4/xfrm4_policy.c                         |    2 
 net/ipv6/addrconf.c                             |   10 
 net/ipv6/datagram.c                             |    7 
 net/ipv6/inet6_hashtables.c                     |    1 
 net/ipv6/ip6_output.c                           |   20 
 net/ipv6/ip6_tunnel.c                           |    1 
 net/ipv6/ndisc.c                                |    2 
 net/ipv6/netfilter/ip6_tables.c                 |    3 
 net/ipv6/netfilter/ip6t_REJECT.c                |   10 
 net/ipv6/route.c                                |   30 -
 net/ipv6/sit.c                                  |    2 
 net/ipv6/tcp_ipv6.c                             |    1 
 net/ipv6/udp.c                                  |   25 
 net/irda/af_irda.c                              |   20 
 net/irda/iriap.c                                |    9 
 net/irda/irlan/irlan_common.c                   |    2 
 net/irda/irnet/irnet_ppp.c                      |    3 
 net/irda/parameters.c                           |    4 
 net/llc/af_llc.c                                |    3 
 net/mac80211/Kconfig                            |    9 
 net/mac80211/cfg.c                              |    7 
 net/mac80211/mesh_plink.c                       |   42 +
 net/mac80211/mlme.c                             |   43 +
 net/mac80211/rx.c                               |    3 
 net/mac80211/scan.c                             |   21 
 net/mac80211/sta_info.c                         |    1 
 net/mac80211/tx.c                               |    5 
 net/mac80211/work.c                             |   28 
 net/netfilter/ipvs/ip_vs_conn.c                 |    4 
 net/netfilter/nf_conntrack_core.c               |    3 
 net/netfilter/nf_log.c                          |    4 
 net/netfilter/xt_DSCP.c                         |    2 
 net/netlink/af_netlink.c                        |   46 -
 net/packet/af_packet.c                          |    5 
 net/phonet/pep.c                                |    3 
 net/rds/page.c                                  |   27 
 net/rds/rdma.c                                  |   11 
 net/rds/recv.c                                  |    2 
 net/rose/af_rose.c                              |   12 
 net/rose/rose_loopback.c                        |   13 
 net/rose/rose_route.c                           |   20 
 net/rose/rose_subr.c                            |  101 ++-
 net/sched/act_gact.c                            |   21 
 net/sched/act_mirred.c                          |   15 
 net/sched/act_nat.c                             |   37 -
 net/sched/act_police.c                          |   21 
 net/sched/act_simple.c                          |   11 
 net/sched/act_skbedit.c                         |   11 
 net/sched/sch_api.c                             |   14 
 net/sched/sch_generic.c                         |   18 
 net/sched/sch_sfq.c                             |   13 
 net/sctp/auth.c                                 |    8 
 net/sctp/bind_addr.c                            |   10 
 net/sctp/input.c                                |    7 
 net/sctp/output.c                               |    1 
 net/sctp/outqueue.c                             |   20 
 net/sctp/protocol.c                             |    2 
 net/sctp/sm_make_chunk.c                        |    8 
 net/sctp/sm_sideeffect.c                        |   20 
 net/sctp/sm_statefuns.c                         |   32 -
 net/sctp/sm_statetable.c                        |    2 
 net/sctp/socket.c                               |   32 -
 net/sctp/sysctl.c                               |    4 
 net/sctp/ulpevent.c                             |   16 
 net/socket.c                                    |    4 
 net/sunrpc/auth_gss/auth_gss.c                  |   13 
 net/sunrpc/auth_unix.c                          |    3 
 net/sunrpc/cache.c                              |    4 
 net/sunrpc/clnt.c                               |    5 
 net/sunrpc/rpc_pipe.c                           |    6 
 net/sunrpc/rpcb_clnt.c                          |    2 
 net/sunrpc/sched.c                              |   32 -
 net/sunrpc/svc_xprt.c                           |   20 
 net/sunrpc/xprtsock.c                           |   87 ++
 net/tipc/socket.c                               |    1 
 net/unix/af_unix.c                              |   68 +-
 net/unix/garbage.c                              |    9 
 net/wireless/mlme.c                             |   16 
 net/wireless/nl80211.c                          |   13 
 net/wireless/reg.c                              |    1 
 net/wireless/scan.c                             |    5 
 net/wireless/wext-compat.c                      |    3 
 net/wireless/wext-core.c                        |   16 
 net/wireless/wext-priv.c                        |    2 
 net/x25/af_x25.c                                |    3 
 net/x25/x25_facilities.c                        |   20 
 net/x25/x25_in.c                                |    2 
 net/x25/x25_link.c                              |    4 
 net/xfrm/xfrm_algo.c                            |    4 
 scripts/Kbuild.include                          |    5 
 scripts/Makefile.build                          |   47 +
 scripts/kconfig/Makefile                        |    2 
 scripts/kconfig/conf.c                          |    2 
 scripts/mkmakefile                              |    4 
 scripts/mod/modpost.c                           |    2 
 security/commoncap.c                            |    6 
 security/integrity/ima/ima_policy.c             |    2 
 security/keys/keyctl.c                          |    6 
 security/keys/process_keys.c                    |    6 
 security/keys/user_defined.c                    |    3 
 security/selinux/hooks.c                        |   11 
 security/selinux/nlmsgtab.c                     |    2 
 sound/core/control.c                            |    5 
 sound/core/hrtimer.c                            |    5 
 sound/core/init.c                               |    4 
 sound/core/pcm_compat.c                         |    2 
 sound/core/pcm_lib.c                            |   13 
 sound/core/pcm_native.c                         |   43 -
 sound/core/rawmidi.c                            |    4 
 sound/core/seq/oss/seq_oss_init.c               |    9 
 sound/core/timer.c                              |    2 
 sound/oss/dev_table.h                           |    2 
 sound/oss/midi_synth.c                          |   34 -
 sound/oss/midi_synth.h                          |    2 
 sound/oss/opl3.c                                |   23 
 sound/oss/sequencer.c                           |    2 
 sound/oss/soundcard.c                           |    4 
 sound/pci/ac97/ac97_patch.c                     |    1 
 sound/pci/au88x0/au88x0_pcm.c                   |   24 
 sound/pci/ctxfi/ctatc.c                         |    2 
 sound/pci/ctxfi/ctdaio.c                        |    2 
 sound/pci/ctxfi/ctmixer.c                       |   19 
 sound/pci/emu10k1/emu10k1.c                     |    4 
 sound/pci/emu10k1/emupcm.c                      |   30 -
 sound/pci/emu10k1/memory.c                      |    4 
 sound/pci/ens1370.c                             |   23 
 sound/pci/hda/hda_codec.c                       |   27 
 sound/pci/hda/hda_codec.h                       |    5 
 sound/pci/hda/hda_eld.c                         |    2 
 sound/pci/hda/hda_intel.c                       |   40 -
 sound/pci/hda/patch_analog.c                    |    1 
 sound/pci/hda/patch_cirrus.c                    |   26 
 sound/pci/hda/patch_conexant.c                  |    9 
 sound/pci/hda/patch_hdmi.c                      |   13 
 sound/pci/hda/patch_nvhdmi.c                    |    3 
 sound/pci/hda/patch_realtek.c                   |   48 +
 sound/pci/hda/patch_sigmatel.c                  |   17 
 sound/pci/intel8x0.c                            |   12 
 sound/pci/lx6464es/lx_core.c                    |   16 
 sound/pci/oxygen/oxygen.c                       |    4 
 sound/pci/riptide/riptide.c                     |   11 
 sound/pci/rme9652/hdsp.c                        |    1 
 sound/pci/rme9652/hdspm.c                       |    1 
 sound/pci/sis7019.c                             |   64 +-
 sound/ppc/tumbler.c                             |    9 
 sound/soc/blackfin/bf5xx-ac97.c                 |    4 
 sound/soc/blackfin/bf5xx-i2s-pcm.c              |   13 
 sound/soc/codecs/ak4535.c                       |   10 
 sound/soc/codecs/ak4642.c                       |   22 
 sound/soc/codecs/wm8350.c                       |    4 
 sound/soc/codecs/wm8400.c                       |   18 
 sound/soc/codecs/wm8580.c                       |    6 
 sound/soc/codecs/wm8776.c                       |    8 
 sound/soc/codecs/wm8940.c                       |    2 
 sound/soc/codecs/wm8990.c                       |   28 
 sound/soc/codecs/wm_hubs.c                      |   32 -
 sound/soc/fsl/mpc5200_dma.h                     |    2 
 sound/soc/imx/imx-pcm-dma-mx2.c                 |    7 
 sound/soc/soc-cache.c                           |    4 
 sound/soc/soc-jack.c                            |    2 
 sound/synth/emux/emux_hwdep.c                   |    3 
 sound/usb/caiaq/audio.c                         |   39 +
 sound/usb/caiaq/device.h                        |    1 
 sound/usb/caiaq/input.c                         |    2 
 sound/usb/caiaq/midi.c                          |    2 
 sound/usb/usx2y/us122l.c                        |   41 -
 tools/perf/Makefile                             |    3 
 tools/perf/bench/mem-memcpy.c                   |    2 
 tools/perf/bench/sched-messaging.c              |    4 
 tools/perf/builtin-annotate.c                   |    8 
 tools/perf/builtin-buildid-cache.c              |    2 
 tools/perf/builtin-buildid-list.c               |    4 
 tools/perf/builtin-diff.c                       |    4 
 tools/perf/builtin-help.c                       |    2 
 tools/perf/builtin-lock.c                       |    2 
 tools/perf/builtin-probe.c                      |    2 
 tools/perf/builtin-record.c                     |   24 
 tools/perf/builtin-report.c                     |    6 
 tools/perf/builtin-sched.c                      |    6 
 tools/perf/builtin-stat.c                       |   10 
 tools/perf/builtin-timechart.c                  |    2 
 tools/perf/builtin-top.c                        |   47 +
 tools/perf/builtin-trace.c                      |    2 
 tools/perf/util/callchain.h                     |    4 
 tools/perf/util/config.c                        |    7 
 tools/perf/util/debug.c                         |    2 
 tools/perf/util/debug.h                         |    3 
 tools/perf/util/parse-options.c                 |    6 
 tools/perf/util/parse-options.h                 |    4 
 tools/perf/util/symbol.c                        |   25 
 tools/perf/util/symbol.h                        |   15 
 tools/perf/util/trace-event-parse.c             |    2 
 tools/perf/util/trace-event.h                   |    3 
 virt/kvm/assigned-dev.c                         |   93 ++-
 virt/kvm/ioapic.c                               |    3 
 virt/kvm/kvm_main.c                             |    4 
 1520 files changed, 20362 insertions(+), 10116 deletions(-)

