From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.72 released
Date: Tue, 17 Jun 2003 05:07:23 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200306170507.h5H57NbU000718@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.72 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.72.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.72.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               168861                 0
1095887                                  0          32584415
/pub/linux/kernel/v2.5/linux-2.5.72.tar.bz2         183234560                 0
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

 arch/x86_64/kernel/cpuid.c                       |  178 ----
 arch/x86_64/kernel/wakeup.S                      |  306 -------
 arch/x86_64/pci/acpi.c                           |   27 
 arch/x86_64/pci/changelog                        |    1 
 arch/x86_64/pci/common.c                         |  212 -----
 arch/x86_64/pci/direct.c                         |  281 -------
 arch/x86_64/pci/fixup.c                          |   48 -
 arch/x86_64/pci/irq.c                            |  639 ----------------
 arch/x86_64/pci/legacy.c                         |   68 -
 arch/x86_64/pci/pci.h                            |   75 -
 arch/x86_64/pci/x86-64.c                         |  299 -------
 b/Documentation/input/input-programming.txt      |   16 
 b/Makefile                                       |    2 
 b/arch/alpha/Kconfig                             |   60 -
 b/arch/alpha/kernel/osf_sys.c                    |    9 
 b/arch/alpha/kernel/time.c                       |   33 
 b/arch/arm/Kconfig                               |   51 -
 b/arch/arm/kernel/time.c                         |   16 
 b/arch/arm26/kernel/time.c                       |   16 
 b/arch/cris/Kconfig                              |    8 
 b/arch/cris/kernel/time.c                        |   12 
 b/arch/h8300/Kconfig                             |   15 
 b/arch/i386/Kconfig                              |   65 -
 b/arch/i386/Makefile                             |    4 
 b/arch/i386/kernel/apic.c                        |    3 
 b/arch/i386/kernel/cpu/cpufreq/powernow-k7.c     |    4 
 b/arch/i386/kernel/dmi_scan.c                    |   47 -
 b/arch/i386/kernel/io_apic.c                     |   14 
 b/arch/i386/kernel/mpparse.c                     |    6 
 b/arch/i386/kernel/time.c                        |   23 
 b/arch/i386/mach-es7000/Makefile                 |    7 
 b/arch/i386/mach-es7000/es7000.c                 |  281 +++++++
 b/arch/i386/mach-es7000/es7000.h                 |  109 ++
 b/arch/i386/mach-es7000/setup.c                  |  105 ++
 b/arch/i386/mach-es7000/topology.c               |   68 +
 b/arch/ia64/Kconfig                              |   53 -
 b/arch/ia64/kernel/time.c                        |   13 
 b/arch/m68k/Kconfig                              |   51 -
 b/arch/m68k/kernel/time.c                        |   16 
 b/arch/m68knommu/Kconfig                         |   15 
 b/arch/m68knommu/kernel/setup.c                  |    2 
 b/arch/m68knommu/platform/5206e/eLITE/crt0_ram.S |    7 
 b/arch/m68knommu/platform/68328/config.c         |    2 
 b/arch/mips/Kconfig                              |   54 -
 b/arch/mips64/Kconfig                            |   51 -
 b/arch/parisc/Kconfig                            |   20 
 b/arch/parisc/Makefile                           |    6 
 b/arch/parisc/kernel/Makefile                    |    5 
 b/arch/parisc/kernel/entry.S                     |    2 
 b/arch/parisc/kernel/ioctl32.c                   |    3 
 b/arch/parisc/kernel/irq.c                       |    6 
 b/arch/parisc/kernel/module.c                    |  209 ++++-
 b/arch/parisc/kernel/parisc_ksyms.c              |   91 +-
 b/arch/parisc/kernel/pdc_cons.c                  |   17 
 b/arch/parisc/kernel/process.c                   |   40 -
 b/arch/parisc/kernel/processor.c                 |    5 
 b/arch/parisc/kernel/signal.c                    |    3 
 b/arch/parisc/kernel/smp.c                       |   16 
 b/arch/parisc/kernel/sys_parisc32.c              |  106 --
 b/arch/parisc/kernel/syscall.S                   |    2 
 b/arch/parisc/kernel/time.c                      |   20 
 b/arch/parisc/kernel/traps.c                     |    6 
 b/arch/parisc/mm/init.c                          |    4 
 b/arch/parisc/oprofile/init.c                    |    5 
 b/arch/ppc/Kconfig                               |   48 -
 b/arch/ppc/configs/FADS_defconfig                |  124 +--
 b/arch/ppc/configs/IVMS8_defconfig               |  130 ++-
 b/arch/ppc/configs/SM850_defconfig               |  124 +--
 b/arch/ppc/configs/SPD823TS_defconfig            |  124 +--
 b/arch/ppc/configs/TQM823L_defconfig             |  124 +--
 b/arch/ppc/configs/TQM8260_defconfig             |  126 +--
 b/arch/ppc/configs/TQM850L_defconfig             |  124 +--
 b/arch/ppc/configs/TQM860L_defconfig             |  126 +--
 b/arch/ppc/configs/adir_defconfig                |  138 ++-
 b/arch/ppc/configs/apus_defconfig                |  164 ++--
 b/arch/ppc/configs/ash_defconfig                 |  150 ++-
 b/arch/ppc/configs/beech_defconfig               |  508 ++++++-------
 b/arch/ppc/configs/bseip_defconfig               |  124 +--
 b/arch/ppc/configs/cedar_defconfig               |  144 ++-
 b/arch/ppc/configs/common_defconfig              |  179 +++-
 b/arch/ppc/configs/cpci405_defconfig             |  138 ++-
 b/arch/ppc/configs/ep405_defconfig               |  139 ++-
 b/arch/ppc/configs/est8260_defconfig             |  125 +--
 b/arch/ppc/configs/ev64260_defconfig             |  136 ++-
 b/arch/ppc/configs/gemini_defconfig              |  130 ++-
 b/arch/ppc/configs/ibmchrp_defconfig             |  141 ++-
 b/arch/ppc/configs/k2_defconfig                  |  122 +--
 b/arch/ppc/configs/lopec_defconfig               |  141 ++-
 b/arch/ppc/configs/mbx_defconfig                 |  122 +--
 b/arch/ppc/configs/mcpn765_defconfig             |  116 +-
 b/arch/ppc/configs/menf1_defconfig               |  135 ++-
 b/arch/ppc/configs/mvme5100_defconfig            |  124 ++-
 b/arch/ppc/configs/oak_defconfig                 |  115 +-
 b/arch/ppc/configs/pcore_defconfig               |  133 ++-
 b/arch/ppc/configs/pmac_defconfig                |  216 +++--
 b/arch/ppc/configs/power3_defconfig              |  181 +++-
 b/arch/ppc/configs/pplus_defconfig               |  129 ++-
 b/arch/ppc/configs/prpmc750_defconfig            |  133 ++-
 b/arch/ppc/configs/prpmc800_defconfig            |  133 ++-
 b/arch/ppc/configs/rainier_defconfig             |  519 ++++++-------
 b/arch/ppc/configs/redwood5_defconfig            |  127 +--
 b/arch/ppc/configs/redwood6_defconfig            |  407 ++++------
 b/arch/ppc/configs/redwood_defconfig             |  143 ++-
 b/arch/ppc/configs/rpxcllf_defconfig             |  124 +--
 b/arch/ppc/configs/rpxlite_defconfig             |  124 +--
 b/arch/ppc/configs/sandpoint_defconfig           |  124 ++-
 b/arch/ppc/configs/spruce_defconfig              |  133 ++-
 b/arch/ppc/configs/sycamore_defconfig            |  429 ++++++-----
 b/arch/ppc/configs/walnut_defconfig              |  143 ++-
 b/arch/ppc/configs/zx4500_defconfig              |  133 ++-
 b/arch/ppc/defconfig                             |  892 +++++++++++++----------
 b/arch/ppc/kernel/time.c                         |   16 
 b/arch/ppc/vmlinux.lds.S                         |    8 
 b/arch/ppc64/Kconfig                             |   48 -
 b/arch/ppc64/kernel/sys_ppc32.c                  |   22 
 b/arch/ppc64/kernel/time.c                       |   26 
 b/arch/s390/kernel/time.c                        |   13 
 b/arch/sh/Kconfig                                |   53 -
 b/arch/sh/kernel/time.c                          |   14 
 b/arch/sh/tools/Makefile                         |   16 
 b/arch/sh/tools/mach-types                       |   22 
 b/arch/sh/tools/machgen.sh                       |   71 +
 b/arch/sparc/Kconfig                             |   50 -
 b/arch/sparc/kernel/pcic.c                       |   21 
 b/arch/sparc/kernel/time.c                       |   28 
 b/arch/sparc64/Kconfig                           |   50 -
 b/arch/sparc64/defconfig                         |   28 
 b/arch/sparc64/kernel/sys_sparc32.c              |   53 +
 b/arch/sparc64/kernel/time.c                     |   21 
 b/arch/um/kernel/time.c                          |   11 
 b/arch/v850/Kconfig                              |   10 
 b/arch/v850/kernel/time.c                        |   14 
 b/arch/x86_64/Kconfig                            |   51 -
 b/arch/x86_64/Makefile                           |    1 
 b/arch/x86_64/ia32/sys_ia32.c                    |    6 
 b/arch/x86_64/ia32/vsyscall.S                    |    2 
 b/arch/x86_64/kernel/Makefile                    |    4 
 b/arch/x86_64/kernel/aperture.c                  |    2 
 b/arch/x86_64/kernel/apic.c                      |   34 
 b/arch/x86_64/kernel/bluesmoke.c                 |    3 
 b/arch/x86_64/kernel/ldt.c                       |    3 
 b/arch/x86_64/kernel/msr.c                       |   24 
 b/arch/x86_64/kernel/nmi.c                       |   44 -
 b/arch/x86_64/kernel/pci-gart.c                  |   34 
 b/arch/x86_64/kernel/pci-nommu.c                 |    3 
 b/arch/x86_64/kernel/process.c                   |    2 
 b/arch/x86_64/kernel/setup.c                     |    2 
 b/arch/x86_64/kernel/signal.c                    |    2 
 b/arch/x86_64/kernel/smpboot.c                   |   12 
 b/arch/x86_64/kernel/time.c                      |   20 
 b/arch/x86_64/kernel/traps.c                     |    9 
 b/arch/x86_64/lib/delay.c                        |    2 
 b/arch/x86_64/mm/init.c                          |   43 +
 b/arch/x86_64/pci/Makefile                       |   23 
 b/drivers/char/epca.c                            |    4 
 b/drivers/char/keyboard.c                        |    8 
 b/drivers/char/rtc.c                             |    9 
 b/drivers/char/sonypi.c                          |  125 +--
 b/drivers/char/sonypi.h                          |   34 
 b/drivers/char/vt_ioctl.c                        |    4 
 b/drivers/ide/Kconfig                            |   67 +
 b/drivers/ide/ide-cd.c                           |   45 +
 b/drivers/ide/ide-disk.c                         |  523 ++++++++++++-
 b/drivers/ide/ide-io.c                           |  110 ++
 b/drivers/ide/ide-iops.c                         |   30 
 b/drivers/ide/ide-probe.c                        |   36 
 b/drivers/ide/ide-taskfile.c                     |  419 ++++++++++
 b/drivers/ide/ide.c                              |   48 +
 b/drivers/ide/legacy/pdc4030.c                   |  107 ++
 b/drivers/input/evdev.c                          |   37 
 b/drivers/input/gameport/gameport.c              |    2 
 b/drivers/input/input.c                          |   27 
 b/drivers/input/joystick/analog.c                |    2 
 b/drivers/input/keyboard/atkbd.c                 |    2 
 b/drivers/input/keyboard/sunkbd.c                |    2 
 b/drivers/input/misc/pcspkr.c                    |    2 
 b/drivers/input/mouse/Kconfig                    |   13 
 b/drivers/input/mouse/Makefile                   |    5 
 b/drivers/input/mouse/psmouse-base.c             |  661 +++++++++++++++++
 b/drivers/input/mouse/psmouse.h                  |   49 +
 b/drivers/input/mouse/synaptics.c                |  390 ++++++++++
 b/drivers/input/mouse/synaptics.h                |  105 ++
 b/drivers/input/serio/Kconfig                    |   11 
 b/drivers/input/serio/Makefile                   |    1 
 b/drivers/input/serio/i8042-io.h                 |   11 
 b/drivers/input/serio/pcips2.c                   |  230 +++++
 b/drivers/md/dm-ioctl.c                          |    6 
 b/drivers/md/dm.c                                |   21 
 b/drivers/md/dm.h                                |    5 
 b/drivers/media/video/meye.c                     |   67 -
 b/drivers/media/video/meye.h                     |    2 
 b/drivers/message/fusion/mptbase.c               |    5 
 b/drivers/net/Space.c                            |   34 
 b/drivers/net/arcnet/arc-rawmode.c               |    9 
 b/drivers/net/arcnet/arcnet.c                    |   15 
 b/drivers/net/arcnet/rfc1051.c                   |    9 
 b/drivers/net/arcnet/rfc1201.c                   |    9 
 b/drivers/net/eepro100.c                         |    1 
 b/drivers/net/fc/iph5526.c                       |   22 
 b/drivers/net/irda/ma600.c                       |    2 
 b/drivers/net/ppp_generic.c                      |   11 
 b/drivers/net/slip.c                             |  218 +++--
 b/drivers/net/tun.c                              |    5 
 b/drivers/net/wan/dscc4.c                        |   44 -
 b/drivers/parisc/Kconfig                         |   23 
 b/drivers/parisc/dino.c                          |    4 
 b/drivers/parisc/eisa.c                          |    6 
 b/drivers/parisc/eisa_eeprom.c                   |    1 
 b/drivers/parisc/gsc.c                           |    3 
 b/drivers/parisc/gsc.h                           |    2 
 b/drivers/parisc/iosapic.c                       |    4 
 b/drivers/parisc/led.c                           |  173 +---
 b/drivers/parisc/superio.c                       |   10 
 b/drivers/parport/parport_gsc.c                  |    3 
 b/drivers/pcmcia/bulkmem.c                       |    1 
 b/drivers/pcmcia/cardbus.c                       |   10 
 b/drivers/pcmcia/cistpl.c                        |   38 
 b/drivers/pcmcia/cs.c                            |  113 --
 b/drivers/pcmcia/cs_internal.h                   |    8 
 b/drivers/pcmcia/ds.c                            |    7 
 b/drivers/pcmcia/i82092.c                        |   27 
 b/drivers/pcmcia/i82092aa.h                      |    2 
 b/drivers/pcmcia/i82365.c                        |  110 --
 b/drivers/pcmcia/rsrc_mgr.c                      |   33 
 b/drivers/pcmcia/sa1100_generic.c                |    1 
 b/drivers/pcmcia/sa1111_generic.c                |    1 
 b/drivers/pcmcia/sa11xx_core.c                   |   93 --
 b/drivers/pcmcia/sa11xx_core.h                   |    1 
 b/drivers/pcmcia/tcic.c                          |   39 -
 b/drivers/pcmcia/yenta.c                         |   31 
 b/drivers/pcmcia/yenta.h                         |    1 
 b/drivers/scsi/aacraid/aachba.c                  |    3 
 b/drivers/scsi/dpt_i2o.c                         |    4 
 b/drivers/scsi/scsi_scan.c                       |    3 
 b/drivers/scsi/sd.c                              |    2 
 b/drivers/scsi/sr.c                              |    2 
 b/drivers/serial/mcfserial.c                     |   31 
 b/drivers/usb/input/hid-core.c                   |   12 
 b/drivers/usb/input/hid-input.c                  |   19 
 b/drivers/usb/input/hid.h                        |   16 
 b/drivers/usb/input/hiddev.c                     |   10 
 b/drivers/video/console/sticore.c                |    6 
 b/drivers/video/stifb.c                          |   19 
 b/fs/compat_ioctl.c                              |    1 
 b/fs/efs/super.c                                 |    6 
 b/fs/inode.c                                     |   10 
 b/fs/jffs/intrep.c                               |    2 
 b/fs/proc/proc_misc.c                            |   37 
 b/include/asm-alpha/ide.h                        |    2 
 b/include/asm-i386/apic.h                        |    4 
 b/include/asm-i386/io_apic.h                     |    3 
 b/include/asm-i386/mach-bigsmp/mach_apic.h       |    4 
 b/include/asm-i386/mach-bigsmp/mach_mpspec.h     |   13 
 b/include/asm-i386/mach-default/mach_apic.h      |    4 
 b/include/asm-i386/mach-default/mach_mpspec.h    |   13 
 b/include/asm-i386/mach-es7000/mach_apic.h       |  189 ++++
 b/include/asm-i386/mach-es7000/mach_apicdef.h    |   13 
 b/include/asm-i386/mach-es7000/mach_ipi.h        |   24 
 b/include/asm-i386/mach-es7000/mach_mpparse.h    |   38 
 b/include/asm-i386/mach-es7000/mach_mpspec.h     |   13 
 b/include/asm-i386/mach-es7000/mach_wakecpu.h    |   58 +
 b/include/asm-i386/mach-generic/mach_mpspec.h    |   13 
 b/include/asm-i386/mach-numaq/mach_apic.h        |    6 
 b/include/asm-i386/mach-numaq/mach_mpspec.h      |   13 
 b/include/asm-i386/mach-pc9800/setup_arch_pre.h  |    2 
 b/include/asm-i386/mach-summit/mach_apic.h       |    4 
 b/include/asm-i386/mach-summit/mach_mpspec.h     |   13 
 b/include/asm-i386/mach-visws/mach_apic.h        |    4 
 b/include/asm-i386/mpspec.h                      |  199 -----
 b/include/asm-i386/mpspec_def.h                  |  187 ++++
 b/include/asm-i386/timex.h                       |    2 
 b/include/asm-ia64/timex.h                       |    6 
 b/include/asm-parisc/compat.h                    |    9 
 b/include/asm-parisc/elf.h                       |   11 
 b/include/asm-parisc/fixmap.h                    |    9 
 b/include/asm-parisc/module.h                    |    8 
 b/include/asm-parisc/pdc_chassis.h               |    2 
 b/include/asm-parisc/pgtable.h                   |   18 
 b/include/asm-parisc/processor.h                 |    1 
 b/include/asm-parisc/timex.h                     |    1 
 b/include/asm-parisc/unistd.h                    |    1 
 b/include/asm-ppc/pci.h                          |    1 
 b/include/asm-ppc/unistd.h                       |    2 
 b/include/asm-sparc/timer.h                      |    2 
 b/include/asm-x86_64/fixmap.h                    |    5 
 b/include/asm-x86_64/io.h                        |    2 
 b/include/asm-x86_64/mmzone.h                    |   14 
 b/include/asm-x86_64/page.h                      |    2 
 b/include/asm-x86_64/pci.h                       |    1 
 b/include/asm-x86_64/pgtable.h                   |   11 
 b/include/asm-x86_64/proto.h                     |   22 
 b/include/asm-x86_64/timex.h                     |    2 
 b/include/linux/arcdevice.h                      |    4 
 b/include/linux/atalk.h                          |    2 
 b/include/linux/blkdev.h                         |   33 
 b/include/linux/compat_ioctl.h                   |   31 
 b/include/linux/ide.h                            |   79 ++
 b/include/linux/input.h                          |   13 
 b/include/linux/ioport.h                         |    7 
 b/include/linux/list.h                           |   26 
 b/include/linux/moduleparam.h                    |    2 
 b/include/linux/netdevice.h                      |   12 
 b/include/linux/slab.h                           |    3 
 b/include/linux/time.h                           |   49 -
 b/include/linux/timex.h                          |   18 
 b/include/net/af_unix.h                          |   21 
 b/include/net/bluetooth/bluetooth.h              |    5 
 b/include/net/ipx.h                              |    2 
 b/include/net/llc_sap.h                          |    4 
 b/include/net/raw.h                              |    2 
 b/include/net/rawv6.h                            |    2 
 b/include/net/route.h                            |    2 
 b/include/net/sctp/structs.h                     |    2 
 b/include/net/sock.h                             |   87 +-
 b/include/net/tcp.h                              |   88 +-
 b/include/net/udp.h                              |    8 
 b/include/net/x25.h                              |    2 
 b/include/net/xfrm.h                             |    1 
 b/include/pcmcia/ss.h                            |   34 
 b/init/main.c                                    |    6 
 b/kernel/compat.c                                |    8 
 b/kernel/fork.c                                  |    1 
 b/kernel/posix-timers.c                          |   10 
 b/kernel/sched.c                                 |    7 
 b/kernel/sysctl.c                                |    2 
 b/kernel/time.c                                  |   26 
 b/kernel/timer.c                                 |   29 
 b/mm/shmem.c                                     |   14 
 b/mm/vmscan.c                                    |    5 
 b/net/appletalk/atalk_proc.c                     |   16 
 b/net/appletalk/ddp.c                            |   66 -
 b/net/ax25/af_ax25.c                             |    6 
 b/net/bluetooth/af_bluetooth.c                   |   14 
 b/net/bluetooth/hci_sock.c                       |    6 
 b/net/bluetooth/l2cap.c                          |   28 
 b/net/bluetooth/rfcomm/sock.c                    |   15 
 b/net/bluetooth/rfcomm/tty.c                     |    2 
 b/net/bluetooth/sco.c                            |   27 
 b/net/core/dev.c                                 |  221 ++---
 b/net/core/flow.c                                |    1 
 b/net/core/net-sysfs.c                           |   58 +
 b/net/decnet/af_decnet.c                         |  105 +-
 b/net/decnet/dn_nsp_in.c                         |    2 
 b/net/econet/af_econet.c                         |   38 
 b/net/ipv4/af_inet.c                             |    2 
 b/net/ipv4/icmp.c                                |    4 
 b/net/ipv4/ip_input.c                            |    2 
 b/net/ipv4/raw.c                                 |   57 -
 b/net/ipv4/route.c                               |   66 +
 b/net/ipv4/tcp.c                                 |    6 
 b/net/ipv4/tcp_diag.c                            |   20 
 b/net/ipv4/tcp_ipv4.c                            |  193 ++--
 b/net/ipv4/tcp_minisocks.c                       |   93 --
 b/net/ipv4/tcp_timer.c                           |    6 
 b/net/ipv4/udp.c                                 |   75 -
 b/net/ipv6/ah6.c                                 |  166 +++-
 b/net/ipv6/icmp.c                                |    4 
 b/net/ipv6/ip6_input.c                           |    2 
 b/net/ipv6/ipv6_syms.c                           |    1 
 b/net/ipv6/raw.c                                 |   62 -
 b/net/ipv6/tcp_ipv6.c                            |   73 -
 b/net/ipv6/udp.c                                 |  100 +-
 b/net/ipv6/xfrm6_input.c                         |  138 ---
 b/net/ipx/af_ipx.c                               |   78 --
 b/net/ipx/ipx_proc.c                             |   30 
 b/net/key/af_key.c                               |   22 
 b/net/llc/af_llc.c                               |    2 
 b/net/llc/llc_conn.c                             |   39 -
 b/net/llc/llc_main.c                             |    3 
 b/net/llc/llc_proc.c                             |   31 
 b/net/llc/llc_sap.c                              |   20 
 b/net/netlink/af_netlink.c                       |   44 -
 b/net/netrom/af_netrom.c                         |   75 -
 b/net/packet/af_packet.c                         |   21 
 b/net/rose/af_rose.c                             |   68 -
 b/net/sctp/socket.c                              |   37 
 b/net/socket.c                                   |   16 
 b/net/sunrpc/rpc_pipe.c                          |   33 
 b/net/unix/af_unix.c                             |  113 +-
 b/net/unix/garbage.c                             |   26 
 b/net/wanrouter/af_wanpipe.c                     |   48 -
 b/net/x25/af_x25.c                               |   55 -
 b/net/x25/x25_proc.c                             |   16 
 b/net/xfrm/xfrm_state.c                          |    2 
 b/sound/oss/es1371.c                             |    8 
 drivers/input/mouse/psmouse.c                    |  689 -----------------
 386 files changed, 12273 insertions(+), 10231 deletions(-)

