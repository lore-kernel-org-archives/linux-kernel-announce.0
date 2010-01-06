From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.43 released
Date: Wed, 6 Jan 2010 23:58:31 GMT
Message-ID: <201001062358.o06NwVHl021993@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.43 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.43.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.43.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               436342           1939649
Full source                       50368774         294062080

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/cciss.txt                          |    2 
 Documentation/filesystems/Locking                |   26 
 Documentation/filesystems/ext4.txt               |    5 
 Documentation/filesystems/proc.txt               |   27 
 Documentation/filesystems/sysfs-pci.txt          |   13 
 Documentation/i2c/busses/i2c-sis96x              |    2 
 Documentation/kernel-parameters.txt              |    2 
 Documentation/sound/alsa/ALSA-Configuration.txt  |    3 
 Documentation/video4linux/CARDLIST.au0828        |    2 
 MAINTAINERS                                      |   20 
 Makefile                                         |   10 
 arch/Kconfig                                     |    3 
 arch/alpha/kernel/entry.S                        |    8 
 arch/alpha/kernel/irq_srm.c                      |    2 
 arch/alpha/kernel/systbls.S                      |    2 
 arch/arm/kernel/calls.S                          |    2 
 arch/arm/mach-pxa/include/mach/reset.h           |    9 
 arch/arm/mach-pxa/reset.c                        |    9 
 arch/arm/mach-pxa/spitz.c                        |    2 
 arch/arm/mach-pxa/tosa.c                         |    2 
 arch/arm/mach-rpc/riscpc.c                       |    6 
 arch/arm/mm/cache-feroceon-l2.c                  |    4 
 arch/arm/mm/cache-xsc3l2.c                       |    4 
 arch/cris/arch-v10/kernel/entry.S                |    2 
 arch/cris/arch-v32/kernel/entry.S                |    2 
 arch/h8300/kernel/syscalls.S                     |    2 
 arch/ia64/Kconfig                                |    4 
 arch/ia64/ia32/ia32_entry.S                      |    2 
 arch/ia64/include/asm/mmzone.h                   |    4 
 arch/ia64/include/asm/unistd.h                   |    2 
 arch/ia64/kernel/acpi.c                          |   29 
 arch/ia64/kernel/entry.S                         |    2 
 arch/ia64/kernel/setup.c                         |    7 
 arch/ia64/kernel/sys_ia64.c                      |    2 
 arch/ia64/lib/ip_fast_csum.S                     |    8 
 arch/ia64/mm/numa.c                              |    4 
 arch/ia64/sn/kernel/io_acpi_init.c               |   10 
 arch/ia64/sn/kernel/io_init.c                    |    2 
 arch/m68k/Kconfig                                |    6 
 arch/m68k/kernel/entry.S                         |    2 
 arch/m68k/kernel/ints.c                          |    2 
 arch/m68knommu/Kconfig                           |    4 
 arch/m68knommu/kernel/syscalltable.S             |    2 
 arch/mips/Kconfig                                |    1 
 arch/mips/kernel/linux32.c                       |   69 -
 arch/mips/kernel/scall32-o32.S                   |    6 
 arch/mips/kernel/scall64-64.S                    |    2 
 arch/mips/kernel/scall64-n32.S                   |   28 
 arch/mips/kernel/scall64-o32.S                   |   40 -
 arch/mips/kernel/signal.c                        |    5 
 arch/mips/kernel/signal32.c                      |   28 
 arch/mips/kernel/syscall.c                       |   26 
 arch/mips/mm/cache.c                             |    5 
 arch/mn10300/kernel/entry.S                      |    2 
 arch/parisc/kernel/cache.c                       |   23 
 arch/parisc/kernel/pci-dma.c                     |   12 
 arch/parisc/kernel/traps.c                       |   43 -
 arch/powerpc/Kconfig                             |    1 
 arch/powerpc/configs/linkstation_defconfig       |    7 
 arch/powerpc/include/asm/compat.h                |    5 
 arch/powerpc/include/asm/futex.h                 |   12 
 arch/powerpc/include/asm/mmu-hash64.h            |    2 
 arch/powerpc/include/asm/mpic.h                  |    2 
 arch/powerpc/include/asm/processor.h             |   19 
 arch/powerpc/include/asm/seccomp.h               |    4 
 arch/powerpc/include/asm/systbl.h                |    2 
 arch/powerpc/kernel/align.c                      |   36 
 arch/powerpc/kernel/cpu_setup_44x.S              |    1 
 arch/powerpc/kernel/cputable.c                   |    3 
 arch/powerpc/kernel/lparcfg.c                    |    3 
 arch/powerpc/kernel/rtas.c                       |    7 
 arch/powerpc/kernel/signal.c                     |    4 
 arch/powerpc/kernel/signal.h                     |    2 
 arch/powerpc/kernel/signal_32.c                  |   40 -
 arch/powerpc/kernel/signal_64.c                  |   35 
 arch/powerpc/lib/rheap.c                         |    1 
 arch/powerpc/mm/fsl_booke_mmu.c                  |    4 
 arch/powerpc/mm/hash_utils_64.c                  |    6 
 arch/powerpc/mm/numa.c                           |  113 ++
 arch/powerpc/mm/pgtable_32.c                     |    4 
 arch/powerpc/mm/slb.c                            |   16 
 arch/powerpc/mm/slice.c                          |   11 
 arch/powerpc/platforms/85xx/mpc85xx_ds.c         |    3 
 arch/powerpc/platforms/86xx/pic.c                |    3 
 arch/powerpc/platforms/cell/smp.c                |   10 
 arch/powerpc/platforms/cell/spufs/file.c         |    3 
 arch/powerpc/platforms/cell/spufs/inode.c        |    2 
 arch/powerpc/platforms/embedded6xx/linkstation.c |   14 
 arch/powerpc/platforms/pseries/Kconfig           |    2 
 arch/powerpc/platforms/pseries/reconfig.c        |    9 
 arch/powerpc/platforms/pseries/smp.c             |   13 
 arch/powerpc/sysdev/fsl_soc.c                    |    2 
 arch/powerpc/sysdev/mpic.c                       |   68 +
 arch/s390/Kconfig                                |    1 
 arch/s390/kernel/compat_wrapper.S                |    4 
 arch/s390/kernel/entry.h                         |   16 
 arch/s390/kernel/process.c                       |    9 
 arch/s390/kernel/signal.c                        |   19 
 arch/s390/kernel/smp.c                           |   24 
 arch/s390/kernel/sys_s390.c                      |   35 
 arch/s390/kernel/syscalls.S                      |   12 
 arch/s390/kernel/topology.c                      |   11 
 arch/s390/lib/div64.c                            |    2 
 arch/sh/kernel/sys_sh32.c                        |    2 
 arch/sh/kernel/syscalls_32.S                     |    4 
 arch/sh/kernel/syscalls_64.S                     |    2 
 arch/sparc/include/asm/compat.h                  |    5 
 arch/sparc/include/asm/pil.h                     |    1 
 arch/sparc/include/asm/ptrace_32.h               |   10 
 arch/sparc/include/asm/ptrace_64.h               |   10 
 arch/sparc/include/asm/seccomp.h                 |    6 
 arch/sparc/include/asm/tlb_64.h                  |    4 
 arch/sparc/include/asm/uaccess_64.h              |    4 
 arch/sparc/kernel/entry.S                        |    4 
 arch/sparc/kernel/of_device.c                    |   21 
 arch/sparc/kernel/systbls.S                      |    4 
 arch/sparc64/Kconfig                             |    1 
 arch/sparc64/kernel/irq.c                        |   29 
 arch/sparc64/kernel/kgdb.c                       |    2 
 arch/sparc64/kernel/of_device.c                  |   21 
 arch/sparc64/kernel/pci.c                        |   10 
 arch/sparc64/kernel/pci_common.c                 |    2 
 arch/sparc64/kernel/ptrace.c                     |    2 
 arch/sparc64/kernel/smp.c                        |    8 
 arch/sparc64/kernel/sys_sparc.c                  |   48 -
 arch/sparc64/kernel/syscalls.S                   |    4 
 arch/sparc64/kernel/systbls.S                    |   20 
 arch/sparc64/kernel/systbls.h                    |    3 
 arch/sparc64/kernel/trampoline.S                 |   18 
 arch/sparc64/kernel/traps.c                      |   17 
 arch/sparc64/kernel/ttable.S                     |    8 
 arch/sparc64/kernel/visemul.c                    |    6 
 arch/sparc64/lib/user_fixup.c                    |    2 
 arch/sparc64/mm/ultra.S                          |   24 
 arch/um/drivers/mconsole_kern.c                  |    4 
 arch/x86/Kconfig                                 |   25 
 arch/x86/boot/memory.c                           |    7 
 arch/x86/ia32/ia32entry.S                        |   69 -
 arch/x86/kernel/acpi/boot.c                      |    8 
 arch/x86/kernel/acpi/cstate.c                    |    4 
 arch/x86/kernel/acpi/processor.c                 |    3 
 arch/x86/kernel/acpi/sleep.c                     |    3 
 arch/x86/kernel/alternative.c                    |    2 
 arch/x86/kernel/amd_iommu.c                      |    4 
 arch/x86/kernel/amd_iommu_init.c                 |   36 
 arch/x86/kernel/apic_32.c                        |    2 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c       |    3 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c        |   18 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.h        |   17 
 arch/x86/kernel/cpu/intel.c                      |   13 
 arch/x86/kernel/cpu/intel_64.c                   |   13 
 arch/x86/kernel/cpu/mtrr/generic.c               |   51 -
 arch/x86/kernel/cpu/mtrr/main.c                  |    3 
 arch/x86/kernel/cpu/perfctr-watchdog.c           |    2 
 arch/x86/kernel/early-quirks.c                   |   97 ++
 arch/x86/kernel/head64.c                         |    2 
 arch/x86/kernel/head_64.S                        |    2 
 arch/x86/kernel/hpet.c                           |    2 
 arch/x86/kernel/io_apic_32.c                     |    3 
 arch/x86/kernel/io_apic_64.c                     |    2 
 arch/x86/kernel/pci-calgary_64.c                 |   12 
 arch/x86/kernel/pci-dma.c                        |    2 
 arch/x86/kernel/pci-gart_64.c                    |   12 
 arch/x86/kernel/process_64.c                     |    4 
 arch/x86/kernel/ptrace.c                         |   18 
 arch/x86/kernel/reboot.c                         |   34 
 arch/x86/kernel/rtc.c                            |   22 
 arch/x86/kernel/setup.c                          |   73 +
 arch/x86/kernel/smpboot.c                        |    2 
 arch/x86/kernel/syscall_table_32.S               |    2 
 arch/x86/kernel/tlb_uv.c                         |    9 
 arch/x86/kernel/tsc.c                            |    8 
 arch/x86/kernel/vmi_32.c                         |   27 
 arch/x86/kernel/vmiclock_32.c                    |    5 
 arch/x86/kvm/mmu.c                               |   55 -
 arch/x86/kvm/svm.c                               |    1 
 arch/x86/kvm/vmx.c                               |   25 
 arch/x86/kvm/vmx.h                               |    1 
 arch/x86/kvm/x86.c                               |  154 ++-
 arch/x86/lib/usercopy_32.c                       |    4 
 arch/x86/lib/usercopy_64.c                       |    4 
 arch/x86/mm/discontig_32.c                       |   35 
 arch/x86/mm/fault.c                              |   10 
 arch/x86/mm/gup.c                                |    9 
 arch/x86/mm/hugetlbpage.c                        |    6 
 arch/x86/mm/init_32.c                            |   18 
 arch/x86/mm/init_64.c                            |   30 
 arch/x86/mm/ioremap.c                            |    2 
 arch/x86/mm/mmap.c                               |   17 
 arch/x86/mm/numa_64.c                            |    2 
 arch/x86/mm/pageattr.c                           |   74 +
 arch/x86/mm/pat.c                                |    4 
 arch/x86/mm/srat_64.c                            |    6 
 arch/x86/pci/fixup.c                             |   25 
 arch/x86/pci/i386.c                              |    3 
 arch/x86/pci/irq.c                               |    1 
 arch/x86/pci/mmconfig-shared.c                   |    4 
 arch/x86/power/hibernate_32.c                    |    4 
 arch/x86/xen/enlighten.c                         |    5 
 block/Kconfig                                    |   11 
 block/blk-merge.c                                |   19 
 block/bsg.c                                      |    2 
 block/scsi_ioctl.c                               |    2 
 crypto/async_tx/async_xor.c                      |   11 
 crypto/authenc.c                                 |   24 
 crypto/ccm.c                                     |    2 
 drivers/acpi/ac.c                                |    2 
 drivers/acpi/acpi_memhotplug.c                   |    5 
 drivers/acpi/asus_acpi.c                         |    4 
 drivers/acpi/battery.c                           |    5 
 drivers/acpi/bay.c                               |    2 
 drivers/acpi/bus.c                               |   20 
 drivers/acpi/button.c                            |    7 
 drivers/acpi/container.c                         |    2 
 drivers/acpi/dispatcher/dsmethod.c               |    3 
 drivers/acpi/dock.c                              |   11 
 drivers/acpi/ec.c                                |  466 ++++++-----
 drivers/acpi/executer/exconfig.c                 |  113 ++
 drivers/acpi/hardware/hwsleep.c                  |   44 -
 drivers/acpi/namespace/nsutils.c                 |    8 
 drivers/acpi/namespace/nsxfeval.c                |   79 +
 drivers/acpi/namespace/nsxfname.c                |    1 
 drivers/acpi/numa.c                              |    2 
 drivers/acpi/osl.c                               |   41 -
 drivers/acpi/parser/psparse.c                    |    4 
 drivers/acpi/pci_link.c                          |    4 
 drivers/acpi/pci_root.c                          |    2 
 drivers/acpi/pci_slot.c                          |   12 
 drivers/acpi/power.c                             |    2 
 drivers/acpi/processor_core.c                    |    4 
 drivers/acpi/processor_idle.c                    |    9 
 drivers/acpi/processor_perflib.c                 |    2 
 drivers/acpi/processor_throttling.c              |    2 
 drivers/acpi/reboot.c                            |   25 
 drivers/acpi/resources/rscreate.c                |   27 
 drivers/acpi/sbshc.c                             |    2 
 drivers/acpi/scan.c                              |   35 
 drivers/acpi/sleep/main.c                        |   58 +
 drivers/acpi/system.c                            |   25 
 drivers/acpi/tables.c                            |    7 
 drivers/acpi/tables/tbutils.c                    |    7 
 drivers/acpi/thermal.c                           |   43 -
 drivers/acpi/utils.c                             |    4 
 drivers/acpi/video.c                             |   76 +
 drivers/ata/ata_piix.c                           |   37 
 drivers/ata/libata-acpi.c                        |    2 
 drivers/ata/libata-core.c                        |  110 ++
 drivers/ata/libata-eh.c                          |   31 
 drivers/ata/libata-sff.c                         |   13 
 drivers/ata/pata_cmd64x.c                        |    2 
 drivers/ata/pata_hpt37x.c                        |   52 -
 drivers/ata/pata_hpt3x2n.c                       |   17 
 drivers/ata/pata_it821x.c                        |    3 
 drivers/ata/pata_via.c                           |   26 
 drivers/ata/sata_mv.c                            |    6 
 drivers/ata/sata_nv.c                            |  102 +-
 drivers/ata/sata_promise.c                       |   20 
 drivers/atm/fore200e.c                           |    4 
 drivers/base/core.c                              |   25 
 drivers/base/driver.c                            |    2 
 drivers/base/sys.c                               |    6 
 drivers/block/aoe/aoe.h                          |    1 
 drivers/block/aoe/aoenet.c                       |    2 
 drivers/block/cciss.c                            |   33 
 drivers/block/cpqarray.c                         |    7 
 drivers/block/floppy.c                           |   92 +-
 drivers/block/nbd.c                              |    9 
 drivers/block/xen-blkfront.c                     |   30 
 drivers/bluetooth/btsdio.c                       |    3 
 drivers/char/Kconfig                             |    6 
 drivers/char/agp/generic.c                       |    2 
 drivers/char/agp/intel-agp.c                     |   35 
 drivers/char/applicom.c                          |    6 
 drivers/char/cp437.uni                           |   12 
 drivers/char/hvc_console.c                       |   10 
 drivers/char/hw_random/virtio-rng.c              |    4 
 drivers/char/ipmi/ipmi_devintf.c                 |    1 
 drivers/char/ipmi/ipmi_msghandler.c              |   20 
 drivers/char/ipmi/ipmi_si_intf.c                 |   16 
 drivers/char/moxa.c                              |    7 
 drivers/char/mxser.c                             |    4 
 drivers/char/nozomi.c                            |    1 
 drivers/char/pcmcia/cm4000_cs.c                  |    3 
 drivers/char/random.c                            |   19 
 drivers/char/raw.c                               |    1 
 drivers/char/selection.c                         |    2 
 drivers/char/tpm/tpm_bios.c                      |    3 
 drivers/char/tpm/tpm_tis.c                       |   12 
 drivers/char/tty_io.c                            |    2 
 drivers/char/vt.c                                |    7 
 drivers/char/xilinx_hwicap/buffer_icap.c         |    3 
 drivers/char/xilinx_hwicap/buffer_icap.h         |    3 
 drivers/char/xilinx_hwicap/fifo_icap.c           |    3 
 drivers/char/xilinx_hwicap/fifo_icap.h           |    3 
 drivers/char/xilinx_hwicap/xilinx_hwicap.c       |    3 
 drivers/char/xilinx_hwicap/xilinx_hwicap.h       |    3 
 drivers/cpuidle/cpuidle.c                        |    9 
 drivers/cpuidle/governors/menu.c                 |   10 
 drivers/crypto/ixp4xx_crypto.c                   |  182 +---
 drivers/dca/dca-core.c                           |   53 -
 drivers/dma/dmaengine.c                          |    3 
 drivers/dma/ioat_dma.c                           |   23 
 drivers/dma/iop-adma.c                           |   16 
 drivers/dma/iovlock.c                            |   17 
 drivers/dma/mv_xor.c                             |   15 
 drivers/edac/cell_edac.c                         |    5 
 drivers/firewire/fw-cdev.c                       |    6 
 drivers/firewire/fw-ohci.c                       |   25 
 drivers/firewire/fw-sbp2.c                       |   96 +-
 drivers/firewire/fw-topology.c                   |    6 
 drivers/firewire/fw-transaction.c                |    3 
 drivers/firewire/fw-transaction.h                |    4 
 drivers/firmware/dell_rbu.c                      |    4 
 drivers/firmware/memmap.c                        |   16 
 drivers/gpio/gpiolib.c                           |    4 
 drivers/gpu/drm/i915/i915_dma.c                  |    2 
 drivers/gpu/drm/i915/i915_drv.h                  |    6 
 drivers/hid/hidraw.c                             |    2 
 drivers/hid/usbhid/hid-quirks.c                  |   22 
 drivers/hid/usbhid/hiddev.c                      |    4 
 drivers/hwmon/abituguru3.c                       |    2 
 drivers/hwmon/f71882fg.c                         |    2 
 drivers/hwmon/hwmon-vid.c                        |    1 
 drivers/hwmon/ibmaem.c                           |   18 
 drivers/hwmon/it87.c                             |   10 
 drivers/hwmon/lm78.c                             |    2 
 drivers/hwmon/max6650.c                          |    1 
 drivers/hwmon/smsc47m1.c                         |   11 
 drivers/i2c/algos/i2c-algo-bit.c                 |    2 
 drivers/i2c/algos/i2c-algo-pca.c                 |   11 
 drivers/i2c/busses/i2c-acorn.c                   |    3 
 drivers/i2c/busses/i2c-amd8111.c                 |    4 
 drivers/i2c/busses/i2c-pxa.c                     |    2 
 drivers/i2c/busses/scx200_i2c.c                  |    1 
 drivers/i2c/chips/tsl2550.c                      |   20 
 drivers/i2c/i2c-core.c                           |    3 
 drivers/ide/ide-iops.c                           |    2 
 drivers/ide/pci/hpt366.c                         |    4 
 drivers/ide/pci/it821x.c                         |   12 
 drivers/ieee1394/nodemgr.c                       |    6 
 drivers/ieee1394/ohci1394.h                      |    2 
 drivers/ieee1394/sbp2.c                          |   16 
 drivers/ieee1394/sbp2.h                          |    8 
 drivers/infiniband/hw/mlx4/cq.c                  |    5 
 drivers/infiniband/hw/mlx4/qp.c                  |    4 
 drivers/infiniband/hw/nes/nes_cm.c               |   37 
 drivers/infiniband/hw/nes/nes_verbs.c            |    2 
 drivers/infiniband/hw/nes/nes_verbs.h            |    1 
 drivers/input/keyboard/atkbd.c                   |   69 +
 drivers/input/misc/wistron_btns.c                |    9 
 drivers/input/mouse/alps.c                       |    1 
 drivers/input/mouse/synaptics.c                  |   10 
 drivers/input/serio/i8042-x86ia64io.h            |   29 
 drivers/isdn/gigaset/bas-gigaset.c               |   20 
 drivers/isdn/gigaset/ev-layer.c                  |   44 -
 drivers/isdn/hardware/avm/b1isa.c                |    6 
 drivers/isdn/hisax/hfc_pci.c                     |   41 -
 drivers/isdn/hisax/hfc_usb.c                     |    4 
 drivers/isdn/hisax/hisax.h                       |    2 
 drivers/md/bitmap.c                              |   53 -
 drivers/md/dm-crypt.c                            |   26 
 drivers/md/dm-io.c                               |    2 
 drivers/md/dm-ioctl.c                            |    3 
 drivers/md/dm-kcopyd.c                           |   13 
 drivers/md/dm-log.c                              |    5 
 drivers/md/dm-mpath.c                            |   15 
 drivers/md/dm-raid1.c                            |    7 
 drivers/md/dm-snap.c                             |   10 
 drivers/md/linear.c                              |    2 
 drivers/md/md.c                                  |   55 -
 drivers/md/raid1.c                               |    3 
 drivers/md/raid10.c                              |   33 
 drivers/md/raid5.c                               |    1 
 drivers/media/common/tuners/mxl5007t.c           |    2 
 drivers/media/common/tuners/tda18271-fe.c        |    8 
 drivers/media/common/tuners/tda8290.c            |    3 
 drivers/media/dvb/frontends/dib7000p.c           |    5 
 drivers/media/dvb/frontends/s5h1409.c            |    7 
 drivers/media/dvb/frontends/s5h1411.c            |   35 
 drivers/media/dvb/siano/sms-cards.c              |    4 
 drivers/media/video/au0828/au0828-cards.c        |    3 
 drivers/media/video/compat_ioctl32.c             |    3 
 drivers/media/video/cx23885/cx23885-417.c        |    3 
 drivers/media/video/cx23885/cx23885-video.c      |    5 
 drivers/media/video/cx88/cx88-input.c            |   25 
 drivers/media/video/ivtv/ivtv-ioctl.c            |   24 
 drivers/media/video/pvrusb2/pvrusb2-encoder.c    |    4 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c        |    6 
 drivers/media/video/s2255drv.c                   |    5 
 drivers/media/video/tvaudio.c                    |   47 -
 drivers/misc/Kconfig                             |    4 
 drivers/misc/asus-laptop.c                       |   15 
 drivers/misc/eeepc-laptop.c                      |    5 
 drivers/misc/fujitsu-laptop.c                    |    8 
 drivers/misc/hpilo.c                             |    1 
 drivers/misc/intel_menlow.c                      |   29 
 drivers/misc/sgi-xp/xpc.h                        |    5 
 drivers/misc/sgi-xp/xpc_sn2.c                    |   21 
 drivers/misc/sgi-xp/xpc_uv.c                     |   13 
 drivers/misc/sony-laptop.c                       |    6 
 drivers/misc/thinkpad_acpi.c                     |   51 -
 drivers/mmc/card/mmc_test.c                      |    2 
 drivers/mmc/core/core.c                          |    6 
 drivers/mmc/host/s3cmci.c                        |    3 
 drivers/mmc/host/sdhci.c                         |    4 
 drivers/mmc/host/sdhci.h                         |    1 
 drivers/mtd/chips/cfi_cmdset_0002.c              |   13 
 drivers/mtd/chips/jedec_probe.c                  |   10 
 drivers/mtd/devices/mtd_dataflash.c              |    3 
 drivers/net/3c505.c                              |   26 
 drivers/net/Kconfig                              |    1 
 drivers/net/appletalk/ipddp.c                    |    3 
 drivers/net/atl1e/atl1e_hw.c                     |    4 
 drivers/net/atl1e/atl1e_main.c                   |    2 
 drivers/net/atlx/atl1.c                          |    7 
 drivers/net/atlx/atl1.h                          |    2 
 drivers/net/b44.c                                |    2 
 drivers/net/bnx2.c                               |    2 
 drivers/net/bnx2x_init.h                         |    9 
 drivers/net/bnx2x_main.c                         |    9 
 drivers/net/bonding/bond_alb.c                   |   21 
 drivers/net/bonding/bond_main.c                  |   30 
 drivers/net/bonding/bond_sysfs.c                 |    1 
 drivers/net/bonding/bonding.h                    |    6 
 drivers/net/cxgb3/adapter.h                      |    1 
 drivers/net/cxgb3/cxgb3_main.c                   |    5 
 drivers/net/cxgb3/sge.c                          |   56 -
 drivers/net/e100.c                               |    3 
 drivers/net/e1000/e1000_ethtool.c                |    8 
 drivers/net/e1000/e1000_main.c                   |   12 
 drivers/net/e1000e/e1000.h                       |    5 
 drivers/net/e1000e/ethtool.c                     |    8 
 drivers/net/e1000e/ich8lan.c                     |    9 
 drivers/net/e1000e/netdev.c                      |   24 
 drivers/net/e1000e/param.c                       |   25 
 drivers/net/ehea/ehea_main.c                     |   34 
 drivers/net/enc28j60.c                           |    4 
 drivers/net/forcedeth.c                          |    3 
 drivers/net/hamradio/6pack.c                     |   10 
 drivers/net/hamradio/mkiss.c                     |   41 -
 drivers/net/igb/igb_ethtool.c                    |   12 
 drivers/net/igb/igb_main.c                       |    1 
 drivers/net/irda/irda-usb.c                      |    2 
 drivers/net/iseries_veth.c                       |    2 
 drivers/net/ixgb/ixgb_main.c                     |    8 
 drivers/net/macvlan.c                            |    3 
 drivers/net/mv643xx_eth.c                        |    2 
 drivers/net/myri10ge/myri10ge.c                  |    1 
 drivers/net/niu.c                                |    3 
 drivers/net/pcmcia/axnet_cs.c                    |    1 
 drivers/net/pcmcia/pcnet_cs.c                    |    3 
 drivers/net/ppp_async.c                          |   11 
 drivers/net/ppp_synctty.c                        |   11 
 drivers/net/pppol2tp.c                           |    1 
 drivers/net/r6040.c                              |   17 
 drivers/net/r8169.c                              |  353 ++++----
 drivers/net/sis190.c                             |    1 
 drivers/net/skfp/skfddi.c                        |    4 
 drivers/net/sky2.c                               |   27 
 drivers/net/starfire.c                           |    5 
 drivers/net/sungem.c                             |    8 
 drivers/net/tulip/interrupt.c                    |   84 +-
 drivers/net/tulip/tulip.h                        |   32 
 drivers/net/tun.c                                |   10 
 drivers/net/usb/asix.c                           |   20 
 drivers/net/usb/cdc_ether.c                      |    5 
 drivers/net/usb/cdc_subset.c                     |    7 
 drivers/net/usb/hso.c                            |    2 
 drivers/net/usb/pegasus.c                        |   29 
 drivers/net/usb/zaurus.c                         |    5 
 drivers/net/virtio_net.c                         |    3 
 drivers/net/wireless/ath5k/base.c                |   67 -
 drivers/net/wireless/ath5k/base.h                |    3 
 drivers/net/wireless/ath5k/hw.c                  |   22 
 drivers/net/wireless/ath5k/initvals.c            |    2 
 drivers/net/wireless/ath9k/ath9k.h               |    4 
 drivers/net/wireless/ath9k/core.c                |    1 
 drivers/net/wireless/ath9k/core.h                |   35 
 drivers/net/wireless/ath9k/hw.c                  |   24 
 drivers/net/wireless/ath9k/main.c                |    8 
 drivers/net/wireless/ath9k/recv.c                |   10 
 drivers/net/wireless/b43/dma.c                   |   50 +
 drivers/net/wireless/b43/rfkill.c                |    3 
 drivers/net/wireless/b43/xmit.c                  |    2 
 drivers/net/wireless/b43legacy/xmit.c            |    2 
 drivers/net/wireless/hostap/hostap_wlan.h        |    5 
 drivers/net/wireless/ipw2200.c                   |   28 
 drivers/net/wireless/ipw2200.h                   |    1 
 drivers/net/wireless/iwlwifi/iwl-5000-hw.h       |    7 
 drivers/net/wireless/iwlwifi/iwl-5000.c          |   63 -
 drivers/net/wireless/iwlwifi/iwl-agn.c           |   81 +-
 drivers/net/wireless/iwlwifi/iwl-calib.c         |   60 +
 drivers/net/wireless/iwlwifi/iwl-core.c          |   30 
 drivers/net/wireless/iwlwifi/iwl-core.h          |    8 
 drivers/net/wireless/iwlwifi/iwl-dev.h           |   18 
 drivers/net/wireless/iwlwifi/iwl-power.c         |   39 
 drivers/net/wireless/iwlwifi/iwl-power.h         |    4 
 drivers/net/wireless/iwlwifi/iwl-rx.c            |   55 -
 drivers/net/wireless/iwlwifi/iwl-scan.c          |   10 
 drivers/net/wireless/iwlwifi/iwl-sta.c           |   24 
 drivers/net/wireless/iwlwifi/iwl-tx.c            |    7 
 drivers/net/wireless/iwlwifi/iwl3945-base.c      |    7 
 drivers/net/wireless/libertas/if_usb.c           |    2 
 drivers/net/wireless/libertas/main.c             |   20 
 drivers/net/wireless/libertas/scan.c             |    4 
 drivers/net/wireless/libertas/wext.c             |    2 
 drivers/net/wireless/p54/p54usb.c                |    2 
 drivers/net/wireless/ray_cs.c                    |    2 
 drivers/net/wireless/rndis_wlan.c                |   14 
 drivers/net/wireless/rt2x00/rt73usb.c            |    1 
 drivers/net/wireless/rtl8187_dev.c               |   19 
 drivers/net/wireless/rtl8187_rtl8225.c           |   10 
 drivers/net/wireless/strip.c                     |   39 
 drivers/net/wireless/zd1211rw/zd_rf.c            |    1 
 drivers/net/wireless/zd1211rw/zd_usb.c           |    3 
 drivers/parport/parport_pc.c                     |   34 
 drivers/parport/parport_serial.c                 |   33 
 drivers/parport/share.c                          |   13 
 drivers/pci/hotplug/acpiphp.h                    |    9 
 drivers/pci/hotplug/acpiphp_core.c               |   32 
 drivers/pci/hotplug/acpiphp_glue.c               |   14 
 drivers/pci/hotplug/acpiphp_ibm.c                |    4 
 drivers/pci/hotplug/cpci_hotplug.h               |    6 
 drivers/pci/hotplug/cpci_hotplug_core.c          |   75 -
 drivers/pci/hotplug/cpci_hotplug_pci.c           |    4 
 drivers/pci/hotplug/cpqphp.h                     |   13 
 drivers/pci/hotplug/cpqphp_core.c                |   45 -
 drivers/pci/hotplug/fakephp.c                    |   18 
 drivers/pci/hotplug/ibmphp.h                     |    5 
 drivers/pci/hotplug/ibmphp_ebda.c                |   19 
 drivers/pci/hotplug/pci_hotplug_core.c           |   64 -
 drivers/pci/hotplug/pciehp.h                     |    9 
 drivers/pci/hotplug/pciehp_core.c                |   53 -
 drivers/pci/hotplug/pciehp_ctrl.c                |   48 -
 drivers/pci/hotplug/pciehp_hpc.c                 |    1 
 drivers/pci/hotplug/rpaphp_slot.c                |   10 
 drivers/pci/hotplug/sgi_hotplug.c                |   22 
 drivers/pci/hotplug/shpchp.h                     |    9 
 drivers/pci/hotplug/shpchp_core.c                |   52 -
 drivers/pci/hotplug/shpchp_ctrl.c                |   48 -
 drivers/pci/intel-iommu.c                        |   13 
 drivers/pci/iova.c                               |   26 
 drivers/pci/pci-driver.c                         |   90 +-
 drivers/pci/pci-sysfs.c                          |    4 
 drivers/pci/pci.c                                |   79 +
 drivers/pci/pci.h                                |    1 
 drivers/pci/pcie/aer/aerdrv_core.c               |   48 -
 drivers/pci/pcie/aspm.c                          |  162 +++-
 drivers/pci/pcie/portdrv_pci.c                   |   24 
 drivers/pci/probe.c                              |    5 
 drivers/pci/quirks.c                             |   30 
 drivers/pci/rom.c                                |    8 
 drivers/pci/slot.c                               |  144 ++-
 drivers/pci/syscall.c                            |   12 
 drivers/pnp/base.h                               |    2 
 drivers/pnp/pnpacpi/core.c                       |   27 
 drivers/pnp/quirks.c                             |    2 
 drivers/pnp/resource.c                           |    4 
 drivers/ps3/ps3stor_lib.c                        |   65 +
 drivers/rtc/rtc-cmos.c                           |   33 
 drivers/s390/block/dasd_diag.c                   |   19 
 drivers/scsi/3w-xxxx.c                           |    5 
 drivers/scsi/3w-xxxx.h                           |    2 
 drivers/scsi/aacraid/linit.c                     |    4 
 drivers/scsi/device_handler/scsi_dh_rdac.c       |    2 
 drivers/scsi/dpt_i2o.c                           |    8 
 drivers/scsi/eata.c                              |   15 
 drivers/scsi/gdth.c                              |    2 
 drivers/scsi/hptiop.c                            |    1 
 drivers/scsi/ibmvscsi/ibmvfc.c                   |   25 
 drivers/scsi/ibmvscsi/ibmvfc.h                   |    6 
 drivers/scsi/ibmvscsi/ibmvstgt.c                 |   16 
 drivers/scsi/libiscsi.c                          |   10 
 drivers/scsi/libsas/sas_port.c                   |   19 
 drivers/scsi/mvsas.c                             |    2 
 drivers/scsi/pcmcia/aha152x_stub.c               |    2 
 drivers/scsi/qla2xxx/qla_def.h                   |    1 
 drivers/scsi/qla2xxx/qla_init.c                  |    2 
 drivers/scsi/qla2xxx/qla_mbx.c                   |    2 
 drivers/scsi/qla2xxx/qla_os.c                    |    1 
 drivers/scsi/qla2xxx/qla_sup.c                   |   23 
 drivers/scsi/scsi.c                              |   11 
 drivers/scsi/sd.c                                |   17 
 drivers/scsi/sr_ioctl.c                          |    5 
 drivers/scsi/zalon.c                             |    2 
 drivers/serial/8250.c                            |   15 
 drivers/serial/8250_pci.c                        |   67 +
 drivers/serial/icom.c                            |    2 
 drivers/serial/jsm/jsm_driver.c                  |    3 
 drivers/serial/jsm/jsm_tty.c                     |    6 
 drivers/serial/mpc52xx_uart.c                    |    4 
 drivers/spi/pxa2xx_spi.c                         |   24 
 drivers/spi/spidev.c                             |    4 
 drivers/ssb/sprom.c                              |   20 
 drivers/usb/atm/speedtch.c                       |   12 
 drivers/usb/class/cdc-acm.c                      |   14 
 drivers/usb/class/cdc-wdm.c                      |    4 
 drivers/usb/core/devio.c                         |   99 +-
 drivers/usb/core/driver.c                        |    3 
 drivers/usb/core/hcd.c                           |   39 
 drivers/usb/core/hcd.h                           |    7 
 drivers/usb/core/hub.c                           |    3 
 drivers/usb/core/inode.c                         |    1 
 drivers/usb/core/message.c                       |   12 
 drivers/usb/core/sysfs.c                         |    2 
 drivers/usb/core/urb.c                           |   15 
 drivers/usb/core/usb.h                           |    1 
 drivers/usb/gadget/ether.c                       |   11 
 drivers/usb/gadget/f_acm.c                       |    4 
 drivers/usb/gadget/f_rndis.c                     |    9 
 drivers/usb/gadget/s3c2410_udc.c                 |    2 
 drivers/usb/gadget/u_ether.c                     |   15 
 drivers/usb/gadget/usbstring.c                   |    6 
 drivers/usb/host/Kconfig                         |   23 
 drivers/usb/host/ehci-hcd.c                      |   42 -
 drivers/usb/host/ehci-mem.c                      |    1 
 drivers/usb/host/ehci-pci.c                      |   24 
 drivers/usb/host/ehci-ps3.c                      |    1 
 drivers/usb/host/ehci-q.c                        |   35 
 drivers/usb/host/ehci-sched.c                    |   82 +-
 drivers/usb/host/ehci.h                          |    9 
 drivers/usb/host/isp1760-hcd.c                   |   24 
 drivers/usb/host/isp1760-if.c                    |  134 +--
 drivers/usb/host/ohci-hcd.c                      |    8 
 drivers/usb/host/ohci-hub.c                      |   87 +-
 drivers/usb/host/ohci-pci.c                      |   20 
 drivers/usb/host/ohci-ps3.c                      |    3 
 drivers/usb/host/ohci-q.c                        |   18 
 drivers/usb/host/ohci.h                          |    9 
 drivers/usb/host/uhci-hcd.c                      |    3 
 drivers/usb/misc/emi26.c                         |    2 
 drivers/usb/mon/mon_bin.c                        |  110 +-
 drivers/usb/musb/Kconfig                         |    4 
 drivers/usb/musb/cppi_dma.h                      |    4 
 drivers/usb/musb/davinci.c                       |   20 
 drivers/usb/musb/musb_core.c                     |    8 
 drivers/usb/musb/musb_host.c                     |    6 
 drivers/usb/serial/aircable.c                    |    5 
 drivers/usb/serial/belkin_sa.c                   |    7 
 drivers/usb/serial/cp2101.c                      |    7 
 drivers/usb/serial/cyberjack.c                   |   27 
 drivers/usb/serial/cypress_m8.c                  |   15 
 drivers/usb/serial/digi_acceleport.c             |   28 
 drivers/usb/serial/empeg.c                       |   14 
 drivers/usb/serial/ftdi_sio.c                    |   23 
 drivers/usb/serial/ftdi_sio.h                    |   41 +
 drivers/usb/serial/garmin_gps.c                  |   24 
 drivers/usb/serial/generic.c                     |   15 
 drivers/usb/serial/io_edgeport.c                 |   37 
 drivers/usb/serial/io_tables.h                   |   12 
 drivers/usb/serial/io_ti.c                       |   30 
 drivers/usb/serial/ipaq.c                        |   13 
 drivers/usb/serial/ipw.c                         |    3 
 drivers/usb/serial/iuu_phoenix.c                 |    7 
 drivers/usb/serial/keyspan.c                     |   13 
 drivers/usb/serial/keyspan.h                     |   12 
 drivers/usb/serial/keyspan_pda.c                 |    4 
 drivers/usb/serial/kl5kusb105.c                  |   39 
 drivers/usb/serial/kobil_sct.c                   |   18 
 drivers/usb/serial/mct_u232.c                    |   13 
 drivers/usb/serial/mos7720.c                     |   16 
 drivers/usb/serial/mos7840.c                     |   75 +
 drivers/usb/serial/omninet.c                     |   19 
 drivers/usb/serial/option.c                      |  354 +++++++-
 drivers/usb/serial/oti6858.c                     |    7 
 drivers/usb/serial/pl2303.c                      |    5 
 drivers/usb/serial/sierra.c                      |   31 
 drivers/usb/serial/spcp8x5.c                     |    5 
 drivers/usb/serial/ti_usb_3410_5052.c            |   41 -
 drivers/usb/serial/ti_usb_3410_5052.h            |    4 
 drivers/usb/serial/usb-serial.c                  |   99 +-
 drivers/usb/serial/visor.c                       |   21 
 drivers/usb/serial/whiteheat.c                   |    6 
 drivers/usb/storage/cypress_atacb.c              |   15 
 drivers/usb/storage/libusual.c                   |    7 
 drivers/usb/storage/scsiglue.c                   |   39 
 drivers/usb/storage/transport.c                  |   82 ++
 drivers/usb/storage/unusual_devs.h               |  437 +++++++++--
 drivers/usb/storage/usb.c                        |    6 
 drivers/usb/storage/usb.h                        |    4 
 drivers/video/atmel_lcdfb.c                      |   10 
 drivers/video/aty/mach64_ct.c                    |   11 
 drivers/video/backlight/lcd.c                    |    2 
 drivers/video/console/fbcon.c                    |   43 -
 drivers/video/console/mdacon.c                   |    2 
 drivers/video/console/sticon.c                   |    4 
 drivers/video/console/vgacon.c                   |    4 
 drivers/video/fb_defio.c                         |    3 
 drivers/video/fbmem.c                            |    2 
 drivers/video/fbmon.c                            |    4 
 drivers/video/macfb.c                            |   74 -
 drivers/video/matrox/g450_pll.c                  |    3 
 drivers/w1/slaves/w1_therm.c                     |    2 
 drivers/watchdog/hpwdt.c                         |   20 
 drivers/watchdog/ib700wdt.c                      |    2 
 drivers/watchdog/ks8695_wdt.c                    |    1 
 drivers/watchdog/rc32434_wdt.c                   |  168 +---
 fs/affs/file.c                                   |    2 
 fs/aio.c                                         |   59 -
 fs/binfmt_elf.c                                  |   46 -
 fs/binfmt_em86.c                                 |    2 
 fs/binfmt_flat.c                                 |   17 
 fs/binfmt_misc.c                                 |    4 
 fs/binfmt_script.c                               |    5 
 fs/buffer.c                                      |   28 
 fs/cifs/CHANGES                                  |    5 
 fs/cifs/cifs_debug.c                             |  277 +++---
 fs/cifs/cifs_spnego.c                            |    3 
 fs/cifs/cifs_unicode.h                           |    7 
 fs/cifs/cifsfs.c                                 |   30 
 fs/cifs/cifsglob.h                               |   44 -
 fs/cifs/cifsproto.h                              |    2 
 fs/cifs/cifssmb.c                                |  124 +--
 fs/cifs/connect.c                                |  911 +++++++++++------------
 fs/cifs/file.c                                   |    9 
 fs/cifs/misc.c                                   |   95 +-
 fs/cifs/readdir.c                                |  131 +--
 fs/cifs/sess.c                                   |   48 -
 fs/cifs/transport.c                              |   48 -
 fs/compat.c                                      |   18 
 fs/compat_ioctl.c                                |    9 
 fs/dcache.c                                      |    7 
 fs/dcookies.c                                    |   10 
 fs/debugfs/inode.c                               |   55 -
 fs/dlm/plock.c                                   |    2 
 fs/dquot.c                                       |    2 
 fs/drop_caches.c                                 |    2 
 fs/ecryptfs/inode.c                              |    5 
 fs/ecryptfs/keystore.c                           |   44 -
 fs/eventfd.c                                     |    5 
 fs/eventpoll.c                                   |   91 +-
 fs/exec.c                                        |   16 
 fs/ext2/balloc.c                                 |    3 
 fs/ext2/dir.c                                    |   60 -
 fs/ext2/super.c                                  |    9 
 fs/ext3/balloc.c                                 |    3 
 fs/ext3/dir.c                                    |   32 
 fs/ext3/inode.c                                  |    2 
 fs/ext3/namei.c                                  |   23 
 fs/ext3/resize.c                                 |    3 
 fs/ext3/super.c                                  |   11 
 fs/ext4/balloc.c                                 |  156 +++
 fs/ext4/dir.c                                    |   31 
 fs/ext4/ext4.h                                   |   83 +-
 fs/ext4/ext4_sb.h                                |    4 
 fs/ext4/extents.c                                |   25 
 fs/ext4/file.c                                   |    7 
 fs/ext4/hash.c                                   |   77 +
 fs/ext4/ialloc.c                                 |  204 +++--
 fs/ext4/inode.c                                  |  195 ++++
 fs/ext4/ioctl.c                                  |   38 
 fs/ext4/mballoc.c                                |  660 ++++++++++++----
 fs/ext4/mballoc.h                                |   51 -
 fs/ext4/migrate.c                                |   18 
 fs/ext4/namei.c                                  |   48 -
 fs/ext4/resize.c                                 |   70 -
 fs/ext4/super.c                                  |  111 +-
 fs/ext4/xattr.c                                  |    6 
 fs/fcntl.c                                       |   24 
 fs/filesystems.c                                 |    2 
 fs/fs-writeback.c                                |  100 +-
 fs/fuse/dev.c                                    |    3 
 fs/fuse/dir.c                                    |    3 
 fs/fuse/file.c                                   |   12 
 fs/fuse/inode.c                                  |   10 
 fs/gfs2/ops_address.c                            |    2 
 fs/gfs2/ops_file.c                               |    7 
 fs/hfs/catalog.c                                 |    8 
 fs/hfs/dir.c                                     |   11 
 fs/hfs/super.c                                   |    7 
 fs/hfsplus/bitmap.c                              |   12 
 fs/hfsplus/catalog.c                             |    5 
 fs/hfsplus/wrapper.c                             |    4 
 fs/hostfs/hostfs_kern.c                          |    2 
 fs/hugetlbfs/inode.c                             |    3 
 fs/inode.c                                       |   21 
 fs/inotify.c                                     |  152 +++
 fs/inotify_user.c                                |  144 +--
 fs/ioctl.c                                       |   14 
 fs/ioprio.c                                      |    5 
 fs/jbd/checkpoint.c                              |   49 -
 fs/jbd/commit.c                                  |    6 
 fs/jbd/journal.c                                 |   28 
 fs/jbd/recovery.c                                |    7 
 fs/jbd/transaction.c                             |   16 
 fs/jbd2/checkpoint.c                             |   41 -
 fs/jbd2/commit.c                                 |   32 
 fs/jbd2/journal.c                                |   66 +
 fs/jbd2/revoke.c                                 |   24 
 fs/jbd2/transaction.c                            |   42 -
 fs/jffs2/background.c                            |   10 
 fs/jffs2/compr_lzo.c                             |   15 
 fs/jffs2/file.c                                  |    2 
 fs/jffs2/gc.c                                    |    3 
 fs/jffs2/read.c                                  |    9 
 fs/jffs2/readinode.c                             |   42 -
 fs/jffs2/wbuf.c                                  |   10 
 fs/libfs.c                                       |    2 
 fs/lockd/svclock.c                               |    6 
 fs/locks.c                                       |    2 
 fs/minix/dir.c                                   |    2 
 fs/namei.c                                       |   49 -
 fs/namespace.c                                   |   20 
 fs/nfs/client.c                                  |    2 
 fs/nfs/dir.c                                     |   16 
 fs/nfs/direct.c                                  |   21 
 fs/nfs/file.c                                    |   11 
 fs/nfs/nfs4proc.c                                |   27 
 fs/nfs/nfs4renewd.c                              |    6 
 fs/nfs/nfs4xdr.c                                 |    1 
 fs/nfs/read.c                                    |   12 
 fs/nfs/super.c                                   |    1 
 fs/nfs/write.c                                   |    6 
 fs/nfsctl.c                                      |    4 
 fs/nfsd/nfs3proc.c                               |    5 
 fs/nfsd/nfs4proc.c                               |    7 
 fs/nfsd/nfs4state.c                              |   31 
 fs/nfsd/nfs4xdr.c                                |   17 
 fs/nfsd/nfsproc.c                                |    3 
 fs/nfsd/vfs.c                                    |   11 
 fs/ocfs2/aops.c                                  |   65 +
 fs/ocfs2/file.c                                  |   94 +-
 fs/ocfs2/mmap.c                                  |    6 
 fs/open.c                                        |   82 +-
 fs/pipe.c                                        |   45 -
 fs/proc/array.c                                  |   13 
 fs/proc/base.c                                   |   82 --
 fs/proc/proc_misc.c                              |    4 
 fs/proc/proc_sysctl.c                            |    1 
 fs/proc/task_mmu.c                               |   43 -
 fs/proc/task_nommu.c                             |    1 
 fs/quota.c                                       |    3 
 fs/read_write.c                                  |   49 -
 fs/readdir.c                                     |    9 
 fs/reiserfs/inode.c                              |    2 
 fs/select.c                                      |   27 
 fs/seq_file.c                                    |  151 ++-
 fs/signalfd.c                                    |    8 
 fs/smbfs/file.c                                  |    2 
 fs/splice.c                                      |  277 ++++--
 fs/stat.c                                        |   38 
 fs/super.c                                       |    2 
 fs/sync.c                                        |   34 
 fs/sysfs/bin.c                                   |    6 
 fs/sysfs/dir.c                                   |    2 
 fs/timerfd.c                                     |   22 
 fs/ubifs/file.c                                  |   18 
 fs/udf/lowlevel.c                                |    7 
 fs/utimes.c                                      |   11 
 fs/xattr.c                                       |   53 -
 fs/xfs/linux-2.6/xfs_buf.c                       |    6 
 fs/xfs/linux-2.6/xfs_buf.h                       |    8 
 fs/xfs/linux-2.6/xfs_file.c                      |    4 
 fs/xfs/linux-2.6/xfs_super.c                     |    2 
 fs/xfs/xfs_log.c                                 |    7 
 fs/xfs/xfs_rename.c                              |    2 
 include/acpi/acpi_bus.h                          |    2 
 include/acpi/actypes.h                           |    2 
 include/acpi/pdc_intel.h                         |    2 
 include/asm-generic/memory_model.h               |    2 
 include/asm-mips/compat.h                        |    7 
 include/asm-mips/seccomp.h                       |    1 
 include/asm-parisc/tlbflush.h                    |   18 
 include/asm-x86/elf.h                            |    2 
 include/asm-x86/irqflags.h                       |    8 
 include/asm-x86/kvm_host.h                       |   10 
 include/asm-x86/mmzone_32.h                      |    4 
 include/asm-x86/mmzone_64.h                      |    2 
 include/asm-x86/msr-index.h                      |   29 
 include/asm-x86/pci_64.h                         |   14 
 include/asm-x86/pgalloc.h                        |    1 
 include/asm-x86/seccomp_32.h                     |    6 
 include/asm-x86/seccomp_64.h                     |    8 
 include/asm-x86/vmi.h                            |    8 
 include/drm/drm_pciids.h                         |    1 
 include/linux/Kbuild                             |    1 
 include/linux/ata.h                              |   15 
 include/linux/binfmts.h                          |    2 
 include/linux/bio.h                              |    7 
 include/linux/blkdev.h                           |    1 
 include/linux/buffer_head.h                      |    2 
 include/linux/can/core.h                         |    2 
 include/linux/capability.h                       |   23 
 include/linux/compat.h                           |   13 
 include/linux/console_struct.h                   |    1 
 include/linux/firmware-map.h                     |   12 
 include/linux/fs.h                               |   33 
 include/linux/idr.h                              |    3 
 include/linux/if_vlan.h                          |    7 
 include/linux/inotify.h                          |   11 
 include/linux/jbd.h                              |    2 
 include/linux/jbd2.h                             |   10 
 include/linux/kernel.h                           |    4 
 include/linux/kvm_para.h                         |    1 
 include/linux/libata.h                           |    1 
 include/linux/mlx4/qp.h                          |    1 
 include/linux/mm.h                               |   25 
 include/linux/mmzone.h                           |    2 
 include/linux/module.h                           |    1 
 include/linux/mtd/cfi.h                          |   22 
 include/linux/nfs_fs.h                           |    5 
 include/linux/nfsd/nfsd.h                        |    2 
 include/linux/pagemap.h                          |    3 
 include/linux/parport.h                          |    4 
 include/linux/pci.h                              |   10 
 include/linux/pci_hotplug.h                      |   11 
 include/linux/pci_ids.h                          |   16 
 include/linux/pci_regs.h                         |    2 
 include/linux/personality.h                      |    5 
 include/linux/pid.h                              |   18 
 include/linux/pnp.h                              |    6 
 include/linux/radix-tree.h                       |    2 
 include/linux/sched.h                            |   23 
 include/linux/security.h                         |    2 
 include/linux/seq_file.h                         |    1 
 include/linux/serial_core.h                      |    1 
 include/linux/skbuff.h                           |    9 
 include/linux/splice.h                           |   12 
 include/linux/sunrpc/xprt.h                      |    1 
 include/linux/syscalls.h                         |  171 ++--
 include/linux/time.h                             |    1 
 include/linux/timerfd.h                          |   16 
 include/linux/usb.h                              |    2 
 include/linux/usb/serial.h                       |   12 
 include/linux/usb_usual.h                        |    5 
 include/linux/wait.h                             |   11 
 include/linux/writeback.h                        |    1 
 include/math-emu/op-common.h                     |   17 
 include/net/af_unix.h                            |    2 
 include/net/ipv6.h                               |    7 
 include/net/irda/irda_device.h                   |    4 
 include/net/netfilter/ipv6/nf_conntrack_ipv6.h   |    2 
 include/net/scm.h                                |    5 
 include/net/sctp/checksum.h                      |    2 
 include/net/sock.h                               |    1 
 include/net/x25.h                                |    2 
 ipc/mqueue.c                                     |   31 
 ipc/msg.c                                        |   12 
 ipc/sem.c                                        |   18 
 ipc/shm.c                                        |   12 
 ipc/util.c                                       |   14 
 kernel/Makefile                                  |    4 
 kernel/acct.c                                    |    8 
 kernel/audit_tree.c                              |   91 +-
 kernel/auditfilter.c                             |   14 
 kernel/capability.c                              |    4 
 kernel/cgroup.c                                  |   14 
 kernel/cpuset.c                                  |   12 
 kernel/exec_domain.c                             |    3 
 kernel/exit.c                                    |   20 
 kernel/fork.c                                    |   73 -
 kernel/futex.c                                   |   17 
 kernel/hrtimer.c                                 |    4 
 kernel/irq/chip.c                                |    1 
 kernel/itimer.c                                  |    7 
 kernel/kexec.c                                   |    5 
 kernel/kprobes.c                                 |    4 
 kernel/kthread.c                                 |    2 
 kernel/module.c                                  |   12 
 kernel/posix-timers.c                            |   43 -
 kernel/printk.c                                  |   26 
 kernel/ptrace.c                                  |    2 
 kernel/relay.c                                   |    4 
 kernel/resource.c                                |    2 
 kernel/sched.c                                   |   55 -
 kernel/sched_clock.c                             |    5 
 kernel/sched_features.h                          |    2 
 kernel/sched_rt.c                                |    8 
 kernel/sched_stats.h                             |    2 
 kernel/seccomp.c                                 |    7 
 kernel/signal.c                                  |   85 +-
 kernel/sys.c                                     |   70 -
 kernel/sys_ni.c                                  |    1 
 kernel/sysctl.c                                  |   16 
 kernel/time.c                                    |   14 
 kernel/time/tick-common.c                        |   12 
 kernel/time/tick-sched.c                         |    2 
 kernel/time/timekeeping.c                        |  100 +-
 kernel/timer.c                                   |   19 
 kernel/trace/Kconfig                             |    3 
 kernel/tsacct.c                                  |    6 
 kernel/uid16.c                                   |   39 
 kernel/wait.c                                    |   59 +
 lib/Kconfig.debug                                |    2 
 lib/idr.c                                        |   32 
 lib/scatterlist.c                                |    2 
 mm/Kconfig                                       |   18 
 mm/fadvise.c                                     |   18 
 mm/filemap.c                                     |   45 -
 mm/filemap_xip.c                                 |    4 
 mm/fremap.c                                      |    4 
 mm/hugetlb.c                                     |   84 +-
 mm/internal.h                                    |   29 
 mm/madvise.c                                     |   10 
 mm/memory.c                                      |  135 ++-
 mm/mempolicy.c                                   |   27 
 mm/migrate.c                                     |    8 
 mm/mincore.c                                     |    4 
 mm/mlock.c                                       |    8 
 mm/mmap.c                                        |   14 
 mm/mprotect.c                                    |    4 
 mm/mremap.c                                      |    6 
 mm/msync.c                                       |    2 
 mm/nommu.c                                       |   10 
 mm/page-writeback.c                              |  132 ++-
 mm/page_alloc.c                                  |   78 +
 mm/page_isolation.c                              |    5 
 mm/rmap.c                                        |   42 -
 mm/slab.c                                        |    2 
 mm/slob.c                                        |    2 
 mm/slub.c                                        |    2 
 mm/swap.c                                        |   13 
 mm/swapfile.c                                    |    4 
 net/8021q/vlan_core.c                            |   46 -
 net/appletalk/aarp.c                             |   16 
 net/appletalk/ddp.c                              |   48 -
 net/atm/svc.c                                    |    6 
 net/ax25/af_ax25.c                               |    2 
 net/bluetooth/hidp/core.c                        |    4 
 net/bridge/br_if.c                               |    1 
 net/bridge/br_netfilter.c                        |   15 
 net/can/af_can.c                                 |   68 +
 net/can/bcm.c                                    |    7 
 net/can/raw.c                                    |    1 
 net/core/dev.c                                   |    5 
 net/core/net_namespace.c                         |    2 
 net/core/pktgen.c                                |    2 
 net/core/scm.c                                   |   24 
 net/core/skbuff.c                                |   86 --
 net/core/sock.c                                  |    3 
 net/econet/af_econet.c                           |    1 
 net/ipv4/ipconfig.c                              |    6 
 net/ipv4/netfilter/arp_tables.c                  |    4 
 net/ipv4/netfilter/ip_tables.c                   |    4 
 net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c   |    2 
 net/ipv4/netfilter/nf_nat_snmp_basic.c           |    1 
 net/ipv4/proc.c                                  |   58 -
 net/ipv4/tcp.c                                   |   20 
 net/ipv4/tcp_input.c                             |    3 
 net/ipv4/tcp_ipv4.c                              |    4 
 net/ipv4/tcp_output.c                            |   46 -
 net/ipv4/udp.c                                   |   19 
 net/ipv6/inet6_hashtables.c                      |    4 
 net/ipv6/ip6_fib.c                               |   15 
 net/ipv6/ip6_flowlabel.c                         |    8 
 net/ipv6/ip6_input.c                             |    4 
 net/ipv6/ip6_output.c                            |   67 +
 net/ipv6/netfilter/ip6_tables.c                  |    4 
 net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.c   |   13 
 net/ipv6/netfilter/nf_conntrack_proto_icmpv6.c   |    4 
 net/ipv6/netfilter/nf_conntrack_reasm.c          |    7 
 net/ipv6/reassembly.c                            |    5 
 net/ipv6/tcp_ipv6.c                              |    2 
 net/ipv6/udp.c                                   |    8 
 net/irda/af_irda.c                               |    1 
 net/key/af_key.c                                 |    1 
 net/llc/af_llc.c                                 |    1 
 net/mac80211/debugfs_netdev.c                    |   14 
 net/mac80211/debugfs_sta.c                       |    2 
 net/mac80211/rc80211_pid_algo.c                  |   71 -
 net/mac80211/tx.c                                |    4 
 net/mac80211/wext.c                              |    2 
 net/netfilter/nf_conntrack_proto_tcp.c           |    3 
 net/netfilter/xt_iprange.c                       |    8 
 net/netfilter/xt_sctp.c                          |    2 
 net/netrom/af_netrom.c                           |    9 
 net/packet/af_packet.c                           |   21 
 net/rfkill/rfkill.c                              |    5 
 net/rose/af_rose.c                               |    5 
 net/sched/cls_api.c                              |    2 
 net/sched/cls_u32.c                              |    3 
 net/sched/sch_generic.c                          |    2 
 net/sched/sch_htb.c                              |    1 
 net/sctp/endpointola.c                           |    3 
 net/sctp/input.c                                 |   13 
 net/sctp/output.c                                |    7 
 net/sctp/outqueue.c                              |    3 
 net/sctp/sm_statefuns.c                          |   14 
 net/socket.c                                     |   61 -
 net/sunrpc/auth_generic.c                        |   20 
 net/sunrpc/clnt.c                                |   27 
 net/sunrpc/rpcb_clnt.c                           |   40 -
 net/sunrpc/svcsock.c                             |    9 
 net/sunrpc/xprt.c                                |    6 
 net/sunrpc/xprtsock.c                            |   60 +
 net/unix/af_unix.c                               |   37 
 net/unix/garbage.c                               |   62 +
 net/x25/af_x25.c                                 |   29 
 net/x25/x25_timer.c                              |    2 
 net/xfrm/xfrm_algo.c                             |    4 
 scripts/kernel-doc                               |   39 
 scripts/mod/modpost.c                            |    1 
 scripts/package/builddeb                         |   24 
 scripts/package/mkspec                           |    3 
 scripts/unifdef.c                                |    6 
 security/Kconfig                                 |   22 
 security/commoncap.c                             |    6 
 security/device_cgroup.c                         |    3 
 security/keys/internal.h                         |    1 
 security/keys/keyctl.c                           |   23 
 security/keys/process_keys.c                     |    2 
 security/keys/request_key.c                      |    4 
 security/security.c                              |    3 
 security/selinux/hooks.c                         |    3 
 security/selinux/netlabel.c                      |    9 
 security/smack/smack_lsm.c                       |    4 
 sound/arm/aaci.c                                 |    6 
 sound/core/control.c                             |    4 
 sound/core/oss/pcm_oss.c                         |    4 
 sound/core/oss/rate.c                            |    2 
 sound/core/pcm_lib.c                             |   39 
 sound/core/seq/seq_midi_event.c                  |    8 
 sound/core/sgbuf.c                               |    7 
 sound/drivers/mtpav.c                            |    3 
 sound/mips/sgio2audio.c                          |    2 
 sound/pci/aw2/aw2-alsa.c                         |    2 
 sound/pci/ca0106/ca0106_main.c                   |    4 
 sound/pci/ca0106/ca0106_mixer.c                  |    6 
 sound/pci/cs46xx/cs46xx_lib.h                    |    2 
 sound/pci/emu10k1/emu10k1_main.c                 |    3 
 sound/pci/hda/hda_intel.c                        |   37 
 sound/pci/hda/hda_proc.c                         |    2 
 sound/pci/hda/patch_analog.c                     |   62 +
 sound/pci/hda/patch_conexant.c                   |    1 
 sound/pci/hda/patch_realtek.c                    |  228 ++++-
 sound/pci/hda/patch_sigmatel.c                   |   63 +
 sound/pci/mixart/mixart.c                        |    1 
 sound/pci/oxygen/oxygen_io.c                     |   11 
 sound/pci/oxygen/virtuoso.c                      |    2 
 sound/pcmcia/pdaudiocf/pdaudiocf_pcm.c           |    2 
 sound/soc/omap/omap-pcm.c                        |    2 
 sound/usb/caiaq/caiaq-device.h                   |    1 
 sound/usb/caiaq/caiaq-midi.c                     |   32 
 sound/usb/usbaudio.c                             |   39 
 sound/usb/usbaudio.h                             |    4 
 sound/usb/usbmidi.c                              |   13 
 sound/usb/usbquirks.h                            |    2 
 virt/kvm/kvm_main.c                              |   55 -
 1138 files changed, 15717 insertions(+), 8013 deletions(-)

