From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.58 released
Date: Mon, 13 Jan 2003 22:15:04 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200301140615.h0E6F4q20289@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.58 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.58.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.58.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               228025            992505
Full source                       39399632         176701440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/m68knommu/platform/5206/ARNEWSH/ram.ld           |   77 
 arch/m68knommu/platform/5206e/MOTOROLA/ram.ld         |   77 
 arch/m68knommu/platform/5206e/eLITE/ram.ld            |   77 
 arch/m68knommu/platform/5249/MOTOROLA/ram.ld          |   81 
 arch/m68knommu/platform/5272/MOTOROLA/ram.ld          |   81 
 arch/m68knommu/platform/5272/NETtel/ram.ld            |   81 
 arch/m68knommu/platform/5307/ARNEWSH/ram.ld           |   77 
 arch/m68knommu/platform/5307/CLEOPATRA/ram.ld         |   77 
 arch/m68knommu/platform/5307/MOTOROLA/ram.ld          |   77 
 arch/m68knommu/platform/5307/MP3/ram.ld               |   77 
 arch/m68knommu/platform/5307/NETtel/ram.ld            |   77 
 arch/m68knommu/platform/5407/CLEOPATRA/ram.ld         |   77 
 arch/m68knommu/platform/5407/MOTOROLA/ram.ld          |   77 
 arch/m68knommu/platform/68328/pilot/rom.ld            |  105 
 arch/m68knommu/platform/68360/uCquicc/ram.ld          |  116 -
 arch/m68knommu/platform/68360/uCquicc/rom.ld          |  116 -
 arch/m68knommu/platform/68EZ328/ucsimm/fixed.ld       |  112 -
 arch/m68knommu/platform/68EZ328/ucsimm/himem.ld       |   11 
 arch/m68knommu/platform/68EZ328/ucsimm/ram.ld         |  114 -
 arch/m68knommu/platform/68EZ328/ucsimm/rom.ld         |   11 
 arch/m68knommu/platform/68VZ328/de2/fixed.ld          |  106 
 arch/m68knommu/platform/68VZ328/de2/ram.ld            |  113 -
 arch/m68knommu/platform/68VZ328/de2/rom.ld            |   11 
 arch/m68knommu/platform/68VZ328/ucdimm/fixed.ld       |  106 
 arch/m68knommu/platform/68VZ328/ucdimm/himem.ld       |   11 
 arch/m68knommu/platform/68VZ328/ucdimm/ram.ld         |  113 -
 arch/m68knommu/platform/68VZ328/ucdimm/rom.ld         |   11 
 b/CREDITS                                             |   10 
 b/Documentation/DMA-API.txt                           |   10 
 b/Documentation/IPMI.txt                              |  352 +++
 b/Documentation/usb/proc_usb_info.txt                 |    2 
 b/Makefile                                            |    2 
 b/arch/alpha/kernel/module.c                          |   11 
 b/arch/arm/kernel/module.c                            |    5 
 b/arch/arm/mach-integrator/cpu.c                      |    1 
 b/arch/arm/mach-sa1100/cpu-sa1100.c                   |    1 
 b/arch/arm/mach-sa1100/cpu-sa1110.c                   |    1 
 b/arch/i386/Kconfig                                   |   38 
 b/arch/i386/Makefile                                  |    4 
 b/arch/i386/kernel/cpu/cpufreq/Makefile               |    1 
 b/arch/i386/kernel/cpu/cpufreq/elanfreq.c             |    3 
 b/arch/i386/kernel/cpu/cpufreq/gx-suspmod.c           |  514 ++++
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c             |    3 
 b/arch/i386/kernel/cpu/cpufreq/longrun.c              |    3 
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c          |    3 
 b/arch/i386/kernel/cpu/cpufreq/powernow-k6.c          |    3 
 b/arch/i386/kernel/cpu/cpufreq/speedstep.c            |    3 
 b/arch/i386/kernel/module.c                           |    8 
 b/arch/i386/kernel/pci-dma.c                          |    5 
 b/arch/i386/kernel/time.c                             |    3 
 b/arch/i386/kernel/timers/Makefile                    |    2 
 b/arch/i386/kernel/timers/timer_cyclone.c             |    5 
 b/arch/i386/kernel/timers/timer_none.c                |   37 
 b/arch/i386/kernel/timers/timer_pit.c                 |   14 
 b/arch/i386/kernel/timers/timer_tsc.c                 |   15 
 b/arch/i386/lib/delay.c                               |   43 
 b/arch/m68knommu/kernel/comempci.c                    |  248 --
 b/arch/m68knommu/kernel/entry.S                       |  140 +
 b/arch/m68knommu/kernel/setup.c                       |    8 
 b/arch/m68knommu/kernel/signal.c                      |    2 
 b/arch/m68knommu/platform/68EZ328/ucsimm/crt0_fixed.S |    2 
 b/arch/m68knommu/platform/68VZ328/de2/crt0_fixed.S    |    2 
 b/arch/m68knommu/platform/68VZ328/ucdimm/crt0_fixed.S |    2 
 b/arch/m68knommu/vmlinux.lds.S                        |  376 ++-
 b/arch/mips64/kernel/ioctl32.c                        |    2 
 b/arch/parisc/Kconfig                                 |    7 
 b/arch/parisc/Makefile                                |  109 
 b/arch/parisc/defconfig                               |  436 ++-
 b/arch/parisc/hpux/fs.c                               |    6 
 b/arch/parisc/kernel/Makefile                         |   25 
 b/arch/parisc/kernel/asm-offsets.c                    |    2 
 b/arch/parisc/kernel/binfmt_elf32.c                   |   18 
 b/arch/parisc/kernel/drivers.c                        |  270 +-
 b/arch/parisc/kernel/entry.S                          |  105 
 b/arch/parisc/kernel/head.S                           |    7 
 b/arch/parisc/kernel/head64.S                         |   10 
 b/arch/parisc/kernel/inventory.c                      |    8 
 b/arch/parisc/kernel/ioctl32.c                        |  143 -
 b/arch/parisc/kernel/module.c                         |  254 ++
 b/arch/parisc/kernel/parisc_ksyms.c                   |   17 
 b/arch/parisc/kernel/pci-dma.c                        |  102 
 b/arch/parisc/kernel/pci.c                            |   22 
 b/arch/parisc/kernel/pdc_cons.c                       |    2 
 b/arch/parisc/kernel/perf.c                           |   14 
 b/arch/parisc/kernel/process.c                        |    9 
 b/arch/parisc/kernel/processor.c                      |    1 
 b/arch/parisc/kernel/profile.c                        |   43 
 b/arch/parisc/kernel/ptrace.c                         |    2 
 b/arch/parisc/kernel/setup.c                          |   16 
 b/arch/parisc/kernel/signal.c                         |   25 
 b/arch/parisc/kernel/signal32.c                       |    3 
 b/arch/parisc/kernel/smp.c                            |    2 
 b/arch/parisc/kernel/sys32.h                          |    5 
 b/arch/parisc/kernel/sys_parisc.c                     |   29 
 b/arch/parisc/kernel/sys_parisc32.c                   |  807 -------
 b/arch/parisc/kernel/syscall.S                        |   72 
 b/arch/parisc/kernel/time.c                           |   32 
 b/arch/parisc/kernel/traps.c                          |   29 
 b/arch/parisc/kernel/unaligned.c                      |  406 ++-
 b/arch/parisc/lib/io.c                                |   14 
 b/arch/parisc/math-emu/driver.c                       |    6 
 b/arch/parisc/math-emu/fpudispatch.c                  |   17 
 b/arch/parisc/mm/extable.c                            |   40 
 b/arch/parisc/mm/fault.c                              |    3 
 b/arch/parisc/oprofile/Kconfig                        |   23 
 b/arch/parisc/oprofile/Makefile                       |    8 
 b/arch/parisc/oprofile/init.c                         |   20 
 b/arch/parisc/oprofile/timer_int.c                    |   56 
 b/arch/parisc/vmlinux.lds.S                           |    3 
 b/arch/ppc/kernel/module.c                            |    8 
 b/arch/ppc64/kernel/ioctl32.c                         |   15 
 b/arch/s390/kernel/module.c                           |   10 
 b/arch/s390x/kernel/ioctl32.c                         |    3 
 b/arch/s390x/kernel/module.c                          |    8 
 b/arch/sparc/kernel/module.c                          |   10 
 b/arch/sparc64/kernel/ioctl32.c                       |   15 
 b/arch/sparc64/kernel/module.c                        |   10 
 b/arch/v850/Makefile                                  |    9 
 b/arch/v850/kernel/module.c                           |   13 
 b/arch/x86_64/ia32/ia32_ioctl.c                       |   15 
 b/arch/x86_64/kernel/module.c                         |    8 
 b/drivers/acorn/scsi/fas216.c                         |  379 ++-
 b/drivers/acpi/processor.c                            |    3 
 b/drivers/atm/ambassador.c                            |   10 
 b/drivers/base/bus.c                                  |   10 
 b/drivers/base/class.c                                |    5 
 b/drivers/base/core.c                                 |    5 
 b/drivers/base/interface.c                            |    4 
 b/drivers/base/node.c                                 |   34 
 b/drivers/block/deadline-iosched.c                    |  807 +++++--
 b/drivers/block/elevator.c                            |   67 
 b/drivers/block/genhd.c                               |    2 
 b/drivers/block/ioctl.c                               |    4 
 b/drivers/block/ll_rw_blk.c                           |   53 
 b/drivers/block/paride/bpck6.c                        |    2 
 b/drivers/block/scsi_ioctl.c                          |   42 
 b/drivers/char/Kconfig                                |    4 
 b/drivers/char/Makefile                               |    1 
 b/drivers/char/i8k.c                                  |    4 
 b/drivers/char/ipmi/Kconfig                           |   40 
 b/drivers/char/ipmi/Makefile                          |   15 
 b/drivers/char/ipmi/ipmi_devintf.c                    |  532 ++++
 b/drivers/char/ipmi/ipmi_kcs_intf.c                   | 1242 +++++++++++
 b/drivers/char/ipmi/ipmi_kcs_sm.c                     |  485 ++++
 b/drivers/char/ipmi/ipmi_kcs_sm.h                     |   70 
 b/drivers/char/ipmi/ipmi_msghandler.c                 | 1973 ++++++++++++++++++
 b/drivers/char/ipmi/ipmi_watchdog.c                   | 1114 ++++++++++
 b/drivers/char/n_hdlc.c                               |    4 
 b/drivers/ide/ide-probe.c                             |    4 
 b/drivers/ide/legacy/umc8672.c                        |    4 
 b/drivers/ide/pci/amd74xx.c                           |    8 
 b/drivers/ide/pci/cs5520.c                            |    2 
 b/drivers/ide/pci/generic.h                           |    2 
 b/drivers/ide/pci/sc1200.c                            |    2 
 b/drivers/isdn/hisax/hisax_fcpcipnp.c                 |    4 
 b/drivers/isdn/i4l/isdn_ppp_ccp.c                     |    2 
 b/drivers/mca/mca-bus.c                               |   31 
 b/drivers/media/radio/radio-maxiradio.c               |    2 
 b/drivers/net/aironet4500_card.c                      |    5 
 b/drivers/net/fec.c                                   |    2 
 b/drivers/net/hamradio/bpqether.c                     |   25 
 b/drivers/net/ne.c                                    |   11 
 b/drivers/net/rrunner.c                               |    9 
 b/drivers/net/skfp/fplustm.c                          |    2 
 b/drivers/net/smc-ultra.c                             |    4 
 b/drivers/net/wan/cosa.c                              |    4 
 b/drivers/parisc/Kconfig                              |   19 
 b/drivers/parisc/Makefile                             |   34 
 b/drivers/parisc/asp.c                                |    2 
 b/drivers/parisc/ccio-dma.c                           |   82 
 b/drivers/parisc/ccio-rm-dma.c                        |    2 
 b/drivers/parisc/dino.c                               |   26 
 b/drivers/parisc/eisa.c                               |    2 
 b/drivers/parisc/gsc.h                                |    1 
 b/drivers/parisc/hppb.c                               |  111 +
 b/drivers/parisc/iosapic.c                            |    2 
 b/drivers/parisc/lasi.c                               |    5 
 b/drivers/parisc/lba_pci.c                            |   21 
 b/drivers/parisc/led.c                                |    2 
 b/drivers/parisc/power.c                              |   94 
 b/drivers/parisc/sba_iommu.c                          |   51 
 b/drivers/parisc/superio.c                            |   11 
 b/drivers/parisc/wax.c                                |    2 
 b/drivers/pnp/card.c                                  |   21 
 b/drivers/pnp/interface.c                             |    4 
 b/drivers/pnp/isapnp/core.c                           |    3 
 b/drivers/s390/block/dasd.c                           |   48 
 b/drivers/s390/cio/ccwgroup.c                         |   13 
 b/drivers/s390/cio/chsc.c                             |   19 
 b/drivers/s390/cio/device.c                           |   33 
 b/drivers/s390/net/ctcmain.c                          |   11 
 b/drivers/s390/net/lcs.c                              |   12 
 b/drivers/s390/net/netiucv.c                          |   70 
 b/drivers/scsi/53c700.c                               |    2 
 b/drivers/scsi/cpqfcTSinit.c                          |   15 
 b/drivers/scsi/dpt_i2o.c                              |    2 
 b/drivers/scsi/hosts.c                                |   19 
 b/drivers/scsi/hosts.h                                |    3 
 b/drivers/scsi/osst.c                                 |    8 
 b/drivers/scsi/scsi_error.c                           |   45 
 b/drivers/scsi/scsi_lib.c                             |   22 
 b/drivers/scsi/scsi_sysfs.c                           |   10 
 b/drivers/scsi/sd.c                                   |  176 -
 b/drivers/scsi/st.c                                   |   12 
 b/drivers/scsi/sym53c8xx_comm.h                       |    2 
 b/drivers/serial/68360serial.c                        |    3 
 b/drivers/serial/mcfserial.h                          |    5 
 b/drivers/serial/nb85e_uart.c                         |   65 
 b/drivers/usb/class/Kconfig                           |    4 
 b/drivers/usb/class/audio.c                           |    8 
 b/drivers/usb/class/usb-midi.c                        |   12 
 b/drivers/usb/host/ehci-dbg.c                         |   26 
 b/drivers/usb/host/ohci-dbg.c                         |   22 
 b/drivers/usb/input/xpad.c                            |    4 
 b/drivers/usb/misc/speedtouch.c                       |  201 -
 b/drivers/usb/serial/digi_acceleport.c                |    6 
 b/drivers/usb/serial/usb-serial.c                     |    2 
 b/drivers/usb/serial/visor.c                          |  234 +-
 b/drivers/usb/serial/visor.h                          |   31 
 b/drivers/usb/storage/debug.c                         |   32 
 b/drivers/usb/usb-skeleton.c                          |    2 
 b/fs/Kconfig                                          |   24 
 b/fs/nfs/inode.c                                      |    9 
 b/fs/nfsd/nfsproc.c                                   |    2 
 b/fs/proc/inode.c                                     |    4 
 b/fs/reiserfs/hashes.c                                |    3 
 b/fs/reiserfs/super.c                                 |    4 
 b/fs/sysfs/inode.c                                    |   16 
 b/include/asm-alpha/bug.h                             |   14 
 b/include/asm-alpha/page.h                            |    8 
 b/include/asm-arm/bug.h                               |   20 
 b/include/asm-arm/dma-mapping.h                       |    4 
 b/include/asm-arm/page.h                              |   15 
 b/include/asm-cris/bug.h                              |   12 
 b/include/asm-cris/page.h                             |   12 
 b/include/asm-generic/dma-mapping.h                   |    5 
 b/include/asm-generic/pci-dma-compat.h                |    2 
 b/include/asm-i386/bug.h                              |   27 
 b/include/asm-i386/dma-mapping.h                      |    4 
 b/include/asm-i386/hw_irq.h                           |    1 
 b/include/asm-i386/mach-bigsmp/mach_apic.h            |  106 
 b/include/asm-i386/mach-bigsmp/mach_ipi.h             |   24 
 b/include/asm-i386/page.h                             |   21 
 b/include/asm-i386/timer.h                            |    1 
 b/include/asm-ia64/bug.h                              |   12 
 b/include/asm-ia64/page.h                             |    8 
 b/include/asm-m68k/bug.h                              |   28 
 b/include/asm-m68k/page.h                             |   22 
 b/include/asm-m68knommu/system.h                      |    2 
 b/include/asm-mips/bug.h                              |    8 
 b/include/asm-mips/page.h                             |    3 
 b/include/asm-mips64/bug.h                            |    7 
 b/include/asm-mips64/page.h                           |    3 
 b/include/asm-parisc/assembly.h                       |   14 
 b/include/asm-parisc/bug.h                            |   18 
 b/include/asm-parisc/cache.h                          |    2 
 b/include/asm-parisc/checksum.h                       |   27 
 b/include/asm-parisc/compat.h                         |   75 
 b/include/asm-parisc/current.h                        |    2 
 b/include/asm-parisc/dma-mapping.h                    |  228 ++
 b/include/asm-parisc/dma.h                            |    4 
 b/include/asm-parisc/hardware.h                       |   33 
 b/include/asm-parisc/ide.h                            |    7 
 b/include/asm-parisc/io.h                             |   66 
 b/include/asm-parisc/irq.h                            |   18 
 b/include/asm-parisc/keyboard.h                       |   17 
 b/include/asm-parisc/linux_logo.h                     | 1433 ++++++++++++-
 b/include/asm-parisc/module.h                         |   13 
 b/include/asm-parisc/page.h                           |   14 
 b/include/asm-parisc/parisc-device.h                  |   43 
 b/include/asm-parisc/pci.h                            |  121 -
 b/include/asm-parisc/posix_types.h                    |   21 
 b/include/asm-parisc/processor.h                      |    5 
 b/include/asm-parisc/stat.h                           |    6 
 b/include/asm-parisc/system.h                         |    1 
 b/include/asm-parisc/thread_info.h                    |    4 
 b/include/asm-parisc/uaccess.h                        |    7 
 b/include/asm-parisc/unistd.h                         |   22 
 b/include/asm-ppc/bug.h                               |   21 
 b/include/asm-ppc/page.h                              |    3 
 b/include/asm-ppc/processor.h                         |   13 
 b/include/asm-s390/bug.h                              |   13 
 b/include/asm-s390/page.h                             |    9 
 b/include/asm-s390x/bug.h                             |   13 
 b/include/asm-s390x/page.h                            |    9 
 b/include/asm-sh/bug.h                                |   16 
 b/include/asm-sh/page.h                               |   12 
 b/include/asm-sparc/bug.h                             |   25 
 b/include/asm-sparc/page.h                            |   20 
 b/include/asm-sparc64/bug.h                           |   17 
 b/include/asm-sparc64/page.h                          |   12 
 b/include/asm-v850/system.h                           |    2 
 b/include/linux/cpufreq.h                             |   16 
 b/include/linux/dcache.h                              |    2 
 b/include/linux/device.h                              |    8 
 b/include/linux/elevator.h                            |   25 
 b/include/linux/elf.h                                 |   11 
 b/include/linux/ipmi.h                                |  516 ++++
 b/include/linux/ipmi_msgdefs.h                        |   58 
 b/include/linux/ipmi_smi.h                            |  144 +
 b/include/linux/jbd.h                                 |    9 
 b/include/linux/kernel.h                              |    1 
 b/include/linux/kobject.h                             |    2 
 b/include/linux/moduleloader.h                        |    8 
 b/include/linux/nfs_mount.h                           |    3 
 b/include/linux/pnp.h                                 |    6 
 b/include/linux/smp.h                                 |    2 
 b/include/linux/sunrpc/auth.h                         |   26 
 b/include/linux/sunrpc/auth_gss.h                     |   98 
 b/include/linux/sunrpc/clnt.h                         |    4 
 b/include/linux/sunrpc/gss_api.h                      |  132 +
 b/include/linux/sunrpc/gss_asn1.h                     |   85 
 b/include/linux/sunrpc/gss_err.h                      |  177 +
 b/include/linux/sunrpc/gss_krb5.h                     |  160 +
 b/include/linux/sunrpc/msg_prot.h                     |   16 
 b/include/linux/sunrpc/rpc_pipe_fs.h                  |   47 
 b/include/linux/sunrpc/sched.h                        |    3 
 b/include/linux/sunrpc/xdr.h                          |    4 
 b/include/linux/sunrpc/xprt.h                         |    1 
 b/include/linux/sysfs.h                               |    2 
 b/include/net/irda/irias_object.h                     |    4 
 b/include/net/irda/qos.h                              |    7 
 b/include/sound/initval.h                             |   12 
 b/init/Kconfig                                        |    2 
 b/kernel/cpufreq.c                                    |  486 +++-
 b/kernel/ksyms.c                                      |    4 
 b/kernel/module.c                                     |   88 
 b/kernel/suspend.c                                    |    3 
 b/net/802/tr.c                                        |    2 
 b/net/bridge/br_ioctl.c                               |    2 
 b/net/bridge/netfilter/ebt_log.c                      |    2 
 b/net/irda/iriap.c                                    |   21 
 b/net/irda/irias_object.c                             |   12 
 b/net/irda/qos.c                                      |   18 
 b/net/sunrpc/Makefile                                 |    4 
 b/net/sunrpc/auth.c                                   |   46 
 b/net/sunrpc/auth_gss/Makefile                        |   16 
 b/net/sunrpc/auth_gss/auth_gss.c                      |  736 ++++++
 b/net/sunrpc/auth_gss/gss_generic_token.c             |  269 ++
 b/net/sunrpc/auth_gss/gss_krb5_crypto.c               |  168 +
 b/net/sunrpc/auth_gss/gss_krb5_mech.c                 |  251 ++
 b/net/sunrpc/auth_gss/gss_krb5_seal.c                 |  214 +
 b/net/sunrpc/auth_gss/gss_krb5_seqnum.c               |   88 
 b/net/sunrpc/auth_gss/gss_krb5_unseal.c               |  306 ++
 b/net/sunrpc/auth_gss/gss_mech_switch.c               |  243 ++
 b/net/sunrpc/auth_gss/gss_pseudoflavors.c             |  235 ++
 b/net/sunrpc/auth_gss/sunrpcgss_syms.c                |   34 
 b/net/sunrpc/auth_null.c                              |    8 
 b/net/sunrpc/auth_unix.c                              |   56 
 b/net/sunrpc/clnt.c                                   |   63 
 b/net/sunrpc/rpc_pipe.c                               |  817 +++++++
 b/net/sunrpc/sunrpc_syms.c                            |   25 
 b/net/sunrpc/svcauth_unix.c                           |    2 
 b/net/sunrpc/xprt.c                                   |   46 
 b/sound/isa/opti9xx/opti92x-ad1848.c                  |   21 
 b/sound/oss/ad1848.c                                  |   22 
 b/sound/oss/awe_wave.c                                |   40 
 b/sound/oss/cs4232.c                                  |   23 
 b/sound/oss/opl3sa2.c                                 |    6 
 b/sound/oss/pas2_card.c                               |   10 
 b/sound/oss/pas2_midi.c                               |   20 
 b/sound/oss/pas2_mixer.c                              |    4 
 b/sound/oss/pas2_pcm.c                                |   28 
 b/sound/pci/korg1212/korg1212.c                       |    2 
 364 files changed, 18371 insertions(+), 6491 deletions(-)

