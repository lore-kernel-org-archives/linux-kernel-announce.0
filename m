From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.18.1 released
Date: Sat, 14 Oct 2006 06:08:57 GMT
Message-ID: <200610140608.k9E68vBV007011@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.18.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.18.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.18.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                55808            256955
Full source                       41861968         240168960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 b/Documentation/dontdiff                             |    1 
 b/Documentation/sysctl/vm.txt                        |   27 
 b/Makefile                                           |   13 
 b/arch/i386/kernel/smpboot.c                         |    6 
 b/arch/i386/mm/boot_ioremap.c                        |    7 
 b/arch/ia64/kernel/acpi.c                            |   13 
 b/arch/ia64/kernel/numa.c                            |   34 
 b/arch/ia64/kernel/topology.c                        |    4 
 b/arch/s390/lib/uaccess.S                            |   12 
 b/arch/s390/lib/uaccess64.S                          |   12 
 b/arch/sh/kernel/process.c                           |    1 
 b/arch/sparc64/kernel/time.c                         |    2 
 b/arch/sparc64/mm/init.c                             |    3 
 b/arch/um/Kconfig                                    |    5 
 b/arch/um/Makefile-x86_64                            |    2 
 b/arch/um/include/common-offsets.h                   |    1 
 b/arch/um/include/sysdep-i386/kernel-offsets.h       |    1 
 b/arch/um/include/sysdep-x86_64/kernel-offsets.h     |    1 
 b/arch/um/os-Linux/process.c                         |    4 
 b/arch/um/os-Linux/sys-i386/tls.c                    |    4 
 b/arch/um/os-Linux/tls.c                             |    7 
 b/arch/x86_64/kernel/pci-calgary.c                   |   13 
 b/block/elevator.c                                   |    4 
 b/drivers/char/rtc.c                                 |    5 
 b/drivers/clocksource/scx200_hrt.c                   |    4 
 b/drivers/cpufreq/cpufreq_stats.c                    |    2 
 b/drivers/ide/pci/generic.c                          |   10 
 b/drivers/ide/ppc/pmac.c                             |    2 
 b/drivers/infiniband/hw/mthca/mthca_mad.c            |    2 
 b/drivers/md/md.c                                    |    1 
 b/drivers/media/dvb/frontends/cx24123.c              |    4 
 b/drivers/media/video/msp3400-driver.c               |    2 
 b/drivers/media/video/msp3400-driver.h               |    1 
 b/drivers/media/video/msp3400-kthreads.c             |    5 
 b/drivers/media/video/pvrusb2/Kconfig                |    9 
 b/drivers/media/video/pvrusb2/pvrusb2-ctrl.c         |   21 
 b/drivers/media/video/pvrusb2/pvrusb2-hdw-internal.h |    2 
 b/drivers/media/video/pvrusb2/pvrusb2-hdw.c          |   30 
 b/drivers/media/video/pvrusb2/pvrusb2-v4l2.c         |   95 -
 b/drivers/media/video/videodev.c                     |    6 
 b/drivers/net/lp486e.c                               |    6 
 b/drivers/net/mv643xx_eth.c                          |    2 
 b/drivers/net/sky2.c                                 |    8 
 b/drivers/net/sky2.h                                 |    2 
 b/drivers/net/wireless/bcm43xx/bcm43xx.h             |  181 +--
 b/drivers/net/wireless/bcm43xx/bcm43xx_debugfs.c     |   80 +
 b/drivers/net/wireless/bcm43xx/bcm43xx_debugfs.h     |    1 
 b/drivers/net/wireless/bcm43xx/bcm43xx_dma.c         |  583 ++++++++----
 b/drivers/net/wireless/bcm43xx/bcm43xx_dma.h         |  296 ++++--
 b/drivers/net/wireless/bcm43xx/bcm43xx_leds.c        |   10 
 b/drivers/net/wireless/bcm43xx/bcm43xx_main.c        |  905 +++++++++++--------
 b/drivers/net/wireless/bcm43xx/bcm43xx_main.h        |    6 
 b/drivers/net/wireless/bcm43xx/bcm43xx_phy.c         |   48 -
 b/drivers/net/wireless/bcm43xx/bcm43xx_pio.c         |    4 
 b/drivers/net/wireless/bcm43xx/bcm43xx_sysfs.c       |   46 
 b/drivers/net/wireless/bcm43xx/bcm43xx_wx.c          |  121 +-
 b/drivers/net/wireless/zd1211rw/zd_chip.c            |    2 
 b/drivers/rtc/rtc-pcf8563.c                          |    4 
 b/drivers/scsi/sata_mv.c                             |    1 
 b/drivers/usb/gadget/ether.c                         |    4 
 b/drivers/video/fbmem.c                              |    3 
 b/drivers/video/fbsysfs.c                            |   12 
 b/fs/buffer.c                                        |    5 
 b/fs/jbd/commit.c                                    |  182 ++-
 b/fs/sysfs/file.c                                    |    5 
 b/include/Kbuild                                     |   11 
 b/include/asm-alpha/Kbuild                           |   10 
 b/include/asm-arm/elf.h                              |   18 
 b/include/asm-arm/page.h                             |    4 
 b/include/asm-cris/Kbuild                            |    4 
 b/include/asm-cris/arch-v10/Kbuild                   |    2 
 b/include/asm-cris/arch-v32/Kbuild                   |    2 
 b/include/asm-cris/byteorder.h                       |    3 
 b/include/asm-cris/elf.h                             |    8 
 b/include/asm-cris/page.h                            |    8 
 b/include/asm-cris/posix_types.h                     |    9 
 b/include/asm-cris/unistd.h                          |    4 
 b/include/asm-generic/Kbuild                         |   15 
 b/include/asm-generic/Kbuild.asm                     |   38 
 b/include/asm-h8300/page.h                           |    7 
 b/include/asm-i386/Kbuild                            |    9 
 b/include/asm-ia64/Kbuild                            |   18 
 b/include/asm-ia64/numa.h                            |    6 
 b/include/asm-m32r/page.h                            |    3 
 b/include/asm-m32r/ptrace.h                          |    4 
 b/include/asm-m32r/signal.h                          |    1 
 b/include/asm-m32r/unistd.h                          |    4 
 b/include/asm-m32r/user.h                            |    1 
 b/include/asm-m68knommu/page.h                       |    7 
 b/include/asm-powerpc/Kbuild                         |   45 
 b/include/asm-powerpc/ptrace.h                       |    4 
 b/include/asm-s390/Kbuild                            |   11 
 b/include/asm-sh/page.h                              |    3 
 b/include/asm-sh/ptrace.h                            |    2 
 b/include/asm-sh64/page.h                            |    3 
 b/include/asm-sh64/shmparam.h                        |   16 
 b/include/asm-sh64/signal.h                          |    1 
 b/include/asm-sh64/user.h                            |    1 
 b/include/asm-sparc/Kbuild                           |   17 
 b/include/asm-sparc/page.h                           |    8 
 b/include/asm-sparc64/Kbuild                         |   24 
 b/include/asm-sparc64/page.h                         |    9 
 b/include/asm-sparc64/shmparam.h                     |    2 
 b/include/asm-v850/page.h                            |    7 
 b/include/asm-v850/param.h                           |    4 
 b/include/asm-x86_64/Kbuild                          |   18 
 b/include/linux/Kbuild                               |  400 +++++++-
 b/include/linux/byteorder/Kbuild                     |    9 
 b/include/linux/dvb/Kbuild                           |   11 
 b/include/linux/mmzone.h                             |    3 
 b/include/linux/netfilter/Kbuild                     |   47 
 b/include/linux/netfilter_arp/Kbuild                 |    5 
 b/include/linux/netfilter_bridge/Kbuild              |   21 
 b/include/linux/netfilter_ipv4/Kbuild                |   82 +
 b/include/linux/netfilter_ipv6/Kbuild                |   27 
 b/include/linux/nfsd/Kbuild                          |    9 
 b/include/linux/raid/Kbuild                          |    3 
 b/include/linux/scx200.h                             |    2 
 b/include/linux/stddef.h                             |    2 
 b/include/linux/sunrpc/Kbuild                        |    2 
 b/include/linux/swap.h                               |    1 
 b/include/linux/sysctl.h                             |    1 
 b/include/linux/tc_act/Kbuild                        |    5 
 b/include/linux/tc_ematch/Kbuild                     |    5 
 b/include/mtd/Kbuild                                 |    8 
 b/include/rdma/Kbuild                                |    2 
 b/include/scsi/Kbuild                                |    4 
 b/include/sound/Kbuild                               |   12 
 b/include/video/Kbuild                               |    2 
 b/init/Kconfig                                       |    1 
 b/kernel/module.c                                    |    6 
 b/kernel/sched.c                                     |   54 -
 b/kernel/sysctl.c                                    |   11 
 b/mm/page_alloc.c                                    |   21 
 b/mm/truncate.c                                      |   34 
 b/mm/vmscan.c                                        |   58 -
 b/net/core/dev.c                                     |   14 
 b/net/ipv4/netfilter/ip_nat_standalone.c             |   11 
 b/net/ipv4/tcp_input.c                               |   16 
 b/net/ipv6/ipv6_sockglue.c                           |    3 
 b/net/ipv6/tcp_ipv6.c                                |    2 
 b/net/sched/cls_api.c                                |    4 
 b/net/sched/cls_basic.c                              |    2 
 b/net/sched/sch_api.c                                |   16 
 b/net/sched/sch_generic.c                            |   66 -
 b/sound/core/control.c                               |    1 
 include/asm-arm26/Kbuild                             |    1 
 include/asm-um/Kbuild                                |    1 
 148 files changed, 2816 insertions(+), 1435 deletions(-)

