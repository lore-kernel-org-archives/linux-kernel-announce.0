From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.49 released
Date: Fri, 22 Nov 2002 13:51:04 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200211222151.gAMLp4b15303@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.49 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.49.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.49.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               458948           2051317
Full source                       38853562         174858240

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/cpufreq                      |   31 
 b/Documentation/crypto/api-intro.txt         |   10 
 b/Documentation/filesystems/Locking          |   12 
 b/Documentation/filesystems/vfs.txt          |    2 
 b/Documentation/kobject.txt                  |  125 +
 b/Documentation/sonypi.txt                   |   38 
 b/Documentation/video4linux/meye.txt         |    5 
 b/MAINTAINERS                                |   17 
 b/Makefile                                   |   21 
 b/arch/alpha/Kconfig                         |    2 
 b/arch/alpha/defconfig                       |  515 ++---
 b/arch/alpha/kernel/Makefile                 |    2 
 b/arch/alpha/kernel/entry.S                  |   21 
 b/arch/alpha/kernel/err_common.c             |   22 
 b/arch/alpha/kernel/err_impl.h               |    2 
 b/arch/alpha/kernel/irq.c                    |    2 
 b/arch/alpha/kernel/osf_sys.c                |   49 
 b/arch/alpha/kernel/pci.c                    |    4 
 b/arch/alpha/kernel/process.c                |   13 
 b/arch/alpha/kernel/setup.c                  |   71 
 b/arch/alpha/kernel/smc37c669.c              |   12 
 b/arch/alpha/kernel/smp.c                    |    4 
 b/arch/alpha/kernel/srm_env.c                |    2 
 b/arch/alpha/kernel/sys_nautilus.c           |    8 
 b/arch/alpha/kernel/sys_sio.c                |    2 
 b/arch/alpha/kernel/systbls.S                |   17 
 b/arch/alpha/kernel/time.c                   |    2 
 b/arch/alpha/lib/fpreg.c                     |    2 
 b/arch/alpha/lib/io.c                        |   12 
 b/arch/alpha/mm/init.c                       |   35 
 b/arch/alpha/mm/numa.c                       |   12 
 b/arch/arm/Makefile                          |    4 
 b/arch/arm/kernel/Makefile                   |    2 
 b/arch/arm/kernel/armksyms.c                 |    9 
 b/arch/arm/kernel/bios32.c                   |    6 
 b/arch/arm/kernel/calls.S                    |    6 
 b/arch/arm/kernel/entry-armv.S               |    2 
 b/arch/arm/kernel/module.c                   |  172 +
 b/arch/arm/kernel/process.c                  |    1 
 b/arch/arm/kernel/sys_arm.c                  |    8 
 b/arch/arm/kernel/time-acorn.c               |    3 
 b/arch/arm/kernel/traps.c                    |    1 
 b/arch/arm/mach-footbridge/netwinder-pci.c   |    2 
 b/arch/arm/mach-integrator/cpu.c             |   11 
 b/arch/arm/mach-integrator/pci_v3.c          |    2 
 b/arch/arm/mach-rpc/dma.c                    |    3 
 b/arch/arm/mach-sa1100/cpu-sa1100.c          |    8 
 b/arch/arm/mach-sa1100/cpu-sa1110.c          |   12 
 b/arch/arm/mach-sa1100/generic.c             |    3 
 b/arch/arm/mm/extable.c                      |   16 
 b/arch/arm/nwfpe/fpa11.c                     |    1 
 b/arch/arm/tools/mach-types                  |   20 
 b/arch/i386/Kconfig                          |   15 
 b/arch/i386/kernel/cpu/amd.c                 |   15 
 b/arch/i386/kernel/cpu/cpufreq/elanfreq.c    |   30 
 b/arch/i386/kernel/cpu/cpufreq/longhaul.c    |   34 
 b/arch/i386/kernel/cpu/cpufreq/longrun.c     |   24 
 b/arch/i386/kernel/cpu/cpufreq/p4-clockmod.c |   28 
 b/arch/i386/kernel/cpu/cpufreq/powernow-k6.c |   30 
 b/arch/i386/kernel/cpu/cpufreq/speedstep.c   |   25 
 b/arch/i386/kernel/entry.S                   |   49 
 b/arch/i386/kernel/module.c                  |    2 
 b/arch/i386/kernel/process.c                 |   16 
 b/arch/i386/kernel/smpboot.c                 |   12 
 b/arch/i386/kernel/traps.c                   |    1 
 b/arch/i386/mach-generic/topology.c          |    1 
 b/arch/i386/oprofile/Makefile                |   16 
 b/arch/ia64/Kconfig                          |   14 
 b/arch/ppc/Kconfig                           |   17 
 b/arch/ppc/Makefile                          |   22 
 b/arch/ppc/boot/Makefile                     |   28 
 b/arch/ppc/boot/common/Makefile              |    2 
 b/arch/ppc/boot/images/Makefile              |    5 
 b/arch/ppc/boot/lib/Makefile                 |    2 
 b/arch/ppc/boot/of1275/Makefile              |    2 
 b/arch/ppc/boot/openfirmware/Makefile        |   18 
 b/arch/ppc/boot/prep/Makefile                |   12 
 b/arch/ppc/boot/prep/misc.c                  |    1 
 b/arch/ppc/boot/simple/Makefile              |   23 
 b/arch/ppc/boot/simple/misc.c                |    1 
 b/arch/ppc/kernel/Makefile                   |    2 
 b/arch/ppc/kernel/misc.S                     |    6 
 b/arch/ppc/kernel/module.c                   |  260 ++
 b/arch/ppc/kernel/process.c                  |    1 
 b/arch/ppc/mm/extable.c                      |   25 
 b/arch/ppc/platforms/pmac_pic.c              |    1 
 b/arch/ppc/syslib/i8259.c                    |    5 
 b/arch/ppc/syslib/open_pic.c                 |    1 
 b/arch/s390/Kconfig                          |   48 
 b/arch/s390/Makefile                         |   15 
 b/arch/s390/boot/Makefile                    |   27 
 b/arch/s390/defconfig                        |  235 --
 b/arch/s390/kernel/Makefile                  |    2 
 b/arch/s390/kernel/entry.S                   |   12 
 b/arch/s390/kernel/module.c                  |  174 +
 b/arch/s390/kernel/setup.c                   |   22 
 b/arch/s390/kernel/smp.c                     |   11 
 b/arch/s390/kernel/time.c                    |    1 
 b/arch/s390/kernel/traps.c                   |    8 
 b/arch/s390/lib/uaccess.S                    |   84 
 b/arch/s390/mm/extable.c                     |   14 
 b/arch/s390/mm/init.c                        |    2 
 b/arch/s390/vmlinux.lds.S                    |   42 
 b/arch/s390x/Kconfig                         |   47 
 b/arch/s390x/Makefile                        |   17 
 b/arch/s390x/boot/Makefile                   |   24 
 b/arch/s390x/defconfig                       |  238 +-
 b/arch/s390x/kernel/Makefile                 |    2 
 b/arch/s390x/kernel/entry.S                  |   12 
 b/arch/s390x/kernel/ioctl32.c                |   45 
 b/arch/s390x/kernel/linux32.c                |  438 +---
 b/arch/s390x/kernel/module.c                 |  190 ++
 b/arch/s390x/kernel/s390_ksyms.c             |   14 
 b/arch/s390x/kernel/setup.c                  |   22 
 b/arch/s390x/kernel/time.c                   |    1 
 b/arch/s390x/kernel/traps.c                  |    8 
 b/arch/s390x/kernel/wrapper32.S              |   24 
 b/arch/s390x/lib/uaccess.S                   |   77 
 b/arch/s390x/mm/extable.c                    |   23 
 b/arch/s390x/vmlinux.lds.S                   |   47 
 b/arch/sparc/kernel/apc.c                    |   28 
 b/arch/sparc/kernel/entry.S                  |    3 
 b/arch/sparc/kernel/module.c                 |   23 
 b/arch/sparc/kernel/process.c                |   26 
 b/arch/sparc/kernel/systbls.S                |    6 
 b/arch/sparc64/Makefile                      |   12 
 b/arch/sparc64/boot/Makefile                 |   30 
 b/arch/sparc64/kernel/Makefile               |    2 
 b/arch/sparc64/kernel/ebus.c                 |    1 
 b/arch/sparc64/kernel/entry.S                |    2 
 b/arch/sparc64/kernel/isa.c                  |   22 
 b/arch/sparc64/kernel/module.c               |   23 
 b/arch/sparc64/kernel/pci.c                  |    2 
 b/arch/sparc64/kernel/pci_common.c           |   12 
 b/arch/sparc64/kernel/pci_psycho.c           |    1 
 b/arch/sparc64/kernel/pci_sabre.c            |    1 
 b/arch/sparc64/kernel/pci_schizo.c           |    1 
 b/arch/sparc64/kernel/power.c                |    1 
 b/arch/sparc64/kernel/process.c              |   20 
 b/arch/sparc64/kernel/sbus.c                 |    1 
 b/arch/sparc64/kernel/sys_sparc32.c          |    6 
 b/arch/sparc64/kernel/sys_sunos32.c          |    3 
 b/arch/sparc64/kernel/systbls.S              |   12 
 b/arch/sparc64/kernel/time.c                 |    4 
 b/arch/sparc64/lib/Makefile                  |    2 
 b/arch/sparc64/math-emu/Makefile             |    4 
 b/arch/sparc64/mm/Makefile                   |    2 
 b/arch/sparc64/prom/Makefile                 |    2 
 b/arch/sparc64/solaris/Makefile              |    2 
 b/arch/sparc64/solaris/fs.c                  |   25 
 b/arch/sparc64/solaris/ioctl.c               |    2 
 b/arch/sparc64/solaris/socket.c              |    1 
 b/arch/sparc64/solaris/socksys.c             |    2 
 b/arch/sparc64/vmlinux.lds.S                 |    4 
 b/arch/x86_64/Kconfig                        |   14 
 b/crypto/Kconfig                             |    6 
 b/crypto/Makefile                            |    1 
 b/crypto/api.c                               |   41 
 b/crypto/cipher.c                            |   30 
 b/crypto/compress.c                          |   18 
 b/crypto/crypto_null.c                       |  132 +
 b/crypto/digest.c                            |   17 
 b/crypto/hmac.c                              |   34 
 b/crypto/internal.h                          |   23 
 b/drivers/acorn/scsi/arxescsi.c              |    2 
 b/drivers/acorn/scsi/cumana_1.c              |   10 
 b/drivers/acorn/scsi/ecoscsi.c               |   98 -
 b/drivers/acorn/scsi/oak.c                   |    8 
 b/drivers/acpi/acpi_ksyms.c                  |    9 
 b/drivers/acpi/dispatcher/dsutils.c          |   41 
 b/drivers/acpi/dispatcher/dswexec.c          |   16 
 b/drivers/acpi/ec.c                          |  165 +
 b/drivers/acpi/events/evmisc.c               |    9 
 b/drivers/acpi/executer/exconvrt.c           |  146 -
 b/drivers/acpi/executer/exfield.c            |   53 
 b/drivers/acpi/executer/exmisc.c             |   79 
 b/drivers/acpi/executer/exoparg1.c           |   10 
 b/drivers/acpi/executer/exoparg2.c           |   50 
 b/drivers/acpi/executer/exresnte.c           |    6 
 b/drivers/acpi/executer/exresop.c            |   26 
 b/drivers/acpi/include/acconfig.h            |    4 
 b/drivers/acpi/include/acdispat.h            |    6 
 b/drivers/acpi/include/acutils.h             |    6 
 b/drivers/acpi/namespace/nseval.c            |    4 
 b/drivers/acpi/namespace/nsinit.c            |    4 
 b/drivers/acpi/osl.c                         |   27 
 b/drivers/acpi/parser/psparse.c              |   18 
 b/drivers/acpi/processor.c                   |   30 
 b/drivers/acpi/sleep.c                       |    2 
 b/drivers/acpi/utilities/utobject.c          |   69 
 b/drivers/base/base.h                        |    3 
 b/drivers/base/bus.c                         |  286 +--
 b/drivers/base/class.c                       |   48 
 b/drivers/base/core.c                        |  235 +-
 b/drivers/base/cpu.c                         |    4 
 b/drivers/base/driver.c                      |  127 -
 b/drivers/base/fs/device.c                   |    2 
 b/drivers/base/hotplug.c                     |    2 
 b/drivers/base/intf.c                        |   36 
 b/drivers/base/power.c                       |    8 
 b/drivers/base/sys.c                         |    2 
 b/drivers/block/cciss_scsi.c                 |   16 
 b/drivers/block/ll_rw_blk.c                  |   63 
 b/drivers/block/loop.c                       |    2 
 b/drivers/block/umem.c                       |    1 
 b/drivers/cdrom/mcdx.c                       |   16 
 b/drivers/cdrom/optcd.c                      |    2 
 b/drivers/cdrom/sbpcd.c                      |   28 
 b/drivers/char/Kconfig                       |  284 ---
 b/drivers/char/Makefile                      |   23 
 b/drivers/char/agp/agp.c                     |    8 
 b/drivers/char/mem.c                         |   24 
 b/drivers/char/rtc.c                         |    4 
 b/drivers/char/sonypi.c                      |  288 +--
 b/drivers/char/sonypi.h                      |  143 +
 b/drivers/char/tty_io.c                      |   13 
 b/drivers/char/watchdog/Kconfig              |  286 +++
 b/drivers/char/watchdog/Makefile             |   27 
 b/drivers/char/watchdog/acquirewdt.c         |  251 ++
 b/drivers/char/watchdog/advantechwdt.c       |  280 +++
 b/drivers/char/watchdog/eurotechwdt.c        |  501 +++++
 b/drivers/char/watchdog/i810-tco.c           |  431 ++++
 b/drivers/char/watchdog/ib700wdt.c           |  311 +++
 b/drivers/char/watchdog/machzwd.c            |  557 ++++++
 b/drivers/char/watchdog/mixcomwd.c           |  282 +++
 b/drivers/char/watchdog/pcwd.c               |  672 +++++++
 b/drivers/char/watchdog/sbc60xxwdt.c         |  354 +++
 b/drivers/char/watchdog/scx200_wdt.c         |  277 +++
 b/drivers/char/watchdog/shwdt.c              |  417 ++++
 b/drivers/char/watchdog/softdog.c            |  196 ++
 b/drivers/char/watchdog/w83877f_wdt.c        |  366 ++++
 b/drivers/char/watchdog/wdt.c                |  565 ++++++
 b/drivers/char/watchdog/wdt285.c             |  193 ++
 b/drivers/char/watchdog/wdt977.c             |  346 +++
 b/drivers/char/watchdog/wdt_pci.c            |  653 +++++++
 b/drivers/hotplug/cpci_hotplug_pci.c         |    4 
 b/drivers/hotplug/cpqphp_core.c              |    3 
 b/drivers/hotplug/pci_hotplug_core.c         |    4 
 b/drivers/i2c/i2c-core.c                     |    2 
 b/drivers/i2c/i2c-dev.c                      |   39 
 b/drivers/i2c/i2c-elektor.c                  |   46 
 b/drivers/i2c/i2c-frodo.c                    |   29 
 b/drivers/i2c/i2c-rpx.c                      |    2 
 b/drivers/i2c/scx200_acb.c                   |    8 
 b/drivers/ide/ide-cd.c                       |    2 
 b/drivers/ide/legacy/hd.c                    |    4 
 b/drivers/ieee1394/dv1394.c                  |    2 
 b/drivers/ieee1394/raw1394.c                 |    8 
 b/drivers/input/evbug.c                      |    2 
 b/drivers/input/evdev.c                      |    2 
 b/drivers/input/misc/sparcspkr.c             |    6 
 b/drivers/input/mouse/inport.c               |    7 
 b/drivers/input/mouse/logibm.c               |    7 
 b/drivers/input/mouse/pc110pad.c             |    1 
 b/drivers/input/serio/ct82c710.c             |   10 
 b/drivers/input/tsdev.c                      |   16 
 b/drivers/isdn/hisax/bkm_a8.c                |   23 
 b/drivers/md/linear.c                        |    7 
 b/drivers/md/md.c                            |   10 
 b/drivers/md/raid0.c                         |   14 
 b/drivers/md/raid5.c                         |    2 
 b/drivers/media/video/meye.c                 |  153 -
 b/drivers/media/video/meye.h                 |    6 
 b/drivers/message/i2o/i2o_config.c           |   16 
 b/drivers/message/i2o/i2o_pci.c              |    4 
 b/drivers/net/3c501.c                        |    1 
 b/drivers/net/3c503.c                        |    2 
 b/drivers/net/3c505.c                        |    2 
 b/drivers/net/3c507.c                        |   17 
 b/drivers/net/3c509.c                        |    4 
 b/drivers/net/3c515.c                        |    9 
 b/drivers/net/3c523.c                        |   10 
 b/drivers/net/3c527.c                        |   15 
 b/drivers/net/3c59x.c                        |    2 
 b/drivers/net/68360enet.c                    |    2 
 b/drivers/net/7990.c                         |   27 
 b/drivers/net/82596.c                        |    2 
 b/drivers/net/a2065.c                        |   12 
 b/drivers/net/ac3200.c                       |    2 
 b/drivers/net/aironet4500_card.c             |   20 
 b/drivers/net/aironet4500_core.c             |    8 
 b/drivers/net/aironet4500_proc.c             |   17 
 b/drivers/net/am79c961a.c                    |    1 
 b/drivers/net/apne.c                         |    6 
 b/drivers/net/appletalk/cops.c               |   13 
 b/drivers/net/appletalk/ltpc.c               |   14 
 b/drivers/net/ariadne.c                      |    4 
 b/drivers/net/ariadne2.c                     |    2 
 b/drivers/net/at1700.c                       |   15 
 b/drivers/net/atarilance.c                   |    9 
 b/drivers/net/atp.c                          |   11 
 b/drivers/net/au1000_eth.c                   |    4 
 b/drivers/net/b44.c                          |    1 
 b/drivers/net/bagetlance.c                   |   10 
 b/drivers/net/bonding.c                      |   14 
 b/drivers/net/cs89x0.c                       |   13 
 b/drivers/net/de600.c                        |    6 
 b/drivers/net/de620.c                        |    8 
 b/drivers/net/declance.c                     |    1 
 b/drivers/net/defxx.c                        |    8 
 b/drivers/net/depca.c                        |   13 
 b/drivers/net/dgrs.c                         |    1 
 b/drivers/net/e2100.c                        |    2 
 b/drivers/net/eepro.c                        |   11 
 b/drivers/net/eexpress.c                     |   13 
 b/drivers/net/es3210.c                       |    6 
 b/drivers/net/eth16i.c                       |    3 
 b/drivers/net/ewrk3.c                        |   13 
 b/drivers/net/fc/iph5526.c                   |   13 
 b/drivers/net/fealnx.c                       |    2 
 b/drivers/net/fec.c                          |    2 
 b/drivers/net/fmv18x.c                       |   12 
 b/drivers/net/gt96100eth.c                   |    2 
 b/drivers/net/hamachi.c                      |   12 
 b/drivers/net/hamradio/baycom_par.c          |    8 
 b/drivers/net/hamradio/scc.c                 |   12 
 b/drivers/net/hamradio/soundmodem/sm_sbc.c   |    7 
 b/drivers/net/hamradio/soundmodem/sm_wss.c   |    7 
 b/drivers/net/hp-plus.c                      |    2 
 b/drivers/net/hp.c                           |    2 
 b/drivers/net/hp100.c                        |    8 
 b/drivers/net/hplance.c                      |   11 
 b/drivers/net/hydra.c                        |    2 
 b/drivers/net/ibmlana.c                      |   10 
 b/drivers/net/irda/act200l.c                 |    1 
 b/drivers/net/irda/actisys.c                 |    1 
 b/drivers/net/irda/ep7211_ir.c               |    1 
 b/drivers/net/irda/esi.c                     |    2 
 b/drivers/net/irda/girbil.c                  |    1 
 b/drivers/net/irda/litelink.c                |    1 
 b/drivers/net/irda/ma600.c                   |    1 
 b/drivers/net/irda/mcp2120.c                 |    1 
 b/drivers/net/irda/old_belkin.c              |    1 
 b/drivers/net/irda/sir_kthread.c             |    1 
 b/drivers/net/irda/tekram.c                  |    1 
 b/drivers/net/isa-skeleton.c                 |   12 
 b/drivers/net/jazzsonic.c                    |   11 
 b/drivers/net/lance.c                        |    9 
 b/drivers/net/lasi_82596.c                   |    3 
 b/drivers/net/lne390.c                       |    5 
 b/drivers/net/lp486e.c                       |    1 
 b/drivers/net/mac8390.c                      |   13 
 b/drivers/net/mac89x0.c                      |   12 
 b/drivers/net/macsonic.c                     |   14 
 b/drivers/net/mvme147.c                      |   10 
 b/drivers/net/myri_sbus.c                    |   24 
 b/drivers/net/ne.c                           |    7 
 b/drivers/net/ne2.c                          |   13 
 b/drivers/net/ne2k-pci.c                     |    6 
 b/drivers/net/ne3210.c                       |    6 
 b/drivers/net/net_init.c                     |    1 
 b/drivers/net/ni65.c                         |   10 
 b/drivers/net/pcmcia/3c574_cs.c              |   11 
 b/drivers/net/pcmcia/3c589_cs.c              |   12 
 b/drivers/net/pcmcia/aironet4500_cs.c        |   14 
 b/drivers/net/pcmcia/axnet_cs.c              |   11 
 b/drivers/net/pcmcia/com20020_cs.c           |    7 
 b/drivers/net/pcmcia/fmvj18x_cs.c            |   10 
 b/drivers/net/pcmcia/ibmtr_cs.c              |    9 
 b/drivers/net/pcmcia/nmclan_cs.c             |   12 
 b/drivers/net/pcmcia/pcnet_cs.c              |   11 
 b/drivers/net/pcmcia/ray_cs.c                |   12 
 b/drivers/net/pcmcia/smc91c92_cs.c           |    9 
 b/drivers/net/pcmcia/xirc2ps_cs.c            |   11 
 b/drivers/net/pcnet32.c                      |   12 
 b/drivers/net/plip.c                         |   12 
 b/drivers/net/pppoe.c                        |    8 
 b/drivers/net/pppox.c                        |   10 
 b/drivers/net/rcpci45.c                      |    2 
 b/drivers/net/sb1000.c                       |   13 
 b/drivers/net/seeq8005.c                     |   10 
 b/drivers/net/sgiseeq.c                      |   18 
 b/drivers/net/shaper.c                       |    4 
 b/drivers/net/sis900.c                       |    1 
 b/drivers/net/sk_g16.c                       |    9 
 b/drivers/net/sk_mca.c                       |   10 
 b/drivers/net/skfp/skfddi.c                  |   12 
 b/drivers/net/slhc.c                         |    1 
 b/drivers/net/smc-mca.c                      |   10 
 b/drivers/net/smc-ultra.c                    |    7 
 b/drivers/net/smc-ultra32.c                  |    6 
 b/drivers/net/smc9194.c                      |    8 
 b/drivers/net/stnic.c                        |    4 
 b/drivers/net/sun3lance.c                    |   10 
 b/drivers/net/sunbmac.c                      |   22 
 b/drivers/net/sungem.c                       |    3 
 b/drivers/net/sunhme.c                       |   12 
 b/drivers/net/sunlance.c                     |   19 
 b/drivers/net/sunqe.c                        |   12 
 b/drivers/net/tc35815.c                      |   13 
 b/drivers/net/tg3.c                          |   14 
 b/drivers/net/tokenring/3c359.c              |    3 
 b/drivers/net/tokenring/Kconfig              |    4 
 b/drivers/net/tokenring/abyss.c              |    5 
 b/drivers/net/tokenring/ibmtr.c              |    2 
 b/drivers/net/tokenring/lanstreamer.c        |    3 
 b/drivers/net/tokenring/madgemc.c            |    5 
 b/drivers/net/tokenring/olympic.c            |    3 
 b/drivers/net/tokenring/smctr.c              |   13 
 b/drivers/net/tokenring/tms380tr.c           |   16 
 b/drivers/net/tokenring/tmsisa.c             |    5 
 b/drivers/net/tokenring/tmspci.c             |    5 
 b/drivers/net/tulip/de2104x.c                |    2 
 b/drivers/net/tulip/de4x5.c                  |   18 
 b/drivers/net/tulip/dmfe.c                   |    2 
 b/drivers/net/tulip/xircom_cb.c              |    5 
 b/drivers/net/tun.c                          |    3 
 b/drivers/net/wan/comx-hw-comx.c             |    2 
 b/drivers/net/wan/comx-hw-locomx.c           |    7 
 b/drivers/net/wan/comx-hw-mixcom.c           |    9 
 b/drivers/net/wan/comx-hw-munich.c           |    8 
 b/drivers/net/wan/comx-proto-fr.c            |    1 
 b/drivers/net/wan/cosa.c                     |    1 
 b/drivers/net/wan/dlci.c                     |   15 
 b/drivers/net/wan/hdlc_cisco.c               |    1 
 b/drivers/net/wan/hdlc_fr.c                  |    1 
 b/drivers/net/wan/hdlc_generic.c             |    1 
 b/drivers/net/wan/hdlc_ppp.c                 |    1 
 b/drivers/net/wan/hdlc_raw.c                 |    1 
 b/drivers/net/wan/hdlc_x25.c                 |    1 
 b/drivers/net/wan/lmc/lmc_debug.c            |    2 
 b/drivers/net/wan/lmc/lmc_main.c             |   18 
 b/drivers/net/wan/lmc/lmc_media.c            |   18 
 b/drivers/net/wan/lmc/lmc_proto.c            |   17 
 b/drivers/net/wan/n2.c                       |    1 
 b/drivers/net/wan/pc300_drv.c                |    5 
 b/drivers/net/wan/pc300_tty.c                |    7 
 b/drivers/net/wan/sbni.c                     |   20 
 b/drivers/net/wan/sdla.c                     |   14 
 b/drivers/net/wan/syncppp.c                  |    7 
 b/drivers/net/wd.c                           |    8 
 b/drivers/net/wireless/airo_cs.c             |    8 
 b/drivers/net/wireless/airport.c             |    9 
 b/drivers/net/wireless/netwave_cs.c          |   12 
 b/drivers/net/wireless/orinoco.c             |    8 
 b/drivers/net/wireless/orinoco_cs.c          |    8 
 b/drivers/net/wireless/orinoco_pci.c         |    8 
 b/drivers/net/znet.c                         |   11 
 b/drivers/parisc/ccio-dma.c                  |    7 
 b/drivers/parisc/dino.c                      |   20 
 b/drivers/parisc/eisa.c                      |    6 
 b/drivers/parisc/led.c                       |    2 
 b/drivers/parisc/power.c                     |    4 
 b/drivers/parport/ieee1284.c                 |    2 
 b/drivers/parport/parport_gsc.c              |   56 
 b/drivers/parport/parport_serial.c           |    8 
 b/drivers/pci/Makefile                       |    4 
 b/drivers/pci/pci-driver.c                   |    8 
 b/drivers/pci/pci.c                          |    2 
 b/drivers/pci/probe.c                        |    2 
 b/drivers/pci/proc.c                         |   48 
 b/drivers/pci/setup-bus.c                    |   16 
 b/drivers/pci/setup-res.c                    |   23 
 b/drivers/pcmcia/cistpl.c                    |    5 
 b/drivers/pcmcia/ds.c                        |   14 
 b/drivers/pcmcia/hd64465_ss.c                |   14 
 b/drivers/pcmcia/i82092.c                    |   44 
 b/drivers/pcmcia/pci_socket.c                |   24 
 b/drivers/pcmcia/tcic.c                      |   64 
 b/drivers/pnp/driver.c                       |    4 
 b/drivers/pnp/isapnp/core.c                  |    8 
 b/drivers/pnp/isapnp/proc.c                  |    4 
 b/drivers/pnp/pnpbios/core.c                 |   42 
 b/drivers/s390/Kconfig                       |   24 
 b/drivers/s390/block/Makefile                |    2 
 b/drivers/s390/block/dasd_diag.c             |   26 
 b/drivers/s390/block/dasd_eckd.c             |   56 
 b/drivers/s390/block/dasd_fba.c              |   42 
 b/drivers/s390/block/dasd_proc.c             |   20 
 b/drivers/s390/block/xpram.c                 |    2 
 b/drivers/s390/char/Makefile                 |   25 
 b/drivers/s390/char/con3215.c                |   12 
 b/drivers/s390/char/sclp.c                   |  663 +++++++
 b/drivers/s390/char/sclp.h                   |  157 +
 b/drivers/s390/char/sclp_con.c               |  237 ++
 b/drivers/s390/char/sclp_cpi.c               |  243 ++
 b/drivers/s390/char/sclp_rw.c                |  458 +++++
 b/drivers/s390/char/sclp_rw.h                |   94 +
 b/drivers/s390/char/sclp_tty.c               |  798 ++++++++
 b/drivers/s390/char/sclp_tty.h               |   67 
 b/drivers/s390/char/tape.c                   |    8 
 b/drivers/s390/char/tapechar.c               |   12 
 b/drivers/s390/char/tubfs.c                  |   12 
 b/drivers/s390/cio/chsc.c                    |   20 
 b/drivers/s390/cio/proc.c                    |    6 
 b/drivers/s390/net/ctcmain.c                 |   16 
 b/drivers/s390/net/netiucv.c                 |   38 
 b/drivers/sbus/char/bbc_i2c.c                |    1 
 b/drivers/sbus/char/display7seg.c            |    1 
 b/drivers/scsi/BusLogic.c                    |    8 
 b/drivers/scsi/NCR53c406a.c                  |   34 
 b/drivers/scsi/NCR_D700.c                    |    8 
 b/drivers/scsi/advansys.c                    |   15 
 b/drivers/scsi/aha1542.c                     |   10 
 b/drivers/scsi/aha1740.c                     |   10 
 b/drivers/scsi/aic7xxx_old.c                 |    1 
 b/drivers/scsi/atp870u.c                     |   14 
 b/drivers/scsi/cpqfcTSinit.c                 |   13 
 b/drivers/scsi/dpt_i2o.c                     |    6 
 b/drivers/scsi/esp.c                         |   20 
 b/drivers/scsi/fd_mcs.c                      |    4 
 b/drivers/scsi/fdomain.c                     |   15 
 b/drivers/scsi/hosts.c                       |   61 
 b/drivers/scsi/hosts.h                       |    9 
 b/drivers/scsi/ibmmca.c                      |   14 
 b/drivers/scsi/ide-scsi.c                    |   28 
 b/drivers/scsi/imm.c                         |   14 
 b/drivers/scsi/in2000.c                      |   13 
 b/drivers/scsi/inia100.c                     |    9 
 b/drivers/scsi/ips.c                         |   24 
 b/drivers/scsi/mca_53c9x.c                   |    6 
 b/drivers/scsi/nsp32.c                       |   70 
 b/drivers/scsi/osst.c                        |   26 
 b/drivers/scsi/ppa.c                         |   15 
 b/drivers/scsi/psi240i.c                     |    8 
 b/drivers/scsi/qlogicfas.c                   |    6 
 b/drivers/scsi/qlogicfc.c                    |    1 
 b/drivers/scsi/qlogicisp.c                   |    1 
 b/drivers/scsi/qlogicpti.c                   |    1 
 b/drivers/scsi/scsi.c                        |  102 -
 b/drivers/scsi/scsi.h                        |    9 
 b/drivers/scsi/scsi_debug.c                  |  261 ++
 b/drivers/scsi/scsi_debug.h                  |    1 
 b/drivers/scsi/scsi_error.c                  |    4 
 b/drivers/scsi/scsi_lib.c                    |   51 
 b/drivers/scsi/scsi_proc.c                   |   20 
 b/drivers/scsi/scsi_scan.c                   |    8 
 b/drivers/scsi/seagate.c                     |   14 
 b/drivers/scsi/sym53c8xx_2/sym_glue.h        |    1 
 b/drivers/scsi/tmscsim.c                     |    8 
 b/drivers/scsi/u14-34f.c                     |   14 
 b/drivers/scsi/ultrastor.c                   |    8 
 b/drivers/scsi/wd7000.c                      |   13 
 b/drivers/serial/68328serial.c               |   12 
 b/drivers/serial/68360serial.c               |   14 
 b/drivers/serial/8250_gsc.c                  |   12 
 b/drivers/serial/mcfserial.c                 |   12 
 b/drivers/serial/nb85e_uart.c                |   12 
 b/drivers/serial/sunsu.c                     |    4 
 b/drivers/serial/uart00.c                    |    6 
 b/drivers/sgi/char/ds1286.c                  |   12 
 b/drivers/sgi/char/graphics.c                |   10 
 b/drivers/sgi/char/sgiserial.c               |   12 
 b/drivers/sgi/char/shmiq.c                   |   14 
 b/drivers/sgi/char/streamable.c              |   12 
 b/drivers/sgi/char/usema.c                   |    6 
 b/drivers/tc/lk201.c                         |    9 
 b/drivers/tc/zs.c                            |   12 
 b/drivers/telephony/ixj.c                    |   14 
 b/drivers/telephony/phonedev.c               |    4 
 b/drivers/usb/core/config.c                  |   23 
 b/drivers/usb/core/inode.c                   |    6 
 b/drivers/usb/core/usb.c                     |    6 
 b/drivers/usb/media/vicam.c                  |  236 +-
 b/drivers/usb/net/pegasus.c                  |  303 ++-
 b/drivers/usb/net/pegasus.h                  |   15 
 b/drivers/usb/serial/usb-serial.c            |   81 
 b/drivers/usb/storage/freecom.c              |   56 
 b/drivers/usb/storage/isd200.c               |    4 
 b/drivers/usb/storage/transport.c            |  178 -
 b/drivers/usb/storage/transport.h            |   14 
 b/drivers/video/matrox/matroxfb_accel.c      |    2 
 b/drivers/video/matrox/matroxfb_misc.c       |    2 
 b/drivers/zorro/proc.c                       |    4 
 b/fs/Kconfig                                 |   17 
 b/fs/Makefile                                |    2 
 b/fs/adfs/inode.c                            |   34 
 b/fs/afs/inode.c                             |    2 
 b/fs/afs/vlclient.c                          |    2 
 b/fs/autofs4/root.c                          |    2 
 b/fs/block_dev.c                             |    2 
 b/fs/buffer.c                                |  199 ++
 b/fs/char_dev.c                              |  164 +
 b/fs/cifs/CHANGES                            |   10 
 b/fs/cifs/README                             |   10 
 b/fs/cifs/cifs_debug.c                       |    4 
 b/fs/cifs/cifspdu.h                          |   40 
 b/fs/cifs/cifsproto.h                        |    5 
 b/fs/cifs/cifssmb.c                          |   93 -
 b/fs/cifs/connect.c                          |    2 
 b/fs/cifs/dir.c                              |    7 
 b/fs/cifs/file.c                             |   15 
 b/fs/cifs/inode.c                            |   19 
 b/fs/cifs/link.c                             |   23 
 b/fs/cifs/netmisc.c                          |    6 
 b/fs/coda/coda_linux.c                       |    2 
 b/fs/coda/dir.c                              |    5 
 b/fs/coda/upcall.c                           |    4 
 b/fs/dcache.c                                |   23 
 b/fs/devfs/base.c                            |   23 
 b/fs/exec.c                                  |    4 
 b/fs/ext2/dir.c                              |   30 
 b/fs/ext2/ext2.h                             |    1 
 b/fs/ext2/ialloc.c                           |    4 
 b/fs/ext2/inode.c                            |   41 
 b/fs/ext2/namei.c                            |   17 
 b/fs/ext2/super.c                            |    2 
 b/fs/ext2/xattr.c                            |    2 
 b/fs/ext2/xattr.h                            |    2 
 b/fs/ext3/ialloc.c                           |    4 
 b/fs/ext3/namei.c                            |    7 
 b/fs/ext3/xattr.c                            |    2 
 b/fs/ext3/xattr.h                            |    2 
 b/fs/hpfs/hpfs_fn.h                          |    2 
 b/fs/hpfs/namei.c                            |    2 
 b/fs/hugetlbfs/inode.c                       |    6 
 b/fs/inode.c                                 |   25 
 b/fs/intermezzo/dcache.c                     |    2 
 b/fs/intermezzo/dir.c                        |    2 
 b/fs/intermezzo/journal.c                    |    8 
 b/fs/intermezzo/journal_ext2.c               |   10 
 b/fs/intermezzo/journal_tmpfs.c              |   14 
 b/fs/intermezzo/presto.c                     |    2 
 b/fs/intermezzo/vfs.c                        |    8 
 b/fs/jffs/inode-v23.c                        |    2 
 b/fs/jffs2/TODO                              |   12 
 b/fs/jffs2/background.c                      |   77 
 b/fs/jffs2/build.c                           |  146 -
 b/fs/jffs2/dir.c                             |  115 -
 b/fs/jffs2/erase.c                           |  277 +--
 b/fs/jffs2/file.c                            |  168 +
 b/fs/jffs2/fs.c                              |   61 
 b/fs/jffs2/gc.c                              |  297 ++-
 b/fs/jffs2/nodelist.c                        |  283 ++-
 b/fs/jffs2/nodelist.h                        |   83 
 b/fs/jffs2/nodemgmt.c                        |  199 +-
 b/fs/jffs2/os-linux.h                        |   12 
 b/fs/jffs2/read.c                            |   88 
 b/fs/jffs2/readinode.c                       |  356 ++-
 b/fs/jffs2/scan.c                            |  700 +++----
 b/fs/jffs2/super.c                           |    2 
 b/fs/jffs2/wbuf.c                            |  139 +
 b/fs/jffs2/write.c                           |  165 +
 b/fs/jffs2/writev.c                          |    4 
 b/fs/jfs/jfs_xattr.h                         |    6 
 b/fs/jfs/namei.c                             |    2 
 b/fs/jfs/xattr.c                             |    6 
 b/fs/libfs.c                                 |   15 
 b/fs/locks.c                                 |   21 
 b/fs/minix/namei.c                           |    2 
 b/fs/mpage.c                                 |   15 
 b/fs/namei.c                                 |    4 
 b/fs/ncpfs/dir.c                             |    8 
 b/fs/ncpfs/ncplib_kernel.h                   |    2 
 b/fs/nfs/dir.c                               |    7 
 b/fs/nfs/inode.c                             |  122 -
 b/fs/nfs/nfs2xdr.c                           |   22 
 b/fs/nfs/nfs3xdr.c                           |   26 
 b/fs/nfs/nfs4proc.c                          |   23 
 b/fs/nfs/nfs4xdr.c                           |  547 ++----
 b/fs/nfsd/nfs3xdr.c                          |   47 
 b/fs/nfsd/nfs4proc.c                         |   21 
 b/fs/nfsd/nfs4xdr.c                          |  273 ++-
 b/fs/nfsd/nfsxdr.c                           |    2 
 b/fs/nfsd/vfs.c                              |   10 
 b/fs/open.c                                  |    2 
 b/fs/partitions/check.c                      |    2 
 b/fs/proc/array.c                            |    5 
 b/fs/proc/base.c                             |   18 
 b/fs/proc/proc_misc.c                        |   10 
 b/fs/ramfs/inode.c                           |    7 
 b/fs/reiserfs/namei.c                        |    2 
 b/fs/smbfs/dir.c                             |    4 
 b/fs/smbfs/proto.h                           |    1 
 b/fs/smbfs/request.h                         |    3 
 b/fs/stat.c                                  |    4 
 b/fs/sysfs/inode.c                           |  127 -
 b/fs/sysv/namei.c                            |    2 
 b/fs/sysv/super.c                            |   24 
 b/fs/udf/file.c                              |    3 
 b/fs/udf/ialloc.c                            |    6 
 b/fs/udf/inode.c                             |   89 
 b/fs/udf/namei.c                             |    8 
 b/fs/udf/super.c                             |    9 
 b/fs/udf/udf_i.h                             |    3 
 b/fs/udf/udfdecl.h                           |    4 
 b/fs/udf/udftime.c                           |   14 
 b/fs/ufs/namei.c                             |    2 
 b/fs/umsdos/namei.c                          |    4 
 b/fs/xfs/linux/xfs_iops.c                    |    2 
 b/fs/xfs/xfs_iget.c                          |    4 
 b/fs/xfs/xfsidbg.c                           |    2 
 b/include/asm-alpha/hardirq.h                |    2 
 b/include/asm-alpha/module.h                 |   24 
 b/include/asm-alpha/suspend.h                |    6 
 b/include/asm-alpha/unistd.h                 |    8 
 b/include/asm-alpha/xor.h                    | 1574 ++++++++---------
 b/include/asm-arm/arch-adifcc/memory.h       |    4 
 b/include/asm-arm/arch-adifcc/vmalloc.h      |    3 
 b/include/asm-arm/arch-anakin/memory.h       |    4 
 b/include/asm-arm/arch-anakin/vmalloc.h      |    3 
 b/include/asm-arm/arch-cl7500/memory.h       |    4 
 b/include/asm-arm/arch-cl7500/vmalloc.h      |    4 
 b/include/asm-arm/arch-clps711x/memory.h     |    4 
 b/include/asm-arm/arch-clps711x/vmalloc.h    |    3 
 b/include/asm-arm/arch-ebsa110/memory.h      |    4 
 b/include/asm-arm/arch-ebsa110/vmalloc.h     |    3 
 b/include/asm-arm/arch-ebsa285/memory.h      |    6 
 b/include/asm-arm/arch-ebsa285/vmalloc.h     |    3 
 b/include/asm-arm/arch-epxa10db/memory.h     |    4 
 b/include/asm-arm/arch-epxa10db/vmalloc.h    |    3 
 b/include/asm-arm/arch-integrator/memory.h   |    4 
 b/include/asm-arm/arch-integrator/vmalloc.h  |    3 
 b/include/asm-arm/arch-iop310/memory.h       |    4 
 b/include/asm-arm/arch-iop310/vmalloc.h      |    3 
 b/include/asm-arm/arch-l7200/memory.h        |    4 
 b/include/asm-arm/arch-l7200/vmalloc.h       |    3 
 b/include/asm-arm/arch-nexuspci/memory.h     |    4 
 b/include/asm-arm/arch-nexuspci/vmalloc.h    |    3 
 b/include/asm-arm/arch-pxa/memory.h          |    4 
 b/include/asm-arm/arch-pxa/vmalloc.h         |    3 
 b/include/asm-arm/arch-rpc/memory.h          |    4 
 b/include/asm-arm/arch-rpc/vmalloc.h         |    3 
 b/include/asm-arm/arch-sa1100/memory.h       |    4 
 b/include/asm-arm/arch-sa1100/vmalloc.h      |    3 
 b/include/asm-arm/arch-shark/memory.h        |    4 
 b/include/asm-arm/arch-shark/vmalloc.h       |    2 
 b/include/asm-arm/arch-tbox/memory.h         |    4 
 b/include/asm-arm/arch-tbox/vmalloc.h        |    2 
 b/include/asm-arm/bitops.h                   |  184 +-
 b/include/asm-arm/cpu-multi32.h              |    4 
 b/include/asm-arm/cpu-single.h               |    4 
 b/include/asm-arm/module.h                   |   15 
 b/include/asm-arm/proc-armv/elf.h            |   14 
 b/include/asm-arm/proc-armv/pgtable.h        |    4 
 b/include/asm-i386/msr.h                     |    1 
 b/include/asm-i386/xor.h                     |    2 
 b/include/asm-ppc/atomic.h                   |   11 
 b/include/asm-ppc/hardirq.h                  |    2 
 b/include/asm-ppc/module.h                   |   37 
 b/include/asm-ppc/page.h                     |   13 
 b/include/asm-ppc/processor.h                |   60 
 b/include/asm-s390/debug.h                   |    2 
 b/include/asm-s390/ebcdic.h                  |    2 
 b/include/asm-s390/lowcore.h                 |    2 
 b/include/asm-s390/mman.h                    |    2 
 b/include/asm-s390/module.h                  |   21 
 b/include/asm-s390/pgtable.h                 |    2 
 b/include/asm-s390/poll.h                    |    1 
 b/include/asm-s390/setup.h                   |    6 
 b/include/asm-s390/smp.h                     |    2 
 b/include/asm-s390/tlbflush.h                |   12 
 b/include/asm-s390/types.h                   |    5 
 b/include/asm-s390/uaccess.h                 |   20 
 b/include/asm-s390/unistd.h                  |   28 
 b/include/asm-s390x/debug.h                  |    2 
 b/include/asm-s390x/ebcdic.h                 |    2 
 b/include/asm-s390x/mman.h                   |    2 
 b/include/asm-s390x/module.h                 |   21 
 b/include/asm-s390x/pgtable.h                |    2 
 b/include/asm-s390x/poll.h                   |    1 
 b/include/asm-s390x/setup.h                  |    6 
 b/include/asm-s390x/tlbflush.h               |   12 
 b/include/asm-s390x/uaccess.h                |   20 
 b/include/asm-s390x/unistd.h                 |   28 
 b/include/asm-sparc/system.h                 |   29 
 b/include/asm-sparc/unistd.h                 |    8 
 b/include/asm-sparc64/floppy.h               |   10 
 b/include/asm-sparc64/isa.h                  |   18 
 b/include/asm-sparc64/parport.h              |    6 
 b/include/asm-sparc64/unistd.h               |    8 
 b/include/linux/acpi.h                       |    6 
 b/include/linux/agp_backend.h                |    1 
 b/include/linux/backing-dev.h                |   12 
 b/include/linux/blkdev.h                     |    1 
 b/include/linux/buffer_head.h                |    3 
 b/include/linux/coda_psdev.h                 |   10 
 b/include/linux/cpufreq.h                    |   22 
 b/include/linux/crypto.h                     |   20 
 b/include/linux/dcache.h                     |    7 
 b/include/linux/device.h                     |   57 
 b/include/linux/elf.h                        |   35 
 b/include/linux/ext2_fs.h                    |    1 
 b/include/linux/fs.h                         |   23 
 b/include/linux/interrupt.h                  |    2 
 b/include/linux/jffs2.h                      |  103 -
 b/include/linux/jffs2_fs_i.h                 |    5 
 b/include/linux/jffs2_fs_sb.h                |    6 
 b/include/linux/kallsyms.h                   |  192 --
 b/include/linux/kobject.h                    |    4 
 b/include/linux/meye.h                       |    4 
 b/include/linux/mmzone.h                     |    3 
 b/include/linux/module.h                     |   80 
 b/include/linux/netfilter_bridge.h           |    7 
 b/include/linux/netlink.h                    |    4 
 b/include/linux/nfs_fs.h                     |   18 
 b/include/linux/nfs_xdr.h                    |   16 
 b/include/linux/nfsd/xdr4.h                  |   17 
 b/include/linux/page-flags.h                 |    5 
 b/include/linux/pagevec.h                    |    1 
 b/include/linux/pci.h                        |   21 
 b/include/linux/pci_ids.h                    |    1 
 b/include/linux/sched.h                      |   70 
 b/include/linux/sonypi.h                     |    8 
 b/include/linux/sunrpc/xdr.h                 |   87 
 b/include/linux/udf_fs_i.h                   |    5 
 b/include/linux/udf_fs_sb.h                  |    2 
 b/include/linux/umsdos_fs.p                  |    2 
 b/include/linux/umsdos_fs_i.h                |    6 
 b/include/math-emu/op-4.h                    |   90 
 b/include/net/sctp/command.h                 |    3 
 b/include/net/sctp/sctp.h                    |   81 
 b/include/net/sctp/sm.h                      |   11 
 b/include/net/sctp/structs.h                 |  218 +-
 b/include/net/xfrm.h                         |    1 
 b/include/pcmcia/mem_op.h                    |    1 
 b/include/scsi/scsi_ioctl.h                  |   20 
 b/include/sound/core.h                       |   10 
 b/init/initramfs.c                           |   16 
 b/ipc/shm.c                                  |   24 
 b/ipc/util.c                                 |    8 
 b/kernel/Makefile                            |    2 
 b/kernel/capability.c                        |   16 
 b/kernel/cpufreq.c                           |  106 -
 b/kernel/exit.c                              |    4 
 b/kernel/extable.c                           |   51 
 b/kernel/fork.c                              |   47 
 b/kernel/futex.c                             |   27 
 b/kernel/kallsyms.c                          |  295 ---
 b/kernel/ksyms.c                             |    2 
 b/kernel/module.c                            |  137 +
 b/kernel/sched.c                             |   30 
 b/kernel/signal.c                            |   30 
 b/lib/kobject.c                              |  154 +
 b/lib/radix-tree.c                           |    3 
 b/mm/page-writeback.c                        |   67 
 b/mm/page_alloc.c                            |   61 
 b/mm/page_io.c                               |   16 
 b/mm/shmem.c                                 |   15 
 b/mm/swap.c                                  |   29 
 b/mm/truncate.c                              |    1 
 b/mm/vmscan.c                                |   90 
 b/net/8021q/vlan.c                           |   18 
 b/net/8021q/vlan_dev.c                       |    6 
 b/net/Kconfig                                |   14 
 b/net/bridge/netfilter/ebtables.c            |    2 
 b/net/core/dev.c                             |    1 
 b/net/ipv4/ah.c                              |    3 
 b/net/ipv4/esp.c                             |    3 
 b/net/ipv4/xfrm_policy.c                     |   74 
 b/net/ipv4/xfrm_state.c                      |   16 
 b/net/ipv4/xfrm_user.c                       |   34 
 b/net/ipv6/ip6_input.c                       |    5 
 b/net/ipv6/ipv6_syms.c                       |    1 
 b/net/key/af_key.c                           |   46 
 b/net/llc/llc_main.c                         |    8 
 b/net/netlink/af_netlink.c                   |   16 
 b/net/netsyms.c                              |    2 
 b/net/sched/sch_gred.c                       |   16 
 b/net/sctp/associola.c                       |  191 --
 b/net/sctp/bind_addr.c                       |  247 --
 b/net/sctp/endpointola.c                     |   54 
 b/net/sctp/input.c                           |  136 -
 b/net/sctp/ipv6.c                            |  211 ++
 b/net/sctp/output.c                          |   20 
 b/net/sctp/outqueue.c                        |    6 
 b/net/sctp/primitive.c                       |   23 
 b/net/sctp/protocol.c                        |  274 ++-
 b/net/sctp/sm_make_chunk.c                   |  339 +--
 b/net/sctp/sm_sideeffect.c                   |  115 -
 b/net/sctp/sm_statefuns.c                    |  166 +
 b/net/sctp/sm_statetable.c                   |   24 
 b/net/sctp/socket.c                          |  535 ++++-
 b/net/sctp/transport.c                       |   24 
 b/net/socket.c                               |    9 
 b/net/sunrpc/svcsock.c                       |   75 
 b/scripts/Makefile.lib                       |    4 
 b/scripts/kallsyms                           |   40 
 b/scripts/per-cpu-check.awk                  |   19 
 b/security/capability.c                      |    4 
 b/security/dummy.c                           |   17 
 b/sound/isa/ad1816a/ad1816a_lib.c            |    6 
 b/sound/oss/cs4281/cs4281_wrapper-24.c       |    3 
 b/sound/oss/cs4281/cs4281m.c                 |   70 
 b/sound/oss/cs4281/cs4281pm-24.c             |    8 
 b/sound/oss/cs46xx.c                         |  143 +
 b/sound/oss/maestro.c                        |   20 
 b/sound/oss/maestro3.c                       |   72 
 b/sound/oss/rme96xx.c                        |   51 
 b/sound/oss/vidc.c                           |    1 
 b/sound/pci/cs46xx/cs46xx_lib.c              |    8 
 b/sound/pci/emu10k1/emu10k1_main.c           |    2 
 b/sound/pci/es1938.c                         |    4 
 b/sound/pci/fm801.c                          |    4 
 b/sound/pci/korg1212/korg1212.c              |   21 
 b/sound/pci/rme32.c                          |    5 
 b/sound/pci/rme96.c                          |    5 
 b/sound/pci/rme9652/hammerfall_mem.c         |    2 
 b/sound/pci/rme9652/hdsp.c                   |   26 
 b/sound/pci/rme9652/rme9652.c                |   21 
 b/sound/pci/sonicvibes.c                     |    5 
 b/sound/pci/trident/trident_main.c           |    5 
 b/sound/pci/ymfpci/ymfpci_main.c             |    6 
 b/sound/sparc/amd7930.c                      |    1 
 b/sound/sparc/cs4231.c                       |    1 
 drivers/char/acquirewdt.c                    |  251 --
 drivers/char/advantechwdt.c                  |  280 ---
 drivers/char/eurotechwdt.c                   |  505 -----
 drivers/char/i810-tco.c                      |  431 ----
 drivers/char/ib700wdt.c                      |  311 ---
 drivers/char/machzwd.c                       |  557 ------
 drivers/char/mixcomwd.c                      |  282 ---
 drivers/char/pcwd.c                          |  672 -------
 drivers/char/sbc60xxwdt.c                    |  354 ---
 drivers/char/scx200_wdt.c                    |  277 ---
 drivers/char/shwdt.c                         |  417 ----
 drivers/char/softdog.c                       |  196 --
 drivers/char/w83877f_wdt.c                   |  366 ----
 drivers/char/wdt.c                           |  565 ------
 drivers/char/wdt285.c                        |  193 --
 drivers/char/wdt977.c                        |  346 ---
 drivers/char/wdt_pci.c                       |  653 -------
 drivers/pci/compat.c                         |   37 
 drivers/s390/char/hwc.h                      |  280 ---
 drivers/s390/char/hwc_con.c                  |   92 -
 drivers/s390/char/hwc_cpi.c                  |  212 --
 drivers/s390/char/hwc_rw.c                   | 2456 ---------------------------
 drivers/s390/char/hwc_rw.h                   |  132 -
 drivers/s390/char/hwc_tty.c                  |  276 ---
 fs/devices.c                                 |  221 --
 920 files changed, 23955 insertions(+), 21744 deletions(-)

