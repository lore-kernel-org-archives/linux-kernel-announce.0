From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.24.3 released
Date: Tue, 26 Feb 2008 00:52:59 GMT
Message-ID: <200802260052.m1Q0qxQM014760@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.24.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.24.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.24.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                29440            110631
Full source                       46741533         272844800

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
 Makefile                                    |    4 -
 arch/powerpc/platforms/chrp/pci.c           |    4 -
 arch/powerpc/platforms/powermac/feature.c   |   11 ++-
 arch/s390/lib/uaccess_std.c                 |    8 +-
 arch/sparc/lib/rwsem.S                      |    2 
 arch/sparc64/lib/rwsem.S                    |    2 
 arch/x86/kernel/Makefile_32                 |    3 
 arch/x86/mm/pageattr_64.c                   |    2 
 drivers/acpi/blacklist.c                    |   23 +++---
 drivers/acpi/osl.c                          |   16 ++--
 drivers/base/firmware_class.c               |    3 
 drivers/char/drm/drm_stub.c                 |    1 
 drivers/char/drm/drm_vm.c                   |    2 
 drivers/char/mspec.c                        |    2 
 drivers/firmware/dmi_scan.c                 |    9 --
 drivers/macintosh/smu.c                     |   25 ++++++-
 drivers/media/video/cx23885/cx23885-cards.c |    4 +
 drivers/net/bonding/bond_main.c             |   16 ++--
 drivers/net/dl2k.h                          |    4 -
 drivers/net/forcedeth.c                     |   16 ++--
 drivers/net/pcmcia/smc91c92_cs.c            |   12 ++-
 drivers/net/sky2.c                          |   14 ++-
 drivers/net/wireless/b43/dma.c              |   28 +++++++
 drivers/net/wireless/b43/main.c             |   21 +++++
 drivers/net/wireless/b43/xmit.c             |   20 ++++-
 drivers/net/wireless/b43/xmit.h             |    2 
 drivers/net/wireless/b43legacy/dma.c        |   23 +++++-
 drivers/net/wireless/b43legacy/main.c       |    9 +-
 drivers/net/wireless/b43legacy/pio.c        |   21 +++++
 drivers/net/wireless/b43legacy/xmit.c       |   15 +++-
 drivers/net/wireless/b43legacy/xmit.h       |    2 
 drivers/pci/hotplug/fakephp.c               |   39 +++++++++-
 drivers/scsi/gdth.c                         |    9 ++
 drivers/scsi/sd.c                           |   34 ++++-----
 drivers/usb/class/usblp.c                   |    1 
 drivers/usb/core/driver.c                   |    4 -
 drivers/usb/core/hub.c                      |    2 
 drivers/usb/gadget/fsl_usb2_udc.c           |    2 
 drivers/usb/misc/usbtest.c                  |    1 
 drivers/usb/serial/cp2101.c                 |    6 +
 drivers/usb/serial/ftdi_sio.c               |   46 ++++++------
 drivers/usb/serial/ftdi_sio.h               |    4 +
 drivers/usb/serial/keyspan.c                |    2 
 drivers/usb/serial/kobil_sct.c              |    1 
 drivers/usb/serial/option.c                 |    1 
 drivers/usb/serial/pl2303.c                 |    4 -
 drivers/usb/serial/pl2303.h                 |   13 ++-
 drivers/usb/serial/sierra.c                 |   13 +++
 drivers/usb/storage/unusual_devs.h          |    8 ++
 fs/eventpoll.c                              |    2 
 fs/inotify_user.c                           |    2 
 fs/ncpfs/mmap.c                             |    4 -
 fs/nfs/write.c                              |   20 ++++-
 fs/splice.c                                 |   10 ++
 fs/xfs/linux-2.6/xfs_file.c                 |    3 
 include/asm-powerpc/pmac_feature.h          |    8 ++
 include/linux/Kbuild                        |    1 
 include/linux/dmi.h                         |    2 
 include/linux/hrtimer.h                     |    2 
 include/linux/hugetlb.h                     |    1 
 include/linux/ktime.h                       |    2 
 include/linux/wait.h                        |   16 ++++
 kernel/audit.c                              |   10 +-
 kernel/compat.c                             |   44 +++++++++++-
 kernel/futex.c                              |    2 
 kernel/futex_compat.c                       |    2 
 kernel/hrtimer.c                            |  100 ++++++++++++++++------------
 kernel/irq/chip.c                           |   20 +++++
 kernel/posix-timers.c                       |   25 ++-----
 kernel/relay.c                              |    1 
 kernel/sched_fair.c                         |    8 +-
 kernel/sysctl.c                             |    2 
 mm/filemap.c                                |    8 +-
 mm/fremap.c                                 |    5 +
 mm/hugetlb.c                                |   10 ++
 mm/memory.c                                 |    2 
 mm/mmap.c                                   |    2 
 mm/slab.c                                   |   46 ++++++------
 mm/slub.c                                   |    3 
 net/bluetooth/hci_sysfs.c                   |   48 ++++++++++---
 net/ipv4/fib_hash.c                         |   47 ++++++++-----
 net/ipv4/fib_trie.c                         |   57 ++++++++++-----
 net/ipv4/inet_diag.c                        |   11 +--
 net/ipv4/ip_output.c                        |    4 -
 net/ipv4/ipcomp.c                           |    5 +
 net/ipv4/sysctl_net_ipv4.c                  |    2 
 net/ipv4/xfrm4_tunnel.c                     |    2 
 net/ipv6/ip6_output.c                       |    4 -
 net/ipv6/ipcomp6.c                          |    5 +
 net/netfilter/nf_conntrack_proto_tcp.c      |   35 +++++++--
 net/sched/em_meta.c                         |   10 +-
 net/sched/ematch.c                          |    5 -
 scripts/mod/file2alias.c                    |    2 
 security/selinux/ss/services.c              |    4 -
 sound/oss/via82cxxx_audio.c                 |   14 +--
 sound/usb/usx2y/usX2Yhwdep.c                |    2 
 sound/usb/usx2y/usx2yhwdeppcm.c             |    2 
 98 files changed, 794 insertions(+), 344 deletions(-)

