From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.67 released
Date: Mon, 7 Apr 2003 18:26:29 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200304071826.h37IQTsO006323@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.67 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.67.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.67.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               635225                 0
3230708                                  0          32009373
/pub/linux/kernel/v2.5/linux-2.5.67.tar.bz2         179712000                 0
                                         0                 0

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/i2c/proc-interface                     |   53 
 arch/ppc/platforms/sleep.S                           |  444 ---
 b/CREDITS                                            |    4 
 b/Documentation/IPMI.txt                             |   12 
 b/Documentation/block/biodoc.txt                     |    8 
 b/Documentation/driver-model/overview.txt            |    2 
 b/Documentation/filesystems/befs.txt                 |   28 
 b/Documentation/filesystems/cifs.txt                 |   45 
 b/Documentation/filesystems/porting                  |    2 
 b/Documentation/filesystems/sysv-fs.txt              |    5 
 b/Documentation/filesystems/tmpfs.txt                |   25 
 b/Documentation/i2c/sysfs-interface                  |  177 +
 b/Documentation/ia64/efirtc.txt                      |   12 
 b/Documentation/kernel-parameters.txt                |   10 
 b/Documentation/networking/bonding.txt               |  142 
 b/Documentation/networking/generic-hdlc.txt          |   40 
 b/Documentation/pci.txt                              |   32 
 b/Documentation/power/pci.txt                        |  183 -
 b/Documentation/swsusp.txt                           |   37 
 b/MAINTAINERS                                        |    5 
 b/Makefile                                           |    2 
 b/README                                             |    3 
 b/arch/alpha/kernel/alpha_ksyms.c                    |    1 
 b/arch/alpha/kernel/err_titan.c                      |   10 
 b/arch/alpha/kernel/module.c                         |    4 
 b/arch/alpha/kernel/pci.c                            |    8 
 b/arch/alpha/kernel/smp.c                            |    9 
 b/arch/alpha/kernel/sys_nautilus.c                   |   40 
 b/arch/alpha/oprofile/common.c                       |    6 
 b/arch/arm/kernel/apm.c                              |    2 
 b/arch/arm/kernel/armksyms.c                         |    2 
 b/arch/arm/kernel/entry-armv.S                       |    8 
 b/arch/arm/kernel/entry-common.S                     |    1 
 b/arch/arm/lib/Makefile                              |    2 
 b/arch/arm/lib/div64.S                               |   42 
 b/arch/arm/mach-footbridge/dc21285.c                 |   96 
 b/arch/arm/mach-sa1100/assabet.c                     |    2 
 b/arch/arm/mach-sa1100/cpu-sa1110.c                  |    2 
 b/arch/arm/tools/mach-types                          |   10 
 b/arch/i386/Makefile                                 |    2 
 b/arch/i386/boot/setup.S                             |    2 
 b/arch/i386/boot98/setup.S                           |    2 
 b/arch/i386/kernel/acpi/boot.c                       |    1 
 b/arch/i386/kernel/apic.c                            |  113 
 b/arch/i386/kernel/apm.c                             |    6 
 b/arch/i386/kernel/cpu/cpufreq/acpi.c                |    1 
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c            |   11 
 b/arch/i386/kernel/cpu/intel.c                       |   16 
 b/arch/i386/kernel/cpu/proc.c                        |    4 
 b/arch/i386/kernel/i386_ksyms.c                      |    4 
 b/arch/i386/kernel/io_apic.c                         |   11 
 b/arch/i386/kernel/nmi.c                             |  106 
 b/arch/i386/kernel/smp.c                             |    3 
 b/arch/i386/kernel/smpboot.c                         |    4 
 b/arch/i386/kernel/sys_i386.c                        |    2 
 b/arch/i386/kernel/time.c                            |   11 
 b/arch/i386/kernel/timers/timer.c                    |   15 
 b/arch/i386/kernel/timers/timer_cyclone.c            |   63 
 b/arch/i386/kernel/timers/timer_none.c               |    9 
 b/arch/i386/kernel/timers/timer_pit.c                |   12 
 b/arch/i386/kernel/timers/timer_tsc.c                |   71 
 b/arch/i386/kernel/vm86.c                            |    8 
 b/arch/i386/mach-visws/mpparse.c                     |   25 
 b/arch/i386/mm/boot_ioremap.c                        |    3 
 b/arch/i386/mm/highmem.c                             |    3 
 b/arch/i386/mm/init.c                                |   18 
 b/arch/i386/oprofile/init.c                          |    9 
 b/arch/i386/oprofile/nmi_int.c                       |   99 
 b/arch/ia64/sn/kernel/sv.c                           |    1 
 b/arch/m68k/atari/stram.c                            |    5 
 b/arch/m68k/kernel/m68k_ksyms.c                      |    1 
 b/arch/m68knommu/kernel/m68k_ksyms.c                 |    1 
 b/arch/mips/kernel/mips_ksyms.c                      |    1 
 b/arch/mips/kernel/smp.c                             |    1 
 b/arch/mips/mm/fault.c                               |    1 
 b/arch/mips64/kernel/mips64_ksyms.c                  |    1 
 b/arch/mips64/kernel/smp.c                           |    2 
 b/arch/mips64/mm/fault.c                             |    1 
 b/arch/parisc/oprofile/init.c                        |    5 
 b/arch/ppc/Kconfig                                   |   46 
 b/arch/ppc/kernel/Makefile                           |    2 
 b/arch/ppc/kernel/cpu_setup_6xx.S                    |  415 ++
 b/arch/ppc/kernel/head.S                             |  247 -
 b/arch/ppc/kernel/misc.S                             |  115 
 b/arch/ppc/kernel/smp.c                              |    7 
 b/arch/ppc/platforms/Makefile                        |    6 
 b/arch/ppc/platforms/chrp_smp.c                      |    1 
 b/arch/ppc/platforms/pmac_cpufreq.c                  |  345 ++
 b/arch/ppc/platforms/pmac_feature.c                  |  620 ++--
 b/arch/ppc/platforms/pmac_setup.c                    |   16 
 b/arch/ppc/platforms/pmac_sleep.S                    |  375 ++
 b/arch/ppc/platforms/pmac_smp.c                      |  143 
 b/arch/ppc/platforms/pmac_time.c                     |    2 
 b/arch/ppc/platforms/spruce_setup.c                  |    4 
 b/arch/ppc/syslib/prom_init.c                        |   23 
 b/arch/ppc64/Makefile                                |   12 
 b/arch/ppc64/boot/Makefile                           |    6 
 b/arch/ppc64/kernel/chrp_setup.c                     |   13 
 b/arch/ppc64/kernel/iSeries_pci.c                    |   37 
 b/arch/ppc64/kernel/iSeries_setup.c                  |    5 
 b/arch/ppc64/kernel/pSeries_lpar.c                   |    1 
 b/arch/ppc64/kernel/pSeries_pci.c                    |  176 -
 b/arch/ppc64/kernel/pci.c                            |  481 ---
 b/arch/ppc64/kernel/pci.h                            |   20 
 b/arch/ppc64/kernel/process.c                        |    8 
 b/arch/ppc64/kernel/prom.c                           |    4 
 b/arch/ppc64/kernel/smp.c                            |    1 
 b/arch/ppc64/kernel/stab.c                           |   27 
 b/arch/ppc64/oprofile/init.c                         |    5 
 b/arch/s390/kernel/s390_ksyms.c                      |    2 
 b/arch/s390x/kernel/s390_ksyms.c                     |    2 
 b/arch/sparc/Makefile                                |   15 
 b/arch/sparc/boot/Makefile                           |    4 
 b/arch/sparc/kernel/irq.c                            |    1 
 b/arch/sparc/kernel/module.c                         |   21 
 b/arch/sparc/kernel/setup.c                          |    1 
 b/arch/sparc/kernel/smp.c                            |    1 
 b/arch/sparc/kernel/sparc_ksyms.c                    |    1 
 b/arch/sparc/kernel/sun4d_smp.c                      |    1 
 b/arch/sparc/kernel/sun4m_smp.c                      |    1 
 b/arch/sparc/kernel/sys_sparc.c                      |    6 
 b/arch/sparc64/Kconfig                               |   14 
 b/arch/sparc64/Makefile                              |    7 
 b/arch/sparc64/boot/Makefile                         |    8 
 b/arch/sparc64/defconfig                             |    8 
 b/arch/sparc64/kernel/Makefile                       |    1 
 b/arch/sparc64/kernel/binfmt_elf32.c                 |    1 
 b/arch/sparc64/kernel/devices.c                      |    2 
 b/arch/sparc64/kernel/entry.S                        |  112 
 b/arch/sparc64/kernel/etrap.S                        |   86 
 b/arch/sparc64/kernel/head.S                         |    2 
 b/arch/sparc64/kernel/irq.c                          |    7 
 b/arch/sparc64/kernel/itlb_base.S                    |    2 
 b/arch/sparc64/kernel/module.c                       |   28 
 b/arch/sparc64/kernel/pci.c                          |   86 
 b/arch/sparc64/kernel/pci_iommu.c                    |   28 
 b/arch/sparc64/kernel/process.c                      |   21 
 b/arch/sparc64/kernel/rtrap.S                        |    8 
 b/arch/sparc64/kernel/setup.c                        |    1 
 b/arch/sparc64/kernel/signal32.c                     |    2 
 b/arch/sparc64/kernel/smp.c                          |    1 
 b/arch/sparc64/kernel/sparc64_ksyms.c                |   10 
 b/arch/sparc64/kernel/time.c                         |   74 
 b/arch/sparc64/kernel/trampoline.S                   |    2 
 b/arch/sparc64/kernel/traps.c                        |   12 
 b/arch/sparc64/kernel/us2e_cpufreq.c                 |  399 ++
 b/arch/sparc64/kernel/us3_cpufreq.c                  |  111 
 b/arch/sparc64/kernel/winfixup.S                     |   12 
 b/arch/sparc64/lib/Makefile                          |    2 
 b/arch/sparc64/lib/rwsem.c                           |  238 +
 b/arch/sparc64/mm/ultra.S                            |    2 
 b/arch/sparc64/oprofile/init.c                       |    5 
 b/arch/sparc64/solaris/entry64.S                     |   42 
 b/arch/um/drivers/stdio_console.c                    |    1 
 b/arch/um/kernel/smp.c                               |    1 
 b/arch/v850/kernel/v850_ksyms.c                      |    1 
 b/arch/x86_64/Kconfig                                |   33 
 b/arch/x86_64/Makefile                               |    4 
 b/arch/x86_64/boot/compressed/misc.c                 |   87 
 b/arch/x86_64/boot/setup.S                           |   76 
 b/arch/x86_64/ia32/fpu32.c                           |   66 
 b/arch/x86_64/ia32/ia32_binfmt.c                     |    2 
 b/arch/x86_64/ia32/ia32_ioctl.c                      |   51 
 b/arch/x86_64/ia32/ia32_signal.c                     |   25 
 b/arch/x86_64/ia32/ia32entry.S                       |    8 
 b/arch/x86_64/ia32/ipc32.c                           |   96 
 b/arch/x86_64/ia32/ptrace32.c                        |   92 
 b/arch/x86_64/ia32/sys_ia32.c                        |  139 
 b/arch/x86_64/ia32/syscall32.c                       |    6 
 b/arch/x86_64/kernel/Makefile                        |    3 
 b/arch/x86_64/kernel/acpi.c                          |    7 
 b/arch/x86_64/kernel/acpi/Makefile                   |    3 
 b/arch/x86_64/kernel/acpi/boot.c                     |  439 ++
 b/arch/x86_64/kernel/acpi/sleep.c                    |  121 
 b/arch/x86_64/kernel/acpi/wakeup.S                   |  538 +++
 b/arch/x86_64/kernel/aperture.c                      |    3 
 b/arch/x86_64/kernel/apic.c                          |   13 
 b/arch/x86_64/kernel/bluesmoke.c                     |  362 +-
 b/arch/x86_64/kernel/cpuid.c                         |    2 
 b/arch/x86_64/kernel/early_printk.c                  |    2 
 b/arch/x86_64/kernel/entry.S                         |   17 
 b/arch/x86_64/kernel/head.S                          |   13 
 b/arch/x86_64/kernel/head64.c                        |    3 
 b/arch/x86_64/kernel/i387.c                          |   19 
 b/arch/x86_64/kernel/irq.c                           |    4 
 b/arch/x86_64/kernel/ldt.c                           |    2 
 b/arch/x86_64/kernel/mpparse.c                       |    4 
 b/arch/x86_64/kernel/msr.c                           |    6 
 b/arch/x86_64/kernel/nmi.c                           |   20 
 b/arch/x86_64/kernel/pci-dma.c                       |    2 
 b/arch/x86_64/kernel/pci-gart.c                      |   98 
 b/arch/x86_64/kernel/process.c                       |   15 
 b/arch/x86_64/kernel/ptrace.c                        |   17 
 b/arch/x86_64/kernel/reboot.c                        |    1 
 b/arch/x86_64/kernel/setup.c                         |    7 
 b/arch/x86_64/kernel/setup64.c                       |    6 
 b/arch/x86_64/kernel/signal.c                        |    4 
 b/arch/x86_64/kernel/smp.c                           |   12 
 b/arch/x86_64/kernel/smpboot.c                       |    4 
 b/arch/x86_64/kernel/suspend.c                       |    8 
 b/arch/x86_64/kernel/traps.c                         |   55 
 b/arch/x86_64/kernel/wakeup.S                        |    2 
 b/arch/x86_64/lib/copy_user.S                        |    2 
 b/arch/x86_64/mm/fault.c                             |   50 
 b/arch/x86_64/mm/ioremap.c                           |    2 
 b/arch/x86_64/mm/k8topology.c                        |   40 
 b/arch/x86_64/mm/numa.c                              |   21 
 b/arch/x86_64/pci/common.c                           |    7 
 b/arch/x86_64/pci/irq.c                              |    9 
 b/crypto/Kconfig                                     |   10 
 b/crypto/Makefile                                    |    1 
 b/crypto/api.c                                       |    2 
 b/crypto/compress.c                                  |   31 
 b/crypto/crypto_null.c                               |   10 
 b/crypto/deflate.c                                   |  236 +
 b/crypto/digest.c                                    |    2 
 b/crypto/internal.h                                  |    7 
 b/crypto/proc.c                                      |    3 
 b/crypto/tcrypt.c                                    |   87 
 b/crypto/tcrypt.h                                    |  100 
 b/drivers/acorn/block/fd1772.c                       |    6 
 b/drivers/acorn/block/mfmhd.c                        |    6 
 b/drivers/acorn/char/i2c.c                           |    4 
 b/drivers/acpi/Kconfig                               |    2 
 b/drivers/acpi/acpi_ksyms.c                          |    2 
 b/drivers/acpi/battery.c                             |    2 
 b/drivers/acpi/ec.c                                  |   17 
 b/drivers/acpi/events/evevent.c                      |   10 
 b/drivers/acpi/events/evgpe.c                        |  160 -
 b/drivers/acpi/events/evgpeblk.c                     |  436 ++
 b/drivers/acpi/events/evmisc.c                       |   50 
 b/drivers/acpi/events/evsci.c                        |   58 
 b/drivers/acpi/events/evxface.c                      |   59 
 b/drivers/acpi/events/evxfevnt.c                     |  577 ++-
 b/drivers/acpi/fan.c                                 |    2 
 b/drivers/acpi/hardware/hwgpe.c                      |  268 +
 b/drivers/acpi/hardware/hwregs.c                     |   16 
 b/drivers/acpi/namespace/nsaccess.c                  |    5 
 b/drivers/acpi/namespace/nswalk.c                    |   13 
 b/drivers/acpi/osl.c                                 |  110 
 b/drivers/acpi/processor.c                           |    4 
 b/drivers/acpi/resources/rsxface.c                   |   55 
 b/drivers/acpi/tables/tbgetall.c                     |    2 
 b/drivers/acpi/thermal.c                             |    2 
 b/drivers/acpi/utilities/utdelete.c                  |    9 
 b/drivers/acpi/utilities/utglobal.c                  |    4 
 b/drivers/acpi/utilities/utinit.c                    |   26 
 b/drivers/acpi/utilities/utmisc.c                    |    4 
 b/drivers/atm/iphase.c                               |   10 
 b/drivers/base/base.h                                |    2 
 b/drivers/base/cpu.c                                 |   11 
 b/drivers/base/driver.c                              |    1 
 b/drivers/base/memblk.c                              |   13 
 b/drivers/base/node.c                                |   13 
 b/drivers/block/DAC960.c                             |    6 
 b/drivers/block/acsi.c                               |    6 
 b/drivers/block/amiflop.c                            |    2 
 b/drivers/block/ataflop.c                            |    8 
 b/drivers/block/cciss.c                              |    4 
 b/drivers/block/cpqarray.c                           |    4 
 b/drivers/block/ll_rw_blk.c                          |    4 
 b/drivers/block/nbd.c                                |    6 
 b/drivers/block/paride/pcd.c                         |    5 
 b/drivers/block/paride/pd.c                          |    4 
 b/drivers/block/ps2esdi.c                            |    7 
 b/drivers/block/scsi_ioctl.c                         |    7 
 b/drivers/block/swim3.c                              |    4 
 b/drivers/block/swim_iop.c                           |    2 
 b/drivers/block/xd.c                                 |    5 
 b/drivers/block/z2ram.c                              |    4 
 b/drivers/cdrom/aztcd.c                              |    2 
 b/drivers/cdrom/cdu31a.c                             |    4 
 b/drivers/cdrom/cm206.c                              |    4 
 b/drivers/cdrom/gscd.c                               |    4 
 b/drivers/cdrom/mcd.c                                |    2 
 b/drivers/cdrom/mcdx.c                               |    4 
 b/drivers/cdrom/optcd.c                              |   39 
 b/drivers/cdrom/sbpcd.c                              |   11 
 b/drivers/cdrom/sjcd.c                               |    2 
 b/drivers/cdrom/sonycd535.c                          |    4 
 b/drivers/char/drm/Kconfig                           |    9 
 b/drivers/char/drm/Makefile                          |    2 
 b/drivers/char/drm/drmP.h                            |   25 
 b/drivers/char/drm/drm_agpsupport.h                  |   12 
 b/drivers/char/drm/drm_bufs.h                        |   12 
 b/drivers/char/drm/drm_dma.h                         |   91 
 b/drivers/char/drm/drm_drv.h                         |   63 
 b/drivers/char/drm/drm_fops.h                        |    6 
 b/drivers/char/drm/drm_ioctl.h                       |   45 
 b/drivers/char/drm/drm_lists.h                       |    4 
 b/drivers/char/drm/drm_lock.h                        |   10 
 b/drivers/char/drm/drm_os_linux.h                    |   15 
 b/drivers/char/drm/drm_proc.h                        |    6 
 b/drivers/char/drm/gamma_dma.c                       |   35 
 b/drivers/char/drm/gamma_drv.h                       |   10 
 b/drivers/char/drm/i810.h                            |    2 
 b/drivers/char/drm/i810_dma.c                        |   66 
 b/drivers/char/drm/i810_drv.h                        |   30 
 b/drivers/char/drm/i830.h                            |   82 
 b/drivers/char/drm/i830_dma.c                        |  540 ++-
 b/drivers/char/drm/i830_drm.h                        |  100 
 b/drivers/char/drm/i830_drv.h                        |   84 
 b/drivers/char/drm/i830_irq.c                        |  177 +
 b/drivers/char/drm/mga_dma.c                         |   13 
 b/drivers/char/drm/mga_drv.h                         |   46 
 b/drivers/char/drm/mga_state.c                       |   12 
 b/drivers/char/drm/r128_cce.c                        |   23 
 b/drivers/char/drm/r128_drv.h                        |   43 
 b/drivers/char/drm/r128_state.c                      |  163 -
 b/drivers/char/drm/radeon.h                          |   35 
 b/drivers/char/drm/radeon_cp.c                       |   68 
 b/drivers/char/drm/radeon_drm.h                      |    4 
 b/drivers/char/drm/radeon_drv.h                      |   67 
 b/drivers/char/drm/radeon_irq.c                      |   15 
 b/drivers/char/drm/radeon_mem.c                      |   55 
 b/drivers/char/drm/radeon_state.c                    |   72 
 b/drivers/char/drm/sis.h                             |    2 
 b/drivers/char/drm/sis_mm.c                          |    8 
 b/drivers/char/hangcheck-timer.c                     |   12 
 b/drivers/char/hw_random.c                           |    3 
 b/drivers/char/ipmi/Kconfig                          |   10 
 b/drivers/char/ipmi/ipmi_devintf.c                   |    2 
 b/drivers/char/ipmi/ipmi_kcs_intf.c                  |   71 
 b/drivers/char/ipmi/ipmi_kcs_sm.c                    |    2 
 b/drivers/char/ipmi/ipmi_msghandler.c                |   25 
 b/drivers/char/pcmcia/synclink_cs.c                  |    3 
 b/drivers/char/pty.c                                 |    1 
 b/drivers/char/rio/rio_linux.c                       |   19 
 b/drivers/char/sonypi.c                              |    6 
 b/drivers/char/tty_io.c                              |   48 
 b/drivers/char/vt.c                                  |   13 
 b/drivers/char/watchdog/indydog.c                    |    2 
 b/drivers/i2c/Kconfig                                |   11 
 b/drivers/i2c/Makefile                               |    2 
 b/drivers/i2c/busses/Kconfig                         |   13 
 b/drivers/i2c/busses/i2c-ali15x3.c                   |    8 
 b/drivers/i2c/busses/i2c-amd756.c                    |    6 
 b/drivers/i2c/busses/i2c-amd8111.c                   |    4 
 b/drivers/i2c/busses/i2c-i801.c                      |    8 
 b/drivers/i2c/busses/i2c-isa.c                       |    4 
 b/drivers/i2c/busses/i2c-piix4.c                     |    8 
 b/drivers/i2c/chips/Kconfig                          |   38 
 b/drivers/i2c/chips/Makefile                         |    2 
 b/drivers/i2c/chips/adm1021.c                        |  379 +-
 b/drivers/i2c/chips/lm75.c                           |  193 -
 b/drivers/i2c/chips/via686a.c                        |  930 ++++++
 b/drivers/i2c/chips/w83781d.c                        | 1882 ++++++++++++
 b/drivers/i2c/i2c-algo-bit.c                         |   13 
 b/drivers/i2c/i2c-algo-pcf.c                         |   19 
 b/drivers/i2c/i2c-core.c                             |  288 -
 b/drivers/i2c/i2c-dev.c                              |   21 
 b/drivers/i2c/i2c-elektor.c                          |   10 
 b/drivers/i2c/i2c-elv.c                              |    6 
 b/drivers/i2c/i2c-philips-par.c                      |    4 
 b/drivers/i2c/i2c-sensor.c                           |  182 +
 b/drivers/i2c/i2c-velleman.c                         |    4 
 b/drivers/i2c/scx200_acb.c                           |   32 
 b/drivers/ide/ide-disk.c                             |    5 
 b/drivers/ide/ide-io.c                               |    3 
 b/drivers/ide/ide-iops.c                             |    8 
 b/drivers/ide/ide-taskfile.c                         |    2 
 b/drivers/ide/ide-timing.h                           |    8 
 b/drivers/ide/ide.c                                  |    2 
 b/drivers/ide/legacy/hd.c                            |   16 
 b/drivers/ide/legacy/hd98.c                          |   12 
 b/drivers/ieee1394/pcilynx.c                         |    4 
 b/drivers/isdn/hisax/elsa_cs.c                       |    7 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c                |    4 
 b/drivers/isdn/hisax/sedlbauer_cs.c                  |    7 
 b/drivers/isdn/i4l/isdn_tty.c                        |    2 
 b/drivers/macintosh/adb.c                            |   63 
 b/drivers/macintosh/apm_emu.c                        |   36 
 b/drivers/macintosh/macio-adb.c                      |    1 
 b/drivers/md/linear.c                                |   21 
 b/drivers/md/md.c                                    |  561 +--
 b/drivers/md/multipath.c                             |  126 
 b/drivers/md/raid0.c                                 |   57 
 b/drivers/md/raid1.c                                 |  122 
 b/drivers/md/raid5.c                                 |  132 
 b/drivers/media/radio/radio-cadet.c                  |  178 -
 b/drivers/media/video/adv7175.c                      |   22 
 b/drivers/media/video/bt819.c                        |   33 
 b/drivers/media/video/bt856.c                        |   27 
 b/drivers/media/video/bttv-if.c                      |   22 
 b/drivers/media/video/msp3400.c                      |   32 
 b/drivers/media/video/saa5249.c                      |   13 
 b/drivers/media/video/saa7110.c                      |   19 
 b/drivers/media/video/saa7111.c                      |   39 
 b/drivers/media/video/saa7134/saa7134-i2c.c          |   10 
 b/drivers/media/video/saa7185.c                      |   19 
 b/drivers/media/video/tda7432.c                      |   16 
 b/drivers/media/video/tda9875.c                      |   16 
 b/drivers/media/video/tda9887.c                      |   14 
 b/drivers/media/video/tuner-3036.c                   |    6 
 b/drivers/media/video/tuner.c                        |   29 
 b/drivers/media/video/tvaudio.c                      |   44 
 b/drivers/media/video/tvmixer.c                      |   20 
 b/drivers/message/i2o/i2o_block.c                    |    4 
 b/drivers/mtd/ftl.c                                  |    4 
 b/drivers/mtd/maps/epxa10db-flash.c                  |    7 
 b/drivers/mtd/mtdblock.c                             |    6 
 b/drivers/mtd/mtdblock_ro.c                          |    5 
 b/drivers/mtd/nftlcore.c                             |    5 
 b/drivers/net/3c509.c                                |    2 
 b/drivers/net/3c59x.c                                |    9 
 b/drivers/net/Kconfig                                |    2 
 b/drivers/net/bonding.c                              |  581 ++-
 b/drivers/net/gt96100eth.c                           |   17 
 b/drivers/net/hamradio/dmascc.c                      |    5 
 b/drivers/net/irda/irda-usb.c                        |  133 
 b/drivers/net/irda/sir_dev.c                         |   39 
 b/drivers/net/mace.c                                 |   36 
 b/drivers/net/pcnet32.c                              |   37 
 b/drivers/net/pppox.c                                |   10 
 b/drivers/net/r8169.c                                |    2 
 b/drivers/net/shaper.c                               |    2 
 b/drivers/net/tulip/de4x5.c                          |    1 
 b/drivers/net/tulip/dmfe.c                           |    6 
 b/drivers/net/wan/Kconfig                            |   41 
 b/drivers/net/wan/Makefile                           |    1 
 b/drivers/net/wan/c101.c                             |   76 
 b/drivers/net/wan/dscc4.c                            |    2 
 b/drivers/net/wan/farsync.c                          |    2 
 b/drivers/net/wan/hd6457x.c                          |  144 
 b/drivers/net/wan/hdlc_cisco.c                       |   44 
 b/drivers/net/wan/hdlc_fr.c                          |  603 ++--
 b/drivers/net/wan/hdlc_generic.c                     |   37 
 b/drivers/net/wan/hdlc_ppp.c                         |   16 
 b/drivers/net/wan/hdlc_raw.c                         |   19 
 b/drivers/net/wan/hdlc_raw_eth.c                     |  110 
 b/drivers/net/wan/hdlc_x25.c                         |    8 
 b/drivers/net/wan/n2.c                               |  159 -
 b/drivers/net/znet.c                                 |    2 
 b/drivers/oprofile/buffer_sync.c                     |   32 
 b/drivers/oprofile/event_buffer.h                    |    3 
 b/drivers/oprofile/oprof.c                           |    1 
 b/drivers/parisc/eisa_eeprom.c                       |   18 
 b/drivers/pci/Makefile                               |    3 
 b/drivers/pcmcia/Kconfig                             |   18 
 b/drivers/pcmcia/Makefile                            |   69 
 b/drivers/pcmcia/cardbus.c                           |  195 -
 b/drivers/pcmcia/cistpl.c                            |  281 -
 b/drivers/pcmcia/cs.c                                |  108 
 b/drivers/pcmcia/cs_internal.h                       |    8 
 b/drivers/pcmcia/ds.c                                |  477 +--
 b/drivers/pcmcia/hd64465_ss.c                        |   34 
 b/drivers/pcmcia/i82092.c                            |  105 
 b/drivers/pcmcia/i82092aa.h                          |    2 
 b/drivers/pcmcia/i82365.c                            |   79 
 b/drivers/pcmcia/pci_socket.c                        |   35 
 b/drivers/pcmcia/pci_socket.h                        |    2 
 b/drivers/pcmcia/ricoh.h                             |    2 
 b/drivers/pcmcia/rsrc_mgr.c                          |  273 +
 b/drivers/pcmcia/sa1100.h                            |   85 
 b/drivers/pcmcia/sa1100_adsbitsy.c                   |  127 
 b/drivers/pcmcia/sa1100_assabet.c                    |  144 
 b/drivers/pcmcia/sa1100_badge4.c                     |   69 
 b/drivers/pcmcia/sa1100_cerf.c                       |  157 -
 b/drivers/pcmcia/sa1100_flexanet.c                   |  227 -
 b/drivers/pcmcia/sa1100_freebird.c                   |  193 -
 b/drivers/pcmcia/sa1100_generic.c                    | 1176 -------
 b/drivers/pcmcia/sa1100_generic.h                    |   93 
 b/drivers/pcmcia/sa1100_graphicsclient.c             |  165 -
 b/drivers/pcmcia/sa1100_graphicsmaster.c             |  111 
 b/drivers/pcmcia/sa1100_h3600.c                      |  104 
 b/drivers/pcmcia/sa1100_jornada720.c                 |   32 
 b/drivers/pcmcia/sa1100_neponset.c                   |  122 
 b/drivers/pcmcia/sa1100_pangolin.c                   |  176 -
 b/drivers/pcmcia/sa1100_pfs168.c                     |   52 
 b/drivers/pcmcia/sa1100_shannon.c                    |   89 
 b/drivers/pcmcia/sa1100_simpad.c                     |  177 -
 b/drivers/pcmcia/sa1100_stork.c                      |  108 
 b/drivers/pcmcia/sa1100_system3.c                    |   39 
 b/drivers/pcmcia/sa1100_trizeps.c                    |  103 
 b/drivers/pcmcia/sa1100_xp860.c                      |   47 
 b/drivers/pcmcia/sa1100_yopy.c                       |  106 
 b/drivers/pcmcia/sa1111_generic.c                    |  179 -
 b/drivers/pcmcia/sa1111_generic.h                    |   16 
 b/drivers/pcmcia/sa11xx_core.c                       | 1054 +++++++
 b/drivers/pcmcia/sa11xx_core.h                       |  122 
 b/drivers/pcmcia/tcic.c                              |   92 
 b/drivers/pcmcia/ti113x.h                            |    6 
 b/drivers/pcmcia/yenta.c                             |   63 
 b/drivers/pnp/Kconfig                                |    5 
 b/drivers/pnp/card.c                                 |   72 
 b/drivers/pnp/core.c                                 |    2 
 b/drivers/pnp/manager.c                              |    6 
 b/drivers/pnp/pnpbios/core.c                         |  137 
 b/drivers/pnp/pnpbios/proc.c                         |   65 
 b/drivers/s390/block/dasd.c                          |    2 
 b/drivers/s390/char/con3215.c                        |    1 
 b/drivers/s390/char/sclp_tty.c                       |    1 
 b/drivers/s390/char/tape_block.c                     |    8 
 b/drivers/s390/char/tuball.c                         |   12 
 b/drivers/s390/char/tubfs.c                          |    3 
 b/drivers/s390/char/tubio.h                          |    2 
 b/drivers/s390/char/tubtty.c                         |    4 
 b/drivers/s390/cio/qdio.c                            |    2 
 b/drivers/s390/net/ctcmain.c                         |    1 
 b/drivers/s390/net/netiucv.c                         |    1 
 b/drivers/sbus/char/aurora.c                         |   15 
 b/drivers/sbus/char/jsflash.c                        |    5 
 b/drivers/scsi/3w-xxxx.c                             |    4 
 b/drivers/scsi/Kconfig                               |    5 
 b/drivers/scsi/Makefile                              |    1 
 b/drivers/scsi/aha152x.c                             |  412 +-
 b/drivers/scsi/aha152x.h                             |   62 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.c                 |    2 
 b/drivers/scsi/pc980155.c                            |  299 ++
 b/drivers/scsi/pc980155.h                            |   52 
 b/drivers/scsi/pcmcia/aha152x_stub.c                 |  140 
 b/drivers/scsi/pcmcia/fdomain_stub.c                 |   35 
 b/drivers/scsi/pcmcia/nsp_cs.c                       |    3 
 b/drivers/scsi/pcmcia/qlogic_stub.c                  |   25 
 b/drivers/scsi/qlogicfc.c                            |   72 
 b/drivers/scsi/scsi.h                                |    1 
 b/drivers/scsi/scsi_debug.c                          |  147 
 b/drivers/scsi/scsi_ioctl.c                          |    1 
 b/drivers/scsi/scsi_lib.c                            |   33 
 b/drivers/scsi/scsi_pc98.c                           |    2 
 b/drivers/scsi/scsi_scan.c                           |    7 
 b/drivers/scsi/scsi_sysfs.c                          |    8 
 b/drivers/scsi/sym53c8xx.c                           |   30 
 b/drivers/scsi/wd33c93.c                             |   48 
 b/drivers/scsi/wd33c93.h                             |    7 
 b/drivers/serial/21285.c                             |    3 
 b/drivers/serial/8250_cs.c                           |   25 
 b/drivers/serial/Kconfig                             |   17 
 b/drivers/serial/Makefile                            |    1 
 b/drivers/usb/Makefile                               |    1 
 b/drivers/usb/class/audio.c                          |    1 
 b/drivers/usb/class/cdc-acm.c                        |    2 
 b/drivers/usb/core/buffer.c                          |    1 
 b/drivers/usb/core/hcd.c                             |    9 
 b/drivers/usb/core/hub.c                             |   56 
 b/drivers/usb/core/message.c                         |    1 
 b/drivers/usb/core/usb-debug.c                       |    1 
 b/drivers/usb/core/usb.c                             |   13 
 b/drivers/usb/host/ohci-hcd.c                        |    1 
 b/drivers/usb/host/ohci-pci.c                        |    2 
 b/drivers/usb/image/mdc800.c                         |    1 
 b/drivers/usb/media/ov511.c                          |    1 
 b/drivers/usb/media/stv680.c                         |    1 
 b/drivers/usb/misc/emi26.c                           |   37 
 b/drivers/usb/misc/speedtch.c                        |  394 --
 b/drivers/usb/misc/usbtest.c                         |    7 
 b/drivers/usb/net/cdc-ether.c                        |   19 
 b/drivers/usb/serial/generic.c                       |    1 
 b/drivers/usb/serial/kobil_sct.c                     |   17 
 b/drivers/usb/storage/isd200.c                       |    5 
 b/drivers/usb/storage/scsiglue.c                     |   54 
 b/drivers/usb/storage/transport.c                    |    3 
 b/drivers/usb/storage/usb.c                          |    6 
 b/drivers/usb/usb-skeleton.c                         |    6 
 b/drivers/video/Makefile                             |    2 
 b/drivers/video/cyber2000fb.c                        |  548 +--
 b/drivers/video/fbmem.c                              |    5 
 b/drivers/video/logo/Kconfig                         |    2 
 b/drivers/video/logo/Makefile                        |    3 
 b/drivers/video/logo/logo.c                          |    4 
 b/drivers/video/matrox/i2c-matroxfb.c                |   11 
 b/drivers/video/sgivwfb.c                            |    1 
 b/drivers/video/vfb.c                                |    3 
 b/fs/afs/dir.c                                       |    6 
 b/fs/aio.c                                           |    6 
 b/fs/befs/btree.c                                    |   14 
 b/fs/befs/linuxvfs.c                                 |   14 
 b/fs/block_dev.c                                     |   15 
 b/fs/buffer.c                                        |    5 
 b/fs/char_dev.c                                      |   57 
 b/fs/cramfs/inode.c                                  |    4 
 b/fs/dcache.c                                        |   39 
 b/fs/dnotify.c                                       |   23 
 b/fs/exec.c                                          |    1 
 b/fs/exportfs/expfs.c                                |   22 
 b/fs/ext2/inode.c                                    |   11 
 b/fs/ext3/fsync.c                                    |   30 
 b/fs/ext3/inode.c                                    |   69 
 b/fs/ext3/super.c                                    |    4 
 b/fs/fat/inode.c                                     |    4 
 b/fs/fcntl.c                                         |    4 
 b/fs/inode.c                                         |    2 
 b/fs/jbd/checkpoint.c                                |    6 
 b/fs/jbd/commit.c                                    |   26 
 b/fs/jbd/journal.c                                   |   37 
 b/fs/jbd/transaction.c                               |   17 
 b/fs/jfs/jfs_dtree.c                                 |    4 
 b/fs/jfs/jfs_extent.c                                |    5 
 b/fs/jfs/jfs_imap.c                                  |    7 
 b/fs/jfs/jfs_txnmgr.c                                |   12 
 b/fs/jfs/jfs_xtree.c                                 |    3 
 b/fs/libfs.c                                         |   11 
 b/fs/namei.c                                         |   17 
 b/fs/ncpfs/dir.c                                     |    4 
 b/fs/ncpfs/inode.c                                   |    2 
 b/fs/nfs/dir.c                                       |    4 
 b/fs/nfs/nfs4proc.c                                  |    1 
 b/fs/nfs/read.c                                      |   15 
 b/fs/nfsd/export.c                                   |   93 
 b/fs/nfsd/nfs3xdr.c                                  |    4 
 b/fs/nfsd/nfs4xdr.c                                  |   20 
 b/fs/nfsd/nfsfh.c                                    |    4 
 b/fs/nfsd/vfs.c                                      |    8 
 b/fs/ntfs/namei.c                                    |    3 
 b/fs/partitions/check.c                              |    1 
 b/fs/proc/base.c                                     |   17 
 b/fs/quota.c                                         |    7 
 b/fs/quota_v1.c                                      |    4 
 b/fs/quota_v2.c                                      |    4 
 b/fs/reiserfs/inode.c                                |    4 
 b/fs/smbfs/dir.c                                     |   15 
 b/fs/smbfs/proc.c                                    |   21 
 b/fs/sysfs/bin.c                                     |    2 
 b/fs/sysfs/file.c                                    |    1 
 b/fs/sysfs/inode.c                                   |    2 
 b/fs/xfs/Makefile                                    |   30 
 b/fs/xfs/linux/xfs_aops.c                            |    2 
 b/fs/xfs/linux/xfs_behavior.c                        |  125 
 b/fs/xfs/linux/xfs_behavior.h                        |   20 
 b/fs/xfs/linux/xfs_file.c                            |   10 
 b/fs/xfs/linux/xfs_globals.c                         |   16 
 b/fs/xfs/linux/xfs_globals.h                         |    9 
 b/fs/xfs/linux/xfs_ioctl.c                           |    4 
 b/fs/xfs/linux/xfs_iomap.c                           |   34 
 b/fs/xfs/linux/xfs_linux.h                           |   12 
 b/fs/xfs/linux/xfs_lrw.c                             |   51 
 b/fs/xfs/linux/xfs_stats.c                           |   36 
 b/fs/xfs/linux/xfs_stats.h                           |   11 
 b/fs/xfs/linux/xfs_super.c                           |  555 +--
 b/fs/xfs/linux/xfs_super.h                           |   46 
 b/fs/xfs/linux/xfs_vfs.c                             |  285 +
 b/fs/xfs/linux/xfs_vfs.h                             |  278 -
 b/fs/xfs/linux/xfs_vnode.c                           |   81 
 b/fs/xfs/linux/xfs_vnode.h                           |  172 -
 b/fs/xfs/pagebuf/page_buf.c                          |   12 
 b/fs/xfs/pagebuf/page_buf.h                          |    1 
 b/fs/xfs/quota/xfs_dquot.c                           | 1552 ++++++++++
 b/fs/xfs/quota/xfs_dquot.h                           |  220 +
 b/fs/xfs/quota/xfs_dquot_item.c                      |  680 ++++
 b/fs/xfs/quota/xfs_dquot_item.h                      |   66 
 b/fs/xfs/quota/xfs_qm.c                              | 2794 ++++++++++++++++++
 b/fs/xfs/quota/xfs_qm.h                              |  229 +
 b/fs/xfs/quota/xfs_qm_bhv.c                          |  379 ++
 b/fs/xfs/quota/xfs_qm_stats.c                        |  117 
 b/fs/xfs/quota/xfs_qm_stats.h                        |   68 
 b/fs/xfs/quota/xfs_qm_syscalls.c                     | 1410 +++++++++
 b/fs/xfs/quota/xfs_quota_priv.h                      |  192 +
 b/fs/xfs/quota/xfs_trans_dquot.c                     |  894 ++++++
 b/fs/xfs/support/atomic.h                            |   10 
 b/fs/xfs/support/debug.c                             |    6 
 b/fs/xfs/support/mrlock.c                            |   14 
 b/fs/xfs/support/mrlock.h                            |    8 
 b/fs/xfs/support/mutex.h                             |    3 
 b/fs/xfs/support/time.h                              |    6 
 b/fs/xfs/xfs.h                                       |   12 
 b/fs/xfs/xfs_attr.c                                  |   35 
 b/fs/xfs/xfs_bmap.c                                  |  149 -
 b/fs/xfs/xfs_bmap.h                                  |    6 
 b/fs/xfs/xfs_bmap_btree.c                            |   30 
 b/fs/xfs/xfs_buf.h                                   |    5 
 b/fs/xfs/xfs_clnt.h                                  |   29 
 b/fs/xfs/xfs_dmapi.h                                 |  217 -
 b/fs/xfs/xfs_dmops.c                                 |   42 
 b/fs/xfs/xfs_iget.c                                  |   11 
 b/fs/xfs/xfs_inode.c                                 |   36 
 b/fs/xfs/xfs_inode.h                                 |    8 
 b/fs/xfs/xfs_iocore.c                                |   24 
 b/fs/xfs/xfs_log_recover.c                           |  137 
 b/fs/xfs/xfs_macros.c                                |   10 
 b/fs/xfs/xfs_mount.c                                 |  233 -
 b/fs/xfs/xfs_mount.h                                 |  229 +
 b/fs/xfs/xfs_qmops.c                                 |   60 
 b/fs/xfs/xfs_quota.h                                 |  364 +-
 b/fs/xfs/xfs_rename.c                                |   16 
 b/fs/xfs/xfs_rtalloc.h                               |    4 
 b/fs/xfs/xfs_trans.c                                 |   25 
 b/fs/xfs/xfs_trans.h                                 |    4 
 b/fs/xfs/xfs_utils.c                                 |    4 
 b/fs/xfs/xfs_vfsops.c                                |  124 
 b/fs/xfs/xfs_vnodeops.c                              |  449 +--
 b/fs/xfs/xfsidbg.c                                   |   31 
 b/include/acpi/acconfig.h                            |    2 
 b/include/acpi/acevents.h                            |   31 
 b/include/acpi/acglobal.h                            |    4 
 b/include/acpi/achware.h                             |   12 
 b/include/acpi/aclocal.h                             |   49 
 b/include/acpi/acobject.h                            |    1 
 b/include/acpi/acpiosxf.h                            |   31 
 b/include/acpi/acpixf.h                              |   51 
 b/include/acpi/actypes.h                             |   26 
 b/include/asm-alpha/fcntl.h                          |    3 
 b/include/asm-alpha/ioctls.h                         |    1 
 b/include/asm-alpha/pgtable.h                        |   17 
 b/include/asm-arm/div64.h                            |   10 
 b/include/asm-arm/hardirq.h                          |    1 
 b/include/asm-arm/ioctls.h                           |    1 
 b/include/asm-arm/proc-armv/pgtable.h                |    7 
 b/include/asm-arm/stat.h                             |   26 
 b/include/asm-arm/system.h                           |   11 
 b/include/asm-cris/ioctls.h                          |    1 
 b/include/asm-cris/stat.h                            |   16 
 b/include/asm-i386/apic.h                            |    7 
 b/include/asm-i386/dma.h                             |    2 
 b/include/asm-i386/floppy.h                          |    2 
 b/include/asm-i386/hardirq.h                         |    1 
 b/include/asm-i386/ide.h                             |   19 
 b/include/asm-i386/ioctls.h                          |    4 
 b/include/asm-i386/nmi.h                             |   21 
 b/include/asm-i386/page.h                            |   12 
 b/include/asm-i386/pgtable.h                         |    6 
 b/include/asm-i386/stat.h                            |   16 
 b/include/asm-i386/string.h                          |    6 
 b/include/asm-i386/timer.h                           |    7 
 b/include/asm-i386/uaccess.h                         |    6 
 b/include/asm-ia64/ioctls.h                          |    1 
 b/include/asm-m68k/ioctls.h                          |    1 
 b/include/asm-m68k/stat.h                            |    8 
 b/include/asm-mips/ioctls.h                          |   14 
 b/include/asm-mips64/ioctls.h                        |   14 
 b/include/asm-parisc/compat.h                        |    5 
 b/include/asm-parisc/ioctls.h                        |    1 
 b/include/asm-ppc/ioctls.h                           |    1 
 b/include/asm-ppc/keylargo.h                         |  117 
 b/include/asm-ppc/macio_asic.h                       |   80 
 b/include/asm-ppc/pgtable.h                          |   23 
 b/include/asm-ppc/pmac_feature.h                     |   77 
 b/include/asm-ppc/termios.h                          |    1 
 b/include/asm-ppc/uninorth.h                         |    2 
 b/include/asm-ppc64/compat.h                         |    5 
 b/include/asm-ppc64/ioctls.h                         |    1 
 b/include/asm-ppc64/machdep.h                        |   16 
 b/include/asm-ppc64/pci-bridge.h                     |    2 
 b/include/asm-ppc64/pci.h                            |   27 
 b/include/asm-ppc64/termios.h                        |    1 
 b/include/asm-s390/bitops.h                          |   12 
 b/include/asm-s390/ioctls.h                          |    1 
 b/include/asm-s390/stat.h                            |   12 
 b/include/asm-s390x/compat.h                         |    5 
 b/include/asm-s390x/ioctls.h                         |    1 
 b/include/asm-sh/ioctls.h                            |    1 
 b/include/asm-sh/stat.h                              |   18 
 b/include/asm-sparc/ioctls.h                         |    1 
 b/include/asm-sparc/stat.h                           |    8 
 b/include/asm-sparc64/compat.h                       |    5 
 b/include/asm-sparc64/head.h                         |    2 
 b/include/asm-sparc64/ioctls.h                       |    1 
 b/include/asm-sparc64/pci.h                          |   11 
 b/include/asm-sparc64/processor.h                    |    4 
 b/include/asm-sparc64/ptrace.h                       |    4 
 b/include/asm-sparc64/rwsem.h                        |  228 -
 b/include/asm-sparc64/stat.h                         |    6 
 b/include/asm-sparc64/timer.h                        |    6 
 b/include/asm-sparc64/timex.h                        |    8 
 b/include/asm-sparc64/ttable.h                       |   22 
 b/include/asm-v850/ioctls.h                          |    1 
 b/include/asm-v850/stat.h                            |   34 
 b/include/asm-x86_64/apic.h                          |    2 
 b/include/asm-x86_64/compat.h                        |    5 
 b/include/asm-x86_64/debugreg.h                      |    2 
 b/include/asm-x86_64/desc.h                          |    1 
 b/include/asm-x86_64/hdreg.h                         |    2 
 b/include/asm-x86_64/i387.h                          |   38 
 b/include/asm-x86_64/ioctls.h                        |    1 
 b/include/asm-x86_64/kdebug.h                        |   16 
 b/include/asm-x86_64/numa.h                          |    6 
 b/include/asm-x86_64/pci.h                           |   25 
 b/include/asm-x86_64/pgtable.h                       |    3 
 b/include/asm-x86_64/processor.h                     |    6 
 b/include/asm-x86_64/proto.h                         |    3 
 b/include/asm-x86_64/suspend.h                       |    2 
 b/include/asm-x86_64/system.h                        |   29 
 b/include/asm-x86_64/thread_info.h                   |   18 
 b/include/asm-x86_64/unistd.h                        |    4 
 b/include/linux/aio.h                                |    5 
 b/include/linux/atm.h                                |   11 
 b/include/linux/bio.h                                |   11 
 b/include/linux/bitops.h                             |   10 
 b/include/linux/blkdev.h                             |    1 
 b/include/linux/buffer_head.h                        |   29 
 b/include/linux/crypto.h                             |   31 
 b/include/linux/dcache.h                             |   39 
 b/include/linux/device.h                             |    2 
 b/include/linux/dnotify.h                            |   19 
 b/include/linux/elf.h                                |    5 
 b/include/linux/fs.h                                 |    9 
 b/include/linux/ftape.h                              |    3 
 b/include/linux/hdlc.h                               |   66 
 b/include/linux/hdlc/ioctl.h                         |   17 
 b/include/linux/highmem.h                            |    6 
 b/include/linux/i2c-sensor.h                         |  373 ++
 b/include/linux/i2c-vid.h                            |   62 
 b/include/linux/i2c.h                                |   31 
 b/include/linux/idr.h                                |   38 
 b/include/linux/if.h                                 |   10 
 b/include/linux/if_bonding.h                         |    9 
 b/include/linux/if_pppox.h                           |    2 
 b/include/linux/inet.h                               |    7 
 b/include/linux/interrupt.h                          |    9 
 b/include/linux/ip.h                                 |    4 
 b/include/linux/ipv6.h                               |    4 
 b/include/linux/irq_cpustat.h                        |    1 
 b/include/linux/jbd.h                                |   43 
 b/include/linux/kdev_t.h                             |    2 
 b/include/linux/kmalloc_sizes.h                      |   33 
 b/include/linux/module.h                             |   78 
 b/include/linux/mtd/compatmac.h                      |    1 
 b/include/linux/net.h                                |  138 
 b/include/linux/netdevice.h                          |    6 
 b/include/linux/netfilter_ipv4/ip_conntrack.h        |    2 
 b/include/linux/netfilter_ipv4/ip_conntrack_amanda.h |   29 
 b/include/linux/netfilter_ipv4/ip_conntrack_tftp.h   |   13 
 b/include/linux/oprofile.h                           |    5 
 b/include/linux/pci_ids.h                            |    4 
 b/include/linux/pfkeyv2.h                            |   30 
 b/include/linux/pnp.h                                |    7 
 b/include/linux/pnpbios.h                            |   11 
 b/include/linux/raid/md.h                            |    2 
 b/include/linux/raid/md_k.h                          |    2 
 b/include/linux/sched.h                              |    6 
 b/include/linux/skbuff.h                             |   15 
 b/include/linux/swap.h                               |   18 
 b/include/linux/udp.h                                |    5 
 b/include/linux/umsdos_fs.h                          |   37 
 b/include/linux/xfrm.h                               |   12 
 b/include/net/af_unix.h                              |    1 
 b/include/net/ah.h                                   |    5 
 b/include/net/compat.h                               |   16 
 b/include/net/dst.h                                  |    5 
 b/include/net/esp.h                                  |    2 
 b/include/net/icmp.h                                 |    6 
 b/include/net/irda/af_irda.h                         |    6 
 b/include/net/irda/discovery.h                       |   39 
 b/include/net/irda/irlan_client.h                    |    2 
 b/include/net/irda/irlmp.h                           |   22 
 b/include/net/protocol.h                             |    1 
 b/include/net/sctp/constants.h                       |    8 
 b/include/net/sctp/sctp.h                            |  106 
 b/include/net/sctp/sm.h                              |   13 
 b/include/net/sctp/structs.h                         |  137 
 b/include/net/sctp/ulpevent.h                        |    6 
 b/include/net/sock.h                                 |   15 
 b/include/net/xfrm.h                                 |   32 
 b/include/pcmcia/bus_ops.h                           |  154 -
 b/include/pcmcia/cs.h                                |    1 
 b/include/pcmcia/driver_ops.h                        |   75 
 b/include/pcmcia/ds.h                                |   10 
 b/include/pcmcia/ss.h                                |    8 
 b/init/main.c                                        |   35 
 b/kernel/exit.c                                      |    2 
 b/kernel/extable.c                                   |    3 
 b/kernel/itimer.c                                    |    2 
 b/kernel/ksyms.c                                     |    2 
 b/kernel/module.c                                    |  250 -
 b/kernel/posix-timers.c                              |    7 
 b/kernel/sched.c                                     |   15 
 b/kernel/signal.c                                    |  165 -
 b/kernel/softirq.c                                   |   26 
 b/lib/Kconfig                                        |    9 
 b/lib/idr.c                                          |    4 
 b/mm/fadvise.c                                       |    2 
 b/mm/filemap.c                                       |   28 
 b/mm/fremap.c                                        |   11 
 b/mm/highmem.c                                       |    2 
 b/mm/mmap.c                                          |   12 
 b/mm/page_alloc.c                                    |    4 
 b/mm/rmap.c                                          |    4 
 b/mm/shmem.c                                         |  186 -
 b/mm/slab.c                                          |  109 
 b/mm/swap_state.c                                    |    4 
 b/mm/vmscan.c                                        |    3 
 b/net/Kconfig                                        |   20 
 b/net/Makefile                                       |    2 
 b/net/atm/common.c                                   |    3 
 b/net/atm/pvc.c                                      |    7 
 b/net/atm/svc.c                                      |    7 
 b/net/bluetooth/af_bluetooth.c                       |    6 
 b/net/bluetooth/hci_sock.c                           |    2 
 b/net/bluetooth/l2cap.c                              |    2 
 b/net/bluetooth/sco.c                                |    2 
 b/net/compat.c                                       |  119 
 b/net/core/Makefile                                  |    4 
 b/net/core/dev.c                                     |   12 
 b/net/core/filter.c                                  |    4 
 b/net/core/skbuff.c                                  |   84 
 b/net/core/sock.c                                    |   11 
 b/net/ipv4/Kconfig                                   |    8 
 b/net/ipv4/Makefile                                  |    3 
 b/net/ipv4/af_inet.c                                 |    2 
 b/net/ipv4/ah.c                                      |   20 
 b/net/ipv4/devinet.c                                 |  342 +-
 b/net/ipv4/esp.c                                     |  196 +
 b/net/ipv4/fib_hash.c                                |   10 
 b/net/ipv4/ip_output.c                               |    9 
 b/net/ipv4/netfilter/Kconfig                         |   42 
 b/net/ipv4/netfilter/Makefile                        |    8 
 b/net/ipv4/netfilter/ip_conntrack_amanda.c           |  233 +
 b/net/ipv4/netfilter/ip_conntrack_core.c             |    7 
 b/net/ipv4/netfilter/ip_conntrack_standalone.c       |    4 
 b/net/ipv4/netfilter/ip_conntrack_tftp.c             |  131 
 b/net/ipv4/netfilter/ip_nat_amanda.c                 |  226 +
 b/net/ipv4/netfilter/ip_nat_core.c                   |    1 
 b/net/ipv4/netfilter/ip_nat_helper.c                 |    4 
 b/net/ipv4/netfilter/ip_nat_snmp_basic.c             |    4 
 b/net/ipv4/netfilter/ip_nat_standalone.c             |   16 
 b/net/ipv4/netfilter/ip_nat_tftp.c                   |  197 +
 b/net/ipv4/netfilter/ip_queue.c                      |    4 
 b/net/ipv4/netfilter/ipfwadm_core.c                  |    2 
 b/net/ipv4/netfilter/ipt_REJECT.c                    |   45 
 b/net/ipv4/netfilter/iptable_mangle.c                |    2 
 b/net/ipv4/sysctl_net_ipv4.c                         |   35 
 b/net/ipv4/tcp.c                                     |    3 
 b/net/ipv4/tcp_input.c                               |    2 
 b/net/ipv4/tcp_minisocks.c                           |    6 
 b/net/ipv4/udp.c                                     |  137 
 b/net/ipv4/xfrm4_input.c                             |   22 
 b/net/ipv6/addrconf.c                                |   55 
 b/net/ipv6/af_inet6.c                                |   42 
 b/net/ipv6/ah6.c                                     |   19 
 b/net/ipv6/esp6.c                                    |   43 
 b/net/ipv6/ip6_input.c                               |   18 
 b/net/ipv6/ip6_output.c                              |    7 
 b/net/ipv6/ipv6_sockglue.c                           |   16 
 b/net/ipv6/ipv6_syms.c                               |    2 
 b/net/ipv6/netfilter/ip6_queue.c                     |    4 
 b/net/ipv6/proc.c                                    |   79 
 b/net/ipv6/raw.c                                     |    3 
 b/net/ipv6/tcp_ipv6.c                                |    5 
 b/net/ipv6/udp.c                                     |   10 
 b/net/ipv6/xfrm6_input.c                             |   20 
 b/net/ipx/af_ipx.c                                   |   84 
 b/net/irda/af_irda.c                                 |   70 
 b/net/irda/discovery.c                               |  182 -
 b/net/irda/ircomm/ircomm_tty_attach.c                |    4 
 b/net/irda/irlan/irlan_client.c                      |    2 
 b/net/irda/irlap_event.c                             |  103 
 b/net/irda/irlap_frame.c                             |   53 
 b/net/irda/irlmp.c                                   |  214 -
 b/net/irda/irnet/irnet.h                             |    5 
 b/net/irda/irnet/irnet_irda.c                        |   46 
 b/net/irda/irnet/irnet_irda.h                        |    7 
 b/net/irda/irnet/irnet_ppp.c                         |   22 
 b/net/irda/irnet/irnet_ppp.h                         |    1 
 b/net/irda/timer.c                                   |   16 
 b/net/key/af_key.c                                   |  223 +
 b/net/netlink/af_netlink.c                           |    4 
 b/net/netsyms.c                                      |   10 
 b/net/packet/af_packet.c                             |   10 
 b/net/rose/af_rose.c                                 |    2 
 b/net/sched/Kconfig                                  |    6 
 b/net/sched/sch_csz.c                                |    2 
 b/net/sctp/associola.c                               |   72 
 b/net/sctp/bind_addr.c                               |   30 
 b/net/sctp/endpointola.c                             |    7 
 b/net/sctp/input.c                                   |  188 -
 b/net/sctp/ipv6.c                                    |  192 +
 b/net/sctp/output.c                                  |   48 
 b/net/sctp/outqueue.c                                |   36 
 b/net/sctp/protocol.c                                |   34 
 b/net/sctp/sm_make_chunk.c                           |   96 
 b/net/sctp/sm_sideeffect.c                           | 1174 +++----
 b/net/sctp/sm_statefuns.c                            |   86 
 b/net/sctp/socket.c                                  |   12 
 b/net/sctp/ulpevent.c                                |    1 
 b/net/socket.c                                       |   17 
 b/net/sunrpc/auth_gss/auth_gss.c                     |    4 
 b/net/sunrpc/clnt.c                                  |    3 
 b/net/sunrpc/rpc_pipe.c                              |   12 
 b/net/sunrpc/sched.c                                 |    5 
 b/net/sunrpc/xprt.c                                  |   10 
 b/net/unix/af_unix.c                                 |    5 
 b/net/wanrouter/af_wanpipe.c                         |   12 
 b/net/xfrm/Kconfig                                   |   12 
 b/net/xfrm/Makefile                                  |    7 
 b/net/xfrm/xfrm_algo.c                               |  695 ++++
 b/net/xfrm/xfrm_input.c                              |   52 
 b/net/xfrm/xfrm_policy.c                             | 1241 ++++++++
 b/net/xfrm/xfrm_state.c                              |  777 +++++
 b/net/xfrm/xfrm_user.c                               | 1122 +++++++
 b/scripts/Makefile.modpost                           |    5 
 b/scripts/file2alias.c                               |   25 
 b/scripts/kconfig/gconf.c                            |  226 -
 b/scripts/modpost.c                                  |    6 
 b/scripts/modpost.h                                  |    2 
 b/sound/isa/als100.c                                 |   11 
 b/sound/isa/azt2320.c                                |  230 -
 b/sound/isa/dt019x.c                                 |  251 -
 b/sound/isa/sb/es968.c                               |   10 
 b/sound/isa/sb/sb16.c                                |  380 +-
 b/sound/oss/sb_card.c                                |    2 
 b/sound/oss/sb_card.h                                |    2 
 b/sound/pci/cs46xx/cs46xx_lib.c                      |    2 
 drivers/i2c/i2c-proc.c                               |  819 -----
 fs/ChangeLog                                         |  159 -
 fs/xfs/xfs_dqblk.h                                   |   99 
 fs/xfs/xfs_dquot.c                                   | 1660 -----------
 fs/xfs/xfs_dquot.h                                   |  212 -
 fs/xfs/xfs_dquot_item.c                              |  680 ----
 fs/xfs/xfs_dquot_item.h                              |  104 
 fs/xfs/xfs_qm.c                                      | 2810 -------------------
 fs/xfs/xfs_qm.h                                      |  219 -
 fs/xfs/xfs_qm_syscalls.c                             | 1374 ---------
 fs/xfs/xfs_quota_priv.h                              |  192 -
 fs/xfs/xfs_trans_dquot.c                             |  852 -----
 include/asm-alpha/softirq.h                          |   21 
 include/asm-arm/softirq.h                            |   20 
 include/asm-cris/softirq.h                           |   30 
 include/asm-i386/softirq.h                           |   20 
 include/asm-ia64/softirq.h                           |   26 
 include/asm-m68k/softirq.h                           |   24 
 include/asm-m68knommu/softirq.h                      |   20 
 include/asm-mips/softirq.h                           |   45 
 include/asm-mips64/softirq.h                         |   57 
 include/asm-parisc/softirq.h                         |   20 
 include/asm-ppc/softirq.h                            |   31 
 include/asm-ppc64/softirq.h                          |   27 
 include/asm-s390/softirq.h                           |   42 
 include/asm-s390x/softirq.h                          |   42 
 include/asm-sh/softirq.h                             |   30 
 include/asm-sparc/softirq.h                          |   31 
 include/asm-sparc64/softirq.h                        |   25 
 include/asm-um/softirq.h                             |   13 
 include/asm-v850/softirq.h                           |   20 
 include/asm-x86_64/softirq.h                         |   22 
 include/linux/i2c-proc.h                             |  414 --
 net/ipv4/xfrm_algo.c                                 |  771 -----
 net/ipv4/xfrm_input.c                                |   52 
 net/ipv4/xfrm_policy.c                               | 1232 --------
 net/ipv4/xfrm_state.c                                |  728 ----
 net/ipv4/xfrm_user.c                                 | 1095 -------
 1029 files changed, 41490 insertions(+), 32928 deletions(-)

