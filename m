From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0-test8 released
Date: Fri, 17 Oct 2003 22:59:09 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200310172259.h9HMx9w7013645@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0-test8 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0-test8.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0-test8.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               240835                 0
1072806                                  0          33139167
/pub/linux/kernel/v2.6/linux-2.6.0-test8.tar.bz2         187033600                 0
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

 b/Documentation/filesystems/jfs.txt               |    4 
 b/Documentation/filesystems/xfs.txt               |    5 
 b/Documentation/ia64/fsys.txt                     |   57 +
 b/Documentation/ide.txt                           |    6 
 b/Documentation/x86_64/boot-options.txt           |   23 
 b/Makefile                                        |    2 
 b/arch/arm/Makefile                               |    8 
 b/arch/arm/boot/Makefile                          |   20 
 b/arch/arm/boot/bootp/bootp.lds                   |    4 
 b/arch/arm/configs/lart_defconfig                 |  661 +++++++++-----------
 b/arch/arm/kernel/armksyms.c                      |    1 
 b/arch/arm/lib/div64.S                            |    2 
 b/arch/arm/mach-clps7500/core.c                   |    4 
 b/arch/arm/mach-integrator/lm.c                   |    4 
 b/arch/arm/mach-sa1100/cpu-sa1100.c               |    2 
 b/arch/arm/mach-sa1100/lart.c                     |    1 
 b/arch/h8300/Kconfig                              |    2 
 b/arch/h8300/README                               |   18 
 b/arch/h8300/lib/romfs.S                          |    6 
 b/arch/h8300/platform/h8s/ints.c                  |    5 
 b/arch/i386/kernel/acpi/wakeup.S                  |  126 +--
 b/arch/i386/kernel/apic.c                         |   19 
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c         |   72 --
 b/arch/i386/kernel/edd.c                          |  182 -----
 b/arch/i386/kernel/irq.c                          |    6 
 b/arch/i386/kernel/microcode.c                    |  539 ++++++++++------
 b/arch/i386/kernel/mpparse.c                      |   10 
 b/arch/i386/kernel/timers/timer_tsc.c             |    4 
 b/arch/i386/kernel/traps.c                        |    8 
 b/arch/i386/mm/fault.c                            |  192 +++++
 b/arch/ia64/Kconfig                               |   34 -
 b/arch/ia64/Makefile                              |    2 
 b/arch/ia64/ia32/sys_ia32.c                       |   66 +-
 b/arch/ia64/kernel/acpi.c                         |   46 -
 b/arch/ia64/kernel/asm-offsets.c                  |   18 
 b/arch/ia64/kernel/fsys.S                         |  208 +++++-
 b/arch/ia64/kernel/gate.S                         |    3 
 b/arch/ia64/kernel/head.S                         |   19 
 b/arch/ia64/kernel/mca.c                          |   30 
 b/arch/ia64/kernel/mca_asm.S                      |  284 ++++----
 b/arch/ia64/kernel/patch.c                        |    6 
 b/arch/ia64/kernel/perfmon.c                      |  571 +++++++++--------
 b/arch/ia64/kernel/perfmon_itanium.h              |    4 
 b/arch/ia64/kernel/perfmon_mckinley.h             |   22 
 b/arch/ia64/kernel/setup.c                        |   74 +-
 b/arch/ia64/kernel/time.c                         |   13 
 b/arch/ia64/kernel/unaligned.c                    |    2 
 b/arch/ia64/mm/contig.c                           |  134 ++++
 b/arch/ia64/mm/discontig.c                        |  615 ++++++++++++-------
 b/arch/ia64/mm/hugetlbpage.c                      |   66 +-
 b/arch/ia64/mm/init.c                             |  124 ---
 b/arch/ia64/sn/io/machvec/pci_bus_cvlink.c        |    3 
 b/arch/ia64/sn/io/sn2/ml_SN_intr.c                |   41 -
 b/arch/ia64/sn/kernel/setup.c                     |    2 
 b/arch/ia64/sn/kernel/sn2/io.c                    |    4 
 b/arch/m68k/lib/checksum.c                        |    1 
 b/arch/m68k/sun3/sbus.c                           |    1 
 b/arch/ppc/8260_io/Kconfig                        |    9 
 b/arch/ppc/Makefile                               |    6 
 b/arch/ppc/boot/common/ns16550.c                  |    2 
 b/arch/ppc/boot/of1275/map.c                      |    9 
 b/arch/ppc/boot/openfirmware/coffmain.c           |    4 
 b/arch/ppc/configs/TQM8260_defconfig              |    5 
 b/arch/ppc/configs/est8260_defconfig              |    5 
 b/arch/ppc/kernel/cpu_setup_6xx.S                 |    4 
 b/arch/ppc/kernel/head.S                          |   48 -
 b/arch/ppc/kernel/ppc_ksyms.c                     |   10 
 b/arch/ppc/kernel/process.c                       |    2 
 b/arch/ppc/kernel/setup.c                         |    2 
 b/arch/ppc/mm/hashtable.S                         |   15 
 b/arch/ppc/mm/ppc_mmu.c                           |   24 
 b/arch/ppc/platforms/pmac_smp.c                   |  102 ++-
 b/arch/ppc/platforms/pmac_time.c                  |    8 
 b/arch/ppc/syslib/of_device.c                     |   12 
 b/arch/ppc64/kernel/head.S                        |    2 
 b/arch/ppc64/kernel/idle.c                        |    3 
 b/arch/ppc64/kernel/irq.c                         |   46 -
 b/arch/ppc64/kernel/misc.S                        |    8 
 b/arch/ppc64/kernel/pacaData.c                    |    2 
 b/arch/ppc64/kernel/pci_dma.c                     |    8 
 b/arch/ppc64/kernel/ppc_ksyms.c                   |    7 
 b/arch/ppc64/kernel/sys_ppc32.c                   |   26 
 b/arch/ppc64/mm/hugetlbpage.c                     |    7 
 b/arch/ppc64/mm/init.c                            |   19 
 b/arch/ppc64/mm/numa.c                            |   20 
 b/arch/sparc64/defconfig                          |   10 
 b/arch/sparc64/kernel/smp.c                       |    3 
 b/arch/sparc64/kernel/sparc64_ksyms.c             |    1 
 b/arch/sparc64/kernel/unaligned.c                 |    8 
 b/arch/sparc64/solaris/misc.c                     |    2 
 b/arch/x86_64/kernel/acpi/boot.c                  |   11 
 b/arch/x86_64/kernel/apic.c                       |    3 
 b/arch/x86_64/kernel/cpufreq/Makefile             |    7 
 b/arch/x86_64/kernel/io_apic.c                    |   69 ++
 b/arch/x86_64/kernel/setup.c                      |   25 
 b/arch/x86_64/mm/Makefile                         |    5 
 b/drivers/acpi/asus_acpi.c                        |    1 
 b/drivers/acpi/executer/exconfig.c                |    9 
 b/drivers/acpi/executer/exfield.c                 |   13 
 b/drivers/acpi/executer/exfldio.c                 |  143 ++--
 b/drivers/acpi/executer/exoparg1.c                |    2 
 b/drivers/acpi/executer/exprep.c                  |  189 ++++-
 b/drivers/acpi/executer/exresnte.c                |   24 
 b/drivers/acpi/executer/exresolv.c                |    6 
 b/drivers/acpi/executer/exresop.c                 |   13 
 b/drivers/acpi/executer/exstoren.c                |    8 
 b/drivers/acpi/executer/exsystem.c                |   17 
 b/drivers/acpi/hardware/hwacpi.c                  |    9 
 b/drivers/acpi/resources/rsaddr.c                 |   45 +
 b/drivers/acpi/resources/rsirq.c                  |   17 
 b/drivers/acpi/sleep/main.c                       |    8 
 b/drivers/acpi/tables/tbconvrt.c                  |   18 
 b/drivers/acpi/tables/tbinstal.c                  |   15 
 b/drivers/acpi/utilities/utalloc.c                |    2 
 b/drivers/acpi/utilities/utglobal.c               |    4 
 b/drivers/atm/Kconfig                             |    4 
 b/drivers/atm/fore200e.c                          |    1 
 b/drivers/atm/he.c                                |    5 
 b/drivers/atm/lanai.c                             |    7 
 b/drivers/atm/nicstar.c                           |   21 
 b/drivers/base/bus.c                              |    4 
 b/drivers/base/core.c                             |   25 
 b/drivers/block/Kconfig                           |    2 
 b/drivers/block/Makefile                          |    1 
 b/drivers/cdrom/sjcd.c                            |   22 
 b/drivers/char/Kconfig                            |    2 
 b/drivers/char/agp/ali-agp.c                      |    4 
 b/drivers/char/agp/amd-k7-agp.c                   |    6 
 b/drivers/char/agp/amd64-agp.c                    |   10 
 b/drivers/char/agp/ati-agp.c                      |    6 
 b/drivers/char/agp/i460-agp.c                     |    4 
 b/drivers/char/agp/intel-agp.c                    |    4 
 b/drivers/char/agp/nvidia-agp.c                   |    4 
 b/drivers/char/agp/sis-agp.c                      |    6 
 b/drivers/char/agp/sworks-agp.c                   |    4 
 b/drivers/char/agp/uninorth-agp.c                 |    6 
 b/drivers/char/agp/via-agp.c                      |    6 
 b/drivers/char/applicom.c                         |   12 
 b/drivers/char/ftape/lowlevel/ftape-proc.c        |    2 
 b/drivers/char/ipmi/Kconfig                       |   12 
 b/drivers/char/ipmi/ipmi_msghandler.c             |  200 +++++-
 b/drivers/char/ite_gpio.c                         |    9 
 b/drivers/char/n_tty.c                            |    3 
 b/drivers/char/pcmcia/synclink_cs.c               |    2 
 b/drivers/char/rocket.c                           |    2 
 b/drivers/char/synclink.c                         |    6 
 b/drivers/char/synclinkmp.c                       |    6 
 b/drivers/char/tty_io.c                           |   88 +-
 b/drivers/char/vt.c                               |    2 
 b/drivers/char/vt_ioctl.c                         |    3 
 b/drivers/i2c/algos/i2c-algo-ite.c                |    7 
 b/drivers/i2c/busses/Kconfig                      |    6 
 b/drivers/i2c/busses/i2c-sis630.c                 |   67 +-
 b/drivers/i2c/chips/Kconfig                       |   16 
 b/drivers/i2c/chips/adm1021.c                     |    6 
 b/drivers/i2c/chips/it87.c                        |    7 
 b/drivers/i2c/chips/lm75.c                        |    5 
 b/drivers/i2c/chips/lm78.c                        |    7 
 b/drivers/i2c/chips/lm85.c                        |    6 
 b/drivers/i2c/chips/via686a.c                     |    7 
 b/drivers/i2c/chips/w83781d.c                     |   30 
 b/drivers/i2c/i2c-dev.c                           |   17 
 b/drivers/ide/ide-dma.c                           |   13 
 b/drivers/ide/ide-floppy.c                        |    2 
 b/drivers/ide/ide.c                               |   19 
 b/drivers/ide/pci/aec62xx.c                       |    4 
 b/drivers/ide/pci/cmd64x.c                        |    4 
 b/drivers/ide/pci/hpt34x.c                        |   12 
 b/drivers/ide/pci/hpt366.c                        |    4 
 b/drivers/ide/pci/it8172.c                        |    4 
 b/drivers/ide/pci/pdc202xx_new.c                  |    4 
 b/drivers/ide/pci/pdc202xx_old.c                  |    4 
 b/drivers/ide/pci/piix.c                          |    4 
 b/drivers/ide/pci/serverworks.c                   |   11 
 b/drivers/ide/pci/siimage.c                       |    4 
 b/drivers/ide/pci/sis5513.c                       |    4 
 b/drivers/ide/pci/slc90e66.c                      |    4 
 b/drivers/ide/setup-pci.c                         |   16 
 b/drivers/isdn/hardware/eicon/divasmain.c         |   25 
 b/drivers/macintosh/adbhid.c                      |    4 
 b/drivers/media/common/saa7146_fops.c             |   26 
 b/drivers/media/common/saa7146_vbi.c              |   18 
 b/drivers/media/common/saa7146_video.c            |    2 
 b/drivers/media/dvb/dvb-core/dvb_i2c.c            |   15 
 b/drivers/media/dvb/dvb-core/dvb_i2c.h            |    6 
 b/drivers/media/dvb/frontends/Kconfig             |   20 
 b/drivers/media/dvb/frontends/Makefile            |    2 
 b/drivers/media/dvb/frontends/alps_tdlb7.c        |  589 ++++++++++++------
 b/drivers/media/dvb/frontends/alps_tdmb7.c        |    8 
 b/drivers/media/dvb/frontends/at76c651.c          |  140 ++--
 b/drivers/media/dvb/frontends/cx24110.c           |    8 
 b/drivers/media/dvb/frontends/dvb_dummy_fe.c      |    9 
 b/drivers/media/dvb/frontends/grundig_29504-401.c |    8 
 b/drivers/media/dvb/frontends/grundig_29504-491.c |    8 
 b/drivers/media/dvb/frontends/mt312.c             |    4 
 b/drivers/media/dvb/frontends/nxt6000.c           |    5 
 b/drivers/media/dvb/frontends/sp887x.c            |    8 
 b/drivers/media/dvb/frontends/stv0299.c           |    9 
 b/drivers/media/dvb/frontends/tda1004x.c          |   12 
 b/drivers/media/dvb/frontends/ves1820.c           |   20 
 b/drivers/media/dvb/frontends/ves1x93.c           |  619 +++++++++++++++++++
 b/drivers/media/dvb/ttpci/av7110.c                |   84 +-
 b/drivers/media/dvb/ttpci/av7110.h                |    2 
 b/drivers/media/dvb/ttusb-dec/dec2000_frontend.c  |    8 
 b/drivers/media/video/saa7134/saa7134-core.c      |    2 
 b/drivers/media/video/zoran_card.c                |    2 
 b/drivers/media/video/zoran_device.c              |    2 
 b/drivers/media/video/zoran_driver.c              |    1 
 b/drivers/mtd/devices/lart.c                      |    1 
 b/drivers/net/8139too.c                           |    2 
 b/drivers/net/Kconfig                             |    4 
 b/drivers/net/Space.c                             |   10 
 b/drivers/net/amd8111e.c                          |    6 
 b/drivers/net/amd8111e.h                          |    2 
 b/drivers/net/b44.c                               |   15 
 b/drivers/net/defxx.c                             |    4 
 b/drivers/net/e1000/e1000_main.c                  |   35 -
 b/drivers/net/hamradio/Kconfig                    |    2 
 b/drivers/net/hamradio/bpqether.c                 |    6 
 b/drivers/net/hamradio/scc.c                      |    4 
 b/drivers/net/hp100.c                             |   10 
 b/drivers/net/irda/sa1100_ir.c                    |    8 
 b/drivers/net/loopback.c                          |   14 
 b/drivers/net/myri_sbus.c                         |   43 -
 b/drivers/net/natsemi.c                           |    2 
 b/drivers/net/net_init.c                          |   11 
 b/drivers/net/pcmcia/pcnet_cs.c                   |   23 
 b/drivers/net/sis190.c                            |    2 
 b/drivers/net/sk98lin/skge.c                      |   67 --
 b/drivers/net/slip.c                              |    2 
 b/drivers/net/sunbmac.c                           |   22 
 b/drivers/net/sungem.c                            |   26 
 b/drivers/net/sunhme.c                            |    2 
 b/drivers/net/sunlance.c                          |   79 +-
 b/drivers/net/tulip/tulip_core.c                  |    1 
 b/drivers/net/tulip/xircom_cb.c                   |   35 -
 b/drivers/net/wan/cosa.c                          |    2 
 b/drivers/net/wan/hdlc_cisco.c                    |    2 
 b/drivers/net/wan/hostess_sv11.c                  |    2 
 b/drivers/net/wan/sealevel.c                      |    2 
 b/drivers/net/wan/syncppp.c                       |    3 
 b/drivers/net/wireless/atmel.c                    |    1 
 b/drivers/net/wireless/atmel_cs.c                 |   11 
 b/drivers/pci/hotplug/Kconfig                     |    4 
 b/drivers/pcmcia/tcic.c                           |   10 
 b/drivers/scsi/scsi_sysfs.c                       |    2 
 b/drivers/serial/8250_acpi.c                      |    7 
 b/drivers/usb/README                              |    6 
 b/drivers/usb/class/Kconfig                       |    2 
 b/drivers/usb/core/devio.c                        |    2 
 b/drivers/usb/core/hcd-pci.c                      |    2 
 b/drivers/usb/gadget/Kconfig                      |    2 
 b/drivers/usb/gadget/net2280.c                    |   47 -
 b/drivers/usb/host/ehci-dbg.c                     |   10 
 b/drivers/usb/host/ehci-q.c                       |   30 
 b/drivers/usb/host/ehci.h                         |   16 
 b/drivers/usb/host/ohci-hcd.c                     |   56 -
 b/drivers/usb/host/ohci-hub.c                     |    2 
 b/drivers/usb/host/ohci-pci.c                     |   44 -
 b/drivers/usb/host/ohci-q.c                       |   23 
 b/drivers/usb/host/ohci.h                         |    5 
 b/drivers/usb/host/uhci-hcd.c                     |    2 
 b/drivers/usb/input/Kconfig                       |    1 
 b/drivers/usb/misc/Kconfig                        |    2 
 b/drivers/usb/serial/keyspan_usa90msg.h           |   14 
 b/drivers/usb/serial/visor.c                      |    6 
 b/drivers/usb/serial/visor.h                      |    1 
 b/drivers/usb/storage/Kconfig                     |    2 
 b/drivers/video/aty/aty128fb.c                    |    4 
 b/drivers/video/imsttfb.c                         |   14 
 b/drivers/video/matrox/matroxfb_base.h            |    2 
 b/drivers/video/tridentfb.c                       |    4 
 b/fs/Kconfig                                      |   28 
 b/fs/binfmt_elf.c                                 |    4 
 b/fs/compat_ioctl.c                               |    2 
 b/fs/dnotify.c                                    |    2 
 b/fs/dquot.c                                      |   10 
 b/fs/exec.c                                       |    5 
 b/fs/ext2/acl.c                                   |    2 
 b/fs/ext3/acl.c                                   |    2 
 b/fs/ext3/inode.c                                 |   17 
 b/fs/inode.c                                      |    2 
 b/fs/jffs2/background.c                           |   48 -
 b/fs/jffs2/build.c                                |   61 +
 b/fs/jffs2/compr.c                                |    4 
 b/fs/jffs2/compr_rtime.c                          |    4 
 b/fs/jffs2/compr_zlib.c                           |    6 
 b/fs/jffs2/dir.c                                  |  100 +--
 b/fs/jffs2/erase.c                                |    9 
 b/fs/jffs2/file.c                                 |  171 -----
 b/fs/jffs2/fs.c                                   |  212 +++++-
 b/fs/jffs2/gc.c                                   |  197 +++++-
 b/fs/jffs2/ioctl.c                                |    4 
 b/fs/jffs2/malloc.c                               |    6 
 b/fs/jffs2/nodelist.c                             |    6 
 b/fs/jffs2/nodelist.h                             |   63 +
 b/fs/jffs2/nodemgmt.c                             |   93 ++
 b/fs/jffs2/os-linux.h                             |   28 
 b/fs/jffs2/pushpull.h                             |    4 
 b/fs/jffs2/read.c                                 |   17 
 b/fs/jffs2/readinode.c                            |    6 
 b/fs/jffs2/scan.c                                 |   32 
 b/fs/jffs2/super.c                                |   34 -
 b/fs/jffs2/symlink.c                              |    4 
 b/fs/jffs2/wbuf.c                                 |  709 ++++++++++++++++------
 b/fs/jffs2/write.c                                |  165 +++--
 b/fs/jffs2/writev.c                               |    4 
 b/fs/jfs/file.c                                   |    8 
 b/fs/jfs/inode.c                                  |   10 
 b/fs/jfs/jfs_dmap.c                               |  169 +++--
 b/fs/jfs/jfs_dtree.c                              |   19 
 b/fs/jfs/jfs_extent.c                             |    9 
 b/fs/jfs/jfs_filsys.h                             |    7 
 b/fs/jfs/jfs_imap.c                               |  205 ++++--
 b/fs/jfs/jfs_metapage.c                           |   22 
 b/fs/jfs/jfs_superblock.h                         |    3 
 b/fs/jfs/jfs_txnmgr.c                             |    9 
 b/fs/jfs/jfs_xtree.c                              |  102 ++-
 b/fs/jfs/namei.c                                  |   17 
 b/fs/jfs/resize.c                                 |    4 
 b/fs/jfs/super.c                                  |   72 ++
 b/fs/jfs/xattr.c                                  |   15 
 b/fs/locks.c                                      |    2 
 b/fs/nfs/direct.c                                 |  479 ++++++++++----
 b/fs/nfs/nfs3proc.c                               |   24 
 b/fs/nfs/nfs4proc.c                               |   50 +
 b/fs/nfs/nfs4xdr.c                                |    2 
 b/fs/nfs/pagelist.c                               |   51 -
 b/fs/open.c                                       |    2 
 b/fs/proc/array.c                                 |   18 
 b/fs/proc/proc_devtree.c                          |    9 
 b/fs/reiserfs/procfs.c                            |    7 
 b/fs/xfs/linux/xfs_aops.c                         |    3 
 b/fs/xfs/linux/xfs_file.c                         |  179 ++++-
 b/fs/xfs/linux/xfs_ioctl.c                        |   19 
 b/fs/xfs/linux/xfs_iops.c                         |    6 
 b/fs/xfs/linux/xfs_iops.h                         |    1 
 b/fs/xfs/linux/xfs_linux.h                        |    2 
 b/fs/xfs/linux/xfs_lrw.c                          |   45 -
 b/fs/xfs/linux/xfs_lrw.h                          |    6 
 b/fs/xfs/linux/xfs_super.c                        |    6 
 b/fs/xfs/linux/xfs_sysctl.h                       |    2 
 b/fs/xfs/linux/xfs_vfs.h                          |    4 
 b/fs/xfs/linux/xfs_vnode.h                        |   52 +
 b/fs/xfs/quota/xfs_qm.c                           |    2 
 b/fs/xfs/support/move.c                           |   48 -
 b/fs/xfs/support/move.h                           |   64 +
 b/fs/xfs/xfs_attr.c                               |    8 
 b/fs/xfs/xfs_bmap.c                               |    4 
 b/fs/xfs/xfs_buf_item.c                           |   18 
 b/fs/xfs/xfs_buf_item.h                           |    3 
 b/fs/xfs/xfs_clnt.h                               |    1 
 b/fs/xfs/xfs_dfrag.c                              |    4 
 b/fs/xfs/xfs_dinode.h                             |   21 
 b/fs/xfs/xfs_dir.c                                |   18 
 b/fs/xfs/xfs_dir2.c                               |   16 
 b/fs/xfs/xfs_ialloc.c                             |   99 ++-
 b/fs/xfs/xfs_ialloc.h                             |    5 
 b/fs/xfs/xfs_ialloc_btree.c                       |  230 +++----
 b/fs/xfs/xfs_ialloc_btree.h                       |    2 
 b/fs/xfs/xfs_iget.c                               |    1 
 b/fs/xfs/xfs_inode.c                              |  260 ++++++--
 b/fs/xfs/xfs_inode.h                              |   14 
 b/fs/xfs/xfs_inode_item.c                         |   16 
 b/fs/xfs/xfs_inode_item.h                         |    1 
 b/fs/xfs/xfs_log_recover.c                        |   90 +-
 b/fs/xfs/xfs_mount.c                              |    4 
 b/fs/xfs/xfs_mount.h                              |    1 
 b/fs/xfs/xfs_rename.c                             |    6 
 b/fs/xfs/xfs_rw.c                                 |    8 
 b/fs/xfs/xfs_trans.c                              |    1 
 b/fs/xfs/xfs_trans.h                              |   10 
 b/fs/xfs/xfs_trans_buf.c                          |   30 
 b/fs/xfs/xfs_types.h                              |    6 
 b/fs/xfs/xfs_vfsops.c                             |   20 
 b/fs/xfs/xfs_vnodeops.c                           |   85 +-
 b/fs/xfs/xfsidbg.c                                |    2 
 b/include/acpi/acconfig.h                         |    2 
 b/include/acpi/acexcep.h                          |    4 
 b/include/acpi/actbl.h                            |  217 +++++-
 b/include/acpi/actbl1.h                           |    4 
 b/include/acpi/actbl2.h                           |   19 
 b/include/acpi/actypes.h                          |    1 
 b/include/asm-h8300/semaphore.h                   |   12 
 b/include/asm-i386/div64.h                        |    9 
 b/include/asm-i386/mach-numaq/mach_mpparse.h      |   13 
 b/include/asm-i386/processor.h                    |   34 -
 b/include/asm-ia64/asmmacro.h                     |   23 
 b/include/asm-ia64/delay.h                        |    7 
 b/include/asm-ia64/machvec_sn2.h                  |    2 
 b/include/asm-ia64/mca.h                          |    2 
 b/include/asm-ia64/mca_asm.h                      |    3 
 b/include/asm-ia64/meminit.h                      |   21 
 b/include/asm-ia64/mmzone.h                       |  156 ----
 b/include/asm-ia64/nodedata.h                     |   36 -
 b/include/asm-ia64/numa.h                         |   15 
 b/include/asm-ia64/page.h                         |   18 
 b/include/asm-ia64/pal.h                          |   12 
 b/include/asm-ia64/percpu.h                       |    2 
 b/include/asm-ia64/perfmon.h                      |   11 
 b/include/asm-ia64/pgtable.h                      |    4 
 b/include/asm-ia64/posix_types.h                  |    2 
 b/include/asm-ia64/serial.h                       |  106 ---
 b/include/asm-ia64/sn/nodepda.h                   |    2 
 b/include/asm-ia64/uaccess.h                      |    4 
 b/include/asm-ia64/unistd.h                       |   22 
 b/include/asm-ppc/mpc10x.h                        |    2 
 b/include/asm-ppc/reg.h                           |    8 
 b/include/asm-ppc/reg_booke.h                     |    8 
 b/include/asm-ppc64/cputable.h                    |    2 
 b/include/asm-ppc64/hardirq.h                     |    2 
 b/include/asm-ppc64/io.h                          |    8 
 b/include/asm-ppc64/memory.h                      |    2 
 b/include/asm-ppc64/pci.h                         |   13 
 b/include/asm-ppc64/pgalloc.h                     |   28 
 b/include/asm-ppc64/pgtable.h                     |    5 
 b/include/asm-ppc64/processor.h                   |  140 ----
 b/include/asm-ppc64/siginfo.h                     |    4 
 b/include/asm-ppc64/thread_info.h                 |    6 
 b/include/asm-ppc64/uaccess.h                     |    1 
 b/include/asm-sparc/atomic.h                      |   18 
 b/include/asm-sparc/bitops.h                      |  132 ++--
 b/include/asm-sparc/checksum.h                    |   62 +
 b/include/asm-sparc/io.h                          |   99 ++-
 b/include/asm-sparc/irq.h                         |   47 +
 b/include/asm-sparc/pgtsun4.h                     |   25 
 b/include/asm-sparc/pgtsun4c.h                    |   25 
 b/include/asm-sparc/processor.h                   |    8 
 b/include/asm-sparc/ross.h                        |   64 +
 b/include/asm-sparc/swift.h                       |   60 +
 b/include/asm-sparc/system.h                      |    5 
 b/include/asm-sparc/tsunami.h                     |   16 
 b/include/asm-sparc/turbosparc.h                  |   46 -
 b/include/asm-sparc/vac-ops.h                     |   34 -
 b/include/asm-sparc/viking.h                      |   97 +--
 b/include/asm-sparc64/uaccess.h                   |    3 
 b/include/asm-x86_64/proto.h                      |    8 
 b/include/asm-x86_64/suspend.h                    |    5 
 b/include/linux/device.h                          |    2 
 b/include/linux/etherdevice.h                     |    8 
 b/include/linux/ethtool.h                         |   11 
 b/include/linux/ide.h                             |    4 
 b/include/linux/ioport.h                          |    1 
 b/include/linux/ipmi_msgdefs.h                    |   20 
 b/include/linux/jffs2.h                           |    6 
 b/include/linux/jffs2_fs_sb.h                     |   24 
 b/include/linux/netdevice.h                       |    7 
 b/include/linux/netfilter_bridge/ebt_among.h      |   65 ++
 b/include/linux/nfs_fs.h                          |    2 
 b/include/linux/nfs_page.h                        |    2 
 b/include/linux/nfs_xdr.h                         |    3 
 b/include/linux/rtnetlink.h                       |    6 
 b/include/linux/sched.h                           |   56 -
 b/include/linux/suspend.h                         |    6 
 b/include/media/saa7146_vv.h                      |    1 
 b/include/net/if_inet6.h                          |    7 
 b/include/net/syncppp.h                           |    5 
 b/include/sound/pcm_oss.h                         |    1 
 b/include/sound/rawmidi.h                         |    1 
 b/init/do_mounts_initrd.c                         |   28 
 b/init/initramfs.c                                |  103 ++-
 b/kernel/acct.c                                   |    2 
 b/kernel/exit.c                                   |   43 -
 b/kernel/fork.c                                   |   14 
 b/kernel/futex.c                                  |  286 +++++---
 b/kernel/module.c                                 |    4 
 b/kernel/pid.c                                    |    8 
 b/kernel/power/disk.c                             |    2 
 b/kernel/power/pmdisk.c                           |    2 
 b/kernel/power/swsusp.c                           |   52 +
 b/kernel/resource.c                               |   61 +
 b/kernel/sched.c                                  |    2 
 b/kernel/signal.c                                 |    5 
 b/kernel/sys.c                                    |   18 
 b/kernel/timer.c                                  |    3 
 b/lib/kobject.c                                   |   21 
 b/mm/mlock.c                                      |    6 
 b/mm/page-writeback.c                             |    1 
 b/mm/slab.c                                       |    2 
 b/mm/swapfile.c                                   |    4 
 b/net/8021q/vlan_dev.c                            |    2 
 b/net/atm/clip.c                                  |    2 
 b/net/atm/proc.c                                  |    6 
 b/net/bridge/netfilter/Kconfig                    |   10 
 b/net/bridge/netfilter/Makefile                   |    1 
 b/net/bridge/netfilter/ebt_among.c                |  215 ++++++
 b/net/core/dev.c                                  |   39 +
 b/net/core/ethtool.c                              |   49 -
 b/net/core/net-sysfs.c                            |    1 
 b/net/ipv4/ip_gre.c                               |    4 
 b/net/ipv4/ip_output.c                            |    3 
 b/net/ipv4/ipip.c                                 |   14 
 b/net/ipv4/ipvs/ip_vs_core.c                      |    2 
 b/net/ipv4/ipvs/ip_vs_ctl.c                       |   33 -
 b/net/ipv4/netfilter/ipt_limit.c                  |   23 
 b/net/ipv4/netfilter/ipt_owner.c                  |    2 
 b/net/ipv4/tcp_ipv4.c                             |   46 -
 b/net/ipv6/addrconf.c                             |  165 ++++-
 b/net/ipv6/anycast.c                              |    2 
 b/net/ipv6/ip6_tunnel.c                           |    3 
 b/net/ipv6/mcast.c                                |    2 
 b/net/ipv6/netfilter/ip6t_owner.c                 |    2 
 b/net/ipv6/sit.c                                  |    3 
 b/net/ipx/ipx_proc.c                              |    2 
 b/net/sunrpc/clnt.c                               |   12 
 b/net/sunrpc/xdr.c                                |    5 
 b/scripts/makeman                                 |  108 ++-
 b/scripts/split-man                               |    2 
 b/security/selinux/include/security.h             |    1 
 b/security/selinux/selinuxfs.c                    |   44 +
 b/security/selinux/ss/policydb.h                  |    1 
 b/sound/core/control.c                            |    3 
 b/sound/core/hwdep.c                              |    3 
 b/sound/core/init.c                               |    2 
 b/sound/core/oss/pcm_oss.c                        |   55 +
 b/sound/core/pcm_lib.c                            |    6 
 b/sound/core/pcm_native.c                         |    9 
 b/sound/core/rawmidi.c                            |   22 
 b/sound/core/seq/seq_lock.c                       |   38 -
 b/sound/core/timer.c                              |    1 
 b/sound/drivers/dummy.c                           |   32 
 b/sound/isa/sb/emu8000_patch.c                    |    6 
 b/sound/isa/sb/emu8000_pcm.c                      |   10 
 b/sound/oss/Kconfig                               |    4 
 b/sound/oss/ad1889.c                              |    6 
 b/sound/oss/ali5455.c                             |    8 
 b/sound/oss/cs4281/cs4281m.c                      |   11 
 b/sound/oss/cs46xx.c                              |    6 
 b/sound/oss/i810_audio.c                          |    6 
 b/sound/oss/maestro3.c                            |    4 
 b/sound/oss/swarm_cs4297a.c                       |    8 
 b/sound/oss/trident.c                             |    4 
 b/sound/oss/via82cxxx_audio.c                     |   10 
 b/sound/pci/Kconfig                               |    6 
 b/sound/pci/via82xx.c                             |   21 
 b/sound/pci/vx222/vx222_ops.c                     |    6 
 b/sound/usb/usbmixer.c                            |   10 
 drivers/block/initrd.c                            |  100 ---
 drivers/media/dvb/frontends/alps_bsrv2.c          |  469 --------------
 539 files changed, 10975 insertions(+), 6877 deletions(-)

