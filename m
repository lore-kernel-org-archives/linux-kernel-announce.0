From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.44 released
Date: Tue, 29 Oct 2002 19:57:09 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200210300357.g9U3v9J01201@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.44 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.44.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.44.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               472294           1888927
Full source                       37422584         167198720

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 arch/i386/lib/old-checksum.c                        |   19 
 arch/ppc/boot/common/misc-simple.c                  |  236 -
 arch/ppc/boot/common/relocate.S                     |  205 -
 arch/sh/lib/old-checksum.c                          |   17 
 arch/sparc/kernel/check_asm.sh                      |   19 
 b/CREDITS                                           |    5 
 b/Documentation/DocBook/Makefile                    |   54 
 b/Documentation/filesystems/sysfs.txt               |  342 ++
 b/Documentation/i386/zero-page.txt                  |    2 
 b/Documentation/networking/e100.txt                 |   99 
 b/Documentation/networking/e1000.txt                |   22 
 b/Documentation/pnp.txt                             |  250 +
 b/Documentation/tipar.txt                           |   93 
 b/MAINTAINERS                                       |   13 
 b/Makefile                                          |  112 
 b/Rules.make                                        |   64 
 b/arch/alpha/defconfig                              |    2 
 b/arch/alpha/kernel/alpha_ksyms.c                   |    1 
 b/arch/alpha/lib/csum_partial_copy.c                |   13 
 b/arch/arm/Makefile                                 |   34 
 b/arch/arm/boot/Makefile                            |   69 
 b/arch/arm/boot/bootp/Makefile                      |   18 
 b/arch/arm/boot/compressed/Makefile                 |   56 
 b/arch/arm/boot/compressed/misc.c                   |    2 
 b/arch/arm/boot/compressed/vmlinux.lds.in           |    2 
 b/arch/arm/def-configs/adi_evb                      |    2 
 b/arch/arm/def-configs/adsbitsy                     |    2 
 b/arch/arm/def-configs/anakin                       |    2 
 b/arch/arm/def-configs/assabet                      |    2 
 b/arch/arm/def-configs/badge4                       |   10 
 b/arch/arm/def-configs/cerfcube                     |    2 
 b/arch/arm/def-configs/cerfpda                      |   10 
 b/arch/arm/def-configs/cerfpod                      |    2 
 b/arch/arm/def-configs/epxa10db                     |    2 
 b/arch/arm/def-configs/flexanet                     |    2 
 b/arch/arm/def-configs/fortunet                     |    2 
 b/arch/arm/def-configs/graphicsclient               |    2 
 b/arch/arm/def-configs/graphicsmaster               |    2 
 b/arch/arm/def-configs/h3600                        |    2 
 b/arch/arm/def-configs/iq80310                      |    2 
 b/arch/arm/def-configs/jornada720                   |    2 
 b/arch/arm/def-configs/lart                         |    2 
 b/arch/arm/def-configs/lubbock                      |    2 
 b/arch/arm/def-configs/neponset                     |    2 
 b/arch/arm/def-configs/pangolin                     |    2 
 b/arch/arm/def-configs/pleb                         |    2 
 b/arch/arm/def-configs/shannon                      |    2 
 b/arch/arm/def-configs/shark                        |    2 
 b/arch/arm/def-configs/stork                        |    2 
 b/arch/arm/def-configs/system3                      |    2 
 b/arch/arm/kernel/Makefile                          |    7 
 b/arch/arm/kernel/ecard.c                           |    2 
 b/arch/arm/kernel/time.c                            |    1 
 b/arch/arm/lib/Makefile                             |    4 
 b/arch/arm/mach-sa1100/pcipool.c                    |    6 
 b/arch/arm/mach-sa1100/sa1111-pcibuf.c              |    6 
 b/arch/arm/mm/Makefile                              |    2 
 b/arch/arm/tools/Makefile                           |    8 
 b/arch/cris/lib/old_checksum.c                      |   45 
 b/arch/i386/Config.help                             |    8 
 b/arch/i386/Makefile                                |    2 
 b/arch/i386/boot/Makefile                           |    7 
 b/arch/i386/boot/compressed/Makefile                |    4 
 b/arch/i386/boot/setup.S                            |   47 
 b/arch/i386/config.in                               |    5 
 b/arch/i386/defconfig                               |    3 
 b/arch/i386/kernel/Makefile                         |    1 
 b/arch/i386/kernel/bluesmoke.c                      |    1 
 b/arch/i386/kernel/cpu/amd.c                        |   15 
 b/arch/i386/kernel/edd.c                            |  984 +++++++
 b/arch/i386/kernel/i386_ksyms.c                     |   15 
 b/arch/i386/kernel/io_apic.c                        |    4 
 b/arch/i386/kernel/irq.c                            |   14 
 b/arch/i386/kernel/microcode.c                      |    4 
 b/arch/i386/kernel/setup.c                          |   18 
 b/arch/i386/lib/Makefile                            |    2 
 b/arch/i386/mm/Makefile                             |    4 
 b/arch/i386/mm/highmem.c                            |   85 
 b/arch/i386/mm/init.c                               |    6 
 b/arch/i386/pci/i386.c                              |    2 
 b/arch/i386/vmlinux.lds.S                           |   48 
 b/arch/ia64/defconfig                               |    2 
 b/arch/ia64/ia32/sys_ia32.c                         |   12 
 b/arch/ia64/lib/csum_partial_copy.c                 |   13 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-mp      |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-bigsur-sp      |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp         |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp-modules |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-mp-syn1-0  |    2 
 b/arch/ia64/sn/configs/sn1/defconfig-sn1-sp         |    2 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-mp         |    2 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-mp-modules |    2 
 b/arch/ia64/sn/configs/sn2/defconfig-sn2-sp         |    2 
 b/arch/m68k/atari/stram.c                           |   20 
 b/arch/m68k/kernel/m68k_ksyms.c                     |    3 
 b/arch/m68k/lib/checksum.c                          |  100 
 b/arch/mips/kernel/mips_ksyms.c                     |    3 
 b/arch/mips/lib/csum_partial_copy.c                 |    4 
 b/arch/mips64/kernel/linux32.c                      |    8 
 b/arch/mips64/kernel/mips64_ksyms.c                 |    3 
 b/arch/mips64/lib/csum_partial_copy.c               |    4 
 b/arch/parisc/lib/checksum.c                        |    4 
 b/arch/ppc/Makefile                                 |    6 
 b/arch/ppc/boot/Makefile                            |   78 
 b/arch/ppc/boot/common/Makefile                     |    9 
 b/arch/ppc/boot/images/Makefile                     |   13 
 b/arch/ppc/boot/include/mpc10x.h                    |    2 
 b/arch/ppc/boot/lib/Makefile                        |    2 
 b/arch/ppc/boot/lib/div64.S                         |   58 
 b/arch/ppc/boot/of1275/Makefile                     |    2 
 b/arch/ppc/boot/openfirmware/Makefile               |  200 -
 b/arch/ppc/boot/prep/Makefile                       |   84 
 b/arch/ppc/boot/prep/misc.c                         |   28 
 b/arch/ppc/boot/simple/Makefile                     |  156 -
 b/arch/ppc/boot/simple/misc.c                       |  236 +
 b/arch/ppc/boot/simple/relocate.S                   |  205 +
 b/arch/ppc/config.in                                |   43 
 b/arch/ppc/configs/FADS_defconfig                   |    2 
 b/arch/ppc/configs/IVMS8_defconfig                  |    2 
 b/arch/ppc/configs/SM850_defconfig                  |    2 
 b/arch/ppc/configs/SPD823TS_defconfig               |    2 
 b/arch/ppc/configs/TQM823L_defconfig                |    2 
 b/arch/ppc/configs/TQM850L_defconfig                |    2 
 b/arch/ppc/configs/TQM860L_defconfig                |    2 
 b/arch/ppc/configs/adir_defconfig                   |    2 
 b/arch/ppc/configs/apus_defconfig                   |    2 
 b/arch/ppc/configs/ash_defconfig                    |    2 
 b/arch/ppc/configs/bseip_defconfig                  |    2 
 b/arch/ppc/configs/cedar_defconfig                  |    2 
 b/arch/ppc/configs/common_defconfig                 |    2 
 b/arch/ppc/configs/cpci405_defconfig                |    2 
 b/arch/ppc/configs/ep405_defconfig                  |    2 
 b/arch/ppc/configs/est8260_defconfig                |    2 
 b/arch/ppc/configs/ev64260_defconfig                |    2 
 b/arch/ppc/configs/gemini_defconfig                 |    2 
 b/arch/ppc/configs/iSeries_defconfig                |    2 
 b/arch/ppc/configs/ibmchrp_defconfig                |    2 
 b/arch/ppc/configs/k2_defconfig                     |    2 
 b/arch/ppc/configs/lopec_defconfig                  |    2 
 b/arch/ppc/configs/mbx_defconfig                    |    2 
 b/arch/ppc/configs/mcpn765_defconfig                |    2 
 b/arch/ppc/configs/menf1_defconfig                  |    2 
 b/arch/ppc/configs/oak_defconfig                    |    2 
 b/arch/ppc/configs/pmac_defconfig                   |    2 
 b/arch/ppc/configs/power3_defconfig                 |    2 
 b/arch/ppc/configs/pplus_defconfig                  |    2 
 b/arch/ppc/configs/prpmc750_defconfig               |    2 
 b/arch/ppc/configs/prpmc800_defconfig               |    2 
 b/arch/ppc/configs/redwood5_defconfig               |    2 
 b/arch/ppc/configs/redwood_defconfig                |    2 
 b/arch/ppc/configs/rpxcllf_defconfig                |    2 
 b/arch/ppc/configs/rpxlite_defconfig                |    2 
 b/arch/ppc/configs/sandpoint_defconfig              |    2 
 b/arch/ppc/configs/spruce_defconfig                 |    2 
 b/arch/ppc/configs/walnut_defconfig                 |    2 
 b/arch/ppc/configs/zx4500_defconfig                 |    2 
 b/arch/ppc/defconfig                                |    2 
 b/arch/ppc/kernel/indirect_pci.c                    |   14 
 b/arch/ppc/kernel/misc.S                            |   15 
 b/arch/ppc/kernel/ppc_ksyms.c                       |    7 
 b/arch/ppc/lib/Makefile                             |    2 
 b/arch/ppc/lib/div64.S                              |   58 
 b/arch/ppc/platforms/Makefile                       |    1 
 b/arch/ppc/platforms/pal4.h                         |   44 
 b/arch/ppc/platforms/pal4_pci.c                     |   78 
 b/arch/ppc/platforms/pal4_serial.h                  |   41 
 b/arch/ppc/platforms/pal4_setup.c                   |  176 +
 b/arch/ppc/platforms/pcore_setup.c                  |   34 
 b/arch/ppc/vmlinux.lds.S                            |   24 
 b/arch/ppc64/Makefile                               |   17 
 b/arch/ppc64/boot/Makefile                          |   99 
 b/arch/ppc64/boot/piggyback.c                       |   17 
 b/arch/ppc64/config.in                              |    3 
 b/arch/ppc64/defconfig                              |   47 
 b/arch/ppc64/kernel/chrp_setup.c                    |   11 
 b/arch/ppc64/kernel/eeh.c                           |    5 
 b/arch/ppc64/kernel/entry.S                         |    8 
 b/arch/ppc64/kernel/ioctl32.c                       |   53 
 b/arch/ppc64/kernel/misc.S                          |   14 
 b/arch/ppc64/kernel/open_pic.c                      |   14 
 b/arch/ppc64/kernel/pSeries_lpar.c                  |   38 
 b/arch/ppc64/kernel/pci.c                           |   33 
 b/arch/ppc64/kernel/pci.h                           |   17 
 b/arch/ppc64/kernel/process.c                       |   10 
 b/arch/ppc64/kernel/prom.c                          |    2 
 b/arch/ppc64/kernel/ptrace.c                        |   66 
 b/arch/ppc64/kernel/ptrace32.c                      |   68 
 b/arch/ppc64/kernel/setup.c                         |  150 -
 b/arch/ppc64/kernel/signal.c                        |   40 
 b/arch/ppc64/kernel/signal32.c                      |   41 
 b/arch/ppc64/kernel/smp.c                           |   44 
 b/arch/ppc64/kernel/sys_ppc32.c                     |   39 
 b/arch/ppc64/kernel/syscalls.c                      |   18 
 b/arch/ppc64/kernel/traps.c                         |    9 
 b/arch/ppc64/kernel/udbg.c                          |   17 
 b/arch/ppc64/kernel/xics.c                          |    4 
 b/arch/ppc64/lib/copyuser.S                         |    8 
 b/arch/ppc64/mm/extable.c                           |   41 
 b/arch/ppc64/mm/fault.c                             |   13 
 b/arch/ppc64/mm/init.c                              |    4 
 b/arch/ppc64/xmon/xmon.c                            |  207 -
 b/arch/s390x/kernel/linux32.c                       |   11 
 b/arch/sh/kernel/sh_ksyms.c                         |    3 
 b/arch/sh/lib/Makefile                              |    2 
 b/arch/sparc/Makefile                               |   16 
 b/arch/sparc/boot/Makefile                          |    2 
 b/arch/sparc/defconfig                              |    2 
 b/arch/sparc/kernel/Makefile                        |   92 
 b/arch/sparc/kernel/asm-offsets.c                   |   53 
 b/arch/sparc/kernel/entry.S                         |    1 
 b/arch/sparc/kernel/etrap.S                         |    1 
 b/arch/sparc/kernel/rtrap.S                         |    1 
 b/arch/sparc/kernel/sclow.S                         |   12 
 b/arch/sparc/kernel/signal.c                        |   32 
 b/arch/sparc/kernel/sparc_ksyms.c                   |    1 
 b/arch/sparc/kernel/systbls.S                       |    2 
 b/arch/sparc/kernel/time.c                          |    1 
 b/arch/sparc/kernel/wof.S                           |    1 
 b/arch/sparc/kernel/wuf.S                           |    1 
 b/arch/sparc/vmlinux.lds.S                          |    6 
 b/arch/sparc64/defconfig                            |   34 
 b/arch/sparc64/kernel/ioctl32.c                     |    5 
 b/arch/sparc64/kernel/signal.c                      |   32 
 b/arch/sparc64/kernel/sparc64_ksyms.c               |    1 
 b/arch/sparc64/kernel/sys_sparc32.c                 |   11 
 b/arch/sparc64/kernel/systbls.S                     |    4 
 b/arch/sparc64/kernel/time.c                        |    1 
 b/arch/sparc64/lib/U3copy_from_user.S               |   19 
 b/arch/sparc64/lib/U3copy_to_user.S                 |   19 
 b/arch/sparc64/lib/U3memcpy.S                       |   19 
 b/arch/sparc64/lib/VIScopy.S                        |   39 
 b/arch/sparc64/lib/blockops.S                       |   16 
 b/arch/sparc64/solaris/socket.c                     |   25 
 b/arch/sparc64/vmlinux.lds.S                        |    6 
 b/arch/um/Makefile                                  |    2 
 b/arch/um/drivers/ubd_kern.c                        |  115 
 b/arch/x86_64/Config.help                           |   43 
 b/arch/x86_64/Makefile                              |   47 
 b/arch/x86_64/boot/compressed/misc.c                |   11 
 b/arch/x86_64/config.in                             |   29 
 b/arch/x86_64/defconfig                             |  422 +--
 b/arch/x86_64/ia32/ia32_binfmt.c                    |   26 
 b/arch/x86_64/ia32/ia32_ioctl.c                     | 1482 ++++++++++-
 b/arch/x86_64/ia32/ia32_signal.c                    |   39 
 b/arch/x86_64/ia32/ia32entry.S                      |   17 
 b/arch/x86_64/ia32/ipc32.c                          |    5 
 b/arch/x86_64/ia32/sys_ia32.c                       |  190 -
 b/arch/x86_64/kernel/Makefile                       |    2 
 b/arch/x86_64/kernel/apic.c                         |   16 
 b/arch/x86_64/kernel/mpparse.c                      |    2 
 b/arch/x86_64/kernel/mtrr.c                         |  721 ++---
 b/arch/x86_64/kernel/nmi.c                          |   42 
 b/arch/x86_64/kernel/process.c                      |    1 
 b/arch/x86_64/kernel/profile.c                      |   45 
 b/arch/x86_64/kernel/reboot.c                       |    1 
 b/arch/x86_64/kernel/setup.c                        |   11 
 b/arch/x86_64/kernel/traps.c                        |    3 
 b/arch/x86_64/mm/Makefile                           |   10 
 b/arch/x86_64/mm/fault.c                            |   24 
 b/arch/x86_64/mm/init.c                             |   38 
 b/arch/x86_64/mm/ioremap.c                          |   65 
 b/arch/x86_64/mm/modutil.c                          |   72 
 b/arch/x86_64/mm/pageattr.c                         |  210 +
 b/drivers/acorn/block/fd1772.c                      |   47 
 b/drivers/acorn/block/mfmhd.c                       |   85 
 b/drivers/acorn/scsi/acornscsi.c                    |    6 
 b/drivers/acorn/scsi/arxescsi.c                     |    8 
 b/drivers/acorn/scsi/cumana_2.c                     |    8 
 b/drivers/acorn/scsi/eesox.c                        |    8 
 b/drivers/acorn/scsi/powertec.c                     |    8 
 b/drivers/atm/Makefile                              |    6 
 b/drivers/base/base.h                               |    7 
 b/drivers/base/bus.c                                |  242 +
 b/drivers/base/class.c                              |  132 -
 b/drivers/base/core.c                               |  216 -
 b/drivers/base/driver.c                             |  107 
 b/drivers/base/interface.c                          |    2 
 b/drivers/base/platform.c                           |    2 
 b/drivers/base/power.c                              |   68 
 b/drivers/base/sys.c                                |    8 
 b/drivers/block/Config.in                           |    2 
 b/drivers/block/DAC960.c                            |   54 
 b/drivers/block/DAC960.h                            |   10 
 b/drivers/block/acsi.c                              |  149 -
 b/drivers/block/amiflop.c                           |   53 
 b/drivers/block/ataflop.c                           |   51 
 b/drivers/block/cciss.c                             |   48 
 b/drivers/block/cciss.h                             |    3 
 b/drivers/block/cciss_scsi.c                        |   21 
 b/drivers/block/cpqarray.c                          |   36 
 b/drivers/block/cpqarray.h                          |    3 
 b/drivers/block/floppy.c                            |   77 
 b/drivers/block/genhd.c                             |  146 -
 b/drivers/block/ll_rw_blk.c                         |   24 
 b/drivers/block/loop.c                              |   50 
 b/drivers/block/nbd.c                               |   78 
 b/drivers/block/paride/epat.c                       |    1 
 b/drivers/block/paride/pcd.c                        |   95 
 b/drivers/block/paride/pd.c                         |   71 
 b/drivers/block/paride/pf.c                         |   55 
 b/drivers/block/rd.c                                |    8 
 b/drivers/block/swim3.c                             |   75 
 b/drivers/block/swim_iop.c                          |  100 
 b/drivers/block/umem.c                              |   43 
 b/drivers/block/xd.c                                |    1 
 b/drivers/block/z2ram.c                             |   13 
 b/drivers/bluetooth/Makefile                        |    2 
 b/drivers/bluetooth/hci_h4.c                        |   12 
 b/drivers/bluetooth/hci_usb.c                       |    8 
 b/drivers/cdrom/aztcd.c                             |   33 
 b/drivers/cdrom/cdrom.c                             |   49 
 b/drivers/cdrom/cdu31a.c                            |  228 -
 b/drivers/cdrom/cm206.c                             |   73 
 b/drivers/cdrom/gscd.c                              |  106 
 b/drivers/cdrom/mcd.c                               |   56 
 b/drivers/cdrom/mcdx.c                              |   97 
 b/drivers/cdrom/optcd.c                             |   34 
 b/drivers/cdrom/sbpcd.c                             |  102 
 b/drivers/cdrom/sjcd.c                              |   32 
 b/drivers/cdrom/sonycd535.c                         |  255 --
 b/drivers/char/Config.help                          |   87 
 b/drivers/char/Makefile                             |    3 
 b/drivers/char/drm/sis_ds.c                         |   22 
 b/drivers/char/ftape/lowlevel/ftape-rw.h            |    2 
 b/drivers/char/ftape/zftape/zftape-vtbl.h           |   16 
 b/drivers/char/isicom.c                             |   10 
 b/drivers/char/rio/rio_linux.c                      |    1 
 b/drivers/char/specialix.c                          |   48 
 b/drivers/char/sysrq.c                              |    4 
 b/drivers/char/tipar.c                              |    2 
 b/drivers/ide/ide-cd.c                              |   22 
 b/drivers/ide/ide-geometry.c                        |    9 
 b/drivers/ide/ide-probe.c                           |   49 
 b/drivers/ide/ide.c                                 |  163 -
 b/drivers/input/serio/sa1111ps2.c                   |    2 
 b/drivers/isdn/i4l/Makefile                         |    2 
 b/drivers/isdn/i4l/isdn_bsdcomp.c                   |   19 
 b/drivers/isdn/i4l/isdn_ciscohdlck.c                |   13 
 b/drivers/isdn/i4l/isdn_common.h                    |    2 
 b/drivers/isdn/i4l/isdn_net.c                       |  412 ---
 b/drivers/isdn/i4l/isdn_net.h                       |  153 -
 b/drivers/isdn/i4l/isdn_net_lib.c                   |  524 +++-
 b/drivers/isdn/i4l/isdn_ppp.c                       | 2548 ++++++--------------
 b/drivers/isdn/i4l/isdn_ppp.h                       |   20 
 b/drivers/isdn/i4l/isdn_ppp_ccp.c                   |  601 ++++
 b/drivers/isdn/i4l/isdn_ppp_ccp.h                   |   66 
 b/drivers/isdn/isdnloop/isdnloop.c                  |    8 
 b/drivers/md/linear.c                               |   69 
 b/drivers/md/md.c                                   |   87 
 b/drivers/media/video/cpia.h                        |    4 
 b/drivers/message/fusion/linux_compat.h             |    4 
 b/drivers/message/i2o/i2o_block.c                   |   39 
 b/drivers/mtd/ftl.c                                 |  247 -
 b/drivers/net/3c59x.c                               |    2 
 b/drivers/net/e100/e100.h                           |    8 
 b/drivers/net/e100/e100_main.c                      |  206 -
 b/drivers/net/e100/e100_proc.c                      |   22 
 b/drivers/net/e1000/e1000.h                         |   10 
 b/drivers/net/e1000/e1000_ethtool.c                 |   29 
 b/drivers/net/e1000/e1000_hw.c                      |   56 
 b/drivers/net/e1000/e1000_hw.h                      |   33 
 b/drivers/net/e1000/e1000_main.c                    |  142 -
 b/drivers/net/e1000/e1000_osdep.h                   |    2 
 b/drivers/net/e1000/e1000_param.c                   |   13 
 b/drivers/net/e1000/e1000_proc.c                    |   26 
 b/drivers/net/eepro100.c                            |  205 -
 b/drivers/net/hamradio/soundmodem/Makefile          |    6 
 b/drivers/net/mii.c                                 |    7 
 b/drivers/net/natsemi.c                             |    6 
 b/drivers/nubus/nubus.c                             |    6 
 b/drivers/parport/parport_pc.c                      |   29 
 b/drivers/pci/Makefile                              |    3 
 b/drivers/pci/pci-driver.c                          |    2 
 b/drivers/pcmcia/sa1111_generic.c                   |    2 
 b/drivers/pnp/Config.help                           |   29 
 b/drivers/pnp/Config.in                             |   11 
 b/drivers/pnp/Makefile                              |   14 
 b/drivers/pnp/base.h                                |   11 
 b/drivers/pnp/compat.c                              |   94 
 b/drivers/pnp/core.c                                |  176 +
 b/drivers/pnp/driver.c                              |  202 +
 b/drivers/pnp/idlist.h                              |  321 ++
 b/drivers/pnp/interface.c                           |  342 ++
 b/drivers/pnp/isapnp/Makefile                       |   11 
 b/drivers/pnp/isapnp/core.c                         | 1193 +++++++++
 b/drivers/pnp/isapnp/proc.c                         |  171 +
 b/drivers/pnp/names.c                               |   51 
 b/drivers/pnp/pnpbios/Makefile                      |   11 
 b/drivers/pnp/pnpbios/core.c                        | 1572 ++++++++++++
 b/drivers/pnp/pnpbios/proc.c                        |  279 ++
 b/drivers/pnp/quirks.c                              |  140 -
 b/drivers/pnp/resource.c                            |  880 ++++++
 b/drivers/pnp/system.c                              |  123 
 b/drivers/sbus/char/jsflash.c                       |   45 
 b/drivers/scsi/53c700.c                             |   39 
 b/drivers/scsi/53c700.h                             |    5 
 b/drivers/scsi/Makefile                             |    4 
 b/drivers/scsi/NCR53C9x.c                           |    2 
 b/drivers/scsi/aacraid/aachba.c                     |    3 
 b/drivers/scsi/aic7xxx/Makefile                     |   14 
 b/drivers/scsi/aic7xxx/aic7xxx_linux_host.h         |    1 
 b/drivers/scsi/aic7xxx/aicasm/Makefile              |    2 
 b/drivers/scsi/aic7xxx_old/aic7xxx.h                |    4 
 b/drivers/scsi/cpqfcTSinit.c                        |    4 
 b/drivers/scsi/esp.c                                |    2 
 b/drivers/scsi/fcal.c                               |    4 
 b/drivers/scsi/hosts.c                              |  892 +++++--
 b/drivers/scsi/hosts.h                              |   97 
 b/drivers/scsi/ips.h                                |    3 
 b/drivers/scsi/osst.c                               |    2 
 b/drivers/scsi/pcmcia/aha152x_stub.c                |    3 
 b/drivers/scsi/pcmcia/fdomain_stub.c                |    3 
 b/drivers/scsi/pcmcia/nsp_cs.c                      |    3 
 b/drivers/scsi/pcmcia/qlogic_stub.c                 |    3 
 b/drivers/scsi/scsi.c                               |  462 ---
 b/drivers/scsi/scsi.h                               |   15 
 b/drivers/scsi/scsi_debug.c                         |   62 
 b/drivers/scsi/scsi_error.c                         |   12 
 b/drivers/scsi/scsi_ioctl.c                         |   16 
 b/drivers/scsi/scsi_lib.c                           |    4 
 b/drivers/scsi/scsi_merge.c                         |   19 
 b/drivers/scsi/scsi_proc.c                          |   57 
 b/drivers/scsi/scsi_scan.c                          |   31 
 b/drivers/scsi/scsi_syms.c                          |    5 
 b/drivers/scsi/sd.c                                 |  287 +-
 b/drivers/scsi/sd.h                                 |    1 
 b/drivers/scsi/sg.c                                 |   12 
 b/drivers/scsi/sr.c                                 |  115 
 b/drivers/scsi/sr_ioctl.c                           |   20 
 b/drivers/scsi/sr_vendor.c                          |   18 
 b/drivers/scsi/st.c                                 |    4 
 b/drivers/scsi/sym53c8xx.c                          |   41 
 b/drivers/scsi/sym53c8xx_2/sym_glue.c               |   15 
 b/drivers/scsi/wd33c93.c                            |    5 
 b/drivers/serial/8250_pnp.c                         |  202 -
 b/drivers/serial/Makefile                           |    2 
 b/drivers/usb/class/audio.c                         |   10 
 b/drivers/usb/core/devio.c                          |    2 
 b/drivers/usb/core/message.c                        |    2 
 b/drivers/usb/core/usb.c                            |    8 
 b/drivers/usb/host/ohci-sa1111.c                    |    2 
 b/drivers/usb/host/uhci-debug.c                     |  246 +
 b/drivers/usb/host/uhci-hcd.c                       |  535 ++--
 b/drivers/usb/host/uhci-hcd.h                       |  158 -
 b/drivers/usb/input/Config.help                     |    6 
 b/drivers/usb/input/Config.in                       |    7 
 b/drivers/usb/misc/usbtest.c                        |   23 
 b/drivers/usb/net/pegasus.h                         |    3 
 b/drivers/usb/storage/transport.c                   |   26 
 b/drivers/video/Makefile                            |    3 
 b/drivers/zorro/Makefile                            |    3 
 b/fs/Makefile                                       |    2 
 b/fs/afs/cmservice.c                                |    7 
 b/fs/aio.c                                          |   23 
 b/fs/bio.c                                          |    3 
 b/fs/block_dev.c                                    |   36 
 b/fs/buffer.c                                       |   16 
 b/fs/driverfs/inode.c                               |    4 
 b/fs/libfs.c                                        |   13 
 b/fs/lockd/svc.c                                    |    9 
 b/fs/locks.c                                        |   10 
 b/fs/mpage.c                                        |    2 
 b/fs/nfs/inode.c                                    |    2 
 b/fs/nfs/nfs4xdr.c                                  |   25 
 b/fs/nfs/proc.c                                     |    2 
 b/fs/nfsd/export.c                                  |   33 
 b/fs/nfsd/nfs3proc.c                                |   11 
 b/fs/nfsd/nfs4proc.c                                |   13 
 b/fs/nfsd/nfs4xdr.c                                 |   10 
 b/fs/nfsd/nfsctl.c                                  |    1 
 b/fs/nfsd/nfsproc.c                                 |   11 
 b/fs/nfsd/nfssvc.c                                  |   37 
 b/fs/nfsd/stats.c                                   |    1 
 b/fs/nfsd/vfs.c                                     |   14 
 b/fs/partitions/check.c                             |   15 
 b/fs/partitions/msdos.c                             |    2 
 b/fs/read_write.c                                   |   10 
 b/fs/reiserfs/ioctl.c                               |    1 
 b/fs/sysfs/Makefile                                 |    9 
 b/fs/sysfs/inode.c                                  |  642 +++++
 b/fs/xfs/Makefile                                   |    3 
 b/fs/xfs/linux/xfs_file.c                           |   28 
 b/fs/xfs/linux/xfs_globals.c                        |    3 
 b/fs/xfs/xfs_alloc.c                                |   13 
 b/fs/xfs/xfs_alloc_btree.c                          |   32 
 b/fs/xfs/xfs_bmap_btree.c                           |    4 
 b/fs/xfs/xfs_bmap_btree.h                           |    4 
 b/fs/xfs/xfs_inode.c                                |    5 
 b/fs/xfs/xfs_inode_item.h                           |    6 
 b/include/asm-alpha/checksum.h                      |   14 
 b/include/asm-alpha/system.h                        |    5 
 b/include/asm-arm/checksum.h                        |    6 
 b/include/asm-arm/system.h                          |    5 
 b/include/asm-cris/system.h                         |    5 
 b/include/asm-generic/siginfo.h                     |   28 
 b/include/asm-i386/apic.h                           |    4 
 b/include/asm-i386/checksum.h                       |   10 
 b/include/asm-i386/edd.h                            |  168 +
 b/include/asm-i386/highmem.h                        |   87 
 b/include/asm-i386/io_apic.h                        |    7 
 b/include/asm-i386/setup.h                          |    2 
 b/include/asm-i386/smp.h                            |    2 
 b/include/asm-i386/system.h                         |   59 
 b/include/asm-ia64/checksum.h                       |   16 
 b/include/asm-ia64/system.h                         |    3 
 b/include/asm-m68k/checksum.h                       |   10 
 b/include/asm-mips/checksum.h                       |   13 
 b/include/asm-mips/system.h                         |    4 
 b/include/asm-mips64/checksum.h                     |   13 
 b/include/asm-mips64/system.h                       |    3 
 b/include/asm-parisc/checksum.h                     |   23 
 b/include/asm-parisc/system.h                       |    5 
 b/include/asm-ppc/checksum.h                        |    8 
 b/include/asm-ppc/div64.h                           |   23 
 b/include/asm-ppc/pci-bridge.h                      |    5 
 b/include/asm-ppc/sections.h                        |   16 
 b/include/asm-ppc/system.h                          |   11 
 b/include/asm-ppc64/a.out.h                         |    3 
 b/include/asm-ppc64/checksum.h                      |   12 
 b/include/asm-ppc64/hardirq.h                       |    4 
 b/include/asm-ppc64/hw_irq.h                        |    5 
 b/include/asm-ppc64/ipc.h                           |    6 
 b/include/asm-ppc64/machdep.h                       |   15 
 b/include/asm-ppc64/pci-bridge.h                    |   18 
 b/include/asm-ppc64/pgtable.h                       |    5 
 b/include/asm-ppc64/posix_types.h                   |    9 
 b/include/asm-ppc64/ppc32.h                         |   59 
 b/include/asm-ppc64/processor.h                     |    2 
 b/include/asm-ppc64/semaphore.h                     |    2 
 b/include/asm-ppc64/sigcontext.h                    |    3 
 b/include/asm-ppc64/siginfo.h                       |    3 
 b/include/asm-ppc64/stat.h                          |    3 
 b/include/asm-ppc64/system.h                        |    5 
 b/include/asm-ppc64/thread_info.h                   |   10 
 b/include/asm-ppc64/ucontext.h                      |    2 
 b/include/asm-ppc64/udbg.h                          |    2 
 b/include/asm-s390/checksum.h                       |   15 
 b/include/asm-s390/system.h                         |    2 
 b/include/asm-s390x/checksum.h                      |   15 
 b/include/asm-s390x/system.h                        |    2 
 b/include/asm-sh/checksum.h                         |   10 
 b/include/asm-sh/system.h                           |    3 
 b/include/asm-sparc/checksum.h                      |    6 
 b/include/asm-sparc/ptrace.h                        |    7 
 b/include/asm-sparc/siginfo.h                       |   72 
 b/include/asm-sparc/system.h                        |    2 
 b/include/asm-sparc/unistd.h                        |    2 
 b/include/asm-sparc64/siginfo.h                     |   73 
 b/include/asm-sparc64/unistd.h                      |    2 
 b/include/asm-x86_64/hw_irq.h                       |   32 
 b/include/asm-x86_64/ia32.h                         |    5 
 b/include/asm-x86_64/ide.h                          |    2 
 b/include/asm-x86_64/io_apic.h                      |    9 
 b/include/asm-x86_64/ioctl32.h                      |    1 
 b/include/asm-x86_64/ipc.h                          |    4 
 b/include/asm-x86_64/ipcbuf.h                       |    8 
 b/include/asm-x86_64/namei.h                        |    6 
 b/include/asm-x86_64/nmi.h                          |   49 
 b/include/asm-x86_64/param.h                        |    2 
 b/include/asm-x86_64/proto.h                        |    1 
 b/include/asm-x86_64/socket32.h                     |    8 
 b/include/asm-x86_64/softirq.h                      |    2 
 b/include/asm-x86_64/system.h                       |    3 
 b/include/asm-x86_64/unistd.h                       |    5 
 b/include/linux/blkdev.h                            |    1 
 b/include/linux/cdrom.h                             |    9 
 b/include/linux/device.h                            |   49 
 b/include/linux/driverfs_fs.h                       |    2 
 b/include/linux/fs.h                                |   19 
 b/include/linux/genhd.h                             |   10 
 b/include/linux/ide.h                               |   13 
 b/include/linux/init.h                              |   14 
 b/include/linux/ioctl32.h                           |   23 
 b/include/linux/ip.h                                |   16 
 b/include/linux/isapnp.h                            |   49 
 b/include/linux/isdn.h                              |   39 
 b/include/linux/isdn_ppp.h                          |   46 
 b/include/linux/kernel.h                            |    6 
 b/include/linux/list.h                              |   79 
 b/include/linux/mm.h                                |   16 
 b/include/linux/nbd.h                               |    9 
 b/include/linux/net.h                               |    3 
 b/include/linux/nfsd/nfsd.h                         |   13 
 b/include/linux/nfsd/xdr4.h                         |   10 
 b/include/linux/pnp.h                               |  285 ++
 b/include/linux/pnpbios.h                           |   75 
 b/include/linux/sched.h                             |   10 
 b/include/linux/security.h                          |    5 
 b/include/linux/serial_core.h                       |    2 
 b/include/linux/skbuff.h                            |    9 
 b/include/linux/sunrpc/cache.h                      |    8 
 b/include/linux/sunrpc/svc.h                        |    3 
 b/include/linux/sysfs.h                             |   51 
 b/include/linux/tcp.h                               |    2 
 b/include/linux/udp.h                               |   31 
 b/include/net/addrconf.h                            |   16 
 b/include/net/bluetooth/hci.h                       |  627 ++--
 b/include/net/bluetooth/hci_core.h                  |   99 
 b/include/net/bluetooth/l2cap.h                     |   57 
 b/include/net/bluetooth/rfcomm.h                    |    5 
 b/include/net/dst.h                                 |   56 
 b/include/net/ip.h                                  |   26 
 b/include/net/ipv6.h                                |   14 
 b/include/net/sctp/sm.h                             |   37 
 b/include/net/sctp/structs.h                        |    8 
 b/include/net/sock.h                                |    6 
 b/include/net/tcp.h                                 |    2 
 b/include/net/udp.h                                 |    2 
 b/include/scsi/sg.h                                 |    2 
 b/init/Makefile                                     |    9 
 b/kernel/ksyms.c                                    |    3 
 b/kernel/signal.c                                   |    3 
 b/lib/Makefile                                      |    1 
 b/mm/filemap.c                                      |   31 
 b/mm/madvise.c                                      |    2 
 b/mm/msync.c                                        |    2 
 b/mm/readahead.c                                    |   46 
 b/mm/vmalloc.c                                      |    2 
 b/mm/vmscan.c                                       |   15 
 b/net/bluetooth/Config.in                           |    8 
 b/net/bluetooth/Makefile                            |    4 
 b/net/bluetooth/bnep/Makefile                       |    2 
 b/net/bluetooth/bnep/Makefile.lib                   |    1 
 b/net/bluetooth/bnep/bnep.h                         |    5 
 b/net/bluetooth/bnep/core.c                         |    4 
 b/net/bluetooth/bnep/sock.c                         |   25 
 b/net/bluetooth/hci_conn.c                          |   42 
 b/net/bluetooth/hci_core.c                          |  133 -
 b/net/bluetooth/hci_event.c                         |  251 -
 b/net/bluetooth/hci_sock.c                          |   16 
 b/net/bluetooth/l2cap.c                             |  345 +-
 b/net/bluetooth/rfcomm/core.c                       |   16 
 b/net/bluetooth/rfcomm/sock.c                       |    7 
 b/net/bluetooth/rfcomm/tty.c                        |   93 
 b/net/bluetooth/syms.c                              |    1 
 b/net/core/dst.c                                    |   25 
 b/net/core/sock.c                                   |   88 
 b/net/decnet/af_decnet.c                            |  435 +--
 b/net/decnet/dn_dev.c                               |   92 
 b/net/econet/af_econet.c                            |   32 
 b/net/ipv4/af_inet.c                                |   17 
 b/net/ipv4/icmp.c                                   |   74 
 b/net/ipv4/ip_forward.c                             |    2 
 b/net/ipv4/ip_output.c                              | 1187 +++++----
 b/net/ipv4/ip_proc.c                                |  345 ++
 b/net/ipv4/ip_sockglue.c                            |    4 
 b/net/ipv4/raw.c                                    |  126 
 b/net/ipv4/tcp.c                                    |   49 
 b/net/ipv4/tcp_ipv4.c                               |    8 
 b/net/ipv4/tcp_minisocks.c                          |   10 
 b/net/ipv4/udp.c                                    |  382 ++
 b/net/ipv6/mcast.c                                  |   42 
 b/net/ipv6/tcp_ipv6.c                               |    5 
 b/net/netsyms.c                                     |    5 
 b/net/sctp/associola.c                              |    8 
 b/net/sctp/bind_addr.c                              |   32 
 b/net/sctp/input.c                                  |   65 
 b/net/sctp/output.c                                 |   14 
 b/net/sctp/outqueue.c                               |  163 -
 b/net/sctp/sm_make_chunk.c                          |   67 
 b/net/sctp/sm_sideeffect.c                          |    6 
 b/net/sctp/sm_statefuns.c                           |  294 +-
 b/net/sctp/sm_statetable.c                          |    4 
 b/net/sctp/socket.c                                 |   92 
 b/net/socket.c                                      |    5 
 b/net/sunrpc/cache.c                                |    6 
 b/net/sunrpc/sunrpc_syms.c                          |   19 
 b/net/sunrpc/svc.c                                  |   14 
 b/net/sunrpc/svcauth_unix.c                         |   14 
 b/scripts/Makefile                                  |    9 
 b/scripts/Makefile.clean                            |   42 
 b/scripts/lxdialog/Makefile                         |    3 
 b/security/capability.c                             |    6 
 b/security/dummy.c                                  |    6 
 b/security/security.c                               |   12 
 b/sound/oss/Makefile                                |    4 
 b/sound/oss/ad1848.c                                |   52 
 b/sound/oss/ite8172.c                               |   12 
 b/sound/oss/opl3sa2.c                               |  168 -
 b/sound/oss/sound_config.h                          |    4 
 b/sound/pci/ens1370.c                               |    6 
 drivers/pnp/isapnp.c                                | 2514 -------------------
 drivers/pnp/isapnp_proc.c                           | 1134 --------
 drivers/pnp/pnpbios_core.c                          | 1350 ----------
 drivers/pnp/pnpbios_proc.c                          |  279 --
 net/bluetooth/bnep/crc32.c                          |   59 
 net/bluetooth/bnep/crc32.h                          |   10 
 687 files changed, 24607 insertions(+), 18834 deletions(-)

