From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.24.4 released
Date: Mon, 24 Mar 2008 19:23:38 GMT
Message-ID: <200803241923.m2OJNcGq003102@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.24.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.24.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.24.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                56627            221840
Full source                       46735974         272844800

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/video4linux/CARDLIST.cx23885  |    2 
 Makefile                                    |    4 
 arch/arm/mach-pxa/clock.c                   |   23 +-
 arch/mips/kernel/i8259.c                    |    4 
 arch/mips/kernel/irq.c                      |    5 
 arch/powerpc/platforms/chrp/pci.c           |    4 
 arch/powerpc/platforms/powermac/feature.c   |   11 +
 arch/s390/lib/uaccess_pt.c                  |    2 
 arch/s390/lib/uaccess_std.c                 |    8 
 arch/sparc/kernel/Makefile                  |    5 
 arch/sparc/kernel/una_asm.S                 |  153 +++++++++++++++++
 arch/sparc/kernel/unaligned.c               |  252 +++++-----------------------
 arch/sparc/lib/rwsem.S                      |    2 
 arch/sparc64/lib/rwsem.S                    |    2 
 arch/sparc64/mm/fault.c                     |   14 -
 arch/x86/ia32/ia32_signal.c                 |    4 
 arch/x86/kernel/Makefile_32                 |    3 
 arch/x86/kernel/apic_32.c                   |    2 
 arch/x86/kernel/apic_64.c                   |    2 
 arch/x86/kernel/io_apic_32.c                |    4 
 arch/x86/kernel/io_apic_64.c                |    6 
 arch/x86/kernel/process_64.c                |    3 
 arch/x86/kernel/signal_32.c                 |    4 
 arch/x86/kernel/signal_64.c                 |    2 
 arch/x86/kernel/smpboot_32.c                |    2 
 arch/x86/kernel/smpboot_64.c                |    2 
 arch/x86/mm/pageattr_64.c                   |    2 
 arch/x86/pci/mmconfig-shared.c              |   35 ---
 arch/x86/pci/mmconfig_32.c                  |   22 +-
 arch/x86/pci/mmconfig_64.c                  |   22 +-
 arch/x86/pci/pci.h                          |    7 
 crypto/async_tx/async_xor.c                 |    2 
 crypto/xcbc.c                               |    6 
 crypto/xts.c                                |   13 -
 drivers/acorn/char/defkeymap-l7200.c        |   68 +++----
 drivers/acpi/blacklist.c                    |   23 +-
 drivers/acpi/osl.c                          |   16 -
 drivers/ata/pata_hpt366.c                   |    6 
 drivers/ata/pata_hpt37x.c                   |    6 
 drivers/ata/pata_serverworks.c              |    2 
 drivers/base/firmware_class.c               |    3 
 drivers/base/platform.c                     |    2 
 drivers/block/ub.c                          |    2 
 drivers/char/defkeymap.c_shipped            |   68 +++----
 drivers/char/drm/drm_stub.c                 |    1 
 drivers/char/drm/drm_vm.c                   |    2 
 drivers/char/mspec.c                        |    2 
 drivers/char/vt.c                           |    1 
 drivers/dma/ioat_dma.c                      |    2 
 drivers/firmware/dmi_scan.c                 |    9 -
 drivers/macintosh/smu.c                     |   25 ++
 drivers/media/video/cx23885/cx23885-cards.c |    4 
 drivers/message/fusion/mptsas.c             |    5 
 drivers/net/bonding/bond_main.c             |   16 +
 drivers/net/dl2k.h                          |    4 
 drivers/net/e1000e/netdev.c                 |    6 
 drivers/net/forcedeth.c                     |   16 -
 drivers/net/macb.c                          |    2 
 drivers/net/niu.c                           |   20 +-
 drivers/net/niu.h                           |    2 
 drivers/net/pcmcia/smc91c92_cs.c            |   12 +
 drivers/net/sky2.c                          |   14 +
 drivers/net/wireless/b43/dma.c              |   60 +++++-
 drivers/net/wireless/b43/main.c             |   24 ++
 drivers/net/wireless/b43/xmit.c             |   20 +-
 drivers/net/wireless/b43/xmit.h             |    2 
 drivers/net/wireless/b43legacy/dma.c        |   23 ++
 drivers/net/wireless/b43legacy/main.c       |    9 -
 drivers/net/wireless/b43legacy/pio.c        |   21 ++
 drivers/net/wireless/b43legacy/xmit.c       |   15 +
 drivers/net/wireless/b43legacy/xmit.h       |    2 
 drivers/pci/hotplug/fakephp.c               |   39 +++-
 drivers/s390/char/defkeymap.c               |    4 
 drivers/scsi/advansys.c                     |   15 +
 drivers/scsi/aic94xx/aic94xx_scb.c          |   14 +
 drivers/scsi/arcmsr/arcmsr_hba.c            |   20 +-
 drivers/scsi/gdth.c                         |  121 +++++--------
 drivers/scsi/gdth.h                         |    1 
 drivers/scsi/gdth_proc.c                    |    6 
 drivers/scsi/ips.c                          |   20 +-
 drivers/scsi/scsi_lib.c                     |    1 
 drivers/scsi/sd.c                           |   34 +--
 drivers/spi/atmel_spi.c                     |   10 +
 drivers/spi/pxa2xx_spi.c                    |   41 +++-
 drivers/usb/class/usblp.c                   |    1 
 drivers/usb/core/driver.c                   |    4 
 drivers/usb/core/hub.c                      |    2 
 drivers/usb/gadget/fsl_usb2_udc.c           |    2 
 drivers/usb/host/ehci-q.c                   |    2 
 drivers/usb/misc/usbtest.c                  |    1 
 drivers/usb/serial/cp2101.c                 |    6 
 drivers/usb/serial/ftdi_sio.c               |   71 +++++--
 drivers/usb/serial/ftdi_sio.h               |   11 +
 drivers/usb/serial/keyspan.c                |    2 
 drivers/usb/serial/kobil_sct.c              |    1 
 drivers/usb/serial/option.c                 |    1 
 drivers/usb/serial/pl2303.c                 |    4 
 drivers/usb/serial/pl2303.h                 |   13 +
 drivers/usb/serial/sierra.c                 |   13 +
 drivers/usb/storage/protocol.c              |    5 
 drivers/usb/storage/unusual_devs.h          |    8 
 fs/aio.c                                    |    8 
 fs/ecryptfs/mmap.c                          |  102 ++++++++---
 fs/eventpoll.c                              |    2 
 fs/fuse/dir.c                               |    2 
 fs/inotify_user.c                           |    2 
 fs/isofs/compress.c                         |   11 +
 fs/jbd/recovery.c                           |    2 
 fs/jbd2/recovery.c                          |    2 
 fs/ncpfs/mmap.c                             |    4 
 fs/nfs/write.c                              |   20 +-
 fs/nfsd/nfsfh.c                             |    4 
 fs/splice.c                                 |   10 +
 fs/ufs/util.h                               |    2 
 fs/xfs/linux-2.6/xfs_file.c                 |    3 
 include/asm-arm/arch-pxa/pxa-regs.h         |    1 
 include/asm-powerpc/pmac_feature.h          |    8 
 include/asm-x86/apic_32.h                   |    2 
 include/asm-x86/futex_32.h                  |    6 
 include/asm-x86/futex_64.h                  |    6 
 include/asm-x86/io_apic_64.h                |    2 
 include/asm-x86/processor_32.h              |    5 
 include/linux/dmi.h                         |    2 
 include/linux/futex.h                       |    1 
 include/linux/hrtimer.h                     |    2 
 include/linux/hugetlb.h                     |    1 
 include/linux/irq.h                         |    3 
 include/linux/ktime.h                       |    2 
 include/linux/moduleparam.h                 |   12 +
 include/linux/wait.h                        |   16 +
 include/net/inet_sock.h                     |    3 
 kernel/audit.c                              |   10 -
 kernel/compat.c                             |   44 ++++
 kernel/futex.c                              |   52 ++++-
 kernel/futex_compat.c                       |   11 +
 kernel/hrtimer.c                            |  100 ++++++-----
 kernel/irq/chip.c                           |   56 ++++++
 kernel/posix-timers.c                       |   25 --
 kernel/relay.c                              |    6 
 kernel/sched.c                              |   36 +---
 kernel/sched_fair.c                         |    8 
 kernel/sysctl.c                             |    4 
 mm/filemap.c                                |   26 +-
 mm/fremap.c                                 |    5 
 mm/hugetlb.c                                |   12 +
 mm/memory.c                                 |    2 
 mm/mmap.c                                   |    2 
 mm/slab.c                                   |   51 ++---
 mm/slub.c                                   |    3 
 net/bluetooth/hci_sysfs.c                   |   52 ++++-
 net/bridge/netfilter/ebt_dnat.c             |    4 
 net/bridge/netfilter/ebt_redirect.c         |    4 
 net/bridge/netfilter/ebt_snat.c             |    4 
 net/core/dev.c                              |    6 
 net/ipv4/fib_hash.c                         |   47 +++--
 net/ipv4/fib_trie.c                         |   57 ++++--
 net/ipv4/inet_diag.c                        |   11 -
 net/ipv4/ip_output.c                        |    4 
 net/ipv4/ip_sockglue.c                      |    5 
 net/ipv4/ipcomp.c                           |   10 -
 net/ipv4/ipconfig.c                         |    4 
 net/ipv4/netfilter/arpt_mangle.c            |    2 
 net/ipv4/netfilter/ip_queue.c               |   12 -
 net/ipv4/sysctl_net_ipv4.c                  |    2 
 net/ipv4/xfrm4_tunnel.c                     |    2 
 net/ipv6/ip6_output.c                       |   10 -
 net/ipv6/ip6_tunnel.c                       |    1 
 net/ipv6/ipcomp6.c                          |    7 
 net/ipv6/netfilter/ip6_queue.c              |   10 -
 net/ipv6/xfrm6_output.c                     |    2 
 net/netfilter/nf_conntrack_proto_tcp.c      |   35 +++
 net/netfilter/nfnetlink_log.c               |    2 
 net/netfilter/nfnetlink_queue.c             |   12 -
 net/netfilter/xt_time.c                     |    7 
 net/sched/em_meta.c                         |   10 -
 net/sched/ematch.c                          |    5 
 scripts/mod/file2alias.c                    |    2 
 security/commoncap.c                        |    2 
 security/selinux/ss/services.c              |    4 
 sound/oss/via82cxxx_audio.c                 |   14 -
 sound/usb/usx2y/usX2Yhwdep.c                |    2 
 sound/usb/usx2y/usx2yhwdeppcm.c             |    2 
 182 files changed, 1665 insertions(+), 1009 deletions(-)

