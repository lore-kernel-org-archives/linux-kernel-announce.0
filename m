From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.2.19 released
Date: Tue, 19 Oct 2004 18:50:31 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200410191850.i9JIoVGO031311@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.2.19 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.2/patch-2.2.19.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.2/linux-2.2.19.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               788851           3946706
Full source                       15551352          84275200

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 CREDITS                                    |   72 
 Documentation/Changes                      |   22 
 Documentation/Configure.help               |  289 +
 Documentation/README.DAC960                |   16 
 Documentation/SubmittingDrivers            |    2 
 Documentation/binfmt_misc.txt              |    4 
 Documentation/devices.txt                  |  578 +++
 Documentation/filesystems/minix-part.txt   |   43 
 Documentation/ioctl-number.txt             |    3 
 Documentation/isdn/00-INDEX                |    3 
 Documentation/isdn/README.HiSax            |   20 
 Documentation/isdn/README.diversion        |    2 
 Documentation/isdn/README.eicon            |    9 
 Documentation/isdn/README.fax              |    3 
 Documentation/isdn/README.hfc-pci          |    2 
 Documentation/isdn/README.hysdn            |  195 +
 Documentation/kernel-docs.txt              |    2 
 Documentation/networking/cs89x0.txt        |    3 
 Documentation/networking/ip_masq/rc.masqfw |  106 
 Documentation/networking/vortex.txt        |  357 +
 Documentation/powerpc/00-INDEX             |    2 
 Documentation/powerpc/ppc_htab.txt         |    2 
 Documentation/powerpc/smp.txt              |    2 
 Documentation/powerpc/sound.txt            |    2 
 Documentation/powerpc/zImage_layout.txt    |    2 
 Documentation/rtc.txt                      |    4 
 Documentation/s390/cds.txt                 |    2 
 Documentation/sound/ChangeLog.ymfsb        |   19 
 Documentation/sound/Maestro3               |   84 
 Documentation/sound/README.ymfsb           |  127 
 Documentation/usb/usb-serial.txt           |    9 
 MAINTAINERS                                |   52 
 Makefile                                   |    6 
 arch/alpha/config.in                       |    8 
 arch/alpha/kernel/alpha_ksyms.c            |    1 
 arch/alpha/kernel/entry.S                  |    4 
 arch/alpha/kernel/irq.c                    |    2 
 arch/alpha/kernel/osf_sys.c                |    2 
 arch/alpha/kernel/process.c                |   40 
 arch/alpha/kernel/smp.c                    |   63 
 arch/alpha/kernel/sys_nautilus.c           |    2 
 arch/alpha/kernel/sys_ruffian.c            |   77 
 arch/alpha/kernel/traps.c                  |    4 
 arch/alpha/lib/strlen_user.S               |   14 
 arch/alpha/mm/extable.c                    |    2 
 arch/alpha/mm/fault.c                      |    2 
 arch/arm/kernel/dec21285.c                 |    9 
 arch/arm/kernel/entry-armv.S               |    3 
 arch/arm/kernel/head-armv.S                |    5 
 arch/arm/kernel/hw-footbridge.c            |    3 
 arch/arm/kernel/process.c                  |   43 
 arch/arm/kernel/ptrace.c                   |  615 +--
 arch/arm/kernel/signal.c                   |    1 
 arch/arm/lib/delay.S                       |   13 
 arch/arm/lib/memset.S                      |  144 
 arch/arm/vmlinux-armo.lds                  |   69 
 arch/arm/vmlinux-armv.lds                  |   70 
 arch/i386/boot/setup.S                     |  127 
 arch/i386/config.in                        |   12 
 arch/i386/defconfig                        |   37 
 arch/i386/kernel/Makefile                  |    4 
 arch/i386/kernel/apm.c                     |  152 
 arch/i386/kernel/cpuid.c                   |    1 
 arch/i386/kernel/dmi_scan.c                |   20 
 arch/i386/kernel/entry.S                   |   17 
 arch/i386/kernel/microcode.c               |  145 
 arch/i386/kernel/msr.c                     |    1 
 arch/i386/kernel/setup.c                   |  173 
 arch/i386/kernel/smp.c                     |    2 
 arch/i386/kernel/time.c                    |   24 
 arch/i386/kernel/traps.c                   |    6 
 arch/i386/mm/init.c                        |   38 
 arch/ppc/config.in                         |   25 
 arch/ppc/kernel/feature.c                  |    2 
 arch/ppc/kernel/misc.S                     |    8 
 arch/ppc/kernel/openpic.c                  |    3 
 arch/ppc/kernel/pmac_setup.c               |   14 
 arch/ppc/kernel/ppc_ksyms.c                |   27 
 arch/ppc/kernel/prom.c                     |    4 
 arch/ppc/kernel/sleep.S                    |    2 
 arch/s390/config.in                        |    3 
 arch/s390/kernel/Makefile                  |   11 
 arch/s390/kernel/cpcmd.c                   |    6 
 arch/s390/kernel/debug.c                   | 1006 +++--
 arch/s390/kernel/ebcdic.c                  |    9 
 arch/s390/kernel/entry.S                   |    8 
 arch/s390/kernel/head.S                    |   36 
 arch/s390/kernel/irq.c                     |   10 
 arch/s390/kernel/reipl.S                   |    8 
 arch/s390/kernel/s390_ext.c                |    3 
 arch/s390/kernel/s390_ksyms.c              |   76 
 arch/s390/kernel/s390dyn.c                 |    3 
 arch/s390/kernel/s390io.c                  |   43 
 arch/s390/kernel/setup.c                   |    3 
 arch/s390/kernel/signal.c                  |    7 
 arch/s390/kernel/smp.c                     |    5 
 arch/s390/lib/strcmp.S                     |    4 
 arch/s390/lib/strncpy.S                    |    6 
 arch/s390/mm/init.c                        |    2 
 arch/s390/tools/dasdfmt/dasdfmt.c          |    5 
 arch/sparc/config.in                       |    8 
 arch/sparc/defconfig                       |    2 
 arch/sparc/kernel/sys_sunos.c              |    4 
 arch/sparc/kernel/systbls.S                |    8 
 arch/sparc/lib/strlen_user.S               |    4 
 arch/sparc64/config.in                     |    3 
 arch/sparc64/defconfig                     |    5 
 arch/sparc64/kernel/ebus.c                 |    5 
 arch/sparc64/kernel/ioctl32.c              |   14 
 arch/sparc64/kernel/sparc64_ksyms.c        |    9 
 arch/sparc64/kernel/sys_sparc32.c          |   38 
 arch/sparc64/kernel/sys_sunos32.c          |    5 
 arch/sparc64/kernel/systbls.S              |    8 
 arch/sparc64/lib/strlen_user.S             |    4 
 arch/sparc64/mm/init.c                     |   10 
 drivers/block/DAC960.c                     |  419 +-
 drivers/block/DAC960.h                     |   69 
 drivers/block/genhd.c                      |   89 
 drivers/block/hd.c                         |    8 
 drivers/block/ide-pmac.c                   |    3 
 drivers/block/ll_rw_blk.c                  |    8 
 drivers/block/rd.c                         |    2 
 drivers/cdrom/cdrom.c                      |   50 
 drivers/char/Config.in                     |   32 
 drivers/char/Makefile                      |   24 
 drivers/char/advantechwdt.c                |  243 +
 drivers/char/agp/agp_backend.h             |    1 
 drivers/char/agp/agpgart_be.c              |    7 
 drivers/char/console.c                     |    1 
 drivers/char/cpia.c                        |    2 
 drivers/char/drm/gamma_drv.c               |    5 
 drivers/char/drm/i810_drv.c                |    5 
 drivers/char/drm/mga_drv.c                 |    5 
 drivers/char/drm/r128_drv.c                |    5 
 drivers/char/drm/tdfx_drv.c                |    7 
 drivers/char/i810-tco.c                    |  343 +
 drivers/char/i810-tco.h                    |   45 
 drivers/char/lp.c                          |   25 
 drivers/char/mem.c                         |    6 
 drivers/char/misc.c                        |   12 
 drivers/char/n_hdlc.c                      |  174 
 drivers/char/serial.c                      |   35 
 drivers/char/sx.c                          |   16 
 drivers/char/synclink.c                    |  289 -
 drivers/char/toshiba.c                     |   78 
 drivers/i2o/i2o_block.c                    |   35 
 drivers/i2o/i2o_core.c                     |    3 
 drivers/isdn/Config.in                     |   91 
 drivers/isdn/Makefile                      |  193 -
 drivers/isdn/Rules.make                    |   32 
 drivers/isdn/act2000/Makefile              |   34 
 drivers/isdn/act2000/act2000.h             |   29 
 drivers/isdn/act2000/act2000_isa.c         |   41 
 drivers/isdn/act2000/act2000_isa.h         |   13 
 drivers/isdn/act2000/capi.c                |   30 
 drivers/isdn/act2000/capi.h                |   21 
 drivers/isdn/act2000/module.c              |  116 
 drivers/isdn/avmb1/Makefile                |  173 
 drivers/isdn/avmb1/avmcard.h               |    5 
 drivers/isdn/avmb1/b1.c                    |   76 
 drivers/isdn/avmb1/b1dma.c                 |   78 
 drivers/isdn/avmb1/b1isa.c                 |   69 
 drivers/isdn/avmb1/b1pci.c                 |  164 
 drivers/isdn/avmb1/b1pcmcia.c              |   78 
 drivers/isdn/avmb1/c4.c                    |  294 +
 drivers/isdn/avmb1/capi.c                  | 1826 +++++++++-
 drivers/isdn/avmb1/capicmd.h               |   17 
 drivers/isdn/avmb1/capidev.h               |   40 
 drivers/isdn/avmb1/capidrv.c               |  373 +-
 drivers/isdn/avmb1/capifs.c                |  626 +++
 drivers/isdn/avmb1/capifs.h                |   25 
 drivers/isdn/avmb1/capiutil.c              |   50 
 drivers/isdn/avmb1/capiutil.h              |   70 
 drivers/isdn/avmb1/kcapi.c                 |  525 +-
 drivers/isdn/avmb1/t1isa.c                 |  106 
 drivers/isdn/avmb1/t1pci.c                 |  121 
 drivers/isdn/divert/Makefile               |   36 
 drivers/isdn/divert/divert_init.c          |   13 
 drivers/isdn/divert/divert_procfs.c        |   25 
 drivers/isdn/divert/isdn_divert.c          |   23 
 drivers/isdn/divert/isdn_divert.h          |   15 
 drivers/isdn/eicon/Divas_mod.c             |  151 
 drivers/isdn/eicon/Makefile                |   53 
 drivers/isdn/eicon/adapter.h               |  262 +
 drivers/isdn/eicon/bri.c                   |  714 +++
 drivers/isdn/eicon/common.c                |  896 +++++
 drivers/isdn/eicon/constant.h              |  176 
 drivers/isdn/eicon/divalog.h               |   54 
 drivers/isdn/eicon/divas.h                 |  229 +
 drivers/isdn/eicon/dsp_defs.h              |  300 +
 drivers/isdn/eicon/dspdids.h               |   81 
 drivers/isdn/eicon/eicon.h                 |  392 --
 drivers/isdn/eicon/eicon_dsp.h             |  130 
 drivers/isdn/eicon/eicon_idi.c             |  522 +-
 drivers/isdn/eicon/eicon_idi.h             |  189 -
 drivers/isdn/eicon/eicon_io.c              |  553 +--
 drivers/isdn/eicon/eicon_isa.c             |   62 
 drivers/isdn/eicon/eicon_isa.h             |   35 
 drivers/isdn/eicon/eicon_mod.c             |  669 +--
 drivers/isdn/eicon/eicon_pci.c             |  977 -----
 drivers/isdn/eicon/eicon_pci.h             |  151 
 drivers/isdn/eicon/fourbri.c               |  573 +++
 drivers/isdn/eicon/fpga.c                  |  155 
 drivers/isdn/eicon/idi.c                   |  867 ++++
 drivers/isdn/eicon/idi.h                   |  143 
 drivers/isdn/eicon/kprintf.c               |  535 ++
 drivers/isdn/eicon/lincfg.c                |  407 ++
 drivers/isdn/eicon/linchr.c                |  269 +
 drivers/isdn/eicon/linio.c                 |  747 ++++
 drivers/isdn/eicon/linsys.c                |  167 
 drivers/isdn/eicon/log.c                   |  176 
 drivers/isdn/eicon/pc.h                    |  317 +
 drivers/isdn/eicon/pc_maint.h              |  162 
 drivers/isdn/eicon/pr_pc.h                 |   83 
 drivers/isdn/eicon/pri.c                   |  530 ++
 drivers/isdn/eicon/sys.h                   |  116 
 drivers/isdn/eicon/uxio.h                  |  217 +
 drivers/isdn/eicon/xlog.c                  |  180 +
 drivers/isdn/hisax/Makefile                |  281 -
 drivers/isdn/hisax/amd7930.c               |   25 
 drivers/isdn/hisax/arcofi.c                |   40 
 drivers/isdn/hisax/arcofi.h                |   23 
 drivers/isdn/hisax/asuscom.c               |   44 
 drivers/isdn/hisax/avm_a1.c                |   69 
 drivers/isdn/hisax/avm_a1p.c               |   33 
 drivers/isdn/hisax/avm_pci.c               |  106 
 drivers/isdn/hisax/bkm_a4t.c               |   71 
 drivers/isdn/hisax/bkm_a8.c                |  326 -
 drivers/isdn/hisax/bkm_ax.h                |   21 
 drivers/isdn/hisax/callc.c                 |  220 -
 drivers/isdn/hisax/cert.c                  |   21 
 drivers/isdn/hisax/config.c                |  480 +-
 drivers/isdn/hisax/diva.c                  |  139 
 drivers/isdn/hisax/elsa.c                  |  128 
 drivers/isdn/hisax/elsa_ser.c              |    7 
 drivers/isdn/hisax/fsm.c                   |   52 
 drivers/isdn/hisax/gazel.c                 |   66 
 drivers/isdn/hisax/hfc_2bds0.c             |   46 
 drivers/isdn/hisax/hfc_2bds0.h             |   14 
 drivers/isdn/hisax/hfc_2bs0.c              |   56 
 drivers/isdn/hisax/hfc_2bs0.h              |   13 
 drivers/isdn/hisax/hfc_pci.c               |  215 -
 drivers/isdn/hisax/hfc_pci.h               |   26 
 drivers/isdn/hisax/hfc_sx.c                |   40 
 drivers/isdn/hisax/hfc_sx.h                |   12 
 drivers/isdn/hisax/hfcscard.c              |   38 
 drivers/isdn/hisax/hisax.h                 |  259 -
 drivers/isdn/hisax/hscx.c                  |   76 
 drivers/isdn/hisax/hscx.h                  |   19 
 drivers/isdn/hisax/hscx_irq.c              |   44 
 drivers/isdn/hisax/icc.c                   |  686 +++
 drivers/isdn/hisax/icc.h                   |   73 
 drivers/isdn/hisax/ipac.h                  |   20 
 drivers/isdn/hisax/isac.c                  |   91 
 drivers/isdn/hisax/isac.h                  |   23 
 drivers/isdn/hisax/isar.c                  |  104 
 drivers/isdn/hisax/isar.h                  |   30 
 drivers/isdn/hisax/isdnl1.c                |  310 -
 drivers/isdn/hisax/isdnl1.h                |   32 
 drivers/isdn/hisax/isdnl2.c                |   89 
 drivers/isdn/hisax/isdnl2.h                |    8 
 drivers/isdn/hisax/isdnl3.c                |  103 
 drivers/isdn/hisax/isdnl3.h                |   36 
 drivers/isdn/hisax/isurf.c                 |   45 
 drivers/isdn/hisax/ix1_micro.c             |   50 
 drivers/isdn/hisax/jade.c                  |   20 
 drivers/isdn/hisax/jade.h                  |    8 
 drivers/isdn/hisax/jade_irq.c              |    7 
 drivers/isdn/hisax/l3_1tr6.c               |   53 
 drivers/isdn/hisax/l3_1tr6.h               |   12 
 drivers/isdn/hisax/l3dss1.c                |  331 -
 drivers/isdn/hisax/l3dss1.h                |   31 
 drivers/isdn/hisax/l3ni1.c                 | 3199 +++++++++++++++++
 drivers/isdn/hisax/l3ni1.h                 |  137 
 drivers/isdn/hisax/lmgr.c                  |   26 
 drivers/isdn/hisax/md5sums.asc             |   38 
 drivers/isdn/hisax/mic.c                   |   39 
 drivers/isdn/hisax/netjet.c                |  491 --
 drivers/isdn/hisax/netjet.h                |   70 
 drivers/isdn/hisax/niccy.c                 |   64 
 drivers/isdn/hisax/nj_s.c                  |  269 +
 drivers/isdn/hisax/nj_u.c                  |  273 +
 drivers/isdn/hisax/q931.c                  |  394 +-
 drivers/isdn/hisax/rawhdlc.c               |    5 
 drivers/isdn/hisax/rawhdlc.h               |    6 
 drivers/isdn/hisax/s0box.c                 |   12 
 drivers/isdn/hisax/saphir.c                |   44 
 drivers/isdn/hisax/sedlbauer.c             |  159 
 drivers/isdn/hisax/sportster.c             |   58 
 drivers/isdn/hisax/tei.c                   |   91 
 drivers/isdn/hisax/teleint.c               |   56 
 drivers/isdn/hisax/teles0.c                |   57 
 drivers/isdn/hisax/teles3.c                |   87 
 drivers/isdn/hisax/telespci.c              |   60 
 drivers/isdn/hisax/w6692.c                 |   91 
 drivers/isdn/hisax/w6692.h                 |   14 
 drivers/isdn/hysdn/Makefile                |   29 
 drivers/isdn/hysdn/boardergo.c             |  466 ++
 drivers/isdn/hysdn/boardergo.h             |  112 
 drivers/isdn/hysdn/hycapi.c                |  839 ++++
 drivers/isdn/hysdn/hysdn_boot.c            |  413 ++
 drivers/isdn/hysdn/hysdn_defs.h            |  307 +
 drivers/isdn/hysdn/hysdn_init.c            |  257 +
 drivers/isdn/hysdn/hysdn_net.c             |  336 +
 drivers/isdn/hysdn/hysdn_pof.h             |   89 
 drivers/isdn/hysdn/hysdn_procconf.c        |  467 ++
 drivers/isdn/hysdn/hysdn_proclog.c         |  464 ++
 drivers/isdn/hysdn/hysdn_sched.c           |  213 +
 drivers/isdn/hysdn/ince1pc.h               |  132 
 drivers/isdn/icn/Makefile                  |   17 
 drivers/isdn/icn/icn.c                     |   25 
 drivers/isdn/icn/icn.h                     |    4 
 drivers/isdn/isdn_bsdcomp.c                |   15 
 drivers/isdn/isdn_cards.c                  |   73 
 drivers/isdn/isdn_cards.h                  |   23 
 drivers/isdn/isdn_common.c                 |  313 +
 drivers/isdn/isdn_common.h                 |    4 
 drivers/isdn/isdn_concap.c                 |   14 
 drivers/isdn/isdn_net.c                    |  367 +-
 drivers/isdn/isdn_net.h                    |   83 
 drivers/isdn/isdn_ppp.c                    |  661 +--
 drivers/isdn/isdn_tty.c                    |   59 
 drivers/isdn/isdn_tty.h                    |    2 
 drivers/isdn/isdn_v110.c                   |   10 
 drivers/isdn/isdnloop/Makefile             |   19 
 drivers/isdn/isdnloop/isdnloop.c           |   32 
 drivers/isdn/isdnloop/isdnloop.h           |    4 
 drivers/isdn/pcbit/Makefile                |   34 
 drivers/isdn/pcbit/callbacks.c             |    2 
 drivers/isdn/pcbit/capi.c                  |    2 
 drivers/isdn/pcbit/drv.c                   |    5 
 drivers/isdn/pcbit/edss1.c                 |    2 
 drivers/isdn/pcbit/layer2.c                |    2 
 drivers/isdn/pcbit/module.c                |   28 
 drivers/isdn/pcbit/pcbit.h                 |    2 
 drivers/isdn/sc/Makefile                   |   64 
 drivers/isdn/sc/debug.c                    |   11 
 drivers/isdn/sc/debug.h                    |   11 
 drivers/isdn/sc/includes.h                 |    2 
 drivers/isdn/sc/init.c                     |   32 
 drivers/isdn/sc/message.c                  |    2 
 drivers/isdn/sc/timer.c                    |   10 
 drivers/macintosh/mac_hid.c                |   27 
 drivers/net/3c527.c                        | 1377 +++++--
 drivers/net/3c527.h                        |   57 
 drivers/net/3c59x.c                        |  639 +--
 drivers/net/8139too.c                      |  648 ++-
 drivers/net/Config.in                      |   33 
 drivers/net/Makefile                       |   13 
 drivers/net/Space.c                        |   12 
 drivers/net/cosa.c                         |    2 
 drivers/net/cs89x0.c                       |   22 
 drivers/net/eepro100.c                     |    7 
 drivers/net/gmac.c                         |    2 
 drivers/net/hamradio/scc.c                 |   46 
 drivers/net/irda/irtty.c                   |   10 
 drivers/net/lance.c                        |    3 
 drivers/net/lanstreamer.c                  |   12 
 drivers/net/lanstreamer.h                  |    1 
 drivers/net/lp486e.c                       | 1401 +++++++
 drivers/net/ne2k-pci.c                     |  104 
 drivers/net/sis900.c                       |   84 
 drivers/net/sis900.h                       |   14 
 drivers/net/slhc.c                         |   10 
 drivers/net/starfire.c                     | 1854 ++++++++++
 drivers/net/starfire_firmware.pl           |   31 
 drivers/net/strip.c                        |   39 
 drivers/net/sunhme.c                       |   18 
 drivers/net/tulip.c                        |   37 
 drivers/net/via-rhine.c                    |  473 +-
 drivers/s390/Config.in                     |    2 
 drivers/s390/Makefile                      |    5 
 drivers/s390/block/Makefile                |   23 
 drivers/s390/block/dasd.c                  |  657 ++-
 drivers/s390/block/dasd.h                  |    6 
 drivers/s390/block/dasd_3370_erp.c         |    1 
 drivers/s390/block/dasd_3990_erp.c         | 1233 ++++++
 drivers/s390/block/dasd_3990_erp.h         |   21 
 drivers/s390/block/dasd_9336_erp.c         |    3 
 drivers/s390/block/dasd_9343_erp.c         |    1 
 drivers/s390/block/dasd_9343_erp.h         |   18 
 drivers/s390/block/dasd_diag.c             |   18 
 drivers/s390/block/dasd_eckd.c             |   79 
 drivers/s390/block/dasd_eckd.h             |   20 
 drivers/s390/block/dasd_fba.c              |   27 
 drivers/s390/block/dasd_fba.h              |    1 
 drivers/s390/block/mdisk.c                 |  236 -
 drivers/s390/block/xpram.c                 |    4 
 drivers/s390/ccwcache.c                    |   12 
 drivers/s390/char/hwc.h                    |   22 
 drivers/s390/char/hwc_rw.c                 |  433 +-
 drivers/s390/char/hwc_rw.h                 |    9 
 drivers/s390/char/hwc_tty.c                |    4 
 drivers/s390/idals.c                       |   85 
 drivers/s390/misc/Makefile                 |    3 
 drivers/s390/net/Makefile                  |    3 
 drivers/s390/net/ctc.c                     |  129 
 drivers/s390/net/iucv.c                    |    9 
 drivers/s390/net/netiucv.c                 |    2 
 drivers/sbus/audio/cs4215.h                |    2 
 drivers/sbus/audio/dbri.c                  |   50 
 drivers/sbus/char/Makefile                 |    8 
 drivers/sbus/char/cpwatchdog.c             |  846 ++++
 drivers/sbus/char/zs.c                     |    7 
 drivers/scsi/3w-xxxx.c                     |  398 +-
 drivers/scsi/3w-xxxx.h                     |    6 
 drivers/scsi/Config.in                     |    8 
 drivers/scsi/Makefile                      |    8 
 drivers/scsi/README.aic7xxx                |   56 
 drivers/scsi/README.osst                   |  218 +
 drivers/scsi/README.tmscsim                |  201 -
 drivers/scsi/aha1542.c                     |    4 
 drivers/scsi/aha1740.c                     |    2 
 drivers/scsi/aic7xxx.c                     | 2108 +++++------
 drivers/scsi/aic7xxx.h                     |  114 
 drivers/scsi/aic7xxx/aic7xxx.h             |  114 
 drivers/scsi/aic7xxx/aic7xxx.reg           |    7 
 drivers/scsi/aic7xxx/aic7xxx.seq           |  364 +-
 drivers/scsi/aic7xxx/aic7xxx_proc.c        |  414 ++
 drivers/scsi/aic7xxx/aic7xxx_reg.h         |  629 +++
 drivers/scsi/aic7xxx/aic7xxx_seq.c         |  817 ++++
 drivers/scsi/aic7xxx_proc.c                |  414 --
 drivers/scsi/aic7xxx_reg.h                 |  629 ---
 drivers/scsi/aic7xxx_seq.c                 |  745 ----
 drivers/scsi/atp870u.c                     |  116 
 drivers/scsi/cpqfc.Readme                  |    9 
 drivers/scsi/cpqfcTS.h                     |   11 
 drivers/scsi/cpqfcTSinit.c                 |  142 
 drivers/scsi/cpqfcTSstructs.h              |    3 
 drivers/scsi/cpqfcTSworker.c               |   22 
 drivers/scsi/dc390.h                       |   55 
 drivers/scsi/gdth.c                        |  233 +
 drivers/scsi/gdth.h                        |   12 
 drivers/scsi/gdth_ioctl.h                  |    3 
 drivers/scsi/gdth_proc.c                   |   26 
 drivers/scsi/hosts.c                       |    5 
 drivers/scsi/hosts.h                       |    1 
 drivers/scsi/i60uscsi.c                    |    4 
 drivers/scsi/i60uscsi.h                    |    8 
 drivers/scsi/osst.c                        | 5184 +++++++++++++++++++++++++++++
 drivers/scsi/osst.h                        |  514 ++
 drivers/scsi/osst_detect.h                 |    5 
 drivers/scsi/osst_options.h                |  100 
 drivers/scsi/ppa.c                         |   52 
 drivers/scsi/ppa.h                         |   15 
 drivers/scsi/scsi.h                        |    2 
 drivers/scsi/scsiiom.c                     |  909 ++---
 drivers/scsi/sr.c                          |   47 
 drivers/scsi/st.c                          |   18 
 drivers/scsi/tmscsim.c                     | 1353 +++++--
 drivers/scsi/tmscsim.h                     |  215 -
 drivers/scsi/ultrastor.c                   |    3 
 drivers/sound/Config.in                    |    7 
 drivers/sound/Makefile                     |   10 
 drivers/sound/cs46xx.c                     |    2 
 drivers/sound/emu10k1/main.c               |    7 
 drivers/sound/es1370.c                     |  129 
 drivers/sound/es1371.c                     |  112 
 drivers/sound/esssolo1.c                   |   50 
 drivers/sound/maestro3.c                   | 3033 ++++++++++++++++
 drivers/sound/maestro3.h                   |  821 ++++
 drivers/sound/sonicvibes.c                 |   66 
 drivers/sound/sound_core.c                 |   11 
 drivers/sound/trident.c                    |    9 
 drivers/sound/ymf_sb.c                     |  995 -----
 drivers/sound/ymfpci.c                     |  244 +
 drivers/sound/ymfpci.h                     |   41 
 drivers/usb/Config.in                      |  102 
 drivers/usb/acm.c                          |    4 
 drivers/usb/audio.c                        |   85 
 drivers/usb/bluetooth.c                    |   32 
 drivers/usb/dabusb.c                       |    6 
 drivers/usb/dc2xx.c                        |   30 
 drivers/usb/devices.c                      |    4 
 drivers/usb/devio.c                        |  227 -
 drivers/usb/hid.c                          |   28 
 drivers/usb/hub.h                          |    3 
 drivers/usb/keybdev.c                      |   13 
 drivers/usb/printer.c                      |  180 -
 drivers/usb/rio500.c                       |   88 
 drivers/usb/scanner.c                      |    2 
 drivers/usb/scanner.h                      |    1 
 drivers/usb/serial/Config.in               |   30 
 drivers/usb/serial/Makefile                |    1 
 drivers/usb/serial/empeg.c                 |  703 +++
 drivers/usb/serial/ftdi_sio.c              |  645 ++-
 drivers/usb/serial/ftdi_sio.h              |   42 
 drivers/usb/serial/keyspan.c               | 1671 +++++++--
 drivers/usb/serial/keyspan.h               |  301 +
 drivers/usb/serial/keyspan_usa26msg.h      |   28 
 drivers/usb/serial/keyspan_usa28msg.h      |   28 
 drivers/usb/serial/keyspan_usa49msg.h      |  255 +
 drivers/usb/serial/keyspan_usa49w_fw.h     |  457 ++
 drivers/usb/serial/usb-serial.h            |   11 
 drivers/usb/serial/usbserial.c             |  100 
 drivers/usb/serial/visor.c                 |  114 
 drivers/usb/usb.c                          |   37 
 drivers/video/Config.in                    |   25 
 drivers/video/Makefile                     |    4 
 drivers/video/aty128fb.c                   |   34 
 drivers/video/mdacon.c                     |   22 
 drivers/video/promcon.c                    |    2 
 drivers/video/tgafb.c                      |   15 
 fs/Config.in                               |    9 
 fs/binfmt_aout.c                           |    4 
 fs/binfmt_elf.c                            |   84 
 fs/binfmt_misc.c                           |  437 +-
 fs/buffer.c                                |  137 
 fs/coda/file.c                             |    8 
 fs/dcache.c                                |   16 
 fs/dquot.c                                 |    2 
 fs/exec.c                                  |   27 
 fs/fat/misc.c                              |   10 
 fs/file_table.c                            |   22 
 fs/inode.c                                 |    4 
 fs/isofs/dir.c                             |  130 
 fs/isofs/inode.c                           |  463 +-
 fs/isofs/joliet.c                          |    6 
 fs/isofs/namei.c                           |  222 -
 fs/isofs/rock.c                            |   45 
 fs/isofs/util.c                            |    7 
 fs/lockd/clntlock.c                        |    9 
 fs/lockd/clntproc.c                        |    4 
 fs/lockd/host.c                            |  187 -
 fs/lockd/mon.c                             |    6 
 fs/lockd/svc.c                             |   19 
 fs/lockd/svc4proc.c                        |   11 
 fs/lockd/svclock.c                         |   46 
 fs/lockd/svcproc.c                         |   13 
 fs/lockd/svcshare.c                        |   12 
 fs/lockd/svcsubs.c                         |   52 
 fs/locks.c                                 |   14 
 fs/nfs/dir.c                               |  254 -
 fs/nfs/file.c                              |   16 
 fs/nfs/inode.c                             |  325 -
 fs/nfs/mount_clnt.c                        |   14 
 fs/nfs/nfs3proc.c                          |  187 -
 fs/nfs/proc.c                              |  106 
 fs/nfs/read.c                              |   70 
 fs/nfs/symlink.c                           |   13 
 fs/nfs/write.c                             |  114 
 fs/nfsd/auth.c                             |    7 
 fs/nfsd/export.c                           |    6 
 fs/nfsd/nfs3proc.c                         |   58 
 fs/nfsd/nfs3xdr.c                          |   87 
 fs/nfsd/nfscache.c                         |    7 
 fs/nfsd/nfsctl.c                           |    1 
 fs/nfsd/nfsfh.c                            |   57 
 fs/nfsd/nfsproc.c                          |  100 
 fs/nfsd/nfsxdr.c                           |   75 
 fs/nfsd/vfs.c                              |  314 -
 fs/nls/Config.in                           |    1 
 fs/nls/Makefile                            |    8 
 fs/nls/nls_base.c                          |    3 
 fs/nls/nls_koi8-ru.c                       |  401 ++
 fs/open.c                                  |    4 
 fs/proc/array.c                            |    4 
 fs/read_write.c                            |   12 
 fs/smbfs/ChangeLog                         |    7 
 fs/smbfs/proc.c                            |    9 
 include/asm-alpha/mmu_context.h            |   35 
 include/asm-alpha/page.h                   |    4 
 include/asm-alpha/pgtable.h                |    8 
 include/asm-alpha/ptrace.h                 |    1 
 include/asm-alpha/siginfo.h                |    4 
 include/asm-alpha/smp.h                    |    1 
 include/asm-alpha/softirq.h                |   56 
 include/asm-alpha/spinlock.h               |    1 
 include/asm-alpha/system.h                 |    9 
 include/asm-alpha/uaccess.h                |    8 
 include/asm-arm/proc-armo/ptrace.h         |    6 
 include/asm-arm/proc-armv/ptrace.h         |    3 
 include/asm-arm/processor.h                |   26 
 include/asm-arm/ptrace.h                   |   18 
 include/asm-arm/siginfo.h                  |    4 
 include/asm-arm/uaccess.h                  |    2 
 include/asm-i386/bugs.h                    |    1 
 include/asm-i386/e820.h                    |   40 
 include/asm-i386/msr.h                     |    4 
 include/asm-i386/processor.h               |   17 
 include/asm-i386/siginfo.h                 |    4 
 include/asm-i386/uaccess.h                 |    7 
 include/asm-m68k/siginfo.h                 |    4 
 include/asm-m68k/uaccess.h                 |    1 
 include/asm-mips/siginfo.h                 |    4 
 include/asm-ppc/ide.h                      |    1 
 include/asm-ppc/mman.h                     |    1 
 include/asm-ppc/page.h                     |   13 
 include/asm-ppc/siginfo.h                  |    4 
 include/asm-ppc/uaccess.h                  |    2 
 include/asm-s390/bitops.h                  |   16 
 include/asm-s390/ccwcache.h                |    6 
 include/asm-s390/dasd.h                    |   31 
 include/asm-s390/debug.h                   |  159 
 include/asm-s390/elf.h                     |    3 
 include/asm-s390/idals.h                   |   47 
 include/asm-s390/io.h                      |    2 
 include/asm-s390/irq.h                     |   37 
 include/asm-s390/page.h                    |    6 
 include/asm-s390/pgtable.h                 |   18 
 include/asm-s390/siginfo.h                 |    4 
 include/asm-s390/system.h                  |   29 
 include/asm-s390/todclk.h                  |   19 
 include/asm-s390/uaccess.h                 |    1 
 include/asm-sparc/asm_offsets.h            |  316 -
 include/asm-sparc/audioio.h                |    1 
 include/asm-sparc/page.h                   |    6 
 include/asm-sparc/siginfo.h                |    4 
 include/asm-sparc/uaccess.h                |    9 
 include/asm-sparc/unistd.h                 |    8 
 include/asm-sparc64/asm_offsets.h          |  480 +-
 include/asm-sparc64/page.h                 |    4 
 include/asm-sparc64/pgtable.h              |   12 
 include/asm-sparc64/siginfo.h              |    4 
 include/asm-sparc64/uaccess.h              |    3 
 include/asm-sparc64/unistd.h               |    8 
 include/asm-sparc64/watchdog.h             |   31 
 include/linux/agp_backend.h                |    1 
 include/linux/apm_bios.h                   |   19 
 include/linux/binfmts.h                    |    2 
 include/linux/blk.h                        |   12 
 include/linux/capi.h                       |   14 
 include/linux/cdrom.h                      |    4 
 include/linux/dcache.h                     |    6 
 include/linux/elf.h                        |    6 
 include/linux/fs.h                         |   25 
 include/linux/hysdn_if.h                   |   49 
 include/linux/interrupt.h                  |    1 
 include/linux/isdn.h                       |   86 
 include/linux/isdn_compat.h                |   81 
 include/linux/isdn_ppp.h                   |    8 
 include/linux/isdnif.h                     |   25 
 include/linux/iso_fs.h                     |   27 
 include/linux/kernelcapi.h                 |  105 
 include/linux/lockd/nlm.h                  |    2 
 include/linux/locks.h                      |    2 
 include/linux/major.h                      |    2 
 include/linux/mc146818rtc.h                |   43 
 include/linux/miscdevice.h                 |    1 
 include/linux/mtio.h                       |    3 
 include/linux/nfs.h                        |    4 
 include/linux/nfs3.h                       |    5 
 include/linux/nfs_fs.h                     |   43 
 include/linux/nfs_fs_i.h                   |   10 
 include/linux/nfs_mount.h                  |    6 
 include/linux/nfs_page.h                   |    3 
 include/linux/nfs_xdr.h                    |   57 
 include/linux/nfsd/nfsd.h                  |   67 
 include/linux/nfsd/nfsfh.h                 |    4 
 include/linux/nfsd/xdr3.h                  |   14 
 include/linux/nls.h                        |    1 
 include/linux/pci.h                        |   70 
 include/linux/rtc.h                        |   43 
 include/linux/scc.h                        |    1 
 include/linux/sched.h                      |   39 
 include/linux/sunrpc/clnt.h                |    7 
 include/linux/sunrpc/sched.h               |   19 
 include/linux/sunrpc/xprt.h                |   49 
 include/linux/synclink.h                   |    5 
 include/linux/sysctl.h                     |    8 
 include/linux/tqueue.h                     |   10 
 include/linux/usb.h                        |    4 
 include/linux/usbdevice_fs.h               |    1 
 include/linux/wait.h                       |    3 
 include/linux/watchdog.h                   |   11 
 include/linux/wireless.h                   |   55 
 include/math-emu/op-2.h                    |    2 
 include/net/ip.h                           |    2 
 include/net/ip_masq.h                      |   99 
 include/scsi/scsi.h                        |    3 
 init/main.c                                |   47 
 ipc/shm.c                                  |    6 
 kernel/Makefile                            |    2 
 kernel/context.c                           |  157 
 kernel/exit.c                              |   11 
 kernel/fork.c                              |    2 
 kernel/sched.c                             |   22 
 kernel/signal.c                            |    2 
 kernel/sys.c                               |   26 
 kernel/sysctl.c                            |   51 
 mm/filemap.c                               |  211 -
 mm/memory.c                                |    1 
 mm/page_alloc.c                            |  165 
 mm/swap_state.c                            |    1 
 mm/vmscan.c                                |   55 
 net/Changes                                |   42 
 net/Config.in                              |   21 
 net/ax25/af_ax25.c                         |    3 
 net/ax25/ax25_in.c                         |    4 
 net/core/dev.c                             |    2 
 net/core/filter.c                          |    8 
 net/core/sock.c                            |    4 
 net/ipv4/icmp.c                            |   16 
 net/ipv4/igmp.c                            |    4 
 net/ipv4/ip_input.c                        |    2 
 net/ipv4/ip_masq.c                         |   85 
 net/ipv4/ip_masq_app.c                     |  195 -
 net/ipv4/ip_masq_ftp.c                     |  619 ++-
 net/ipv4/ip_masq_mod.c                     |    2 
 net/ipv4/ip_masq_raudio.c                  |   12 
 net/ipv4/ip_masq_user.c                    |    3 
 net/ipv4/ip_sockglue.c                     |    3 
 net/ipv4/ipmr.c                            |    4 
 net/ipv4/raw.c                             |    2 
 net/ipv4/route.c                           |    2 
 net/ipv4/sysctl_net_ipv4.c                 |    2 
 net/ipv4/tcp.c                             |    8 
 net/ipv4/tcp_input.c                       |   65 
 net/ipv4/tcp_ipv4.c                        |    4 
 net/ipv4/udp.c                             |    8 
 net/ipv6/ipv6_sockglue.c                   |    6 
 net/ipv6/raw.c                             |    2 
 net/ipx/af_ipx.c                           |    4 
 net/irda/af_irda.c                         |    3 
 net/netrom/af_netrom.c                     |    3 
 net/netsyms.c                              |    2 
 net/rose/af_rose.c                         |    3 
 net/sched/cls_u32.c                        |    2 
 net/socket.c                               |    5 
 net/sunrpc/Makefile                        |    2 
 net/sunrpc/clnt.c                          |  107 
 net/sunrpc/ping.c                          |  218 +
 net/sunrpc/sched.c                         |   38 
 net/sunrpc/svcsock.c                       |    3 
 net/sunrpc/xprt.c                          |  100 
 net/unix/af_unix.c                         |    4 
 net/x25/af_x25.c                           |    3 
 scripts/Configure                          |   13 
 scripts/kwhich                             |    2 
 scripts/lxdialog/checklist.c               |   20 
 scripts/lxdialog/menubox.c                 |   14 
 scripts/makelst                            |    5 
 scripts/ver_linux                          |   58 
 733 files changed, 64857 insertions(+), 24921 deletions(-)

