From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.5.56 released
Date: Fri, 10 Jan 2003 12:23:03 -0800
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200301102023.h0AKN3L15427@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.5.56 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.5/patch-2.5.56.gz
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.5/linux-2.5.56.tar.gz

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               213460           1274023
Full source                       39301979         176281600

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/usb/scanner-hp-sane.txt          |   79 --
 b/Documentation/crypto/api-intro.txt           |    7 
 b/Documentation/filesystems/proc.txt           |   12 
 b/Documentation/networking/NAPI_HOWTO.txt      |   17 
 b/Documentation/serial/driver                  |   41 +
 b/Documentation/usb/scanner.txt                |  329 ++++-------
 b/Makefile                                     |    2 
 b/arch/i386/kernel/entry.S                     |   69 +-
 b/arch/i386/kernel/mpparse.c                   |    2 
 b/arch/i386/kernel/vm86.c                      |    6 
 b/arch/ppc/Kconfig                             |    2 
 b/arch/ppc/configs/redwood6_defconfig          |  547 ++++++++++++++++++
 b/arch/ppc/configs/sycamore_defconfig          |  528 ++++++++++++++++++
 b/arch/ppc/kernel/traps.c                      |   95 +--
 b/arch/ppc/platforms/4xx/Kconfig               |   17 
 b/arch/ppc/platforms/4xx/Makefile              |    1 
 b/arch/ppc/platforms/4xx/sycamore.c            |  293 ++++++++++
 b/arch/ppc/platforms/4xx/sycamore.h            |   71 ++
 b/arch/sparc/kernel/unaligned.c                |    3 
 b/arch/sparc/mm/extable.c                      |   70 --
 b/arch/sparc/mm/fault.c                        |    5 
 b/arch/sparc64/defconfig                       |   74 +-
 b/arch/sparc64/kernel/sys_sparc32.c            |    6 
 b/crypto/Kconfig                               |   25 
 b/crypto/Makefile                              |    1 
 b/crypto/aes.c                                 |  468 +++++++++++++++
 b/crypto/tcrypt.c                              |  110 +++
 b/crypto/tcrypt.h                              |   93 +++
 b/drivers/acpi/acpi_bus.h                      |   21 
 b/drivers/acpi/acpi_drivers.h                  |    4 
 b/drivers/acpi/battery.c                       |   24 
 b/drivers/acpi/bus.c                           |    6 
 b/drivers/acpi/button.c                        |   73 ++
 b/drivers/acpi/dispatcher/dsfield.c            |   76 +-
 b/drivers/acpi/dispatcher/dsinit.c             |   34 -
 b/drivers/acpi/dispatcher/dsmethod.c           |   60 +-
 b/drivers/acpi/dispatcher/dsmthdat.c           |   94 +--
 b/drivers/acpi/dispatcher/dsobject.c           |   86 +-
 b/drivers/acpi/dispatcher/dsopcode.c           |  134 ++--
 b/drivers/acpi/dispatcher/dsutils.c            |   64 +-
 b/drivers/acpi/dispatcher/dswexec.c            |   34 -
 b/drivers/acpi/dispatcher/dswload.c            |   60 +-
 b/drivers/acpi/dispatcher/dswscope.c           |   22 
 b/drivers/acpi/dispatcher/dswstate.c           |  140 ++--
 b/drivers/acpi/ec.c                            |   24 
 b/drivers/acpi/events/evevent.c                |   20 
 b/drivers/acpi/events/evgpe.c                  |   84 +-
 b/drivers/acpi/events/evmisc.c                 |   56 -
 b/drivers/acpi/events/evregion.c               |   86 +-
 b/drivers/acpi/events/evrgnini.c               |   92 +--
 b/drivers/acpi/events/evsci.c                  |   14 
 b/drivers/acpi/events/evxface.c                |   76 +-
 b/drivers/acpi/events/evxfevnt.c               |   40 -
 b/drivers/acpi/events/evxfregn.c               |   42 -
 b/drivers/acpi/executer/exconfig.c             |   72 +-
 b/drivers/acpi/executer/exconvrt.c             |   86 +-
 b/drivers/acpi/executer/excreate.c             |  100 +--
 b/drivers/acpi/executer/exdump.c               |   64 +-
 b/drivers/acpi/executer/exfield.c              |   38 -
 b/drivers/acpi/executer/exfldio.c              |  116 +--
 b/drivers/acpi/executer/exmisc.c               |   62 +-
 b/drivers/acpi/executer/exmutex.c              |   34 -
 b/drivers/acpi/executer/exnames.c              |   44 -
 b/drivers/acpi/executer/exoparg1.c             |   56 -
 b/drivers/acpi/executer/exoparg2.c             |   46 -
 b/drivers/acpi/executer/exoparg3.c             |   26 
 b/drivers/acpi/executer/exoparg6.c             |   20 
 b/drivers/acpi/executer/exprep.c               |   42 -
 b/drivers/acpi/executer/exregion.c             |  108 +--
 b/drivers/acpi/executer/exresnte.c             |   20 
 b/drivers/acpi/executer/exresolv.c             |   46 -
 b/drivers/acpi/executer/exresop.c              |   34 -
 b/drivers/acpi/executer/exstore.c              |   44 -
 b/drivers/acpi/executer/exstoren.c             |   24 
 b/drivers/acpi/executer/exstorob.c             |   18 
 b/drivers/acpi/executer/exsystem.c             |   44 -
 b/drivers/acpi/executer/exutils.c              |   46 -
 b/drivers/acpi/hardware/hwacpi.c               |   14 
 b/drivers/acpi/hardware/hwgpe.c                |   72 +-
 b/drivers/acpi/hardware/hwregs.c               |  106 +--
 b/drivers/acpi/hardware/hwsleep.c              |   32 -
 b/drivers/acpi/hardware/hwtimer.c              |   22 
 b/drivers/acpi/include/acconfig.h              |    4 
 b/drivers/acpi/include/acdebug.h               |  222 +++----
 b/drivers/acpi/include/acdispat.h              |  370 ++++++------
 b/drivers/acpi/include/acevents.h              |  102 +--
 b/drivers/acpi/include/acexcep.h               |    2 
 b/drivers/acpi/include/acglobal.h              |  212 +++----
 b/drivers/acpi/include/achware.h               |   62 +-
 b/drivers/acpi/include/acinterp.h              |  546 +++++++++---------
 b/drivers/acpi/include/aclocal.h               |  669 ++++++++++------------
 b/drivers/acpi/include/acmacros.h              |   16 
 b/drivers/acpi/include/acnamesp.h              |  324 +++++------
 b/drivers/acpi/include/acobject.h              |  415 ++++++--------
 b/drivers/acpi/include/acoutput.h              |    2 
 b/drivers/acpi/include/acparser.h              |  216 +++----
 b/drivers/acpi/include/acpi.h                  |    2 
 b/drivers/acpi/include/acpiosxf.h              |  168 +++--
 b/drivers/acpi/include/acpixf.h                |  258 ++++----
 b/drivers/acpi/include/acresrc.h               |  304 +++++-----
 b/drivers/acpi/include/acstruct.h              |  190 +++---
 b/drivers/acpi/include/actables.h              |  110 +--
 b/drivers/acpi/include/actbl.h                 |  150 ++---
 b/drivers/acpi/include/actbl1.h                |  134 ++--
 b/drivers/acpi/include/actbl2.h                |  195 +++---
 b/drivers/acpi/include/actbl71.h               |  140 ++--
 b/drivers/acpi/include/actypes.h               |  732 +++++++++++--------------
 b/drivers/acpi/include/acutils.h               |  532 +++++++++---------
 b/drivers/acpi/include/amlcode.h               |    2 
 b/drivers/acpi/include/amlresrc.h              |  381 ++++++-------
 b/drivers/acpi/include/platform/acenv.h        |    2 
 b/drivers/acpi/include/platform/acgcc.h        |    2 
 b/drivers/acpi/include/platform/aclinux.h      |    2 
 b/drivers/acpi/namespace/nsaccess.c            |   48 -
 b/drivers/acpi/namespace/nsalloc.c             |   74 +-
 b/drivers/acpi/namespace/nsdump.c              |   70 +-
 b/drivers/acpi/namespace/nsdumpdv.c            |   20 
 b/drivers/acpi/namespace/nseval.c              |   64 +-
 b/drivers/acpi/namespace/nsinit.c              |   48 -
 b/drivers/acpi/namespace/nsload.c              |   36 -
 b/drivers/acpi/namespace/nsnames.c             |   34 -
 b/drivers/acpi/namespace/nsobject.c            |   62 +-
 b/drivers/acpi/namespace/nsparse.c             |   18 
 b/drivers/acpi/namespace/nssearch.c            |   44 -
 b/drivers/acpi/namespace/nsutils.c             |  142 ++--
 b/drivers/acpi/namespace/nswalk.c              |   38 -
 b/drivers/acpi/namespace/nsxfeval.c            |  112 +--
 b/drivers/acpi/namespace/nsxfname.c            |   40 -
 b/drivers/acpi/namespace/nsxfobj.c             |   34 -
 b/drivers/acpi/osl.c                           |  171 +----
 b/drivers/acpi/parser/psargs.c                 |   76 +-
 b/drivers/acpi/parser/psopcode.c               |   12 
 b/drivers/acpi/parser/psparse.c                |   62 +-
 b/drivers/acpi/parser/psscope.c                |   38 -
 b/drivers/acpi/parser/pstree.c                 |   38 -
 b/drivers/acpi/parser/psutils.c                |   44 -
 b/drivers/acpi/parser/pswalk.c                 |   28 
 b/drivers/acpi/parser/psxface.c                |   18 
 b/drivers/acpi/pci_bind.c                      |   10 
 b/drivers/acpi/pci_irq.c                       |   22 
 b/drivers/acpi/pci_link.c                      |   28 
 b/drivers/acpi/pci_root.c                      |   28 
 b/drivers/acpi/power.c                         |    4 
 b/drivers/acpi/processor.c                     |   85 --
 b/drivers/acpi/resources/rsaddr.c              |  116 +--
 b/drivers/acpi/resources/rscalc.c              |  100 +--
 b/drivers/acpi/resources/rscreate.c            |   60 +-
 b/drivers/acpi/resources/rsdump.c              |   84 +-
 b/drivers/acpi/resources/rsio.c                |   96 +--
 b/drivers/acpi/resources/rsirq.c               |   78 +-
 b/drivers/acpi/resources/rslist.c              |   44 -
 b/drivers/acpi/resources/rsmemory.c            |   92 +--
 b/drivers/acpi/resources/rsmisc.c              |  104 +--
 b/drivers/acpi/resources/rsutils.c             |   36 -
 b/drivers/acpi/resources/rsxface.c             |   26 
 b/drivers/acpi/scan.c                          |   16 
 b/drivers/acpi/system.c                        |    4 
 b/drivers/acpi/tables/tbconvrt.c               |   56 -
 b/drivers/acpi/tables/tbget.c                  |   68 +-
 b/drivers/acpi/tables/tbgetall.c               |   30 -
 b/drivers/acpi/tables/tbinstal.c               |   56 -
 b/drivers/acpi/tables/tbrsdt.c                 |   34 -
 b/drivers/acpi/tables/tbutils.c                |   38 -
 b/drivers/acpi/tables/tbxface.c                |   48 -
 b/drivers/acpi/tables/tbxfroot.c               |   72 +-
 b/drivers/acpi/thermal.c                       |    4 
 b/drivers/acpi/toshiba_acpi.c                  |   12 
 b/drivers/acpi/utilities/utalloc.c             |  156 ++---
 b/drivers/acpi/utilities/utcopy.c              |  168 ++---
 b/drivers/acpi/utilities/utdebug.c             |   86 +-
 b/drivers/acpi/utilities/utdelete.c            |   42 -
 b/drivers/acpi/utilities/uteval.c              |   58 -
 b/drivers/acpi/utilities/utglobal.c            |  100 +--
 b/drivers/acpi/utilities/utinit.c              |    8 
 b/drivers/acpi/utilities/utmath.c              |   58 -
 b/drivers/acpi/utilities/utmisc.c              |  210 +++----
 b/drivers/acpi/utilities/utobject.c            |   84 +-
 b/drivers/acpi/utilities/utxface.c             |   30 -
 b/drivers/acpi/utils.c                         |   28 
 b/drivers/char/agp/amd-k7-agp.c                |    4 
 b/drivers/char/agp/sworks-agp.c                |    4 
 b/drivers/char/watchdog/Kconfig                |   20 
 b/drivers/char/watchdog/Makefile               |    5 
 b/drivers/char/watchdog/acquirewdt.c           |   96 +--
 b/drivers/char/watchdog/advantechwdt.c         |   80 +-
 b/drivers/char/watchdog/alim7101_wdt.c         |  345 +++++++++++
 b/drivers/char/watchdog/eurotechwdt.c          |  538 +++++++++---------
 b/drivers/char/watchdog/i810-tco.c             |    4 
 b/drivers/char/watchdog/ib700wdt.c             |   74 +-
 b/drivers/char/watchdog/indydog.c              |  182 ++++++
 b/drivers/char/watchdog/machzwd.c              |   17 
 b/drivers/char/watchdog/mixcomwd.c             |   27 
 b/drivers/char/watchdog/pcwd.c                 |  111 ++-
 b/drivers/char/watchdog/sbc60xxwdt.c           |    6 
 b/drivers/char/watchdog/sc1200wdt.c            |  479 ++++++++++++++++
 b/drivers/char/watchdog/sc520_wdt.c            |  394 +++++++++++++
 b/drivers/char/watchdog/shwdt.c                |   18 
 b/drivers/char/watchdog/softdog.c              |   21 
 b/drivers/char/watchdog/w83877f_wdt.c          |    6 
 b/drivers/char/watchdog/wafer5823wdt.c         |  262 ++++++++
 b/drivers/char/watchdog/wdt.c                  |   31 -
 b/drivers/char/watchdog/wdt977.c               |   18 
 b/drivers/char/watchdog/wdt_pci.c              |   18 
 b/drivers/hotplug/acpiphp_glue.c               |   46 -
 b/drivers/input/mouse/psmouse.c                |    2 
 b/drivers/scsi/aic7xxx/aic7xxx_osm.h           |    1 
 b/drivers/serial/21285.c                       |   55 +
 b/drivers/serial/8250.c                        |   60 +-
 b/drivers/serial/amba.c                        |   43 -
 b/drivers/serial/anakin.c                      |   33 -
 b/drivers/serial/clps711x.c                    |   45 -
 b/drivers/serial/core.c                        |  156 ++---
 b/drivers/serial/mux.c                         |   13 
 b/drivers/serial/nb85e_uart.c                  |   14 
 b/drivers/serial/sa1100.c                      |   69 +-
 b/drivers/serial/sunsab.c                      |   27 
 b/drivers/serial/sunsu.c                       |   36 -
 b/drivers/serial/sunzilog.c                    |  149 ++---
 b/drivers/serial/uart00.c                      |   46 +
 b/drivers/usb/class/usblp.c                    |    3 
 b/drivers/usb/core/hcd-pci.c                   |   16 
 b/drivers/usb/core/hcd.c                       |   34 -
 b/drivers/usb/core/hub.c                       |   70 +-
 b/drivers/usb/core/usb-debug.c                 |    2 
 b/drivers/usb/core/usb.c                       |   38 -
 b/drivers/usb/host/ehci-dbg.c                  |   32 -
 b/drivers/usb/host/ehci-hcd.c                  |   11 
 b/drivers/usb/host/ehci-q.c                    |   19 
 b/drivers/usb/host/ehci.h                      |    2 
 b/drivers/usb/host/ohci-dbg.c                  |   35 -
 b/drivers/usb/host/ohci-hcd.c                  |   10 
 b/drivers/usb/host/ohci-hub.c                  |    2 
 b/drivers/usb/host/ohci-mem.c                  |    2 
 b/drivers/usb/host/ohci-q.c                    |    4 
 b/drivers/usb/image/Kconfig                    |    4 
 b/drivers/usb/image/mdc800.c                   |    4 
 b/drivers/usb/image/scanner.c                  |  171 ++---
 b/drivers/usb/image/scanner.h                  |   24 
 b/drivers/usb/input/pid.c                      |   45 -
 b/drivers/usb/misc/Makefile                    |    6 
 b/drivers/usb/misc/atmsar.c                    |  177 ++----
 b/drivers/usb/misc/atmsar.h                    |   27 
 b/drivers/usb/misc/auerswald.c                 |    7 
 b/drivers/usb/misc/brlvger.c                   |   21 
 b/drivers/usb/misc/rio500.c                    |    5 
 b/drivers/usb/misc/speedtouch.c                |   80 +-
 b/drivers/usb/misc/usbtest.c                   |  306 ++++++++++
 b/drivers/usb/net/kaweth.c                     |    8 
 b/drivers/usb/net/pegasus.c                    |    5 
 b/drivers/usb/net/pegasus.h                    |    4 
 b/drivers/usb/net/rtl8150.c                    |    5 
 b/drivers/usb/net/usbnet.c                     |   22 
 b/drivers/usb/serial/bus.c                     |    9 
 b/drivers/usb/serial/empeg.c                   |   12 
 b/drivers/usb/serial/ezusb.c                   |    4 
 b/drivers/usb/serial/generic.c                 |    6 
 b/drivers/usb/serial/io_edgeport.c             |   38 -
 b/drivers/usb/serial/io_ti.c                   |   58 -
 b/drivers/usb/serial/ir-usb.c                  |   16 
 b/drivers/usb/serial/keyspan.c                 |    6 
 b/drivers/usb/serial/pl2303.c                  |   18 
 b/drivers/usb/serial/usb-serial.c              |   38 -
 b/drivers/usb/serial/usb-serial.h              |    2 
 b/drivers/usb/serial/visor.c                   |   48 -
 b/drivers/usb/serial/whiteheat.c               |    4 
 b/drivers/usb/storage/freecom.c                |    4 
 b/drivers/usb/storage/transport.c              |  307 ----------
 b/drivers/usb/storage/transport.h              |    1 
 b/drivers/usb/storage/unusual_devs.h           |   22 
 b/fs/exec.c                                    |   16 
 b/include/asm-alpha/mmu_context.h              |    2 
 b/include/asm-arm/mmu_context.h                |    2 
 b/include/asm-cris/mmu_context.h               |    2 
 b/include/asm-i386/mmu_context.h               |    3 
 b/include/asm-ia64/mmu_context.h               |    2 
 b/include/asm-m68k/mmu_context.h               |    2 
 b/include/asm-m68knommu/mmu_context.h          |    2 
 b/include/asm-mips/mmu_context.h               |    2 
 b/include/asm-mips64/mmu_context.h             |    2 
 b/include/asm-parisc/mmu_context.h             |    2 
 b/include/asm-ppc/mmu_context.h                |    2 
 b/include/asm-ppc64/mmu_context.h              |    2 
 b/include/asm-s390/mmu_context.h               |    2 
 b/include/asm-s390x/mmu_context.h              |    2 
 b/include/asm-sh/mmu_context.h                 |    2 
 b/include/asm-sparc/mmu_context.h              |    2 
 b/include/asm-sparc/uaccess.h                  |    2 
 b/include/asm-sparc64/mmu_context.h            |    2 
 b/include/asm-um/mmu_context.h                 |    2 
 b/include/asm-v850/mmu_context.h               |    1 
 b/include/asm-x86_64/mmu_context.h             |    2 
 b/include/linux/acpi.h                         |   28 
 b/include/linux/device.h                       |   12 
 b/include/linux/netfilter_ipv4/ip_nat_helper.h |    7 
 b/include/linux/pfkeyv2.h                      |   26 
 b/include/linux/sched.h                        |    2 
 b/include/linux/serial_core.h                  |   26 
 b/include/linux/watchdog.h                     |    1 
 b/include/net/tcp.h                            |    3 
 b/include/net/xfrm.h                           |   41 +
 b/kernel/exit.c                                |    2 
 b/kernel/fork.c                                |    8 
 b/kernel/kallsyms.c                            |    2 
 b/kernel/sched.c                               |    2 
 b/net/core/skbuff.c                            |    4 
 b/net/ipv4/Makefile                            |    2 
 b/net/ipv4/ah.c                                |  118 ++--
 b/net/ipv4/fib_hash.c                          |    6 
 b/net/ipv4/ip_fragment.c                       |    2 
 b/net/ipv4/ip_output.c                         |    4 
 b/net/ipv4/netfilter/ip_conntrack_core.c       |   29 
 b/net/ipv4/netfilter/ip_conntrack_ftp.c        |    6 
 b/net/ipv4/netfilter/ip_conntrack_proto_tcp.c  |    3 
 b/net/ipv4/netfilter/ip_nat_helper.c           |  175 ++++-
 b/net/ipv4/netfilter/ip_nat_standalone.c       |    1 
 b/net/ipv4/netfilter/ipt_ECN.c                 |    4 
 b/net/ipv4/netfilter/ipt_REJECT.c              |   16 
 b/net/ipv4/netfilter/ipt_ULOG.c                |    6 
 b/net/ipv4/netfilter/ipt_multiport.c           |    2 
 b/net/ipv4/route.c                             |    4 
 b/net/ipv4/tcp_input.c                         |   12 
 b/net/ipv4/tcp_ipv4.c                          |    4 
 b/net/ipv4/xfrm_algo.c                         |  350 +++++++++++
 b/net/ipv4/xfrm_policy.c                       |    2 
 b/net/ipv6/af_inet6.c                          |    2 
 b/net/key/af_key.c                             |  272 +++------
 b/net/netsyms.c                                |   10 
 b/net/unix/af_unix.c                           |    2 
 b/net/unix/garbage.c                           |    8 
 329 files changed, 13584 insertions(+), 9218 deletions(-)

