From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.43 released
Date: Tue, 15 Oct 2002 20:43:04 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200210160343.g9G3h4730803@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.43 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.43.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.43.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               852078           3745269
Full source                       37379042         167024640

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/cris/drivers/examples/kiobuftest.c            |  111 -
 b/Documentation/Changes                            |    6 
 b/Documentation/DocBook/scsidrivers.tmpl           |    2 
 b/Documentation/SubmittingPatches                  |    2 
 b/Documentation/arm/XScale/ADIFCC/80200EVB         |  111 +
 b/Documentation/arm/XScale/IOP310/IQ80310          |  295 ++
 b/Documentation/filesystems/afs.txt                |  155 +
 b/Documentation/filesystems/proc.txt               |    2 
 b/Documentation/filesystems/vfat.txt               |   12 
 b/Documentation/filesystems/xfs.txt                |    6 
 b/Documentation/kernel-parameters.txt              |   24 
 b/Documentation/sysctl/vm.txt                      |    3 
 b/MAINTAINERS                                      |    5 
 b/Makefile                                         |    2 
 b/arch/alpha/kernel/irq.c                          |   14 
 b/arch/alpha/kernel/irq_alpha.c                    |   32 
 b/arch/alpha/kernel/irq_i8259.c                    |   18 
 b/arch/alpha/kernel/irq_pyxis.c                    |   14 
 b/arch/alpha/kernel/irq_srm.c                      |   14 
 b/arch/alpha/kernel/pci.c                          |    2 
 b/arch/alpha/kernel/setup.c                        |   32 
 b/arch/alpha/kernel/sys_alcor.c                    |   86 
 b/arch/alpha/kernel/sys_cabriolet.c                |  168 -
 b/arch/alpha/kernel/sys_dp264.c                    |  202 -
 b/arch/alpha/kernel/sys_eb64p.c                    |   76 
 b/arch/alpha/kernel/sys_eiger.c                    |   48 
 b/arch/alpha/kernel/sys_jensen.c                   |   40 
 b/arch/alpha/kernel/sys_miata.c                    |   30 
 b/arch/alpha/kernel/sys_mikasa.c                   |   76 
 b/arch/alpha/kernel/sys_nautilus.c                 |   28 
 b/arch/alpha/kernel/sys_noritake.c                 |   76 
 b/arch/alpha/kernel/sys_rawhide.c                  |   48 
 b/arch/alpha/kernel/sys_ruffian.c                  |   30 
 b/arch/alpha/kernel/sys_rx164.c                    |   46 
 b/arch/alpha/kernel/sys_sable.c                    |   84 
 b/arch/alpha/kernel/sys_sio.c                      |  172 -
 b/arch/alpha/kernel/sys_sx164.c                    |   30 
 b/arch/alpha/kernel/sys_takara.c                   |   46 
 b/arch/alpha/kernel/sys_titan.c                    |   50 
 b/arch/alpha/kernel/sys_wildfire.c                 |   50 
 b/arch/alpha/kernel/systbls.S                      |    1 
 b/arch/alpha/lib/ev6-stxncpy.S                     |    2 
 b/arch/alpha/lib/stxncpy.S                         |    2 
 b/arch/arm/Makefile                                |   20 
 b/arch/arm/boot/compressed/Makefile                |    2 
 b/arch/arm/boot/compressed/head.S                  |   58 
 b/arch/arm/boot/compressed/ll_char_wr.S            |  216 --
 b/arch/arm/config.in                               |    4 
 b/arch/arm/kernel/arch.c                           |    1 
 b/arch/arm/kernel/bios32.c                         |   32 
 b/arch/arm/kernel/ecard.c                          |  116 +
 b/arch/arm/kernel/entry-armv.S                     |   15 
 b/arch/arm/kernel/process.c                        |    4 
 b/arch/arm/kernel/ptrace.c                         |  139 +
 b/arch/arm/kernel/setup.c                          |   27 
 b/arch/arm/kernel/signal.c                         |   36 
 b/arch/arm/kernel/time-acorn.c                     |   33 
 b/arch/arm/kernel/time.c                           |    9 
 b/arch/arm/kernel/traps.c                          |   25 
 b/arch/arm/mach-integrator/cpu.c                   |   92 
 b/arch/arm/mach-iop310/iop310-pci.c                |   12 
 b/arch/arm/mach-iop310/iq80310-time.c              |    2 
 b/arch/arm/mach-sa1100/Makefile                    |   12 
 b/arch/arm/mach-sa1100/assabet.c                   |   27 
 b/arch/arm/mach-sa1100/generic.c                   |    4 
 b/arch/arm/mach-sa1100/neponset.c                  |   26 
 b/arch/arm/mach-sa1100/sa1111.c                    |  391 ++-
 b/arch/arm/mm/fault-armv.c                         |    2 
 b/arch/arm/mm/init.c                               |    6 
 b/arch/arm/mm/minicache.c                          |    2 
 b/arch/arm/mm/mm-armv.c                            |   85 
 b/arch/arm/mm/proc-syms.c                          |   14 
 b/arch/arm/mm/tlb-v3.S                             |   46 
 b/arch/arm/mm/tlb-v4.S                             |   60 
 b/arch/arm/mm/tlb-v4wb.S                           |   99 
 b/arch/arm/vmlinux.lds.S                           |    4 
 b/arch/i386/Config.help                            |   11 
 b/arch/i386/Makefile                               |    2 
 b/arch/i386/config.in                              |    5 
 b/arch/i386/kernel/Makefile                        |    1 
 b/arch/i386/kernel/apic.c                          |   19 
 b/arch/i386/kernel/dmi_scan.c                      |  136 -
 b/arch/i386/kernel/entry.S                         |    1 
 b/arch/i386/kernel/i386_ksyms.c                    |   10 
 b/arch/i386/kernel/io_apic.c                       |    6 
 b/arch/i386/kernel/ldt.c                           |    6 
 b/arch/i386/kernel/mpparse.c                       |   17 
 b/arch/i386/kernel/nmi.c                           |   12 
 b/arch/i386/kernel/profile.c                       |   45 
 b/arch/i386/kernel/smpboot.c                       |    1 
 b/arch/i386/kernel/time.c                          |    6 
 b/arch/i386/kernel/timers/timer_tsc.c              |    1 
 b/arch/i386/kernel/traps.c                         |   37 
 b/arch/i386/mach-generic/do_timer.h                |    3 
 b/arch/i386/mach-generic/mach_apic.h               |   46 
 b/arch/i386/mach-summit/mach_apic.h                |   57 
 b/arch/i386/mach-visws/do_timer.h                  |    3 
 b/arch/i386/mm/discontig.c                         |    1 
 b/arch/i386/oprofile/Config.help                   |    6 
 b/arch/i386/oprofile/Config.in                     |    9 
 b/arch/i386/oprofile/Makefile                      |   16 
 b/arch/i386/oprofile/init.c                        |   30 
 b/arch/i386/oprofile/nmi_int.c                     |  258 ++
 b/arch/i386/oprofile/op_counter.h                  |   29 
 b/arch/i386/oprofile/op_model_athlon.c             |  149 +
 b/arch/i386/oprofile/op_model_ppro.c               |  133 +
 b/arch/i386/oprofile/op_x86_model.h                |   52 
 b/arch/i386/oprofile/timer_int.c                   |   57 
 b/arch/ia64/ia32/sys_ia32.c                        |   35 
 b/arch/m68k/atari/stram.c                          |    5 
 b/arch/ppc64/kernel/sys_ppc32.c                    |   34 
 b/arch/s390x/kernel/linux32.c                      |   66 
 b/arch/sh/kernel/mach_7751se.c                     |   76 
 b/arch/sh/kernel/mach_adx.c                        |   78 
 b/arch/sh/kernel/mach_bigsur.c                     |   76 
 b/arch/sh/kernel/mach_cat68701.c                   |   76 
 b/arch/sh/kernel/mach_dc.c                         |   78 
 b/arch/sh/kernel/mach_dmida.c                      |   66 
 b/arch/sh/kernel/mach_ec3104.c                     |   64 
 b/arch/sh/kernel/mach_hp600.c                      |  228 +-
 b/arch/sh/kernel/mach_se.c                         |   80 
 b/arch/sh/kernel/mach_unknown.c                    |   72 
 b/arch/sh/kernel/setup.c                           |   20 
 b/arch/sh/kernel/setup_cqreek.c                    |   78 
 b/arch/sh/kernel/setup_dc.c                        |   14 
 b/arch/sh/kernel/setup_ec3104.c                    |   14 
 b/arch/sh/kernel/setup_hd64465.c                   |   14 
 b/arch/sh/kernel/setup_sh2000.c                    |   76 
 b/arch/sh/stboards/mach.c                          |   74 
 b/arch/sparc/kernel/pcic.c                         |   18 
 b/arch/sparc/kernel/time.c                         |   16 
 b/arch/sparc64/defconfig                           |   11 
 b/arch/sparc64/kernel/ebus.c                       |    2 
 b/arch/sparc64/kernel/pci.c                        |  126 +
 b/arch/sparc64/kernel/pci_impl.h                   |  133 -
 b/arch/sparc64/kernel/semaphore.c                  |  181 +
 b/arch/sparc64/kernel/signal32.c                   |   18 
 b/arch/sparc64/kernel/sparc64_ksyms.c              |    8 
 b/arch/sparc64/kernel/sys_sparc32.c                |   50 
 b/arch/sparc64/kernel/unaligned.c                  |    4 
 b/arch/sparc64/lib/Makefile                        |    2 
 b/arch/sparc64/lib/ipcsum.S                        |   32 
 b/arch/sparc64/mm/fault.c                          |    2 
 b/arch/um/Makefile                                 |   38 
 b/arch/um/Makefile-i386                            |   37 
 b/arch/um/config.in                                |    5 
 b/arch/um/drivers/chan_user.c                      |    2 
 b/arch/um/drivers/harddog_kern.c                   |    4 
 b/arch/um/drivers/hostaudio_kern.c                 |    1 
 b/arch/um/drivers/line.c                           |   25 
 b/arch/um/drivers/mconsole_kern.c                  |   28 
 b/arch/um/drivers/mconsole_user.c                  |   10 
 b/arch/um/drivers/mmapper_kern.c                   |    3 
 b/arch/um/drivers/net_kern.c                       |   25 
 b/arch/um/drivers/port_kern.c                      |   14 
 b/arch/um/drivers/ssl.c                            |   52 
 b/arch/um/drivers/stdio_console.c                  |   30 
 b/arch/um/drivers/ubd_kern.c                       |  197 +
 b/arch/um/drivers/ubd_user.c                       |    4 
 b/arch/um/drivers/xterm.c                          |    1 
 b/arch/um/include/2_5compat.h                      |    2 
 b/arch/um/include/irq_user.h                       |    4 
 b/arch/um/include/kern_util.h                      |   10 
 b/arch/um/include/line.h                           |    5 
 b/arch/um/include/mconsole.h                       |    2 
 b/arch/um/include/sigio.h                          |    2 
 b/arch/um/include/tempfile.h                       |   21 
 b/arch/um/include/time_user.h                      |    6 
 b/arch/um/include/user_util.h                      |   18 
 b/arch/um/kernel/Makefile                          |   13 
 b/arch/um/kernel/exec_kern.c                       |    3 
 b/arch/um/kernel/exitcode.c                        |    3 
 b/arch/um/kernel/frame.c                           |    4 
 b/arch/um/kernel/helper.c                          |    1 
 b/arch/um/kernel/initrd_kern.c                     |    1 
 b/arch/um/kernel/irq.c                             |   29 
 b/arch/um/kernel/irq_user.c                        |  162 +
 b/arch/um/kernel/ksyms.c                           |    1 
 b/arch/um/kernel/mem.c                             |   45 
 b/arch/um/kernel/mem_user.c                        |    5 
 b/arch/um/kernel/process.c                         |   14 
 b/arch/um/kernel/process_kern.c                    |   57 
 b/arch/um/kernel/sigio_kern.c                      |   13 
 b/arch/um/kernel/sigio_user.c                      |   59 
 b/arch/um/kernel/signal_user.c                     |   29 
 b/arch/um/kernel/smp.c                             |  167 -
 b/arch/um/kernel/syscall_kern.c                    |   15 
 b/arch/um/kernel/syscall_user.c                    |   13 
 b/arch/um/kernel/tempfile.c                        |   79 
 b/arch/um/kernel/time.c                            |   44 
 b/arch/um/kernel/time_kern.c                       |   32 
 b/arch/um/kernel/trap_kern.c                       |   15 
 b/arch/um/kernel/trap_user.c                       |   92 
 b/arch/um/kernel/tty_log.c                         |    6 
 b/arch/um/kernel/um_arch.c                         |   36 
 b/arch/um/kernel/umid.c                            |    4 
 b/arch/um/kernel/user_util.c                       |   82 
 b/arch/um/main.c                                   |   13 
 b/arch/um/ptproxy/proxy.c                          |    7 
 b/arch/um/sys-i386/bugs.c                          |    1 
 b/arch/um/sys-i386/ptrace_user.c                   |    1 
 b/arch/um/sys-i386/util/Makefile                   |   14 
 b/arch/um/sys-ppc/miscthings.c                     |    3 
 b/arch/um/uml.lds.S                                |    3 
 b/arch/um/util/Makefile                            |   18 
 b/arch/x86_64/boot/Makefile                        |  118 -
 b/arch/x86_64/boot/compressed/Makefile             |   51 
 b/arch/x86_64/boot/compressed/misc.c               |    4 
 b/arch/x86_64/boot/compressed/miscsetup.h          |    2 
 b/arch/x86_64/boot/compressed/vmlinux.scr          |    9 
 b/arch/x86_64/boot/video.S                         |    3 
 b/arch/x86_64/ia32/Makefile                        |    7 
 b/arch/x86_64/ia32/ia32_binfmt.c                   |    3 
 b/arch/x86_64/ia32/ia32_ioctl.c                    |  245 +-
 b/arch/x86_64/ia32/ia32_signal.c                   |   44 
 b/arch/x86_64/ia32/ia32entry.S                     |   30 
 b/arch/x86_64/ia32/ipc32.c                         |   17 
 b/arch/x86_64/ia32/ptrace32.c                      |   17 
 b/arch/x86_64/ia32/socket32.c                      |   34 
 b/arch/x86_64/ia32/sys_ia32.c                      |  282 --
 b/arch/x86_64/kernel/Makefile                      |    9 
 b/arch/x86_64/kernel/acpi.c                        |  569 +++++
 b/arch/x86_64/kernel/aperture.c                    |  123 +
 b/arch/x86_64/kernel/apic.c                        |  236 --
 b/arch/x86_64/kernel/asm-offsets.c                 |    5 
 b/arch/x86_64/kernel/bluesmoke.c                   |    5 
 b/arch/x86_64/kernel/cpuid.c                       |    8 
 b/arch/x86_64/kernel/e820.c                        |  527 +++++
 b/arch/x86_64/kernel/early_printk.c                |   19 
 b/arch/x86_64/kernel/entry.S                       |  115 -
 b/arch/x86_64/kernel/head.S                        |   47 
 b/arch/x86_64/kernel/head64.c                      |    5 
 b/arch/x86_64/kernel/i8259.c                       |   16 
 b/arch/x86_64/kernel/init_task.c                   |    2 
 b/arch/x86_64/kernel/io_apic.c                     |  190 +
 b/arch/x86_64/kernel/ioport.c                      |   14 
 b/arch/x86_64/kernel/irq.c                         |  301 --
 b/arch/x86_64/kernel/ldt.c                         |   66 
 b/arch/x86_64/kernel/mpparse.c                     |  340 +++
 b/arch/x86_64/kernel/msr.c                         |   10 
 b/arch/x86_64/kernel/mtrr.c                        |  115 -
 b/arch/x86_64/kernel/nmi.c                         |   65 
 b/arch/x86_64/kernel/pci-dma.c                     |   67 
 b/arch/x86_64/kernel/pci-gart.c                    |  560 +++++
 b/arch/x86_64/kernel/pci-nommu.c                   |   48 
 b/arch/x86_64/kernel/process.c                     |  312 +--
 b/arch/x86_64/kernel/ptrace.c                      |   11 
 b/arch/x86_64/kernel/reboot.c                      |  136 +
 b/arch/x86_64/kernel/semaphore.c                   |   64 
 b/arch/x86_64/kernel/setup.c                       |  524 -----
 b/arch/x86_64/kernel/setup64.c                     |   58 
 b/arch/x86_64/kernel/signal.c                      |   12 
 b/arch/x86_64/kernel/smp.c                         |   11 
 b/arch/x86_64/kernel/smpboot.c                     |  379 +--
 b/arch/x86_64/kernel/time.c                        |  629 ++----
 b/arch/x86_64/kernel/trampoline.S                  |    2 
 b/arch/x86_64/kernel/traps.c                       |  115 -
 b/arch/x86_64/kernel/vsyscall.c                    |   44 
 b/arch/x86_64/kernel/x8664_ksyms.c                 |    8 
 b/arch/x86_64/lib/Makefile                         |    4 
 b/arch/x86_64/lib/bitstr.c                         |   25 
 b/arch/x86_64/lib/clear_page.S                     |    3 
 b/arch/x86_64/lib/copy_page.S                      |   31 
 b/arch/x86_64/lib/copy_user.S                      |   21 
 b/arch/x86_64/lib/csum-copy.S                      |   13 
 b/arch/x86_64/lib/memcpy.S                         |   41 
 b/arch/x86_64/lib/memset.S                         |   31 
 b/arch/x86_64/lib/thunk.S                          |    1 
 b/arch/x86_64/lib/usercopy.c                       |   66 
 b/arch/x86_64/pci/Makefile                         |    1 
 b/arch/x86_64/pci/common.c                         |    8 
 b/arch/x86_64/pci/fixup.c                          |   13 
 b/arch/x86_64/pci/pci.h                            |    2 
 b/arch/x86_64/pci/x86-64.c                         |    5 
 b/arch/x86_64/vmlinux.lds.S                        |   19 
 b/drivers/Makefile                                 |    2 
 b/drivers/acorn/block/fd1772.c                     |   31 
 b/drivers/acorn/block/mfmhd.c                      |   12 
 b/drivers/acorn/char/Makefile                      |   13 
 b/drivers/acorn/char/i2c.c                         |    4 
 b/drivers/acorn/net/ether1.c                       |  112 -
 b/drivers/acorn/net/ether3.c                       |  124 -
 b/drivers/acorn/net/etherh.c                       |  168 -
 b/drivers/acorn/scsi/acornscsi.c                   |   16 
 b/drivers/acorn/scsi/acornscsi.h                   |    2 
 b/drivers/acorn/scsi/cumana_1.c                    |   16 
 b/drivers/acorn/scsi/ecoscsi.c                     |   14 
 b/drivers/acorn/scsi/fas216.c                      |   14 
 b/drivers/acorn/scsi/fas216.h                      |    2 
 b/drivers/acorn/scsi/oak.c                         |   12 
 b/drivers/acorn/scsi/queue.c                       |    2 
 b/drivers/acorn/scsi/queue.h                       |    2 
 b/drivers/acorn/scsi/scsi.h                        |    4 
 b/drivers/atm/iphase.c                             |   12 
 b/drivers/base/core.c                              |   92 
 b/drivers/block/Config.in                          |    3 
 b/drivers/block/DAC960.c                           |    3 
 b/drivers/block/Makefile                           |    4 
 b/drivers/block/acsi.c                             |   18 
 b/drivers/block/amiflop.c                          |   11 
 b/drivers/block/ataflop.c                          |   20 
 b/drivers/block/cciss.c                            |    9 
 b/drivers/block/cpqarray.c                         |    7 
 b/drivers/block/floppy.c                           |   12 
 b/drivers/block/genhd.c                            |   85 
 b/drivers/block/ioctl.c                            |  215 ++
 b/drivers/block/ll_rw_blk.c                        |   17 
 b/drivers/block/loop.c                             |    2 
 b/drivers/block/nbd.c                              |    3 
 b/drivers/block/paride/pcd.c                       |    3 
 b/drivers/block/paride/pd.c                        |    6 
 b/drivers/block/paride/pf.c                        |    6 
 b/drivers/block/ps2esdi.c                          |   16 
 b/drivers/block/rd.c                               |    9 
 b/drivers/block/scsi_ioctl.c                       |  215 ++
 b/drivers/block/swim3.c                            |    2 
 b/drivers/block/swim_iop.c                         |    2 
 b/drivers/block/umem.c                             |    2 
 b/drivers/block/xd.c                               |   15 
 b/drivers/block/z2ram.c                            |    3 
 b/drivers/bluetooth/Config.help                    |   18 
 b/drivers/bluetooth/Config.in                      |   22 
 b/drivers/bluetooth/Makefile                       |   16 
 b/drivers/bluetooth/bluecard_cs.c                  |    6 
 b/drivers/bluetooth/bt3c_cs.c                      |    4 
 b/drivers/bluetooth/dtl1_cs.c                      |    6 
 b/drivers/bluetooth/hci_bcsp.c                     |   14 
 b/drivers/bluetooth/hci_h4.c                       |    8 
 b/drivers/bluetooth/hci_ldisc.c                    |   20 
 b/drivers/bluetooth/hci_usb.c                      |   18 
 b/drivers/bluetooth/hci_vhci.c                     |   10 
 b/drivers/cdrom/aztcd.c                            |    3 
 b/drivers/cdrom/cdrom.c                            |    9 
 b/drivers/cdrom/cdu31a.c                           |    3 
 b/drivers/cdrom/cm206.c                            |    3 
 b/drivers/cdrom/gscd.c                             |    3 
 b/drivers/cdrom/mcd.c                              |    3 
 b/drivers/cdrom/mcdx.c                             |    3 
 b/drivers/cdrom/optcd.c                            |    3 
 b/drivers/cdrom/sbpcd.c                            |    3 
 b/drivers/cdrom/sjcd.c                             |    3 
 b/drivers/cdrom/sonycd535.c                        |    3 
 b/drivers/char/Config.help                         |   21 
 b/drivers/char/Config.in                           |    1 
 b/drivers/char/Makefile                            |    1 
 b/drivers/char/drm/drm_ioctl.h                     |   17 
 b/drivers/char/drm/drm_os_linux.h                  |    2 
 b/drivers/char/drm/mga_dma.c                       |   11 
 b/drivers/char/n_hdlc.c                            |   19 
 b/drivers/char/n_r3964.c                           |    2 
 b/drivers/char/pcmcia/synclink_cs.c                |   16 
 b/drivers/char/rtc.c                               |    4 
 b/drivers/char/synclink.c                          |   26 
 b/drivers/char/synclinkmp.c                        |   31 
 b/drivers/char/tipar.c                             |  541 +++++
 b/drivers/char/tty_io.c                            |   19 
 b/drivers/ide/ide-cd.c                             |  437 ++--
 b/drivers/ide/ide-cd.h                             |    9 
 b/drivers/ide/ide-disk.c                           |   74 
 b/drivers/ide/ide-floppy.c                         |    2 
 b/drivers/ide/ide-probe.c                          |    3 
 b/drivers/ide/ide.c                                |    2 
 b/drivers/ide/legacy/hd.c                          |   14 
 b/drivers/ieee1394/cmp.c                           |    4 
 b/drivers/ieee1394/csr.c                           |   75 
 b/drivers/ieee1394/csr.h                           |    4 
 b/drivers/ieee1394/dv1394.c                        |    8 
 b/drivers/ieee1394/eth1394.c                       |    8 
 b/drivers/ieee1394/eth1394.h                       |    2 
 b/drivers/ieee1394/highlevel.c                     |   52 
 b/drivers/ieee1394/highlevel.h                     |   32 
 b/drivers/ieee1394/hosts.c                         |    2 
 b/drivers/ieee1394/hosts.h                         |   33 
 b/drivers/ieee1394/ieee1394_core.c                 |  130 +
 b/drivers/ieee1394/ieee1394_core.h                 |    3 
 b/drivers/ieee1394/ieee1394_transactions.c         |   70 
 b/drivers/ieee1394/ieee1394_transactions.h         |    2 
 b/drivers/ieee1394/ieee1394_types.h                |   42 
 b/drivers/ieee1394/ohci1394.c                      |    5 
 b/drivers/ieee1394/pcilynx.c                       |    2 
 b/drivers/ieee1394/raw1394.c                       | 1417 ++++++++++++--
 b/drivers/ieee1394/raw1394.h                       |   82 
 b/drivers/ieee1394/sbp2.c                          |   26 
 b/drivers/ieee1394/sbp2.h                          |    8 
 b/drivers/ieee1394/video1394.c                     |    6 
 b/drivers/isdn/hardware/eicon/divasmain.c          |   10 
 b/drivers/md/md.c                                  |   26 
 b/drivers/md/raid0.c                               |   39 
 b/drivers/media/video/bttv-driver.c                |    1 
 b/drivers/media/video/bttv-risc.c                  |    1 
 b/drivers/media/video/bttvp.h                      |    1 
 b/drivers/media/video/cpia.c                       |  195 +
 b/drivers/media/video/cpia.h                       |   42 
 b/drivers/media/video/cpia_pp.c                    |   68 
 b/drivers/media/video/cpia_usb.c                   |   12 
 b/drivers/media/video/video-buf.c                  |  109 -
 b/drivers/media/video/video-buf.h                  |    8 
 b/drivers/message/fusion/Config.help               |   10 
 b/drivers/message/fusion/Config.in                 |    1 
 b/drivers/message/fusion/linux_compat.h            |   29 
 b/drivers/message/fusion/lsi/mpi.h                 |    5 
 b/drivers/message/fusion/lsi/mpi_cnfg.h            |    4 
 b/drivers/message/fusion/lsi/mpi_targ.h            |    7 
 b/drivers/message/fusion/mptbase.c                 |   22 
 b/drivers/message/fusion/mptbase.h                 |   14 
 b/drivers/message/fusion/mptctl.c                  |   10 
 b/drivers/message/fusion/mptctl.h                  |   10 
 b/drivers/message/fusion/mptlan.c                  |   19 
 b/drivers/message/fusion/mptlan.h                  |    4 
 b/drivers/message/fusion/mptscsih.c                |  210 +-
 b/drivers/message/fusion/mptscsih.h                |   36 
 b/drivers/message/i2o/i2o_block.c                  |    3 
 b/drivers/message/i2o/i2o_scsi.c                   |  213 +-
 b/drivers/message/i2o/i2o_scsi.h                   |   48 
 b/drivers/mtd/Config.help                          |   60 
 b/drivers/mtd/Config.in                            |    5 
 b/drivers/mtd/Makefile                             |   11 
 b/drivers/mtd/afs.c                                |    9 
 b/drivers/mtd/cmdline.c                            |  343 +++
 b/drivers/mtd/ftl.c                                |    3 
 b/drivers/mtd/maps/Config.help                     |  109 -
 b/drivers/mtd/maps/Config.in                       |   12 
 b/drivers/mtd/maps/Makefile                        |   20 
 b/drivers/mtd/maps/autcpu12-nvram.c                |  179 +
 b/drivers/mtd/maps/ceiva.c                         |  408 ++++
 b/drivers/mtd/maps/dc21285.c                       |   25 
 b/drivers/mtd/maps/edb7312.c                       |  202 +
 b/drivers/mtd/maps/epxa10db-flash.c                |  233 ++
 b/drivers/mtd/maps/fortunet.c                      |  309 +++
 b/drivers/mtd/maps/impa7.c                         |  234 ++
 b/drivers/mtd/maps/integrator-flash.c              |    8 
 b/drivers/mtd/maps/iq80310.c                       |    5 
 b/drivers/mtd/maps/pci.c                           |  385 +++
 b/drivers/mtd/maps/pcmciamtd.c                     |  893 ++++++++
 b/drivers/mtd/maps/sa1100-flash.c                  | 1554 ++++++++++-----
 b/drivers/mtd/mtdblock.c                           |    5 
 b/drivers/mtd/mtdblock_ro.c                        |   10 
 b/drivers/mtd/mtdconcat.c                          |  675 ++++++
 b/drivers/mtd/nftlcore.c                           |    4 
 b/drivers/net/pppoe.c                              |  160 +
 b/drivers/net/wan/syncppp.c                        |    8 
 b/drivers/oprofile/buffer_sync.c                   |  394 +++
 b/drivers/oprofile/buffer_sync.h                   |   19 
 b/drivers/oprofile/cpu_buffer.c                    |  135 +
 b/drivers/oprofile/cpu_buffer.h                    |   45 
 b/drivers/oprofile/event_buffer.c                  |  186 +
 b/drivers/oprofile/event_buffer.h                  |   42 
 b/drivers/oprofile/oprof.c                         |  153 +
 b/drivers/oprofile/oprof.h                         |   34 
 b/drivers/oprofile/oprofile_files.c                |   91 
 b/drivers/oprofile/oprofile_stats.c                |   77 
 b/drivers/oprofile/oprofile_stats.h                |   31 
 b/drivers/oprofile/oprofilefs.c                    |  306 +++
 b/drivers/pcmcia/bulkmem.c                         |   26 
 b/drivers/pcmcia/ricoh.h                           |   17 
 b/drivers/pcmcia/sa1100_adsbitsy.c                 |   14 
 b/drivers/pcmcia/sa1100_assabet.c                  |   15 
 b/drivers/pcmcia/sa1100_badge4.c                   |   14 
 b/drivers/pcmcia/sa1100_cerf.c                     |   15 
 b/drivers/pcmcia/sa1100_flexanet.c                 |   15 
 b/drivers/pcmcia/sa1100_freebird.c                 |   15 
 b/drivers/pcmcia/sa1100_generic.c                  |   34 
 b/drivers/pcmcia/sa1100_graphicsclient.c           |   15 
 b/drivers/pcmcia/sa1100_graphicsmaster.c           |   14 
 b/drivers/pcmcia/sa1100_h3600.c                    |   31 
 b/drivers/pcmcia/sa1100_jornada720.c               |   14 
 b/drivers/pcmcia/sa1100_neponset.c                 |   14 
 b/drivers/pcmcia/sa1100_pangolin.c                 |   13 
 b/drivers/pcmcia/sa1100_pfs168.c                   |   14 
 b/drivers/pcmcia/sa1100_shannon.c                  |   15 
 b/drivers/pcmcia/sa1100_simpad.c                   |   15 
 b/drivers/pcmcia/sa1100_stork.c                    |   15 
 b/drivers/pcmcia/sa1100_system3.c                  |   14 
 b/drivers/pcmcia/sa1100_trizeps.c                  |   15 
 b/drivers/pcmcia/sa1100_xp860.c                    |   14 
 b/drivers/pcmcia/sa1100_yopy.c                     |   15 
 b/drivers/s390/block/dasd.c                        |    4 
 b/drivers/s390/block/dasd_genhd.c                  |    3 
 b/drivers/s390/block/xpram.c                       |   18 
 b/drivers/sbus/char/jsflash.c                      |   50 
 b/drivers/scsi/BusLogic.c                          |   66 
 b/drivers/scsi/BusLogic.h                          |    2 
 b/drivers/scsi/NCR5380.c                           |   27 
 b/drivers/scsi/aacraid/Makefile                    |    4 
 b/drivers/scsi/aacraid/linit.c                     |   43 
 b/drivers/scsi/advansys.c                          |   60 
 b/drivers/scsi/advansys.h                          |    2 
 b/drivers/scsi/aic7xxx/aic7xxx_linux.c             |   28 
 b/drivers/scsi/aic7xxx/aic7xxx_linux_host.h        |    2 
 b/drivers/scsi/cpqfc.Readme                        |    2 
 b/drivers/scsi/cpqfcTSinit.c                       |    8 
 b/drivers/scsi/cpqfcTSstructs.h                    |    2 
 b/drivers/scsi/dpt_i2o.c                           |   23 
 b/drivers/scsi/dpti.h                              |    5 
 b/drivers/scsi/eata.c                              |   79 
 b/drivers/scsi/eata.h                              |    2 
 b/drivers/scsi/esp.c                               |    5 
 b/drivers/scsi/fcal.c                              |   23 
 b/drivers/scsi/fcal.h                              |    2 
 b/drivers/scsi/hosts.c                             |    1 
 b/drivers/scsi/hosts.h                             |   12 
 b/drivers/scsi/ips.c                               |   10 
 b/drivers/scsi/ips.h                               |    6 
 b/drivers/scsi/ncr53c8xx.c                         |   94 
 b/drivers/scsi/ncr53c8xx.h                         |    2 
 b/drivers/scsi/pluto.c                             |   25 
 b/drivers/scsi/pluto.h                             |    2 
 b/drivers/scsi/qla1280.c                           |   51 
 b/drivers/scsi/qla1280.h                           |    3 
 b/drivers/scsi/scsi.c                              |   56 
 b/drivers/scsi/scsi.h                              |   13 
 b/drivers/scsi/scsi_error.c                        |  275 +-
 b/drivers/scsi/scsi_ioctl.c                        |   42 
 b/drivers/scsi/scsi_lib.c                          |   53 
 b/drivers/scsi/scsi_scan.c                         |    8 
 b/drivers/scsi/scsi_syms.c                         |    1 
 b/drivers/scsi/sd.c                                |   11 
 b/drivers/scsi/sg.c                                |    4 
 b/drivers/scsi/sr.c                                |   63 
 b/drivers/scsi/sr.h                                |    6 
 b/drivers/scsi/sr_ioctl.c                          |  275 +-
 b/drivers/scsi/sr_vendor.c                         |  115 -
 b/drivers/scsi/st.c                                |  124 -
 b/drivers/scsi/st.h                                |    1 
 b/drivers/scsi/sym53c416.c                         |  114 -
 b/drivers/scsi/sym53c8xx.c                         |   95 
 b/drivers/scsi/sym53c8xx.h                         |    2 
 b/drivers/scsi/sym53c8xx_2/sym53c8xx.h             |    3 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c              |  106 -
 b/drivers/serial/8250.c                            |    2 
 b/drivers/serial/8250_acorn.c                      |  150 +
 b/drivers/serial/Config.help                       |   17 
 b/drivers/serial/Config.in                         |   10 
 b/drivers/serial/Makefile                          |    1 
 b/drivers/serial/core.c                            |    2 
 b/drivers/tc/zs.c                                  |    2 
 b/drivers/usb/core/hcd-pci.c                       |    3 
 b/drivers/usb/core/hub.c                           |   12 
 b/drivers/usb/core/inode.c                         |   33 
 b/drivers/usb/core/message.c                       |   30 
 b/drivers/usb/core/urb.c                           |    2 
 b/drivers/usb/core/usb.c                           |   37 
 b/drivers/usb/host/ehci-hcd.c                      |    3 
 b/drivers/usb/host/hc_sl811.c                      |    3 
 b/drivers/usb/host/ohci-pci.c                      |    3 
 b/drivers/usb/host/ohci-sa1111.c                   |    5 
 b/drivers/usb/host/uhci-hcd.c                      |    3 
 b/drivers/usb/input/wacom.c                        |    1 
 b/drivers/usb/media/Makefile                       |    2 
 b/drivers/usb/media/vicam.c                        | 1928 +++++++++++--------
 b/drivers/usb/net/usbnet.c                         |    2 
 b/drivers/usb/serial/io_ti.c                       |   76 
 b/drivers/usb/serial/usb-serial.c                  |   26 
 b/drivers/usb/serial/visor.c                       |    2 
 b/drivers/usb/serial/whiteheat.c                   |   18 
 b/drivers/usb/storage/datafab.c                    |   11 
 b/drivers/usb/storage/freecom.c                    |   90 
 b/drivers/usb/storage/initializers.c               |    2 
 b/drivers/usb/storage/isd200.c                     |   42 
 b/drivers/usb/storage/jumpshot.c                   |   34 
 b/drivers/usb/storage/raw_bulk.c                   |  213 --
 b/drivers/usb/storage/raw_bulk.h                   |   15 
 b/drivers/usb/storage/sddr09.c                     |   50 
 b/drivers/usb/storage/sddr55.c                     |   10 
 b/drivers/usb/storage/shuttle_usbat.c              |  270 +-
 b/drivers/usb/storage/transport.c                  |  278 +-
 b/drivers/usb/storage/transport.h                  |   24 
 b/drivers/usb/storage/usb.c                        |    6 
 b/drivers/usb/storage/usb.h                        |    4 
 b/drivers/video/acornfb.c                          |  188 -
 b/drivers/video/acornfb.h                          |    3 
 b/drivers/video/clps711xfb.c                       |  174 +
 b/drivers/video/cyber2000fb.c                      |  738 ++++---
 b/drivers/video/cyber2000fb.h                      |   71 
 b/fs/Config.help                                   |   15 
 b/fs/Config.in                                     |   11 
 b/fs/Makefile                                      |    7 
 b/fs/adfs/dir_f.c                                  |   10 
 b/fs/adfs/dir_fplus.c                              |    8 
 b/fs/afs/Makefile                                  |   36 
 b/fs/afs/cache-layout.h                            |  224 ++
 b/fs/afs/callback.c                                |  168 +
 b/fs/afs/cell.c                                    |  452 ++++
 b/fs/afs/cell.h                                    |   63 
 b/fs/afs/cmservice.c                               |  639 ++++++
 b/fs/afs/cmservice.h                               |   27 
 b/fs/afs/dir.c                                     |  642 ++++++
 b/fs/afs/errors.h                                  |   34 
 b/fs/afs/file.c                                    |  143 +
 b/fs/afs/fsclient.c                                |  816 ++++++++
 b/fs/afs/fsclient.h                                |   53 
 b/fs/afs/inode.c                                   |  418 ++++
 b/fs/afs/internal.h                                |  127 +
 b/fs/afs/kafsasyncd.c                              |  260 ++
 b/fs/afs/kafsasyncd.h                              |   49 
 b/fs/afs/kafstimod.c                               |  211 ++
 b/fs/afs/kafstimod.h                               |   45 
 b/fs/afs/main.c                                    |  193 +
 b/fs/afs/misc.c                                    |   39 
 b/fs/afs/mntpt.c                                   |  112 +
 b/fs/afs/mount.h                                   |   23 
 b/fs/afs/proc.c                                    |  739 +++++++
 b/fs/afs/server.c                                  |  489 ++++
 b/fs/afs/server.h                                  |   97 
 b/fs/afs/super.c                                   |  595 +++++
 b/fs/afs/super.h                                   |   43 
 b/fs/afs/transport.h                               |   21 
 b/fs/afs/types.h                                   |  152 +
 b/fs/afs/vlclient.c                                |  662 ++++++
 b/fs/afs/vlclient.h                                |   95 
 b/fs/afs/vlocation.c                               |  824 ++++++++
 b/fs/afs/vnode.c                                   |  316 +++
 b/fs/afs/vnode.h                                   |   88 
 b/fs/afs/volume.c                                  |  430 ++++
 b/fs/afs/volume.h                                  |   92 
 b/fs/aio.c                                         |    8 
 b/fs/bio.c                                         |  125 -
 b/fs/block_dev.c                                   |  120 -
 b/fs/buffer.c                                      |   67 
 b/fs/cifs/asn1.c                                   |    2 
 b/fs/cifs/cifs_debug.c                             |    2 
 b/fs/cifs/cifs_debug.h                             |    2 
 b/fs/cifs/cifssmb.c                                |  110 -
 b/fs/cifs/connect.c                                |   55 
 b/fs/cifs/file.c                                   |    7 
 b/fs/cifs/inode.c                                  |    3 
 b/fs/cifs/nterr.c                                  |    6 
 b/fs/dcache.c                                      |   51 
 b/fs/dcookies.c                                    |  323 +++
 b/fs/direct-io.c                                   |   33 
 b/fs/dquot.c                                       |   28 
 b/fs/exec.c                                        |  125 +
 b/fs/ext2/ialloc.c                                 |    3 
 b/fs/ext2/inode.c                                  |   10 
 b/fs/ext3/ialloc.c                                 |    9 
 b/fs/fat/inode.c                                   |  266 +-
 b/fs/fcntl.c                                       |    1 
 b/fs/file_table.c                                  |    1 
 b/fs/fs-writeback.c                                |    1 
 b/fs/inode.c                                       |   49 
 b/fs/intermezzo/Makefile                           |   10 
 b/fs/intermezzo/cache.c                            |  187 -
 b/fs/intermezzo/dcache.c                           |  342 ++-
 b/fs/intermezzo/dir.c                              | 1113 +++++++----
 b/fs/intermezzo/ext_attr.c                         |   46 
 b/fs/intermezzo/file.c                             |  484 ++--
 b/fs/intermezzo/fileset.c                          |  676 ++++++
 b/fs/intermezzo/inode.c                            |  138 -
 b/fs/intermezzo/journal.c                          | 1464 +++++++++-----
 b/fs/intermezzo/journal_ext2.c                     |   39 
 b/fs/intermezzo/journal_ext3.c                     |  148 +
 b/fs/intermezzo/journal_obdfs.c                    |   46 
 b/fs/intermezzo/journal_reiserfs.c                 |   67 
 b/fs/intermezzo/journal_tmpfs.c                    |  109 +
 b/fs/intermezzo/journal_xfs.c                      |   53 
 b/fs/intermezzo/kml_reint.c                        |  753 ++++---
 b/fs/intermezzo/kml_unpack.c                       |  708 +++++++
 b/fs/intermezzo/methods.c                          |   53 
 b/fs/intermezzo/presto.c                           |  957 ++-------
 b/fs/intermezzo/psdev.c                            | 1460 ++------------
 b/fs/intermezzo/replicator.c                       |  291 ++
 b/fs/intermezzo/super.c                            |  502 +---
 b/fs/intermezzo/sysctl.c                           |  132 -
 b/fs/intermezzo/upcall.c                           |  616 ++++--
 b/fs/intermezzo/vfs.c                              | 1069 ++++++----
 b/fs/jffs/intrep.c                                 |    5 
 b/fs/jffs2/background.c                            |    7 
 b/fs/jfs/jfs_dtree.c                               |    6 
 b/fs/jfs/jfs_mount.c                               |    4 
 b/fs/msdos/namei.c                                 |    6 
 b/fs/nfs/Makefile                                  |    1 
 b/fs/nfs/file.c                                    |    6 
 b/fs/nfs/inode.c                                   |  582 ++++-
 b/fs/nfs/nfs2xdr.c                                 |   29 
 b/fs/nfs/nfs3proc.c                                |   40 
 b/fs/nfs/nfs3xdr.c                                 |   18 
 b/fs/nfs/nfs4proc.c                                | 1577 +++++++++++++++
 b/fs/nfs/nfs4renewd.c                              |  110 +
 b/fs/nfs/nfs4state.c                               |   81 
 b/fs/nfs/nfs4xdr.c                                 | 1777 +++++++++++++++++
 b/fs/nfs/proc.c                                    |   53 
 b/fs/nfsd/export.c                                 |    3 
 b/fs/open.c                                        |    1 
 b/fs/partitions/check.c                            |  456 ++--
 b/fs/proc/proc_misc.c                              |    7 
 b/fs/proc/proc_tty.c                               |    3 
 b/fs/qnx4/dir.c                                    |   14 
 b/fs/qnx4/file.c                                   |   16 
 b/fs/qnx4/inode.c                                  |   61 
 b/fs/smbfs/sock.c                                  |   79 
 b/fs/vfat/namei.c                                  |  110 -
 b/fs/xfs/linux/xfs_aops.c                          |  243 --
 b/fs/xfs/linux/xfs_fs_subr.c                       |    2 
 b/fs/xfs/linux/xfs_globals.c                       |    9 
 b/fs/xfs/linux/xfs_globals.h                       |    1 
 b/fs/xfs/linux/xfs_ioctl.c                         |   12 
 b/fs/xfs/linux/xfs_iops.c                          |   64 
 b/fs/xfs/linux/xfs_iops.h                          |    1 
 b/fs/xfs/linux/xfs_linux.h                         |    4 
 b/fs/xfs/linux/xfs_lrw.c                           |  285 +-
 b/fs/xfs/linux/xfs_lrw.h                           |    8 
 b/fs/xfs/linux/xfs_super.c                         |  195 -
 b/fs/xfs/linux/xfs_super.h                         |   10 
 b/fs/xfs/linux/xfs_sysctl.c                        |   61 
 b/fs/xfs/linux/xfs_sysctl.h                        |   15 
 b/fs/xfs/linux/xfs_vfs.h                           |   10 
 b/fs/xfs/linux/xfs_vnode.c                         |   46 
 b/fs/xfs/linux/xfs_vnode.h                         |   27 
 b/fs/xfs/pagebuf/page_buf.c                        |   27 
 b/fs/xfs/pagebuf/page_buf.h                        |   45 
 b/fs/xfs/pagebuf/page_buf_locking.c                |   81 
 b/fs/xfs/support/debug.c                           |   39 
 b/fs/xfs/support/move.c                            |    4 
 b/fs/xfs/support/move.h                            |    5 
 b/fs/xfs/support/uuid.c                            |    4 
 b/fs/xfs/xfs_alloc.c                               |   22 
 b/fs/xfs/xfs_alloc_btree.c                         |   36 
 b/fs/xfs/xfs_arch.h                                |    4 
 b/fs/xfs/xfs_attr.c                                |    6 
 b/fs/xfs/xfs_attr_fetch.c                          |    2 
 b/fs/xfs/xfs_attr_leaf.c                           |   92 
 b/fs/xfs/xfs_bmap.c                                |   98 
 b/fs/xfs/xfs_bmap_btree.c                          |  321 ++-
 b/fs/xfs/xfs_bmap_btree.h                          |   55 
 b/fs/xfs/xfs_btree.c                               |    6 
 b/fs/xfs/xfs_buf_item.c                            |    2 
 b/fs/xfs/xfs_clnt.h                                |    9 
 b/fs/xfs/xfs_da_btree.c                            |   40 
 b/fs/xfs/xfs_dir.c                                 |   10 
 b/fs/xfs/xfs_dir2.c                                |    6 
 b/fs/xfs/xfs_dir2_block.c                          |   14 
 b/fs/xfs/xfs_dir2_data.c                           |    2 
 b/fs/xfs/xfs_dir2_leaf.c                           |   30 
 b/fs/xfs/xfs_dir2_node.c                           |   24 
 b/fs/xfs/xfs_dir2_sf.c                             |   32 
 b/fs/xfs/xfs_dir2_sf.h                             |    2 
 b/fs/xfs/xfs_dir2_trace.c                          |    4 
 b/fs/xfs/xfs_dir_leaf.c                            |   74 
 b/fs/xfs/xfs_dir_sf.h                              |    2 
 b/fs/xfs/xfs_dquot.c                               |   14 
 b/fs/xfs/xfs_error.c                               |   16 
 b/fs/xfs/xfs_fs.h                                  |   12 
 b/fs/xfs/xfs_fsops.c                               |   16 
 b/fs/xfs/xfs_ialloc.c                              |    4 
 b/fs/xfs/xfs_ialloc_btree.c                        |   36 
 b/fs/xfs/xfs_iget.c                                |   69 
 b/fs/xfs/xfs_inode.c                               |  143 -
 b/fs/xfs/xfs_inode.h                               |   24 
 b/fs/xfs/xfs_inode_item.c                          |   42 
 b/fs/xfs/xfs_inode_item.h                          |    5 
 b/fs/xfs/xfs_itable.c                              |    2 
 b/fs/xfs/xfs_log.c                                 |   66 
 b/fs/xfs/xfs_log_recover.c                         |   66 
 b/fs/xfs/xfs_mount.c                               |  106 -
 b/fs/xfs/xfs_mount.h                               |   15 
 b/fs/xfs/xfs_qm.c                                  |   37 
 b/fs/xfs/xfs_qm_syscalls.c                         |    6 
 b/fs/xfs/xfs_quota_priv.h                          |    2 
 b/fs/xfs/xfs_rtalloc.c                             |    4 
 b/fs/xfs/xfs_rw.c                                  |    4 
 b/fs/xfs/xfs_rw.h                                  |    2 
 b/fs/xfs/xfs_trans.c                               |    1 
 b/fs/xfs/xfs_trans.h                               |    5 
 b/fs/xfs/xfs_trans_buf.c                           |    4 
 b/fs/xfs/xfs_trans_inode.c                         |   14 
 b/fs/xfs/xfs_types.h                               |   30 
 b/fs/xfs/xfs_utils.c                               |    4 
 b/fs/xfs/xfs_utils.h                               |    2 
 b/fs/xfs/xfs_vfsops.c                              |  213 +-
 b/fs/xfs/xfs_vnodeops.c                            |   27 
 b/fs/xfs/xfsidbg.c                                 |  315 ++-
 b/include/asm-alpha/elf.h                          |   78 
 b/include/asm-alpha/mmu_context.h                  |    2 
 b/include/asm-alpha/posix_types.h                  |    2 
 b/include/asm-arm/arch-ebsa285/time.h              |    4 
 b/include/asm-arm/arch-rpc/ide.h                   |    2 
 b/include/asm-arm/arch-rpc/serial.h                |    2 
 b/include/asm-arm/arch-rpc/uncompress.h            |   24 
 b/include/asm-arm/arch-sa1100/irqs.h               |    2 
 b/include/asm-arm/arch-sa1100/time.h               |    2 
 b/include/asm-arm/ecard.h                          |   29 
 b/include/asm-arm/glue.h                           |  118 -
 b/include/asm-arm/hardirq.h                        |   12 
 b/include/asm-arm/hardware/sa1111.h                |   14 
 b/include/asm-arm/ide.h                            |    1 
 b/include/asm-arm/numnodes.h                       |   17 
 b/include/asm-arm/page.h                           |   64 
 b/include/asm-arm/pci.h                            |    4 
 b/include/asm-arm/pgalloc.h                        |    3 
 b/include/asm-arm/pgtable.h                        |    1 
 b/include/asm-arm/proc-armo/system.h               |    2 
 b/include/asm-arm/proc-armv/pgalloc.h              |    1 
 b/include/asm-arm/proc-armv/tlbflush.h             |  234 +-
 b/include/asm-arm/processor.h                      |   26 
 b/include/asm-arm/procinfo.h                       |    2 
 b/include/asm-arm/tlb.h                            |   77 
 b/include/asm-cris/uaccess.h                       |   24 
 b/include/asm-i386/apicdef.h                       |    8 
 b/include/asm-i386/hw_irq.h                        |   49 
 b/include/asm-i386/mpspec.h                        |    6 
 b/include/asm-i386/msr.h                           |    6 
 b/include/asm-i386/nmi.h                           |   49 
 b/include/asm-i386/smp.h                           |   14 
 b/include/asm-i386/smpboot.h                       |    9 
 b/include/asm-i386/unistd.h                        |    2 
 b/include/asm-sparc64/checksum.h                   |   41 
 b/include/asm-sparc64/irq.h                        |    2 
 b/include/asm-sparc64/semaphore.h                  |  182 -
 b/include/asm-um/cache.h                           |    3 
 b/include/asm-um/smp.h                             |   17 
 b/include/asm-um/thread_info.h                     |    4 
 b/include/asm-x86_64/acpi.h                        |  147 +
 b/include/asm-x86_64/agp.h                         |    4 
 b/include/asm-x86_64/apic.h                        |    8 
 b/include/asm-x86_64/bitops.h                      |   26 
 b/include/asm-x86_64/cacheflush.h                  |    6 
 b/include/asm-x86_64/calling.h                     |    2 
 b/include/asm-x86_64/cpufeature.h                  |    2 
 b/include/asm-x86_64/desc.h                        |  118 -
 b/include/asm-x86_64/e820.h                        |   45 
 b/include/asm-x86_64/elf.h                         |    4 
 b/include/asm-x86_64/hardirq.h                     |  131 -
 b/include/asm-x86_64/ia32_unistd.h                 |   12 
 b/include/asm-x86_64/ide.h                         |    2 
 b/include/asm-x86_64/io.h                          |    6 
 b/include/asm-x86_64/io_apic.h                     |    8 
 b/include/asm-x86_64/ipc.h                         |    4 
 b/include/asm-x86_64/kmap_types.h                  |    2 
 b/include/asm-x86_64/ldt.h                         |    2 
 b/include/asm-x86_64/mman.h                        |    2 
 b/include/asm-x86_64/mmu_context.h                 |    6 
 b/include/asm-x86_64/mpspec.h                      |   12 
 b/include/asm-x86_64/page.h                        |    8 
 b/include/asm-x86_64/param.h                       |   10 
 b/include/asm-x86_64/pci-direct.h                  |   29 
 b/include/asm-x86_64/pci.h                         |  176 -
 b/include/asm-x86_64/pda.h                         |    3 
 b/include/asm-x86_64/percpu.h                      |   45 
 b/include/asm-x86_64/pgtable.h                     |   11 
 b/include/asm-x86_64/processor.h                   |   15 
 b/include/asm-x86_64/proto.h                       |   49 
 b/include/asm-x86_64/ptrace.h                      |    1 
 b/include/asm-x86_64/rmap.h                        |    7 
 b/include/asm-x86_64/rtc.h                         |   10 
 b/include/asm-x86_64/rwsem.h                       |   68 
 b/include/asm-x86_64/sections.h                    |    7 
 b/include/asm-x86_64/segment.h                     |   13 
 b/include/asm-x86_64/semaphore.h                   |    2 
 b/include/asm-x86_64/signal.h                      |    2 
 b/include/asm-x86_64/smp.h                         |   51 
 b/include/asm-x86_64/socket.h                      |    2 
 b/include/asm-x86_64/softirq.h                     |   37 
 b/include/asm-x86_64/spinlock.h                    |    6 
 b/include/asm-x86_64/system.h                      |   33 
 b/include/asm-x86_64/thread_info.h                 |   12 
 b/include/asm-x86_64/timex.h                       |    6 
 b/include/asm-x86_64/types.h                       |    5 
 b/include/asm-x86_64/unistd.h                      |   38 
 b/include/asm-x86_64/user.h                        |    1 
 b/include/asm-x86_64/vsyscall.h                    |   41 
 b/include/asm-x86_64/xor.h                         |   12 
 b/include/linux/blkdev.h                           |   13 
 b/include/linux/blkpg.h                            |    1 
 b/include/linux/buffer_head.h                      |    1 
 b/include/linux/cdrom.h                            |    1 
 b/include/linux/dcache.h                           |   14 
 b/include/linux/dcookies.h                         |   69 
 b/include/linux/device.h                           |    3 
 b/include/linux/fs.h                               |    2 
 b/include/linux/fsfilter.h                         |    9 
 b/include/linux/genhd.h                            |   21 
 b/include/linux/intermezzo_fs.h                    | 1143 ++++++-----
 b/include/linux/intermezzo_psdev.h                 |   69 
 b/include/linux/mm.h                               |   23 
 b/include/linux/module.h                           |   14 
 b/include/linux/msdos_fs_sb.h                      |    2 
 b/include/linux/mtd/concat.h                       |   23 
 b/include/linux/net.h                              |   17 
 b/include/linux/netfilter_ipv4/ip_conntrack_core.h |    2 
 b/include/linux/nfs.h                              |    2 
 b/include/linux/nfs3.h                             |    5 
 b/include/linux/nfs4_mount.h                       |   70 
 b/include/linux/nfs_fs.h                           |   49 
 b/include/linux/nfs_fs_sb.h                        |   10 
 b/include/linux/nfs_mount.h                        |    8 
 b/include/linux/nfs_xdr.h                          |  262 ++
 b/include/linux/oprofile.h                         |   98 
 b/include/linux/profile.h                          |   67 
 b/include/linux/rcupdate.h                         |  134 +
 b/include/linux/sched.h                            |    4 
 b/include/linux/suspend.h                          |    2 
 b/include/linux/swap.h                             |    2 
 b/include/linux/sysctl.h                           |    7 
 b/include/linux/tcp.h                              |    3 
 b/include/linux/tty_driver.h                       |   10 
 b/include/linux/usb.h                              |   37 
 b/include/linux/vcache.h                           |    2 
 b/include/linux/videodev.h                         |    1 
 b/include/linux/writeback.h                        |    2 
 b/include/net/arp.h                                |    1 
 b/include/net/bluetooth/bluetooth.h                |   80 
 b/include/net/bluetooth/hci.h                      |    4 
 b/include/net/bluetooth/hci_core.h                 |    2 
 b/include/net/flow.h                               |   70 
 b/include/net/inet_common.h                        |    6 
 b/include/net/ip.h                                 |    8 
 b/include/net/ip6_fib.h                            |    8 
 b/include/net/ip_fib.h                             |   42 
 b/include/net/route.h                              |   41 
 b/include/net/sock.h                               |   34 
 b/include/net/tcp.h                                |   20 
 b/include/net/udp.h                                |    3 
 b/include/rxrpc/call.h                             |  218 ++
 b/include/rxrpc/connection.h                       |   83 
 b/include/rxrpc/krxiod.h                           |   27 
 b/include/rxrpc/krxsecd.h                          |   22 
 b/include/rxrpc/krxtimod.h                         |   45 
 b/include/rxrpc/message.h                          |   72 
 b/include/rxrpc/packet.h                           |  128 +
 b/include/rxrpc/peer.h                             |   80 
 b/include/rxrpc/rxrpc.h                            |   29 
 b/include/rxrpc/transport.h                        |  115 +
 b/include/rxrpc/types.h                            |   39 
 b/include/sound/asound.h                           |    3 
 b/include/sound/core.h                             |    1 
 b/include/sound/info.h                             |    6 
 b/include/sound/version.h                          |    2 
 b/init/main.c                                      |   23 
 b/kernel/Makefile                                  |    8 
 b/kernel/exit.c                                    |   10 
 b/kernel/futex.c                                   |   29 
 b/kernel/ksyms.c                                   |   16 
 b/kernel/profile.c                                 |  121 +
 b/kernel/rcupdate.c                                |  242 ++
 b/kernel/sched.c                                   |    5 
 b/kernel/sys.c                                     |    2 
 b/kernel/sysctl.c                                  |   10 
 b/kernel/timer.c                                   |    4 
 b/mm/filemap.c                                     |    1 
 b/mm/memory.c                                      |  224 --
 b/mm/mmap.c                                        |    8 
 b/mm/msync.c                                       |    5 
 b/mm/page-writeback.c                              |   94 
 b/mm/page_alloc.c                                  |    2 
 b/mm/swap.c                                        |   12 
 b/mm/vcache.c                                      |   19 
 b/mm/vmscan.c                                      |  264 ++
 b/net/Makefile                                     |    3 
 b/net/appletalk/ddp.c                              |    8 
 b/net/atm/clip.c                                   |    3 
 b/net/atm/common.c                                 |    8 
 b/net/atm/common.h                                 |    8 
 b/net/ax25/af_ax25.c                               |    7 
 b/net/bluetooth/Config.help                        |   14 
 b/net/bluetooth/Makefile                           |   12 
 b/net/bluetooth/af_bluetooth.c                     |  112 -
 b/net/bluetooth/bnep/Config.help                   |    6 
 b/net/bluetooth/bnep/Config.in                     |    8 
 b/net/bluetooth/bnep/Makefile                      |    2 
 b/net/bluetooth/bnep/core.c                        |   53 
 b/net/bluetooth/bnep/netdev.c                      |   12 
 b/net/bluetooth/bnep/sock.c                        |    8 
 b/net/bluetooth/hci_conn.c                         |    2 
 b/net/bluetooth/hci_core.c                         |   40 
 b/net/bluetooth/hci_event.c                        |   20 
 b/net/bluetooth/hci_sock.c                         |   32 
 b/net/bluetooth/l2cap.c                            |   96 
 b/net/bluetooth/lib.c                              |    8 
 b/net/bluetooth/rfcomm/Config.help                 |    4 
 b/net/bluetooth/rfcomm/Config.in                   |    6 
 b/net/bluetooth/rfcomm/Makefile                    |    4 
 b/net/bluetooth/rfcomm/core.c                      |   54 
 b/net/bluetooth/rfcomm/sock.c                      |   63 
 b/net/bluetooth/rfcomm/tty.c                       |    2 
 b/net/bluetooth/sco.c                              |   72 
 b/net/bluetooth/syms.c                             |   33 
 b/net/core/netfilter.c                             |   18 
 b/net/core/sock.c                                  |    8 
 b/net/decnet/af_decnet.c                           |    8 
 b/net/econet/af_econet.c                           |    9 
 b/net/ipv4/Makefile                                |    2 
 b/net/ipv4/af_inet.c                               |   42 
 b/net/ipv4/arp.c                                   |  167 -
 b/net/ipv4/fib_frontend.c                          |   95 
 b/net/ipv4/fib_hash.c                              |   49 
 b/net/ipv4/fib_rules.c                             |   20 
 b/net/ipv4/fib_semantics.c                         |   59 
 b/net/ipv4/icmp.c                                  |   32 
 b/net/ipv4/igmp.c                                  |   14 
 b/net/ipv4/ip_gre.c                                |   42 
 b/net/ipv4/ip_nat_dumb.c                           |   20 
 b/net/ipv4/ip_output.c                             |   32 
 b/net/ipv4/ip_proc.c                               |  373 +++
 b/net/ipv4/ipip.c                                  |   31 
 b/net/ipv4/ipmr.c                                  |   15 
 b/net/ipv4/netfilter/ip_conntrack_core.c           |   20 
 b/net/ipv4/netfilter/ip_conntrack_standalone.c     |    5 
 b/net/ipv4/netfilter/ip_fw_compat_masq.c           |    3 
 b/net/ipv4/netfilter/ip_nat_core.c                 |    5 
 b/net/ipv4/netfilter/ipt_MASQUERADE.c              |   23 
 b/net/ipv4/netfilter/ipt_MIRROR.c                  |    7 
 b/net/ipv4/netfilter/ipt_REJECT.c                  |   30 
 b/net/ipv4/netfilter/ipt_unclean.c                 |    7 
 b/net/ipv4/raw.c                                   |   17 
 b/net/ipv4/route.c                                 |  324 +--
 b/net/ipv4/syncookies.c                            |   19 
 b/net/ipv4/sysctl_net_ipv4.c                       |    2 
 b/net/ipv4/tcp.c                                   |    5 
 b/net/ipv4/tcp_input.c                             |  126 +
 b/net/ipv4/tcp_ipv4.c                              |   23 
 b/net/ipv4/tcp_minisocks.c                         |    3 
 b/net/ipv4/tcp_timer.c                             |    6 
 b/net/ipv4/udp.c                                   |   75 
 b/net/ipv6/Config.in                               |    3 
 b/net/ipv6/Makefile                                |    1 
 b/net/ipv6/ip6_fib.c                               |    1 
 b/net/ipv6/netfilter/ip6t_LOG.c                    |   37 
 b/net/ipv6/netfilter/ip6table_mangle.c             |    2 
 b/net/ipv6/raw.c                                   |    4 
 b/net/ipv6/route.c                                 |  301 --
 b/net/ipv6/sit.c                                   |   20 
 b/net/ipv6/udp.c                                   |    8 
 b/net/ipx/af_ipx.c                                 |    8 
 b/net/irda/af_irda.c                               |   32 
 b/net/llc/af_llc.c                                 |    9 
 b/net/llc/llc_proc.c                               |    4 
 b/net/netlink/af_netlink.c                         |    6 
 b/net/netrom/af_netrom.c                           |    8 
 b/net/packet/af_packet.c                           |   10 
 b/net/rose/af_rose.c                               |    9 
 b/net/rxrpc/Makefile                               |   33 
 b/net/rxrpc/call.c                                 | 2122 +++++++++++++++++++++
 b/net/rxrpc/connection.c                           |  687 ++++++
 b/net/rxrpc/internal.h                             |  107 +
 b/net/rxrpc/krxiod.c                               |  262 ++
 b/net/rxrpc/krxsecd.c                              |  278 ++
 b/net/rxrpc/krxtimod.c                             |  210 ++
 b/net/rxrpc/main.c                                 |  127 +
 b/net/rxrpc/peer.c                                 |  380 +++
 b/net/rxrpc/proc.c                                 |  612 ++++++
 b/net/rxrpc/rxrpc_syms.c                           |   51 
 b/net/rxrpc/sysctl.c                               |   73 
 b/net/rxrpc/transport.c                            |  824 ++++++++
 b/net/sched/cls_route.c                            |    2 
 b/net/sctp/protocol.c                              |   12 
 b/net/sctp/socket.c                                |    7 
 b/net/socket.c                                     |  135 -
 b/net/unix/af_unix.c                               |   12 
 b/net/wanrouter/af_wanpipe.c                       |    9 
 b/net/x25/af_x25.c                                 |    7 
 b/sound/core/control.c                             |   38 
 b/sound/core/info_oss.c                            |    2 
 b/sound/core/init.c                                |    2 
 b/sound/core/ioctl32/ioctl32.c                     |   81 
 b/sound/core/ioctl32/ioctl32.h                     |   38 
 b/sound/core/ioctl32/pcm32.c                       |   53 
 b/sound/core/memory.c                              |    8 
 b/sound/core/oss/mixer_oss.c                       |  174 +
 b/sound/core/oss/pcm_oss.c                         |    4 
 b/sound/core/pcm_lib.c                             |   66 
 b/sound/core/pcm_native.c                          |  134 -
 b/sound/core/rawmidi.c                             |    8 
 b/sound/core/seq/oss/seq_oss_readq.c               |    7 
 b/sound/core/seq/oss/seq_oss_synth.c               |    4 
 b/sound/core/seq/oss/seq_oss_writeq.c              |    4 
 b/sound/core/seq/seq.c                             |    4 
 b/sound/core/seq/seq_clientmgr.c                   |    8 
 b/sound/core/seq/seq_fifo.c                        |    4 
 b/sound/core/seq/seq_lock.c                        |    2 
 b/sound/core/seq/seq_lock.h                        |    9 
 b/sound/core/seq/seq_memory.c                      |   12 
 b/sound/core/sound.c                               |   11 
 b/sound/core/sound_oss.c                           |   12 
 b/sound/core/timer.c                               |    4 
 b/sound/isa/es18xx.c                               |   24 
 b/sound/isa/opl3sa2.c                              |    1 
 b/sound/isa/sb/emu8000.c                           |    2 
 b/sound/isa/wavefront/wavefront_synth.c            |    2 
 b/sound/oss/dmabuf.c                               |    6 
 b/sound/pci/Config.help                            |    2 
 b/sound/pci/Config.in                              |   21 
 b/sound/pci/emu10k1/emufx.c                        |   27 
 b/sound/pci/ens1370.c                              |    6 
 b/sound/pci/ymfpci/ymfpci_main.c                   |    6 
 b/sound/usb/usbaudio.c                             |   28 
 b/sound/usb/usbmixer.c                             |  381 ++-
 b/sound/usb/usbmixer_maps.c                        |  100 
 b/sound/usb/usbquirks.h                            |   66 
 drivers/acorn/char/keyb_ps2.c                      |  416 ----
 drivers/acorn/char/mouse_rpc.c                     |   91 
 drivers/acorn/char/serial-atomwide.c               |   23 
 drivers/acorn/char/serial-card.c                   |  120 -
 drivers/acorn/char/serial-dualsp.c                 |   21 
 drivers/block/blkpg.c                              |  310 ---
 drivers/block/block_ioctl.c                        |   83 
 drivers/mtd/bootldr.c                              |  214 --
 drivers/usb/media/vicam.h                          |   81 
 drivers/usb/media/vicamurbs.h                      |  332 ---
 fs/iobuf.c                                         |  125 -
 include/linux/iobuf.h                              |   88 
 include/net/ip6_fw.h                               |   54 
 mm_open                                            |   11 
 net/ipv6/ip6_fw.c                                  |  390 ---
 1103 files changed, 61374 insertions(+), 24712 deletions(-)

