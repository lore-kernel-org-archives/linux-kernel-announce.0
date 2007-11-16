From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.23.8 released
Date: Fri, 16 Nov 2007 18:37:09 GMT
Message-ID: <200711161837.lAGIb9HM025857@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.23.8 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.23.8.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.23.8.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                52372            188895
Full source                       45480538         264724480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/ja_JP/HOWTO                   |   84 ++++++++--------
 Makefile                                    |    2 
 arch/i386/boot/boot.h                       |    8 -
 arch/i386/boot/header.S                     |   62 ++++++++----
 arch/i386/boot/video-bios.c                 |    2 
 arch/i386/boot/video-vesa.c                 |    2 
 arch/i386/boot/video.c                      |    2 
 arch/i386/kernel/tsc.c                      |    5 
 arch/i386/xen/enlighten.c                   |   57 +++++++----
 arch/i386/xen/mmu.c                         |   29 +++++
 arch/i386/xen/multicalls.c                  |   29 +++++
 arch/i386/xen/multicalls.h                  |    3 
 arch/i386/xen/xen-ops.h                     |    1 
 arch/mips/mm/c-r4k.c                        |   21 +++-
 arch/powerpc/math-emu/math.c                |   13 +-
 arch/powerpc/platforms/cell/axon_msi.c      |    4 
 arch/sparc64/kernel/sys_sparc.c             |    2 
 arch/sparc64/lib/xor.S                      |   12 +-
 arch/um/Makefile                            |    3 
 arch/um/include/common-offsets.h            |    1 
 arch/um/include/sysdep-i386/stub.h          |    3 
 arch/um/kernel/skas/clone.c                 |    1 
 arch/um/os-Linux/main.c                     |    1 
 arch/um/os-Linux/skas/mem.c                 |    1 
 arch/um/os-Linux/skas/process.c             |    2 
 arch/um/os-Linux/start_up.c                 |    1 
 arch/um/os-Linux/tt.c                       |    1 
 arch/um/os-Linux/util.c                     |   38 +++++++
 arch/um/sys-i386/user-offsets.c             |    6 -
 arch/um/sys-x86_64/user-offsets.c           |    9 -
 arch/x86_64/mm/init.c                       |    6 -
 arch/x86_64/mm/pageattr.c                   |    9 +
 block/ll_rw_blk.c                           |    8 -
 drivers/acpi/sleep/main.c                   |    5 
 drivers/ata/ahci.c                          |  143 ++++++++++++++++++++++++++++
 drivers/ata/libata-core.c                   |    9 +
 drivers/ata/libata-eh.c                     |   32 ++++--
 drivers/ata/sata_mv.c                       |   27 +++--
 drivers/char/drm/i915_irq.c                 |    2 
 drivers/char/drm/radeon_cp.c                |    5 
 drivers/char/drm/radeon_drv.h               |    1 
 drivers/char/moxa.c                         |    4 
 drivers/char/rocket.c                       |   14 +-
 drivers/hwmon/lm87.c                        |    4 
 drivers/hwmon/w83627hf.c                    |   78 ++++++++-------
 drivers/ide/pci/cs5535.c                    |    2 
 drivers/ide/pci/serverworks.c               |    1 
 drivers/ide/pci/siimage.c                   |    2 
 drivers/infiniband/core/uverbs_cmd.c        |    8 +
 drivers/infiniband/hw/mthca/mthca_cmd.c     |    6 +
 drivers/isdn/hardware/avm/b1.c              |   28 ++---
 drivers/isdn/hardware/avm/c4.c              |   14 ++
 drivers/md/bitmap.c                         |    2 
 drivers/md/dm-delay.c                       |    2 
 drivers/md/dm.c                             |    4 
 drivers/md/raid5.c                          |   17 ++-
 drivers/net/ehea/ehea_qmr.c                 |   20 +--
 drivers/net/ehea/ehea_qmr.h                 |    2 
 drivers/net/forcedeth.c                     |   35 +++++-
 drivers/net/pppol2tp.c                      |   25 +++-
 drivers/net/skge.c                          |   90 +++++++++--------
 drivers/net/skge.h                          |    6 -
 drivers/net/sky2.c                          |   87 +++++++++++++----
 drivers/net/tg3.c                           |   10 +
 drivers/net/wireless/ipw2100.c              |   39 +++++++
 drivers/net/wireless/ipw2100.h              |    4 
 drivers/net/wireless/libertas/11d.c         |    2 
 drivers/net/wireless/libertas/cmd.c         |    6 -
 drivers/net/wireless/libertas/wext.c        |    8 -
 drivers/net/wireless/rtl8187_dev.c          |   31 +++---
 drivers/net/wireless/zd1201.c               |    4 
 drivers/net/wireless/zd1211rw/zd_usb.c      |    7 -
 drivers/pci/msi.c                           |    2 
 drivers/scsi/hptiop.c                       |    5 
 drivers/usb/core/hcd.h                      |    8 +
 drivers/usb/core/hub.c                      |   15 ++
 drivers/usb/core/quirks.c                   |   81 ---------------
 drivers/usb/core/urb.c                      |    2 
 drivers/usb/gadget/ether.c                  |   12 ++
 drivers/usb/host/ehci-hcd.c                 |    8 +
 drivers/usb/serial/generic.c                |    7 -
 drivers/video/platinumfb.c                  |   48 +++++----
 fs/locks.c                                  |   11 ++
 fs/minix/itree_v1.c                         |    9 +
 fs/minix/itree_v2.c                         |    9 +
 fs/nfs/write.c                              |   17 ++-
 fs/ocfs2/aops.c                             |   22 ++++
 fs/proc/array.c                             |    6 -
 fs/splice.c                                 |    2 
 fs/xfs/linux-2.6/xfs_buf.c                  |   13 ++
 include/asm-mips/hazards.h                  |   54 ++++++++++
 include/linux/blkdev.h                      |    2 
 include/linux/bootmem.h                     |    1 
 include/linux/ide.h                         |    7 +
 include/linux/libata.h                      |    2 
 include/linux/netlink.h                     |    2 
 include/linux/pci_ids.h                     |    4 
 include/linux/sched.h                       |    1 
 include/linux/skbuff.h                      |    3 
 include/linux/usb/quirks.h                  |    7 -
 include/net/9p/9p.h                         |   12 ++
 include/net/sock.h                          |   10 +
 include/xen/interface/vcpu.h                |    5 
 ipc/mqueue.c                                |    6 -
 kernel/exit.c                               |    3 
 kernel/fork.c                               |    2 
 kernel/futex_compat.c                       |   27 +++--
 kernel/lockdep.c                            |   10 -
 kernel/params.c                             |    9 +
 kernel/softlockup.c                         |    7 -
 mm/filemap.c                                |   13 --
 mm/page-writeback.c                         |    4 
 mm/shmem.c                                  |   15 ++
 mm/slub.c                                   |   22 ----
 mm/sparse.c                                 |   11 --
 net/8021q/vlan.c                            |    5 
 net/ieee80211/ieee80211_crypt_tkip.c        |    2 
 net/ieee80211/softmac/ieee80211softmac_wx.c |    2 
 net/ipv4/ipcomp.c                           |    3 
 net/ipv4/tcp_input.c                        |    5 
 net/ipv6/ipcomp6.c                          |    3 
 net/mac80211/ieee80211.c                    |   55 ++++++----
 net/mac80211/ieee80211_ioctl.c              |   11 +-
 net/mac80211/ieee80211_sta.c                |  128 ++++++++++---------------
 net/netfilter/nf_conntrack_proto_tcp.c      |   38 +++----
 net/netlink/af_netlink.c                    |   10 -
 net/sched/cls_u32.c                         |    4 
 net/sched/sch_api.c                         |    5 
 net/sched/sch_teql.c                        |    3 
 net/socket.c                                |    6 -
 sound/core/Makefile                         |    3 
 sound/core/memalloc.c                       |    6 +
 sound/pci/emu10k1/emumixer.c                |    4 
 sound/pci/hda/patch_sigmatel.c              |   29 +++--
 sound/pci/rme9652/hdsp.c                    |    3 
 sound/usb/usbmixer.c                        |    2 
 136 files changed, 1349 insertions(+), 708 deletions(-)

