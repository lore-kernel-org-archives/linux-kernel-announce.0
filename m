From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.35 released
Date: Sun, 15 Sep 2002 19:23:13 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200209160223.g8G2NDB15762@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.35 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.35.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.35.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                              1000741           4324915
Full source                       35506044         158300160

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/CREDITS                                     |    2 
 b/Documentation/DocBook/kernel-api.tmpl       |    2 
 b/Documentation/filesystems/directory-locking |   16 
 b/Documentation/filesystems/porting           |    2 
 b/Documentation/input/ff.txt                  |    7 
 b/Makefile                                    |   38 
 b/Rules.make                                  |   42 
 b/arch/alpha/Makefile                         |    3 
 b/arch/alpha/kernel/init_task.c               |    2 
 b/arch/alpha/kernel/pci.c                     |    2 
 b/arch/alpha/kernel/signal.c                  |  101 -
 b/arch/i386/config.in                         |    4 
 b/arch/i386/kernel/acpi.c                     |   10 
 b/arch/i386/kernel/cpu/intel.c                |    1 
 b/arch/i386/kernel/cpu/mtrr/cyrix.c           |  117 -
 b/arch/i386/kernel/cpu/mtrr/generic.c         |  261 ++-
 b/arch/i386/kernel/cpu/mtrr/main.c            |   47 
 b/arch/i386/kernel/cpu/mtrr/mtrr.h            |    3 
 b/arch/i386/kernel/cpu/mtrr/state.c           |  260 ---
 b/arch/i386/kernel/entry.S                    |    3 
 b/arch/i386/kernel/io_apic.c                  |    2 
 b/arch/i386/kernel/numaq.c                    |   24 
 b/arch/i386/kernel/smpboot.c                  |   12 
 b/arch/i386/kernel/time.c                     |   13 
 b/arch/i386/kernel/vm86.c                     |    9 
 b/arch/i386/mm/discontig.c                    |   53 
 b/arch/i386/pci/common.c                      |    4 
 b/arch/i386/pci/i386.c                        |    6 
 b/arch/i386/pci/pci.h                         |    2 
 b/arch/i386/pci/visws.c                       |    4 
 b/arch/ia64/Makefile                          |    3 
 b/arch/mips64/Makefile                        |    2 
 b/arch/ppc/kernel/irq.c                       |    3 
 b/arch/ppc/kernel/misc.S                      |    3 
 b/arch/ppc/kernel/pci.c                       |    9 
 b/arch/ppc/kernel/process.c                   |    2 
 b/arch/ppc/kernel/setup.c                     |   97 -
 b/arch/ppc/kernel/time.c                      |    8 
 b/arch/ppc/mm/pgtable.c                       |    5 
 b/arch/ppc/platforms/pmac_time.c              |    2 
 b/arch/ppc/platforms/prep_pci.c               |  105 -
 b/arch/ppc64/config.in                        |   94 -
 b/arch/ppc64/defconfig                        |  312 ++-
 b/arch/ppc64/kernel/align.c                   |    1 
 b/arch/ppc64/kernel/chrp_setup.c              |   27 
 b/arch/ppc64/kernel/eeh.c                     |   77 
 b/arch/ppc64/kernel/entry.S                   |    8 
 b/arch/ppc64/kernel/head.S                    |   21 
 b/arch/ppc64/kernel/iSeries_pci.c             |    2 
 b/arch/ppc64/kernel/iSeries_setup.c           |   13 
 b/arch/ppc64/kernel/idle.c                    |    1 
 b/arch/ppc64/kernel/init_task.c               |    2 
 b/arch/ppc64/kernel/ioctl32.c                 |    5 
 b/arch/ppc64/kernel/irq.c                     |   15 
 b/arch/ppc64/kernel/lmb.c                     |   21 
 b/arch/ppc64/kernel/misc.S                    |  234 +-
 b/arch/ppc64/kernel/mk_defs.c                 |    1 
 b/arch/ppc64/kernel/pSeries_lpar.c            |   88 -
 b/arch/ppc64/kernel/pSeries_pci.c             |  186 +-
 b/arch/ppc64/kernel/pci.c                     |    5 
 b/arch/ppc64/kernel/pci_dma.c                 |   14 
 b/arch/ppc64/kernel/pci_dn.c                  |   17 
 b/arch/ppc64/kernel/ppc_ksyms.c               |   18 
 b/arch/ppc64/kernel/process.c                 |   24 
 b/arch/ppc64/kernel/prom.c                    |   32 
 b/arch/ppc64/kernel/ptrace.c                  |    4 
 b/arch/ppc64/kernel/ptrace32.c                |    4 
 b/arch/ppc64/kernel/ras.c                     |    1 
 b/arch/ppc64/kernel/rtas.c                    |   36 
 b/arch/ppc64/kernel/setup.c                   |    8 
 b/arch/ppc64/kernel/signal.c                  |    1 
 b/arch/ppc64/kernel/smp.c                     |    3 
 b/arch/ppc64/kernel/sys32.S                   |   10 
 b/arch/ppc64/kernel/sys_ppc32.c               |  267 ---
 b/arch/ppc64/kernel/syscalls.c                |    2 
 b/arch/ppc64/kernel/time.c                    |    8 
 b/arch/ppc64/kernel/traps.c                   |    1 
 b/arch/ppc64/mm/fault.c                       |    1 
 b/arch/ppc64/mm/init.c                        |   43 
 b/arch/ppc64/xmon/xmon.c                      |    2 
 b/arch/sh/Makefile                            |    4 
 b/arch/sparc/config.in                        |    5 
 b/arch/sparc/defconfig                        |  305 +--
 b/arch/sparc/kernel/Makefile                  |    2 
 b/arch/sparc/kernel/check_asm.sh              |    3 
 b/arch/sparc/kernel/ebus.c                    |    4 
 b/arch/sparc/kernel/entry.S                   |    3 
 b/arch/sparc/kernel/init_task.c               |    2 
 b/arch/sparc/kernel/pcic.c                    |  200 +-
 b/arch/sparc/kernel/process.c                 |    6 
 b/arch/sparc/kernel/setup.c                   |  128 -
 b/arch/sparc/kernel/signal.c                  |  148 -
 b/arch/sparc/kernel/sparc-stub.c              |   14 
 b/arch/sparc/kernel/systbls.S                 |    2 
 b/arch/sparc/kernel/tadpole.c                 |   13 
 b/arch/sparc/kernel/tick14.c                  |   12 
 b/arch/sparc/kernel/time.c                    |   88 -
 b/arch/sparc/kernel/unaligned.c               |    9 
 b/arch/sparc/mm/srmmu.c                       |    8 
 b/arch/sparc/mm/sun4c.c                       |    7 
 b/arch/sparc/prom/misc.c                      |   10 
 b/arch/sparc64/defconfig                      |   18 
 b/arch/sparc64/kernel/entry.S                 |   66 
 b/arch/sparc64/kernel/init_task.c             |    2 
 b/arch/sparc64/kernel/pci.c                   |    2 
 b/arch/sparc64/kernel/power.c                 |    3 
 b/arch/sparc64/kernel/process.c               |    1 
 b/arch/sparc64/kernel/setup.c                 |   30 
 b/arch/sparc64/kernel/signal.c                |  117 -
 b/arch/sparc64/kernel/signal32.c              |  185 --
 b/arch/sparc64/kernel/sys_sparc32.c           |   44 
 b/arch/sparc64/kernel/systbls.S               |    4 
 b/arch/sparc64/kernel/time.c                  |   56 
 b/arch/sparc64/mm/init.c                      |    8 
 b/arch/sparc64/prom/misc.c                    |    2 
 b/arch/um/Makefile                            |  136 +
 b/arch/um/Makefile-i386                       |   34 
 b/arch/um/Makefile-ia64                       |    1 
 b/arch/um/Makefile-os-Linux                   |    7 
 b/arch/um/Makefile-ppc                        |    9 
 b/arch/um/boot/Makefile                       |    3 
 b/arch/um/config.in                           |   87 +
 b/arch/um/config.release                      |  335 ++++
 b/arch/um/config_block.in                     |   16 
 b/arch/um/config_char.in                      |   37 
 b/arch/um/config_net.in                       |   45 
 b/arch/um/config_scsi.in                      |   30 
 b/arch/um/defconfig                           |  389 ++++
 b/arch/um/drivers/Makefile                    |   84 +
 b/arch/um/drivers/chan_kern.c                 |  447 +++++
 b/arch/um/drivers/chan_user.c                 |  236 ++
 b/arch/um/drivers/daemon.h                    |   35 
 b/arch/um/drivers/daemon_kern.c               |  127 +
 b/arch/um/drivers/daemon_kern.h               |    8 
 b/arch/um/drivers/daemon_user.c               |  194 ++
 b/arch/um/drivers/fd.c                        |   92 +
 b/arch/um/drivers/harddog_kern.c              |  192 ++
 b/arch/um/drivers/harddog_user.c              |  134 +
 b/arch/um/drivers/hostaudio_kern.c            |  264 +++
 b/arch/um/drivers/hostaudio_user.c            |  149 +
 b/arch/um/drivers/line.c                      |  479 +++++
 b/arch/um/drivers/mcast.h                     |   32 
 b/arch/um/drivers/mcast_kern.c                |  154 +
 b/arch/um/drivers/mcast_kern.h                |    8 
 b/arch/um/drivers/mcast_user.c                |  175 ++
 b/arch/um/drivers/mconsole_kern.c             |  373 ++++
 b/arch/um/drivers/mconsole_user.c             |  206 ++
 b/arch/um/drivers/mmapper_kern.c              |  148 +
 b/arch/um/drivers/net_kern.c                  |  737 ++++++++
 b/arch/um/drivers/net_user.c                  |  232 ++
 b/arch/um/drivers/null.c                      |   53 
 b/arch/um/drivers/port.h                      |   30 
 b/arch/um/drivers/port_kern.c                 |  254 +++
 b/arch/um/drivers/port_user.c                 |  227 ++
 b/arch/um/drivers/pty.c                       |  156 +
 b/arch/um/drivers/slip.h                      |   34 
 b/arch/um/drivers/slip_kern.c                 |  109 +
 b/arch/um/drivers/slip_kern.h                 |    8 
 b/arch/um/drivers/slip_user.c                 |  333 ++++
 b/arch/um/drivers/ssl.c                       |  226 ++
 b/arch/um/drivers/ssl.h                       |   23 
 b/arch/um/drivers/stdio_console.c             |  211 ++
 b/arch/um/drivers/stdio_console.h             |   21 
 b/arch/um/drivers/tty.c                       |   82 
 b/arch/um/drivers/ubd_kern.c                  |  941 +++++++++++
 b/arch/um/drivers/ubd_user.c                  |  615 +++++++
 b/arch/um/drivers/xterm.c                     |  178 ++
 b/arch/um/include/2_5compat.h                 |   43 
 b/arch/um/include/Makefile                    |    7 
 b/arch/um/include/chan_kern.h                 |   53 
 b/arch/um/include/chan_user.h                 |   65 
 b/arch/um/include/debug.h                     |   26 
 b/arch/um/include/frame.h                     |   51 
 b/arch/um/include/frame_kern.h                |   34 
 b/arch/um/include/frame_user.h                |   23 
 b/arch/um/include/helper.h                    |   27 
 b/arch/um/include/hostaudio.h                 |   48 
 b/arch/um/include/init.h                      |  114 +
 b/arch/um/include/initrd.h                    |   22 
 b/arch/um/include/irq_user.h                  |   33 
 b/arch/um/include/kern.h                      |   47 
 b/arch/um/include/kern_util.h                 |  136 +
 b/arch/um/include/line.h                      |  102 +
 b/arch/um/include/mconsole.h                  |   92 +
 b/arch/um/include/mconsole_kern.h             |   48 
 b/arch/um/include/mem.h                       |   28 
 b/arch/um/include/mem_user.h                  |   88 +
 b/arch/um/include/net_kern.h                  |   75 
 b/arch/um/include/net_user.h                  |   57 
 b/arch/um/include/os.h                        |  121 +
 b/arch/um/include/process.h                   |   25 
 b/arch/um/include/ptrace_user.h               |   18 
 b/arch/um/include/sigcontext.h                |   27 
 b/arch/um/include/sigio.h                     |   26 
 b/arch/um/include/signal_kern.h               |   26 
 b/arch/um/include/signal_user.h               |   26 
 b/arch/um/include/syscall_user.h              |   26 
 b/arch/um/include/sysdep-i386/frame.h         |   28 
 b/arch/um/include/sysdep-i386/frame_kern.h    |   57 
 b/arch/um/include/sysdep-i386/frame_user.h    |   82 
 b/arch/um/include/sysdep-i386/ptrace.h        |  115 +
 b/arch/um/include/sysdep-i386/ptrace_user.h   |   62 
 b/arch/um/include/sysdep-i386/sigcontext.h    |   52 
 b/arch/um/include/sysdep-i386/syscalls.h      |   59 
 b/arch/um/include/sysdep-ia64/ptrace.h        |   26 
 b/arch/um/include/sysdep-ia64/sigcontext.h    |   20 
 b/arch/um/include/sysdep-ia64/syscalls.h      |   20 
 b/arch/um/include/sysdep-ppc/ptrace.h         |  104 +
 b/arch/um/include/sysdep-ppc/sigcontext.h     |   62 
 b/arch/um/include/sysdep-ppc/syscalls.h       |   50 
 b/arch/um/include/sysrq.h                     |    6 
 b/arch/um/include/tlb.h                       |   23 
 b/arch/um/include/ubd_user.h                  |   78 
 b/arch/um/include/umid.h                      |   17 
 b/arch/um/include/umn.h                       |   27 
 b/arch/um/include/user.h                      |   29 
 b/arch/um/include/user_util.h                 |  127 +
 b/arch/um/kernel/Makefile                     |   86 +
 b/arch/um/kernel/config.c.in                  |   34 
 b/arch/um/kernel/exec_kern.c                  |  124 +
 b/arch/um/kernel/exec_user.c                  |   49 
 b/arch/um/kernel/exitcode.c                   |   70 
 b/arch/um/kernel/frame.c                      |  293 +++
 b/arch/um/kernel/frame_kern.c                 |   97 +
 b/arch/um/kernel/gmon_syms.c                  |   20 
 b/arch/um/kernel/gprof_syms.c                 |   20 
 b/arch/um/kernel/helper.c                     |  146 +
 b/arch/um/kernel/init_task.c                  |   70 
 b/arch/um/kernel/initrd_kern.c                |   58 
 b/arch/um/kernel/initrd_user.c                |   43 
 b/arch/um/kernel/irq.c                        |  817 +++++++++
 b/arch/um/kernel/irq_user.c                   |  357 ++++
 b/arch/um/kernel/ksyms.c                      |   59 
 b/arch/um/kernel/mem.c                        |  617 +++++++
 b/arch/um/kernel/mem_user.c                   |  274 +++
 b/arch/um/kernel/mprot.h                      |    6 
 b/arch/um/kernel/process.c                    |  255 +++
 b/arch/um/kernel/process_kern.c               |  771 +++++++++
 b/arch/um/kernel/ptrace.c                     |  281 +++
 b/arch/um/kernel/reboot.c                     |   62 
 b/arch/um/kernel/resource.c                   |   23 
 b/arch/um/kernel/setup.c                      |   20 
 b/arch/um/kernel/sigio_kern.c                 |   43 
 b/arch/um/kernel/sigio_user.c                 |  413 +++++
 b/arch/um/kernel/signal_kern.c                |  274 +++
 b/arch/um/kernel/signal_user.c                |  146 +
 b/arch/um/kernel/smp.c                        |  297 +++
 b/arch/um/kernel/sys_call_table.c             |  483 +++++
 b/arch/um/kernel/syscall_kern.c               |  439 +++++
 b/arch/um/kernel/syscall_user.c               |  116 +
 b/arch/um/kernel/sysrq.c                      |   98 +
 b/arch/um/kernel/time.c                       |  121 +
 b/arch/um/kernel/time_kern.c                  |  143 +
 b/arch/um/kernel/tlb.c                        |  257 +++
 b/arch/um/kernel/trap_kern.c                  |  435 +++++
 b/arch/um/kernel/trap_user.c                  |  568 ++++++
 b/arch/um/kernel/tty_log.c                    |  130 +
 b/arch/um/kernel/uaccess_user.c               |  126 +
 b/arch/um/kernel/um_arch.c                    |  388 ++++
 b/arch/um/kernel/umid.c                       |  302 +++
 b/arch/um/kernel/unmap.c                      |   34 
 b/arch/um/kernel/user_syms.c                  |  116 +
 b/arch/um/kernel/user_util.c                  |  275 +++
 b/arch/um/link.ld.in                          |  143 +
 b/arch/um/main.c                              |  217 ++
 b/arch/um/os-Linux/Makefile                   |   17 
 b/arch/um/os-Linux/drivers/Makefile           |   31 
 b/arch/um/os-Linux/drivers/etap.h             |   27 
 b/arch/um/os-Linux/drivers/etap_kern.h        |   24 
 b/arch/um/os-Linux/drivers/ethertap_kern.c    |  134 +
 b/arch/um/os-Linux/drivers/ethertap_user.c    |  238 ++
 b/arch/um/os-Linux/drivers/tuntap.h           |   34 
 b/arch/um/os-Linux/drivers/tuntap_kern.c      |  116 +
 b/arch/um/os-Linux/drivers/tuntap_kern.h      |   24 
 b/arch/um/os-Linux/drivers/tuntap_user.c      |  223 ++
 b/arch/um/os-Linux/file.c                     |  344 ++++
 b/arch/um/os-Linux/include/file.h             |   22 
 b/arch/um/os-Linux/process.c                  |  102 +
 b/arch/um/os-Linux/tty.c                      |   61 
 b/arch/um/ptproxy/Makefile                    |   26 
 b/arch/um/ptproxy/proxy.c                     |  371 ++++
 b/arch/um/ptproxy/ptproxy.h                   |   61 
 b/arch/um/ptproxy/ptrace.c                    |  238 ++
 b/arch/um/ptproxy/sysdep.c                    |   71 
 b/arch/um/ptproxy/sysdep.h                    |   25 
 b/arch/um/ptproxy/wait.c                      |   86 +
 b/arch/um/ptproxy/wait.h                      |   15 
 b/arch/um/sys-i386/Makefile                   |   44 
 b/arch/um/sys-i386/bugs.c                     |  156 +
 b/arch/um/sys-i386/fault.c                    |   34 
 b/arch/um/sys-i386/ksyms.c                    |   16 
 b/arch/um/sys-i386/ldt.c                      |   25 
 b/arch/um/sys-i386/ptrace.c                   |  326 +++
 b/arch/um/sys-i386/ptrace_user.c              |  116 +
 b/arch/um/sys-i386/sigcontext.c               |  119 +
 b/arch/um/sys-i386/syscalls.c                 |   68 
 b/arch/um/sys-i386/sysrq.c                    |   30 
 b/arch/um/sys-i386/util/Makefile              |   16 
 b/arch/um/sys-i386/util/mk_sc.c               |   51 
 b/arch/um/sys-i386/util/mk_thread_kern.c      |    7 
 b/arch/um/sys-i386/util/mk_thread_user.c      |   12 
 b/arch/um/sys-ia64/Makefile                   |   26 
 b/arch/um/sys-ppc/Makefile                    |   80 
 b/arch/um/sys-ppc/misc.S                      |  116 +
 b/arch/um/sys-ppc/miscthings.c                |   56 
 b/arch/um/sys-ppc/ptrace.c                    |   28 
 b/arch/um/sys-ppc/ptrace_user.c               |   40 
 b/arch/um/sys-ppc/sigcontext.c                |   15 
 b/arch/um/sys-ppc/sysrq.c                     |   43 
 b/arch/um/util/Makefile                       |   15 
 b/arch/um/util/mk_task_kern.c                 |   17 
 b/arch/um/util/mk_task_user.c                 |   30 
 b/drivers/acpi/Config.in                      |  147 -
 b/drivers/acpi/ac.c                           |    2 
 b/drivers/acpi/acpi_ksyms.c                   |    2 
 b/drivers/acpi/battery.c                      |    4 
 b/drivers/acpi/bus.c                          |    6 
 b/drivers/acpi/button.c                       |    1 
 b/drivers/acpi/include/acpiosxf.h             |   20 
 b/drivers/acpi/osl.c                          |   53 
 b/drivers/acpi/pci_irq.c                      |    2 
 b/drivers/acpi/pci_link.c                     |   12 
 b/drivers/acpi/pci_root.c                     |    4 
 b/drivers/acpi/system.c                       |    2 
 b/drivers/acpi/toshiba_acpi.c                 |  129 +
 b/drivers/block/floppy.c                      |    6 
 b/drivers/block/ll_rw_blk.c                   |    2 
 b/drivers/cdrom/cdrom.c                       |    2 
 b/drivers/char/Config.help                    |  117 -
 b/drivers/char/Config.in                      |   16 
 b/drivers/char/Makefile                       |    2 
 b/drivers/char/dz.c                           |    1 
 b/drivers/char/ftape/lowlevel/Makefile        |    2 
 b/drivers/char/ftape/lowlevel/ftape_syms.c    |   82 
 b/drivers/char/ftape/zftape/zftape_syms.c     |   26 
 b/drivers/char/hvc_console.c                  |   10 
 b/drivers/char/keyboard.c                     |    1 
 b/drivers/char/lp.c                           |    8 
 b/drivers/char/raw.c                          |   54 
 b/drivers/char/serial_tx3912.c                |    1 
 b/drivers/char/sysrq.c                        |    2 
 b/drivers/char/toshiba.c                      |   35 
 b/drivers/char/tty_io.c                       |   12 
 b/drivers/hotplug/cpqphp.h                    |   13 
 b/drivers/hotplug/cpqphp_core.c               |   70 
 b/drivers/hotplug/cpqphp_ctrl.c               |  181 +-
 b/drivers/hotplug/cpqphp_nvram.c              |   11 
 b/drivers/hotplug/cpqphp_pci.c                |  185 +-
 b/drivers/hotplug/cpqphp_proc.c               |   10 
 b/drivers/hotplug/ibmphp.h                    |   39 
 b/drivers/hotplug/ibmphp_core.c               |  276 ++-
 b/drivers/hotplug/ibmphp_ebda.c               |  636 ++++++-
 b/drivers/hotplug/ibmphp_hpc.c                |  260 ++-
 b/drivers/hotplug/ibmphp_pci.c                |  268 +--
 b/drivers/hotplug/ibmphp_res.c                |  333 ++--
 b/drivers/hotplug/pci_hotplug.h               |   15 
 b/drivers/ide/Config.in                       |   97 -
 b/drivers/ide/Makefile                        |   81 
 b/drivers/ide/arm/Makefile                    |   12 
 b/drivers/ide/arm/icside.c                    |  875 ++++++++++
 b/drivers/ide/arm/rapide.c                    |   94 +
 b/drivers/ide/ide-cd.c                        |  505 +++---
 b/drivers/ide/ide-disk.c                      |  646 +++----
 b/drivers/ide/ide-dma.c                       | 1032 ++++++------
 b/drivers/ide/ide-floppy.c                    | 1007 +++++-------
 b/drivers/ide/ide-geometry.c                  |   33 
 b/drivers/ide/ide-iops.c                      | 1254 +++++++++++++++
 b/drivers/ide/ide-lib.c                       |  188 ++
 b/drivers/ide/ide-pnp.c                       |   40 
 b/drivers/ide/ide-probe.c                     |  554 ++++--
 b/drivers/ide/ide-proc.c                      |  339 +---
 b/drivers/ide/ide-tape.c                      |  223 --
 b/drivers/ide/ide-taskfile.c                  | 2138 +++++++++-----------------
 b/drivers/ide/ide.c                           | 1342 +++++++---------
 b/drivers/ide/ide_modes.h                     |   12 
 b/drivers/ide/legacy/Makefile                 |   26 
 b/drivers/ide/legacy/ali14xx.c                |  304 +++
 b/drivers/ide/legacy/buddha.c                 |  233 ++
 b/drivers/ide/legacy/dtc2278.c                |  203 ++
 b/drivers/ide/legacy/falconide.c              |   70 
 b/drivers/ide/legacy/gayle.c                  |  187 ++
 b/drivers/ide/legacy/hd.c                     |  872 ++++++++++
 b/drivers/ide/legacy/ht6560b.c                |  430 +++++
 b/drivers/ide/legacy/ide-cs.c                 |  492 +++++
 b/drivers/ide/legacy/macide.c                 |  153 +
 b/drivers/ide/legacy/pdc4030.c                |  858 ++++++++++
 b/drivers/ide/legacy/pdc4030.h                |   70 
 b/drivers/ide/legacy/q40ide.c                 |   93 +
 b/drivers/ide/legacy/qd65xx.c                 |  523 ++++++
 b/drivers/ide/legacy/qd65xx.h                 |  140 +
 b/drivers/ide/legacy/umc8672.c                |  237 ++
 b/drivers/ide/pci/Makefile                    |   39 
 b/drivers/ide/pci/adma100.c                   |   30 
 b/drivers/ide/pci/adma100.h                   |   36 
 b/drivers/ide/pci/aec62xx.c                   |  537 ++++++
 b/drivers/ide/pci/aec62xx.h                   |  180 ++
 b/drivers/ide/pci/alim15x3.c                  |  885 ++++++++++
 b/drivers/ide/pci/alim15x3.h                  |   57 
 b/drivers/ide/pci/amd74xx.c                   |  417 +++++
 b/drivers/ide/pci/amd74xx.h                   |  112 +
 b/drivers/ide/pci/cmd640.c                    |  886 ++++++++++
 b/drivers/ide/pci/cmd640.h                    |   32 
 b/drivers/ide/pci/cmd64x.c                    |  798 +++++++++
 b/drivers/ide/pci/cmd64x.h                    |  152 +
 b/drivers/ide/pci/cs5530.c                    |  462 +++++
 b/drivers/ide/pci/cs5530.h                    |   56 
 b/drivers/ide/pci/cy82c693.c                  |  446 +++++
 b/drivers/ide/pci/cy82c693.h                  |   95 +
 b/drivers/ide/pci/generic.c                   |  109 +
 b/drivers/ide/pci/generic.h                   |  172 ++
 b/drivers/ide/pci/hpt34x.c                    |  354 ++++
 b/drivers/ide/pci/hpt34x.h                    |   62 
 b/drivers/ide/pci/hpt366.c                    | 1189 ++++++++++++++
 b/drivers/ide/pci/hpt366.h                    |  523 ++++++
 b/drivers/ide/pci/it8172.c                    |  325 +++
 b/drivers/ide/pci/it8172.h                    |   45 
 b/drivers/ide/pci/ns87415.c                   |  254 +++
 b/drivers/ide/pci/ns87415.h                   |   35 
 b/drivers/ide/pci/nvidia.c                    |  362 ++++
 b/drivers/ide/pci/nvidia.h                    |   56 
 b/drivers/ide/pci/opti621.c                   |  383 ++++
 b/drivers/ide/pci/opti621.h                   |   49 
 b/drivers/ide/pci/pdc202xx.c                  | 1181 ++++++++++++++
 b/drivers/ide/pci/pdc202xx.h                  |  436 +++++
 b/drivers/ide/pci/pdc202xx_new.c              |  666 ++++++++
 b/drivers/ide/pci/pdc202xx_new.h              |  343 ++++
 b/drivers/ide/pci/pdc202xx_old.c              |  938 +++++++++++
 b/drivers/ide/pci/pdc202xx_old.h              |  326 +++
 b/drivers/ide/pci/pdcadma.c                   |  152 +
 b/drivers/ide/pci/pdcadma.h                   |   56 
 b/drivers/ide/pci/piix.c                      |  692 ++++++++
 b/drivers/ide/pci/piix.h                      |  269 +++
 b/drivers/ide/pci/rz1000.c                    |   80 
 b/drivers/ide/pci/rz1000.h                    |   48 
 b/drivers/ide/pci/serverworks.c               |  786 +++++++++
 b/drivers/ide/pci/serverworks.h               |  105 +
 b/drivers/ide/pci/siimage.c                   |  861 ++++++++++
 b/drivers/ide/pci/siimage.h                   |  153 +
 b/drivers/ide/pci/sis5513.c                   | 1047 ++++++++++++
 b/drivers/ide/pci/sis5513.h                   |   56 
 b/drivers/ide/pci/sl82c105.c                  |  306 +++
 b/drivers/ide/pci/sl82c105.h                  |   36 
 b/drivers/ide/pci/slc90e66.c                  |  389 ++++
 b/drivers/ide/pci/slc90e66.h                  |   58 
 b/drivers/ide/pci/trm290.c                    |  421 +++++
 b/drivers/ide/pci/trm290.h                    |   34 
 b/drivers/ide/pci/via82cxxx.c                 |  671 ++++++++
 b/drivers/ide/pci/via82cxxx.h                 |   70 
 b/drivers/ide/ppc/Makefile                    |   13 
 b/drivers/ide/ppc/mpc8xx.c                    |  857 ++++++++++
 b/drivers/ide/ppc/pmac.c                      | 1783 +++++++++++++++++++++
 b/drivers/ide/ppc/swarm.c                     |  101 +
 b/drivers/ide/setup-pci.c                     |  948 +++++++++++
 b/drivers/ieee1394/sbp2.c                     |    1 
 b/drivers/input/input.c                       |    2 
 b/drivers/input/misc/pcspkr.c                 |    4 
 b/drivers/input/serio/i8042-io.h              |    4 
 b/drivers/input/serio/q40kbd.c                |   31 
 b/drivers/input/serio/serport.c               |   77 
 b/drivers/md/md.c                             |   56 
 b/drivers/md/multipath.c                      |   14 
 b/drivers/md/raid5.c                          |   23 
 b/drivers/net/3c505.c                         |    2 
 b/drivers/net/apne.c                          |    1 
 b/drivers/net/arcnet/arcnet.c                 |    4 
 b/drivers/net/at1700.c                        |    6 
 b/drivers/net/de600.c                         |    2 
 b/drivers/net/hamradio/scc.c                  |    2 
 b/drivers/net/ni65.c                          |    2 
 b/drivers/net/pcmcia/3c574_cs.c               |    4 
 b/drivers/net/pcmcia/aironet4500_cs.c         |    2 
 b/drivers/net/pcmcia/fmvj18x_cs.c             |    2 
 b/drivers/net/pcmcia/smc91c92_cs.c            |    2 
 b/drivers/net/tg3.c                           | 1096 +++++++++++--
 b/drivers/net/tg3.h                           |   59 
 b/drivers/pci/Makefile                        |    4 
 b/drivers/pci/hotplug.c                       |   22 
 b/drivers/pci/pci.c                           |  130 +
 b/drivers/pci/pci.ids                         |    1 
 b/drivers/pci/probe.c                         |    7 
 b/drivers/pci/proc.c                          |    9 
 b/drivers/pnp/pnpbios_core.c                  |    2 
 b/drivers/s390/net/iucv.h                     |    4 
 b/drivers/scsi/aic7xxx/aic7xxx_core.c         |    4 
 b/drivers/scsi/ide-scsi.c                     |  184 +-
 b/drivers/serial/sunsu.c                      |    3 
 b/drivers/serial/sunzilog.c                   |   46 
 b/drivers/usb/class/usb-midi.c                |   10 
 b/drivers/usb/core/hcd.c                      |   21 
 b/drivers/usb/core/inode.c                    |   43 
 b/drivers/usb/host/ehci-dbg.c                 |  141 -
 b/drivers/usb/host/ehci-hcd.c                 |  115 +
 b/drivers/usb/host/ehci-hub.c                 |   13 
 b/drivers/usb/host/ehci-q.c                   |  162 +
 b/drivers/usb/host/ehci-sched.c               |  145 -
 b/drivers/usb/host/ehci.h                     |   28 
 b/drivers/usb/host/ohci-dbg.c                 |  256 ++-
 b/drivers/usb/host/ohci-hcd.c                 |   79 
 b/drivers/usb/host/ohci-mem.c                 |   27 
 b/drivers/usb/host/ohci-q.c                   |  314 ++-
 b/drivers/usb/host/ohci.h                     |   27 
 b/drivers/usb/host/uhci-hcd.c                 |  187 +-
 b/drivers/usb/host/uhci-hcd.h                 |   43 
 b/drivers/usb/image/hpusbscsi.c               |    8 
 b/drivers/usb/image/microtek.c                |   19 
 b/drivers/usb/image/scanner.c                 |    6 
 b/drivers/usb/input/hid-lgff.c                |    3 
 b/drivers/usb/media/se401.c                   |  128 -
 b/drivers/usb/media/se401.h                   |    1 
 b/drivers/usb/misc/Config.in                  |    2 
 b/drivers/usb/net/kaweth.c                    |   50 
 b/drivers/usb/net/pegasus.h                   |    6 
 b/drivers/usb/net/usbnet.c                    |   80 
 b/drivers/usb/serial/belkin_sa.c              |    1 
 b/drivers/usb/serial/belkin_sa.h              |    1 
 b/drivers/usb/storage/protocol.c              |   69 
 b/drivers/usb/storage/transport.c             |    3 
 b/drivers/usb/storage/unusual_devs.h          |   14 
 b/drivers/usb/storage/usb.c                   |    8 
 b/drivers/usb/storage/usb.h                   |    1 
 b/fs/aio.c                                    |   45 
 b/fs/block_dev.c                              |   52 
 b/fs/buffer.c                                 |   51 
 b/fs/direct-io.c                              |  132 -
 b/fs/driverfs/inode.c                         |    7 
 b/fs/exec.c                                   |  183 +-
 b/fs/ext2/file.c                              |    2 
 b/fs/ext2/inode.c                             |    8 
 b/fs/ext3/file.c                              |   22 
 b/fs/ext3/inode.c                             |   10 
 b/fs/fcntl.c                                  |    4 
 b/fs/fs-writeback.c                           |   42 
 b/fs/inode.c                                  |    6 
 b/fs/jfs/file.c                               |    2 
 b/fs/jfs/inode.c                              |    8 
 b/fs/jfs/jfs_btree.h                          |   38 
 b/fs/jfs/jfs_defragfs.h                       |    4 
 b/fs/jfs/jfs_dinode.h                         |    7 
 b/fs/jfs/jfs_dmap.c                           |  227 +-
 b/fs/jfs/jfs_dmap.h                           |   40 
 b/fs/jfs/jfs_dtree.c                          |  646 +++----
 b/fs/jfs/jfs_dtree.h                          |   38 
 b/fs/jfs/jfs_extent.c                         |    6 
 b/fs/jfs/jfs_filsys.h                         |    2 
 b/fs/jfs/jfs_imap.c                           |  255 +--
 b/fs/jfs/jfs_imap.h                           |   22 
 b/fs/jfs/jfs_incore.h                         |    2 
 b/fs/jfs/jfs_logmgr.c                         |  239 +-
 b/fs/jfs/jfs_logmgr.h                         |   52 
 b/fs/jfs/jfs_metapage.c                       |   58 
 b/fs/jfs/jfs_metapage.h                       |   16 
 b/fs/jfs/jfs_mount.c                          |    6 
 b/fs/jfs/jfs_txnmgr.c                         |  328 ++-
 b/fs/jfs/jfs_txnmgr.h                         |  116 -
 b/fs/jfs/jfs_types.h                          |   16 
 b/fs/jfs/jfs_umount.c                         |    4 
 b/fs/jfs/jfs_unicode.c                        |    2 
 b/fs/jfs/jfs_unicode.h                        |    3 
 b/fs/jfs/jfs_xattr.h                          |    6 
 b/fs/jfs/jfs_xtree.c                          |  314 +--
 b/fs/jfs/jfs_xtree.h                          |    8 
 b/fs/jfs/namei.c                              |   76 
 b/fs/jfs/resize.c                             |    4 
 b/fs/jfs/super.c                              |    6 
 b/fs/jfs/xattr.c                              |  113 -
 b/fs/lockd/clntlock.c                         |    2 
 b/fs/lockd/host.c                             |   68 
 b/fs/lockd/lockd_syms.c                       |    1 
 b/fs/lockd/mon.c                              |   70 
 b/fs/lockd/svc.c                              |   58 
 b/fs/lockd/svc4proc.c                         |   54 
 b/fs/lockd/svclock.c                          |   19 
 b/fs/lockd/svcproc.c                          |   52 
 b/fs/lockd/svcsubs.c                          |   12 
 b/fs/lockd/xdr.c                              |   32 
 b/fs/lockd/xdr4.c                             |    6 
 b/fs/locks.c                                  |  314 ++-
 b/fs/mpage.c                                  |    8 
 b/fs/namespace.c                              |   12 
 b/fs/nfs/dir.c                                |   38 
 b/fs/nfs/file.c                               |   34 
 b/fs/nfs/inode.c                              |   44 
 b/fs/nfs/mount_clnt.c                         |   52 
 b/fs/nfs/nfs2xdr.c                            |    6 
 b/fs/nfs/nfs3proc.c                           |  256 +--
 b/fs/nfs/nfs3xdr.c                            |    6 
 b/fs/nfs/proc.c                               |  218 +-
 b/fs/nfs/symlink.c                            |    8 
 b/fs/nfsd/export.c                            |  450 ++---
 b/fs/nfsd/lockd.c                             |   23 
 b/fs/nfsd/nfsctl.c                            |   21 
 b/fs/nfsd/nfsfh.c                             |   42 
 b/fs/nfsd/vfs.c                               |   16 
 b/fs/partitions/check.c                       |    4 
 b/fs/proc/base.c                              |    2 
 b/fs/proc/inode.c                             |    4 
 b/fs/ramfs/inode.c                            |    9 
 b/fs/read_write.c                             |  109 -
 b/fs/super.c                                  |    1 
 b/fs/udf/udfdecl.h                            |    2 
 b/fs/ufs/super.c                              |    2 
 b/include/asm-alpha/hdreg.h                   |    2 
 b/include/asm-alpha/pgtable.h                 |    2 
 b/include/asm-alpha/signal.h                  |    1 
 b/include/asm-alpha/system.h                  |    2 
 b/include/asm-arm/hdreg.h                     |    2 
 b/include/asm-arm/pgtable.h                   |    2 
 b/include/asm-cris/pgtable.h                  |    2 
 b/include/asm-generic/rmap.h                  |   40 
 b/include/asm-i386/apic.h                     |    1 
 b/include/asm-i386/fixmap.h                   |    7 
 b/include/asm-i386/hardirq.h                  |    4 
 b/include/asm-i386/hdreg.h                    |    2 
 b/include/asm-i386/highmem.h                  |   13 
 b/include/asm-i386/ide.h                      |   14 
 b/include/asm-i386/kmap_types.h               |    7 
 b/include/asm-i386/mmzone.h                   |   53 
 b/include/asm-i386/mtrr.h                     |    7 
 b/include/asm-i386/numaq.h                    |    6 
 b/include/asm-i386/pgtable.h                  |   12 
 b/include/asm-i386/rmap.h                     |   14 
 b/include/asm-i386/unistd.h                   |    3 
 b/include/asm-ia64/pgtable.h                  |    2 
 b/include/asm-m68k/pgtable.h                  |    3 
 b/include/asm-mips/pgtable.h                  |    2 
 b/include/asm-mips64/pgtable.h                |    2 
 b/include/asm-parisc/hdreg.h                  |    2 
 b/include/asm-parisc/pgtable.h                |    2 
 b/include/asm-ppc/atomic.h                    |    2 
 b/include/asm-ppc/hdreg.h                     |    2 
 b/include/asm-ppc/highmem.h                   |   11 
 b/include/asm-ppc/ide.h                       |   22 
 b/include/asm-ppc/pgtable.h                   |    4 
 b/include/asm-ppc/spinlock.h                  |    2 
 b/include/asm-ppc/unistd.h                    |    3 
 b/include/asm-ppc64/delay.h                   |    2 
 b/include/asm-ppc64/eeh.h                     |   34 
 b/include/asm-ppc64/elf.h                     |    7 
 b/include/asm-ppc64/hardirq.h                 |    2 
 b/include/asm-ppc64/hvcall.h                  |   84 +
 b/include/asm-ppc64/io.h                      |   36 
 b/include/asm-ppc64/kmap_types.h              |   21 
 b/include/asm-ppc64/lmb.h                     |    5 
 b/include/asm-ppc64/machdep.h                 |   26 
 b/include/asm-ppc64/mmu.h                     |    2 
 b/include/asm-ppc64/mmzone.h                  |  124 -
 b/include/asm-ppc64/page.h                    |    4 
 b/include/asm-ppc64/pgalloc.h                 |   14 
 b/include/asm-ppc64/pgtable.h                 |    2 
 b/include/asm-ppc64/ppcdebug.h                |    5 
 b/include/asm-ppc64/processor.h               |    2 
 b/include/asm-ppc64/prom.h                    |    4 
 b/include/asm-ppc64/ptrace-common.h           |   17 
 b/include/asm-ppc64/rtas.h                    |    2 
 b/include/asm-ppc64/smp.h                     |    2 
 b/include/asm-ppc64/spinlock.h                |    2 
 b/include/asm-ppc64/unistd.h                  |    6 
 b/include/asm-ppc64/user.h                    |    2 
 b/include/asm-s390/pgtable.h                  |    2 
 b/include/asm-s390x/pgtable.h                 |    2 
 b/include/asm-sh/hdreg.h                      |    2 
 b/include/asm-sh/pgtable.h                    |    2 
 b/include/asm-sparc/hardirq.h                 |    8 
 b/include/asm-sparc/highmem.h                 |   13 
 b/include/asm-sparc/ide.h                     |  104 -
 b/include/asm-sparc/irq.h                     |    2 
 b/include/asm-sparc/kmap_types.h              |    2 
 b/include/asm-sparc/pgtable.h                 |    2 
 b/include/asm-sparc/spinlock.h                |    2 
 b/include/asm-sparc/system.h                  |   24 
 b/include/asm-sparc/unistd.h                  |    2 
 b/include/asm-sparc64/hardirq.h               |    2 
 b/include/asm-sparc64/ide.h                   |  133 -
 b/include/asm-sparc64/pgtable.h               |    2 
 b/include/asm-sparc64/spinlock.h              |    2 
 b/include/asm-sparc64/unistd.h                |    2 
 b/include/asm-um/a.out.h                      |   18 
 b/include/asm-um/arch-signal-i386.h           |   24 
 b/include/asm-um/archparam-i386.h             |   80 
 b/include/asm-um/archparam-ppc.h              |   41 
 b/include/asm-um/atomic.h                     |    6 
 b/include/asm-um/bitops.h                     |    6 
 b/include/asm-um/boot.h                       |    6 
 b/include/asm-um/bugs.h                       |    6 
 b/include/asm-um/byteorder.h                  |    6 
 b/include/asm-um/cache.h                      |    7 
 b/include/asm-um/cacheflush.h                 |    6 
 b/include/asm-um/checksum.h                   |    6 
 b/include/asm-um/cobalt.h                     |    6 
 b/include/asm-um/current.h                    |   34 
 b/include/asm-um/delay.h                      |    7 
 b/include/asm-um/desc.h                       |    6 
 b/include/asm-um/div64.h                      |    6 
 b/include/asm-um/dma.h                        |   10 
 b/include/asm-um/elf.h                        |   18 
 b/include/asm-um/errno.h                      |    6 
 b/include/asm-um/fcntl.h                      |    6 
 b/include/asm-um/floppy.h                     |    6 
 b/include/asm-um/hardirq.h                    |    6 
 b/include/asm-um/hdreg.h                      |    6 
 b/include/asm-um/highmem.h                    |    6 
 b/include/asm-um/hw_irq.h                     |   10 
 b/include/asm-um/ide.h                        |    6 
 b/include/asm-um/init.h                       |   11 
 b/include/asm-um/io.h                         |   25 
 b/include/asm-um/ioctl.h                      |    6 
 b/include/asm-um/ioctls.h                     |    6 
 b/include/asm-um/ipc.h                        |    6 
 b/include/asm-um/ipcbuf.h                     |    6 
 b/include/asm-um/irq.h                        |   35 
 b/include/asm-um/irq_vectors.h                |   20 
 b/include/asm-um/keyboard.h                   |    6 
 b/include/asm-um/kmap_types.h                 |   11 
 b/include/asm-um/linkage.h                    |    6 
 b/include/asm-um/linux_logo.h                 |    6 
 b/include/asm-um/locks.h                      |    6 
 b/include/asm-um/mca_dma.h                    |    6 
 b/include/asm-um/mman.h                       |    6 
 b/include/asm-um/mmu.h                        |    6 
 b/include/asm-um/mmu_context.h                |   25 
 b/include/asm-um/module.h                     |    6 
 b/include/asm-um/msgbuf.h                     |    6 
 b/include/asm-um/mtrr.h                       |    6 
 b/include/asm-um/namei.h                      |    6 
 b/include/asm-um/page.h                       |   60 
 b/include/asm-um/page_offset.h                |    1 
 b/include/asm-um/param.h                      |   22 
 b/include/asm-um/pci.h                        |    6 
 b/include/asm-um/percpu.h                     |    6 
 b/include/asm-um/pgalloc.h                    |   62 
 b/include/asm-um/pgtable.h                    |  389 ++++
 b/include/asm-um/poll.h                       |    6 
 b/include/asm-um/posix_types.h                |    6 
 b/include/asm-um/processor-generic.h          |  157 +
 b/include/asm-um/processor-i386.h             |   35 
 b/include/asm-um/processor-ppc.h              |   15 
 b/include/asm-um/ptrace-generic.h             |   69 
 b/include/asm-um/ptrace-i386.h                |   45 
 b/include/asm-um/resource.h                   |    6 
 b/include/asm-um/rmap.h                       |    6 
 b/include/asm-um/rwlock.h                     |    6 
 b/include/asm-um/rwsem.h                      |   10 
 b/include/asm-um/scatterlist.h                |    6 
 b/include/asm-um/segment.h                    |    4 
 b/include/asm-um/semaphore.h                  |    6 
 b/include/asm-um/sembuf.h                     |    6 
 b/include/asm-um/serial.h                     |    6 
 b/include/asm-um/shmbuf.h                     |    6 
 b/include/asm-um/shmparam.h                   |    6 
 b/include/asm-um/sigcontext-generic.h         |    6 
 b/include/asm-um/sigcontext-i386.h            |    6 
 b/include/asm-um/sigcontext-ppc.h             |   10 
 b/include/asm-um/siginfo.h                    |    6 
 b/include/asm-um/signal.h                     |   26 
 b/include/asm-um/smp.h                        |   20 
 b/include/asm-um/smplock.h                    |    6 
 b/include/asm-um/socket.h                     |    6 
 b/include/asm-um/sockios.h                    |    6 
 b/include/asm-um/softirq.h                    |   13 
 b/include/asm-um/spinlock.h                   |   10 
 b/include/asm-um/stat.h                       |    6 
 b/include/asm-um/statfs.h                     |    6 
 b/include/asm-um/string.h                     |    7 
 b/include/asm-um/suspend.h                    |    4 
 b/include/asm-um/system-generic.h             |   41 
 b/include/asm-um/system-i386.h                |    6 
 b/include/asm-um/system-ppc.h                 |   12 
 b/include/asm-um/termbits.h                   |    6 
 b/include/asm-um/termios.h                    |    6 
 b/include/asm-um/thread_info.h                |   83 +
 b/include/asm-um/timex.h                      |   15 
 b/include/asm-um/tlb.h                        |    6 
 b/include/asm-um/tlbflush.h                   |   47 
 b/include/asm-um/types.h                      |    6 
 b/include/asm-um/uaccess.h                    |  193 ++
 b/include/asm-um/unaligned.h                  |    6 
 b/include/asm-um/unistd.h                     |  118 +
 b/include/asm-um/user.h                       |    6 
 b/include/asm-um/vga.h                        |    6 
 b/include/asm-x86_64/hdreg.h                  |    2 
 b/include/asm-x86_64/ide.h                    |    8 
 b/include/asm-x86_64/pgtable.h                |    2 
 b/include/linux/acpi.h                        |    4 
 b/include/linux/aio.h                         |   22 
 b/include/linux/backing-dev.h                 |    1 
 b/include/linux/bio.h                         |   12 
 b/include/linux/blkdev.h                      |    1 
 b/include/linux/buffer_head.h                 |    1 
 b/include/linux/fs.h                          |   28 
 b/include/linux/hdreg.h                       |  110 +
 b/include/linux/highmem.h                     |    1 
 b/include/linux/ide.h                         | 1434 +++++++++++------
 b/include/linux/init_task.h                   |   31 
 b/include/linux/llc.h                         |   11 
 b/include/linux/lockd/bind.h                  |    5 
 b/include/linux/lockd/lockd.h                 |    8 
 b/include/linux/lockd/sm_inter.h              |    1 
 b/include/linux/lockd/xdr.h                   |    2 
 b/include/linux/mm.h                          |   14 
 b/include/linux/nfsd/auth.h                   |   18 
 b/include/linux/nfsd/export.h                 |   45 
 b/include/linux/nfsd/nfsfh.h                  |   13 
 b/include/linux/page-flags.h                  |   45 
 b/include/linux/pagevec.h                     |    1 
 b/include/linux/pci.h                         |    8 
 b/include/linux/pci_ids.h                     |   28 
 b/include/linux/sched.h                       |   55 
 b/include/linux/serial.h                      |    1 
 b/include/linux/time.h                        |    2 
 b/include/linux/timex.h                       |   25 
 b/include/linux/uio.h                         |   15 
 b/include/net/llc_c_ev.h                      |   17 
 b/include/net/llc_c_st.h                      |   12 
 b/include/net/llc_conn.h                      |   74 
 b/include/net/llc_evnt.h                      |   15 
 b/include/net/llc_if.h                        |   56 
 b/include/net/llc_mac.h                       |   41 
 b/include/net/llc_main.h                      |    6 
 b/include/net/llc_pdu.h                       |   56 
 b/include/net/llc_s_ev.h                      |   10 
 b/include/net/llc_sap.h                       |    6 
 b/init/main.c                                 |   15 
 b/ipc/shm.c                                   |    8 
 b/kernel/capability.c                         |   12 
 b/kernel/exit.c                               |  207 +-
 b/kernel/fork.c                               |   46 
 b/kernel/ksyms.c                              |    4 
 b/kernel/sched.c                              |   22 
 b/kernel/signal.c                             |  130 +
 b/kernel/softirq.c                            |    3 
 b/kernel/suspend.c                            |   13 
 b/kernel/sys.c                                |   24 
 b/kernel/time.c                               |   16 
 b/kernel/timer.c                              |   26 
 b/mm/filemap.c                                |  139 +
 b/mm/oom_kill.c                               |   16 
 b/mm/page-writeback.c                         |   72 
 b/mm/page_alloc.c                             |    4 
 b/mm/pdflush.c                                |    3 
 b/mm/rmap.c                                   |  322 ++-
 b/mm/shmem.c                                  |    7 
 b/mm/swap.c                                   |   18 
 b/mm/swap_state.c                             |   29 
 b/mm/vmscan.c                                 |   21 
 b/net/802/p8022.c                             |   14 
 b/net/802/psnap.c                             |   14 
 b/net/8021q/vlan.c                            |    2 
 b/net/core/dev.c                              |   10 
 b/net/ipv4/ip_options.c                       |    2 
 b/net/ipv4/netfilter/ipt_owner.c              |   17 
 b/net/ipv4/tcp_input.c                        |   35 
 b/net/ipv6/netfilter/ip6t_owner.c             |   11 
 b/net/llc/llc_actn.c                          |    7 
 b/net/llc/llc_c_ac.c                          |  185 --
 b/net/llc/llc_c_ev.c                          |   20 
 b/net/llc/llc_conn.c                          |  216 +-
 b/net/llc/llc_if.c                            |  443 +----
 b/net/llc/llc_mac.c                           |  179 +-
 b/net/llc/llc_main.c                          |   85 -
 b/net/llc/llc_pdu.c                           |  130 -
 b/net/llc/llc_s_ac.c                          |   23 
 b/net/llc/llc_sap.c                           |   30 
 b/net/llc/llc_sock.c                          |  969 ++++-------
 b/scripts/mkcompile_h                         |    4 
 b/sound/oss/cs46xx.c                          |   48 
 b/sound/pci/cs46xx/cs46xx.c                   |   12 
 b/sound/pci/cs46xx/cs46xx_lib.c               |  154 -
 drivers/acpi/debugger/Makefile                |    9 
 drivers/acpi/debugger/dbcmds.c                | 1114 -------------
 drivers/acpi/debugger/dbdisply.c              |  859 ----------
 drivers/acpi/debugger/dbexec.c                |  405 ----
 drivers/acpi/debugger/dbfileio.c              |  399 ----
 drivers/acpi/debugger/dbhistry.c              |  189 --
 drivers/acpi/debugger/dbinput.c               |  892 ----------
 drivers/acpi/debugger/dbstats.c               |  459 -----
 drivers/acpi/debugger/dbutils.c               |  380 ----
 drivers/acpi/debugger/dbxface.c               |  388 ----
 drivers/acpi/kdb/README.txt                   |   34 
 drivers/acpi/kdb/kdbm_acpi.c                  |   54 
 drivers/ide/adma100.c                         |   30 
 drivers/ide/aec62xx.c                         |  670 --------
 drivers/ide/ali14xx.c                         |  223 --
 drivers/ide/alim15x3.c                        |  825 ----------
 drivers/ide/amd74xx.c                         |  519 ------
 drivers/ide/buddha.c                          |  225 --
 drivers/ide/cmd640.c                          |  886 ----------
 drivers/ide/cmd64x.c                          | 1236 ---------------
 drivers/ide/cs5530.c                          |  386 ----
 drivers/ide/cy82c693.c                        |  478 -----
 drivers/ide/dtc2278.c                         |  132 -
 drivers/ide/falconide.c                       |   68 
 drivers/ide/gayle.c                           |  181 --
 drivers/ide/hd.c                              |  879 ----------
 drivers/ide/hpt34x.c                          |  491 -----
 drivers/ide/hpt366.c                          | 1695 --------------------
 drivers/ide/ht6560b.c                         |  341 ----
 drivers/ide/icside.c                          |  782 ---------
 drivers/ide/ide-adma.c                        |    9 
 drivers/ide/ide-cs.c                          |  492 -----
 drivers/ide/ide-m8xx.c                        |  857 ----------
 drivers/ide/ide-pci.c                         |  992 ------------
 drivers/ide/ide-pmac.c                        | 1724 --------------------
 drivers/ide/ide-swarm.c                       |   73 
 drivers/ide/it8172.c                          |  389 ----
 drivers/ide/macide.c                          |  147 -
 drivers/ide/ns87415.c                         |  204 --
 drivers/ide/opti621.c                         |  339 ----
 drivers/ide/pdc202xx.c                        | 1430 -----------------
 drivers/ide/pdc4030.c                         |  716 --------
 drivers/ide/pdc4030.h                         |   44 
 drivers/ide/pdcadma.c                         |  106 -
 drivers/ide/piix.c                            |  617 -------
 drivers/ide/q40ide.c                          |   91 -
 drivers/ide/qd65xx.c                          |  453 -----
 drivers/ide/qd65xx.h                          |  140 -
 drivers/ide/rapide.c                          |   94 -
 drivers/ide/rz1000.c                          |  100 -
 drivers/ide/serverworks.c                     |  789 ---------
 drivers/ide/sis5513.c                         |  927 -----------
 drivers/ide/sl82c105.c                        |  272 ---
 drivers/ide/slc90e66.c                        |  470 -----
 drivers/ide/trm290.c                          |  315 ---
 drivers/ide/umc8672.c                         |  156 -
 drivers/ide/via82cxxx.c                       |  565 ------
 include/linux/atari_rootsec.h                 |   34 
 925 files changed, 74801 insertions(+), 42811 deletions(-)

