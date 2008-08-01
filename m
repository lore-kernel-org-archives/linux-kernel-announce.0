From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.26.1 released
Date: Fri, 1 Aug 2008 23:16:57 GMT
Message-ID: <200808012316.m71NGv9L025042@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.26.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.26.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.26.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                20090             69903
Full source                       49459141         289587200

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/networking/udplite.txt          |    2 
 Documentation/video4linux/cx18.txt            |   12 --
 Makefile                                      |    5 
 arch/ia64/kvm/kvm-ia64.c                      |    3 
 arch/powerpc/kvm/powerpc.c                    |    4 
 arch/powerpc/platforms/cell/cbe_cpufreq_pmi.c |    6 +
 arch/s390/kvm/kvm-s390.c                      |    4 
 arch/sparc64/kernel/irq.c                     |   10 +
 arch/sparc64/kernel/ldc.c                     |   38 +++---
 arch/sparc64/kernel/time.c                    |   15 +-
 arch/um/include/init.h                        |    8 +
 arch/x86/Kconfig.cpu                          |    2 
 arch/x86/kernel/acpi/sleep.c                  |   17 ++-
 arch/x86/kernel/i387.c                        |    4 
 arch/x86/kernel/ptrace.c                      |    4 
 arch/x86/kernel/reboot.c                      |    8 +
 arch/x86/kvm/mmu.c                            |   10 +
 arch/x86/kvm/svm.c                            |   34 ++++--
 arch/x86/kvm/vmx.c                            |    7 -
 arch/x86/kvm/x86.c                            |    5 
 arch/x86/kvm/x86_emulate.c                    |    2 
 arch/x86/mm/init_64.c                         |    2 
 drivers/acpi/processor_perflib.c              |   15 ++
 drivers/cpufreq/cpufreq.c                     |    3 
 drivers/dma/iop-adma.c                        |    2 
 drivers/ide/ide-cd.c                          |   27 ++++
 drivers/media/dvb/dvb-usb/dib0700_devices.c   |    7 +
 drivers/media/dvb/dvb-usb/dvb-usb-ids.h       |    1 
 drivers/media/video/Kconfig                   |    8 -
 drivers/media/video/cx18/cx18-firmware.c      |    2 
 drivers/media/video/cx23885/cx23885-core.c    |  142 ++++++++++++++++++++++++--
 drivers/media/video/saa7134/saa7134-cards.c   |    3 
 drivers/media/video/saa7134/saa7134-core.c    |    5 
 drivers/media/video/uvc/Kconfig               |   17 +++
 drivers/media/video/uvc/uvc_driver.c          |   12 ++
 drivers/media/video/uvc/uvc_status.c          |   19 ++-
 drivers/media/video/uvc/uvc_video.c           |  116 +++++++++++++--------
 drivers/media/video/uvc/uvcvideo.h            |    2 
 drivers/mmc/host/pxamci.c                     |    2 
 drivers/net/hamradio/hdlcdrv.c                |    1 
 drivers/net/ixgbe/ixgbe_main.c                |    2 
 drivers/net/myri10ge/myri10ge.c               |   30 ++---
 drivers/net/wireless/ath5k/base.c             |    5 
 drivers/net/wireless/b43legacy/main.c         |    2 
 drivers/rtc/rtc-at91rm9200.c                  |   16 +-
 drivers/spi/mpc52xx_psc_spi.c                 |   22 +---
 drivers/usb/serial/usb-serial.c               |    5 
 fs/dquot.c                                    |   16 ++
 fs/ecryptfs/crypto.c                          |   30 +++--
 fs/isofs/rock.c                               |   22 +++-
 fs/libfs.c                                    |    4 
 fs/proc/task_mmu.c                            |    2 
 include/asm-arm/bitops.h                      |    9 +
 include/asm-generic/vmlinux.lds.h             |    4 
 include/asm-sparc64/io.h                      |    1 
 include/asm-x86/signal.h                      |    4 
 include/linux/cpufreq.h                       |    1 
 include/linux/ipv6.h                          |    2 
 include/linux/kvm_host.h                      |    1 
 kernel/cpuset.c                               |    4 
 kernel/marker.c                               |   12 +-
 kernel/rcupreempt.c                           |    2 
 kernel/sys_ni.c                               |    1 
 mm/filemap.c                                  |    2 
 mm/shmem.c                                    |    3 
 net/ipv4/tcp_input.c                          |    3 
 net/ipv4/udp.c                                |    4 
 net/ipv6/ip6_fib.c                            |    4 
 scripts/Makefile.modpost                      |    1 
 scripts/mod/modpost.c                         |    3 
 sound/pci/trident/trident_main.c              |    5 
 virt/kvm/kvm_main.c                           |    3 
 72 files changed, 589 insertions(+), 222 deletions(-)

