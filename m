From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.24 released
Date: Thu, 20 Jun 2002 16:18:03 -0700
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200206202318.g5KNI3e10683@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.24 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.24.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.24.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               627555           2606849
Full source                       34860740         155299840

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/filesystems/ntfs.txt         |   10 
 b/Documentation/networking/dl2k.txt          |   44 
 b/Makefile                                   |   99 
 b/Rules.make                                 |   31 
 b/arch/alpha/config.in                       |    2 
 b/arch/alpha/kernel/traps.c                  |    2 
 b/arch/arm/config.in                         |   16 
 b/arch/arm/kernel/sys_arm.c                  |    7 
 b/arch/cris/kernel/sys_cris.c                |    9 
 b/arch/cris/kernel/traps.c                   |    2 
 b/arch/i386/Makefile                         |    2 
 b/arch/i386/boot/compressed/misc.c           |    2 
 b/arch/i386/kernel/apm.c                     |    7 
 b/arch/i386/kernel/i386_ksyms.c              |    5 
 b/arch/i386/kernel/mpparse.c                 |    2 
 b/arch/i386/kernel/smpboot.c                 |   10 
 b/arch/i386/kernel/sys_i386.c                |    8 
 b/arch/i386/kernel/traps.c                   |    2 
 b/arch/ia64/config.in                        |    6 
 b/arch/m68k/config.in                        |    6 
 b/arch/m68k/kernel/sys_m68k.c                |   10 
 b/arch/m68k/kernel/traps.c                   |    2 
 b/arch/mips/config.in                        |    4 
 b/arch/mips/kernel/sysmips.c                 |    7 
 b/arch/mips/kernel/traps.c                   |    2 
 b/arch/mips64/config.in                      |    6 
 b/arch/mips64/kernel/syscall.c               |    7 
 b/arch/mips64/kernel/traps.c                 |    2 
 b/arch/parisc/config.in                      |    4 
 b/arch/parisc/kernel/sys_parisc.c            |    7 
 b/arch/parisc/kernel/traps.c                 |    2 
 b/arch/ppc/8260_io/Config.in                 |    2 
 b/arch/ppc/config.in                         |    4 
 b/arch/ppc/kernel/syscalls.c                 |    7 
 b/arch/ppc64/config.in                       |    4 
 b/arch/ppc64/kernel/syscalls.c               |   11 
 b/arch/s390/kernel/sys_s390.c                |    7 
 b/arch/s390/kernel/traps.c                   |    2 
 b/arch/s390x/kernel/sys_s390.c               |    7 
 b/arch/s390x/kernel/traps.c                  |    2 
 b/arch/sh/kernel/sys_sh.c                    |    7 
 b/arch/sparc/config.in                       |    2 
 b/arch/sparc/kernel/sys_sparc.c              |    8 
 b/arch/sparc64/config.in                     |    2 
 b/arch/sparc64/kernel/cpu.c                  |   56 
 b/arch/sparc64/kernel/devices.c              |    4 
 b/arch/sparc64/kernel/irq.c                  |  107 
 b/arch/sparc64/kernel/setup.c                |    2 
 b/arch/sparc64/kernel/smp.c                  |  185 
 b/arch/sparc64/kernel/sparc64_ksyms.c        |   11 
 b/arch/sparc64/kernel/starfire.c             |   50 
 b/arch/sparc64/kernel/traps.c                |   14 
 b/arch/sparc64/solaris/misc.c                |    5 
 b/arch/x86_64/kernel/sys_x86_64.c            |    7 
 b/arch/x86_64/kernel/traps.c                 |    2 
 b/drivers/Makefile                           |    2 
 b/drivers/acorn/char/Makefile                |    2 
 b/drivers/acpi/pci_irq.c                     |    1 
 b/drivers/atm/Makefile                       |   46 
 b/drivers/atm/idt77252.h                     |    1 
 b/drivers/block/Config.in                    |    2 
 b/drivers/block/elevator.c                   |   36 
 b/drivers/block/genhd.c                      |   10 
 b/drivers/block/nbd.c                        |    1 
 b/drivers/cdrom/cm206.c                      |    9 
 b/drivers/char/Config.in                     |    6 
 b/drivers/char/Makefile                      |   10 
 b/drivers/hotplug/cpqphp_core.c              |    1 
 b/drivers/hotplug/cpqphp_ctrl.c              |    1 
 b/drivers/hotplug/cpqphp_nvram.c             |    1 
 b/drivers/hotplug/cpqphp_pci.c               |    1 
 b/drivers/hotplug/cpqphp_proc.c              |    1 
 b/drivers/i2c/Config.in                      |    2 
 b/drivers/i2c/i2c-algo-bit.c                 |   81 
 b/drivers/i2c/i2c-algo-pcf.c                 |   66 
 b/drivers/i2c/i2c-core.c                     |  125 
 b/drivers/i2c/i2c-dev.c                      |   46 
 b/drivers/i2c/i2c-elektor.c                  |   27 
 b/drivers/i2c/i2c-elv.c                      |   12 
 b/drivers/i2c/i2c-philips-par.c              |   18 
 b/drivers/i2c/i2c-proc.c                     |   35 
 b/drivers/i2c/i2c-velleman.c                 |    9 
 b/drivers/ide/Config.in                      |    6 
 b/drivers/ide/cmd64x.c                       |    2 
 b/drivers/ide/hpt34x.c                       |    2 
 b/drivers/ide/hpt366.c                       |    2 
 b/drivers/ide/icside.c                       |    3 
 b/drivers/ide/ide-disk.c                     |  214 
 b/drivers/ide/ide-pmac.c                     |   14 
 b/drivers/ide/ide-taskfile.c                 |   14 
 b/drivers/ide/ide.c                          |   25 
 b/drivers/ide/ioctl.c                        |   13 
 b/drivers/ide/ns87415.c                      |    1 
 b/drivers/ide/pcidma.c                       |    2 
 b/drivers/ide/pdc202xx.c                     |    5 
 b/drivers/ide/serverworks.c                  |    1 
 b/drivers/ide/tcq.c                          |    8 
 b/drivers/ide/trm290.c                       |    3 
 b/drivers/isdn/act2000/Config.in             |    2 
 b/drivers/isdn/eicon/eicon_idi.c             |    2 
 b/drivers/isdn/hardware/avm/Config.in        |    4 
 b/drivers/isdn/hardware/avm/b1pci.c          |    2 
 b/drivers/isdn/hardware/avm/c4.c             |    2 
 b/drivers/isdn/hardware/avm/t1pci.c          |    2 
 b/drivers/isdn/hisax/Config.help             |    4 
 b/drivers/isdn/hisax/Config.in               |   23 
 b/drivers/isdn/hisax/Makefile                |    1 
 b/drivers/isdn/hisax/avma1_cs.c              |  553 ++
 b/drivers/isdn/icn/Config.in                 |    2 
 b/drivers/isdn/pcbit/Config.in               |    2 
 b/drivers/isdn/pcbit/pcbit.h                 |    2 
 b/drivers/isdn/sc/Config.in                  |    2 
 b/drivers/isdn/tpam/Config.in                |    2 
 b/drivers/isdn/tpam/tpam.h                   |    1 
 b/drivers/md/md.c                            |   58 
 b/drivers/media/video/Config.in              |    2 
 b/drivers/media/video/cpia_pp.c              |    1 
 b/drivers/message/fusion/Config.in           |   24 
 b/drivers/message/fusion/isense.c            |   19 
 b/drivers/message/fusion/linux_compat.h      |  100 
 b/drivers/message/fusion/lsi/fc_log.h        |    4 
 b/drivers/message/fusion/lsi/mpi.h           |   15 
 b/drivers/message/fusion/lsi/mpi_cnfg.h      |  731 +-
 b/drivers/message/fusion/lsi/mpi_fc.h        |    7 
 b/drivers/message/fusion/lsi/mpi_init.h      |   98 
 b/drivers/message/fusion/lsi/mpi_ioc.h       |  207 
 b/drivers/message/fusion/lsi/mpi_lan.h       |    3 
 b/drivers/message/fusion/lsi/mpi_raid.h      |  178 
 b/drivers/message/fusion/lsi/mpi_targ.h      |   87 
 b/drivers/message/fusion/lsi/mpi_type.h      |    3 
 b/drivers/message/fusion/mptbase.c           | 3863 +++++++++++----
 b/drivers/message/fusion/mptbase.h           |  715 ++
 b/drivers/message/fusion/mptctl.c            | 3060 +++++++++--
 b/drivers/message/fusion/mptctl.h            |  409 +
 b/drivers/message/fusion/mptlan.c            |  253 
 b/drivers/message/fusion/mptlan.h            |   13 
 b/drivers/message/fusion/mptscsih.c          | 6904 ++++++++++++++++++++++-----
 b/drivers/message/fusion/mptscsih.h          |  100 
 b/drivers/message/fusion/scsi3.h             |   10 
 b/drivers/mtd/maps/Config.in                 |    6 
 b/drivers/net/3c509.c                        |    6 
 b/drivers/net/8139cp.c                       |  145 
 b/drivers/net/8139too.c                      |  119 
 b/drivers/net/Config.in                      |   10 
 b/drivers/net/dl2k.c                         |   26 
 b/drivers/net/dl2k.h                         |   15 
 b/drivers/net/hamradio/soundmodem/Makefile   |   18 
 b/drivers/net/irda/actisys.c                 |   15 
 b/drivers/net/irda/ali-ircc.c                |   25 
 b/drivers/net/irda/ep7211_ir.c               |    3 
 b/drivers/net/irda/esi.c                     |   15 
 b/drivers/net/irda/girbil.c                  |   16 
 b/drivers/net/irda/irda-usb.c                |    5 
 b/drivers/net/irda/irport.c                  |   19 
 b/drivers/net/irda/irtty.c                   |   19 
 b/drivers/net/irda/litelink.c                |   15 
 b/drivers/net/irda/mcp2120.c                 |   15 
 b/drivers/net/irda/nsc-ircc.c                |   27 
 b/drivers/net/irda/old_belkin.c              |   16 
 b/drivers/net/irda/sa1100_ir.c               |    5 
 b/drivers/net/irda/smc-ircc.c                |    8 
 b/drivers/net/irda/tekram.c                  |   15 
 b/drivers/net/irda/toshoboe.c                |    2 
 b/drivers/net/irda/vlsi_ir.c                 |    1 
 b/drivers/net/irda/w83977af_ir.c             |   18 
 b/drivers/net/skfp/h/smt.h                   |    2 
 b/drivers/net/sungem.c                       |    1 
 b/drivers/net/tun.c                          |    2 
 b/drivers/net/wan/Config.in                  |    6 
 b/drivers/net/wireless/Config.in             |    4 
 b/drivers/pci/Makefile                       |   12 
 b/drivers/pcmcia/hd64465_ss.c                |    1 
 b/drivers/pcmcia/i82092.c                    |    1 
 b/drivers/pcmcia/i82365.c                    |    1 
 b/drivers/pcmcia/tcic.c                      |    1 
 b/drivers/sbus/char/Makefile                 |    2 
 b/drivers/scsi/3w-xxxx.c                     |   83 
 b/drivers/scsi/3w-xxxx.h                     |   67 
 b/drivers/scsi/53c700_d.h_shipped            | 1329 +++++
 b/drivers/scsi/53c7xx_d.h_shipped            | 2874 +++++++++++
 b/drivers/scsi/53c7xx_u.h_shipped            |  102 
 b/drivers/scsi/53c8xx_d.h_shipped            | 2678 ++++++++++
 b/drivers/scsi/53c8xx_u.h_shipped            |   97 
 b/drivers/scsi/Config.in                     |    2 
 b/drivers/scsi/Makefile                      |   48 
 b/drivers/scsi/aic7xxx/Makefile              |   19 
 b/drivers/scsi/aic7xxx/aic7xxx_reg.h_shipped |  716 ++
 b/drivers/scsi/aic7xxx/aic7xxx_seq.h_shipped | 1299 +++++
 b/drivers/scsi/jazz_esp.c                    |    2 
 b/drivers/scsi/script_asm.pl                 |   13 
 b/drivers/scsi/sim710_d.h_shipped            | 2361 +++++++++
 b/drivers/tc/Makefile                        |    4 
 b/drivers/usb/net/usbnet.c                   |    1 
 b/drivers/video/Makefile                     |   13 
 b/drivers/video/radeonfb.c                   |    2 
 b/drivers/zorro/Makefile                     |   10 
 b/fs/Config.in                               |    6 
 b/fs/ext2/balloc.c                           |    2 
 b/fs/ext2/ext2.h                             |    3 
 b/fs/ext2/ioctl.c                            |    2 
 b/fs/ext2/super.c                            |    8 
 b/fs/ext3/ioctl.c                            |    2 
 b/fs/jfs/file.c                              |    2 
 b/fs/jfs/jfs_dmap.c                          |    3 
 b/fs/jfs/jfs_imap.c                          |    4 
 b/fs/jfs/jfs_inode.c                         |    1 
 b/fs/jfs/jfs_logmgr.c                        |   65 
 b/fs/jfs/jfs_txnmgr.c                        |   51 
 b/fs/jfs/namei.c                             |   15 
 b/fs/jfs/super.c                             |   35 
 b/fs/namespace.c                             |    6 
 b/fs/ntfs/ChangeLog                          |   22 
 b/fs/ntfs/Makefile                           |    2 
 b/fs/ntfs/attrib.c                           |    3 
 b/fs/ntfs/compress.c                         |   25 
 b/fs/ntfs/dir.c                              |  139 
 b/fs/ntfs/dir.h                              |    4 
 b/fs/ntfs/inode.c                            |   31 
 b/fs/ntfs/inode.h                            |    2 
 b/fs/ntfs/layout.h                           |    7 
 b/fs/ntfs/mft.c                              |   16 
 b/fs/ntfs/namei.c                            |   19 
 b/fs/ntfs/super.c                            |   14 
 b/fs/ntfs/volume.h                           |    4 
 b/fs/partitions/Config.in                    |    2 
 b/fs/reiserfs/journal.c                      |    2 
 b/fs/smbfs/sock.c                            |    1 
 b/include/asm-alpha/signal.h                 |    1 
 b/include/asm-alpha/unistd.h                 |   13 
 b/include/asm-i386/xor.h                     |    2 
 b/include/asm-ia64/delay.h                   |    3 
 b/include/asm-ia64/pgalloc.h                 |   15 
 b/include/asm-ia64/processor.h               |    3 
 b/include/asm-ia64/signal.h                  |    1 
 b/include/asm-ia64/softirq.h                 |    4 
 b/include/asm-sparc64/hardirq.h              |    7 
 b/include/asm-sparc64/signal.h               |    1 
 b/include/asm-sparc64/smp.h                  |   31 
 b/include/linux/blk.h                        |   33 
 b/include/linux/elevator.h                   |    1 
 b/include/linux/ethtool.h                    |   11 
 b/include/linux/futex.h                      |    1 
 b/include/linux/i2c-dev.h                    |   18 
 b/include/linux/i2c-id.h                     |   15 
 b/include/linux/i2c-proc.h                   |    5 
 b/include/linux/i2c.h                        |   23 
 b/include/linux/ide.h                        |   12 
 b/include/linux/if_tun.h                     |    4 
 b/include/linux/interrupt.h                  |   25 
 b/include/linux/proc_fs.h                    |    1 
 b/include/linux/sched.h                      |   28 
 b/include/linux/smp.h                        |    1 
 b/include/net/ip6_route.h                    |    3 
 b/include/net/irda/af_irda.h                 |   82 
 b/include/net/irda/discovery.h               |   15 
 b/include/net/irda/ircomm_core.h             |    1 
 b/include/net/irda/ircomm_event.h            |    2 
 b/include/net/irda/ircomm_tty.h              |    1 
 b/include/net/irda/irda-usb.h                |    3 
 b/include/net/irda/irda.h                    |  160 
 b/include/net/irda/irda_device.h             |   39 
 b/include/net/irda/iriap.h                   |    5 
 b/include/net/irda/irlap.h                   |   31 
 b/include/net/irda/irlap_event.h             |   34 
 b/include/net/irda/irlap_frame.h             |   20 
 b/include/net/irda/irlmp.h                   |    6 
 b/include/net/irda/irlmp_event.h             |    6 
 b/include/net/irda/irmod.h                   |   71 
 b/include/net/irda/irttp.h                   |    5 
 b/include/net/irda/timer.h                   |   16 
 b/include/net/irda/wrapper.h                 |    2 
 b/include/sound/ac97_codec.h                 |   11 
 b/include/sound/asound.h                     |   12 
 b/include/sound/core.h                       |   22 
 b/include/sound/emu10k1.h                    |    6 
 b/include/sound/emu8000.h                    |    4 
 b/include/sound/emux_synth.h                 |    9 
 b/include/sound/mixer_oss.h                  |    4 
 b/include/sound/opl3.h                       |    4 
 b/include/sound/pcm.h                        |   16 
 b/include/sound/soundfont.h                  |    1 
 b/include/sound/timer.h                      |    1 
 b/include/sound/version.h                    |    4 
 b/include/sound/ymfpci.h                     |    9 
 b/init/Makefile                              |    8 
 b/kernel/fork.c                              |    2 
 b/kernel/futex.c                             |  179 
 b/kernel/ksyms.c                             |    1 
 b/kernel/sched.c                             |   48 
 b/kernel/signal.c                            |   12 
 b/kernel/softirq.c                           |    3 
 b/kernel/timer.c                             |    2 
 b/mm/mmap.c                                  |    2 
 b/mm/page_alloc.c                            |   60 
 b/net/802/Makefile                           |   76 
 b/net/802/cl2llc.pre                         |    4 
 b/net/Config.in                              |    8 
 b/net/Makefile                               |    8 
 b/net/core/dev.c                             |    6 
 b/net/ipv4/Makefile                          |    1 
 b/net/ipv6/Makefile                          |    1 
 b/net/ipv6/addrconf.c                        |    6 
 b/net/ipv6/af_inet6.c                        |    2 
 b/net/ipv6/exthdrs.c                         |   10 
 b/net/ipv6/icmp.c                            |    6 
 b/net/ipv6/ipv6_sockglue.c                   |    2 
 b/net/ipv6/mcast.c                           |    6 
 b/net/ipv6/ndisc.c                           |    2 
 b/net/ipv6/proc.c                            |    2 
 b/net/ipv6/raw.c                             |    2 
 b/net/ipv6/reassembly.c                      |    6 
 b/net/ipv6/route.c                           |   16 
 b/net/ipv6/sit.c                             |    6 
 b/net/ipv6/sysctl_net_ipv6.c                 |   11 
 b/net/ipv6/tcp_ipv6.c                        |    4 
 b/net/ipv6/udp.c                             |    6 
 b/net/irda/af_irda.c                         |  190 
 b/net/irda/ircomm/ircomm_core.c              |   17 
 b/net/irda/ircomm/ircomm_lmp.c               |    1 
 b/net/irda/ircomm/ircomm_param.c             |    1 
 b/net/irda/ircomm/ircomm_tty.c               |   24 
 b/net/irda/irda_device.c                     |   61 
 b/net/irda/iriap.c                           |    3 
 b/net/irda/irias_object.c                    |    1 
 b/net/irda/irlan/irlan_common.c              |   17 
 b/net/irda/irlap.c                           |    2 
 b/net/irda/irlap_event.c                     |    1 
 b/net/irda/irlmp.c                           |    6 
 b/net/irda/irnet/irnet.h                     |   13 
 b/net/irda/irnet/irnet_irda.c                |    4 
 b/net/irda/irnet/irnet_ppp.c                 |   23 
 b/net/irda/irproc.c                          |    6 
 b/net/irda/irqueue.c                         |    1 
 b/net/irda/irsyms.c                          |  160 
 b/net/irda/irsysctl.c                        |    5 
 b/net/irda/irttp.c                           |    5 
 b/net/irda/timer.c                           |    4 
 b/net/khttpd/Makefile                        |   10 
 b/net/khttpd/make_times_h.c                  |   45 
 b/net/llc/Makefile                           |   20 
 b/scripts/patch-kernel                       |    4 
 b/sound/arm/sa11xx-uda1341.c                 |    2 
 b/sound/core/Config.in                       |   12 
 b/sound/core/Makefile                        |    9 
 b/sound/core/control.c                       |    2 
 b/sound/core/info.c                          |    2 
 b/sound/core/init.c                          |   11 
 b/sound/core/ioctl32/ioctl32.c               |   22 
 b/sound/core/memory.c                        |   42 
 b/sound/core/misc.c                          |    4 
 b/sound/core/oss/pcm_oss.c                   |    4 
 b/sound/core/pcm.c                           |   12 
 b/sound/core/pcm_lib.c                       |   11 
 b/sound/core/pcm_native.c                    |   11 
 b/sound/core/rawmidi.c                       |    2 
 b/sound/core/seq/Makefile                    |   10 
 b/sound/core/seq/instr/Makefile              |    2 
 b/sound/core/seq/oss/Makefile                |    6 
 b/sound/core/seq/seq_clientmgr.c             |    4 
 b/sound/core/seq/seq_clientmgr.h             |    1 
 b/sound/core/seq/seq_queue.h                 |    2 
 b/sound/core/sound.c                         |    4 
 b/sound/core/timer.c                         |   52 
 b/sound/drivers/dummy.c                      |    4 
 b/sound/drivers/mpu401/Makefile              |    2 
 b/sound/drivers/opl3/Makefile                |    6 
 b/sound/drivers/opl3/opl3_seq.c              |    4 
 b/sound/drivers/opl3/opl3_voice.h            |    2 
 b/sound/i2c/Makefile                         |    4 
 b/sound/isa/Makefile                         |    2 
 b/sound/isa/ad1848/Makefile                  |    2 
 b/sound/isa/cs423x/Makefile                  |    2 
 b/sound/isa/cs423x/cs4236.c                  |   32 
 b/sound/isa/gus/Makefile                     |    2 
 b/sound/isa/gus/gus_pcm.c                    |    2 
 b/sound/isa/gus/gus_synth.c                  |    2 
 b/sound/isa/gus/interwave.c                  |    2 
 b/sound/isa/sb/Makefile                      |    4 
 b/sound/isa/sb/emu8000.c                     |    6 
 b/sound/isa/sb/emu8000_callback.c            |    6 
 b/sound/isa/sb/emu8000_local.h               |    3 
 b/sound/isa/sb/emu8000_pcm.c                 |  709 ++
 b/sound/isa/sb/emu8000_synth.c               |    6 
 b/sound/isa/sb/es968.c                       |    2 
 b/sound/isa/sb/sb16_csp.c                    |    2 
 b/sound/last.c                               |    3 
 b/sound/oss/Config.in                        |    4 
 b/sound/oss/Makefile                         |  108 
 b/sound/pci/Config.help                      |    4 
 b/sound/pci/Config.in                        |    1 
 b/sound/pci/ac97/Makefile                    |    2 
 b/sound/pci/ac97/ac97_codec.c                |  145 
 b/sound/pci/cmipci.c                         |   10 
 b/sound/pci/cs4281.c                         |   93 
 b/sound/pci/cs46xx/cs46xx.c                  |    1 
 b/sound/pci/emu10k1/emu10k1_synth.c          |    2 
 b/sound/pci/emu10k1/emufx.c                  |    4 
 b/sound/pci/es1968.c                         |    6 
 b/sound/pci/ice1712.c                        |    2 
 b/sound/pci/intel8x0.c                       |   19 
 b/sound/pci/korg1212/korg1212.c              |  224 
 b/sound/pci/rme32.c                          |  153 
 b/sound/pci/rme96.c                          |    2 
 b/sound/pci/rme9652/Makefile                 |    8 
 b/sound/pci/rme9652/digiface_firmware.dat    | 4072 +++++++++++++++
 b/sound/pci/rme9652/hammerfall_mem.c         |  279 +
 b/sound/pci/rme9652/hdsp.c                   | 3141 ++++++++++++
 b/sound/pci/rme9652/multiface_firmware.dat   | 4072 +++++++++++++++
 b/sound/pci/rme9652/rme9652.c                |   61 
 b/sound/pci/trident/trident_main.c           |    2 
 b/sound/pci/trident/trident_memory.c         |    4 
 b/sound/pci/via8233.c                        |  102 
 b/sound/pci/ymfpci/ymfpci_main.c             |  192 
 b/sound/ppc/awacs.c                          |  725 ++
 b/sound/ppc/awacs.h                          |   12 
 b/sound/ppc/burgundy.c                       |   62 
 b/sound/ppc/daca.c                           |   16 
 b/sound/ppc/keywest.c                        |  241 
 b/sound/ppc/pmac.c                           |  216 
 b/sound/ppc/pmac.h                           |   41 
 b/sound/ppc/powermac.c                       |    2 
 b/sound/ppc/tumbler.c                        |  689 +-
 b/sound/ppc/tumbler_volume.h                 |  188 
 b/sound/synth/emux/Makefile                  |    5 
 b/sound/synth/emux/emux.c                    |    9 
 b/sound/synth/emux/emux_effect.c             |    2 
 b/sound/synth/emux/emux_oss.c                |    4 
 b/sound/synth/emux/emux_synth.c              |   38 
 drivers/char/defkeymap.c                     |  262 -
 drivers/scsi/53c8xx_d.h                      | 2678 ----------
 drivers/scsi/53c8xx_u.h                      |   97 
 drivers/scsi/aic7xxx/shipped_aic7xxx_reg.h   |  716 --
 drivers/scsi/aic7xxx/shipped_aic7xxx_seq.h   | 1299 -----
 drivers/scsi/sim710_d.h                      | 2361 ---------
 drivers/scsi/sim710_u.h                      |   67 
 net/802/cl2llc.c                             |  615 --
 net/802/pseudo/Makefile                      |   13 
 net/802/pseudo/actionnm.h                    |   51 
 net/802/pseudo/pseudocode.h                  |  287 -
 net/802/transit/Makefile                     |   13 
 net/802/transit/pdutr.h                      |  309 -
 net/802/transit/timertr.h                    |  157 
 sound/pci/rme9652/rme9652_mem.c              |  278 -
 443 files changed, 43397 insertions(+), 15806 deletions(-)

