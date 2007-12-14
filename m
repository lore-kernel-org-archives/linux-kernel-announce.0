From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.23.10 released
Date: Fri, 14 Dec 2007 18:30:07 GMT
Message-ID: <200712141830.lBEIU7RC023182@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.23.10 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.23.10.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.23.10.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                76359            284301
Full source                       45481589         264724480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/ja_JP/HOWTO                   |   84 ++++++-----
 Makefile                                    |    2 
 arch/i386/boot/boot.h                       |    8 -
 arch/i386/boot/header.S                     |   62 +++++---
 arch/i386/boot/pmjump.S                     |    4 
 arch/i386/boot/video-bios.c                 |    2 
 arch/i386/boot/video-vesa.c                 |    2 
 arch/i386/boot/video.c                      |    2 
 arch/i386/kernel/tsc.c                      |    5 
 arch/i386/lib/delay.c                       |    3 
 arch/i386/mm/pgtable.c                      |    3 
 arch/i386/xen/enlighten.c                   |   57 +++++--
 arch/i386/xen/mmu.c                         |   29 +++
 arch/i386/xen/multicalls.c                  |   29 +++
 arch/i386/xen/multicalls.h                  |    3 
 arch/i386/xen/xen-ops.h                     |    1 
 arch/mips/mm/c-r4k.c                        |   21 ++
 arch/powerpc/math-emu/math.c                |   13 +
 arch/powerpc/platforms/cell/axon_msi.c      |    4 
 arch/sparc64/kernel/sys_sparc.c             |    2 
 arch/sparc64/lib/xor.S                      |   12 -
 arch/um/Makefile                            |    3 
 arch/um/include/common-offsets.h            |    1 
 arch/um/include/sysdep-i386/stub.h          |    3 
 arch/um/kernel/skas/clone.c                 |    1 
 arch/um/os-Linux/main.c                     |    1 
 arch/um/os-Linux/skas/mem.c                 |    1 
 arch/um/os-Linux/skas/process.c             |    2 
 arch/um/os-Linux/start_up.c                 |    1 
 arch/um/os-Linux/tt.c                       |    1 
 arch/um/os-Linux/util.c                     |   38 +++++
 arch/um/sys-i386/user-offsets.c             |    6 
 arch/um/sys-x86_64/user-offsets.c           |    9 -
 arch/x86_64/kernel/entry.S                  |    2 
 arch/x86_64/kernel/time.c                   |   11 -
 arch/x86_64/lib/bitstr.c                    |    2 
 arch/x86_64/lib/delay.c                     |   11 -
 arch/x86_64/mm/init.c                       |    6 
 arch/x86_64/mm/pageattr.c                   |   10 +
 block/ll_rw_blk.c                           |    8 -
 crypto/algapi.c                             |    6 
 drivers/acpi/sleep/main.c                   |    5 
 drivers/acpi/video.c                        |   13 +
 drivers/ata/ahci.c                          |  208 +++++++++++++++++++---------
 drivers/ata/libata-core.c                   |   10 -
 drivers/ata/libata-eh.c                     |   32 +++-
 drivers/ata/sata_mv.c                       |   27 ++-
 drivers/ata/sata_sis.c                      |   15 +-
 drivers/atm/he.c                            |   10 -
 drivers/base/core.c                         |    4 
 drivers/base/power/Makefile                 |    3 
 drivers/base/power/main.c                   |    8 -
 drivers/base/power/power.h                  |   25 ++-
 drivers/block/rd.c                          |   13 +
 drivers/char/apm-emulation.c                |   15 +-
 drivers/char/drm/i915_irq.c                 |    2 
 drivers/char/drm/radeon_cp.c                |    5 
 drivers/char/drm/radeon_drv.h               |    1 
 drivers/char/moxa.c                         |    4 
 drivers/char/random.c                       |    6 
 drivers/char/rocket.c                       |   14 +
 drivers/crypto/geode-aes.c                  |    3 
 drivers/dma/dmaengine.c                     |   17 --
 drivers/hwmon/lm87.c                        |    4 
 drivers/hwmon/w83627hf.c                    |   78 +++++-----
 drivers/i2c/busses/i2c-pasemi.c             |    5 
 drivers/i2c/chips/eeprom.c                  |   37 +++-
 drivers/ide/pci/cs5535.c                    |    2 
 drivers/ide/pci/serverworks.c               |    1 
 drivers/ide/pci/siimage.c                   |    2 
 drivers/infiniband/core/uverbs_cmd.c        |    8 -
 drivers/infiniband/hw/mthca/mthca_cmd.c     |    6 
 drivers/input/mouse/alps.c                  |    1 
 drivers/isdn/hardware/avm/b1.c              |   28 +--
 drivers/isdn/hardware/avm/c4.c              |   14 +
 drivers/isdn/i4l/isdn_common.c              |    5 
 drivers/isdn/i4l/isdn_net.c                 |    8 -
 drivers/kvm/kvm_main.c                      |   16 +-
 drivers/kvm/mmu.c                           |    1 
 drivers/kvm/svm.c                           |    4 
 drivers/kvm/vmx.c                           |    3 
 drivers/kvm/x86_emulate.c                   |   30 +++-
 drivers/md/bitmap.c                         |    2 
 drivers/md/dm-delay.c                       |    2 
 drivers/md/dm.c                             |    4 
 drivers/md/raid5.c                          |   33 +++-
 drivers/net/ehea/ehea_qmr.c                 |   20 +-
 drivers/net/ehea/ehea_qmr.h                 |    2 
 drivers/net/forcedeth.c                     |   73 +++++++--
 drivers/net/pppol2tp.c                      |   25 ++-
 drivers/net/skge.c                          |   90 ++++++------
 drivers/net/skge.h                          |    6 
 drivers/net/sky2.c                          |   87 +++++++++--
 drivers/net/tg3.c                           |   10 +
 drivers/net/wireless/ipw2100.c              |   39 +++++
 drivers/net/wireless/ipw2100.h              |    4 
 drivers/net/wireless/ipw2200.c              |   56 ++++++-
 drivers/net/wireless/ipw2200.h              |    3 
 drivers/net/wireless/libertas/11d.c         |    2 
 drivers/net/wireless/libertas/cmd.c         |   16 +-
 drivers/net/wireless/libertas/wext.c        |    8 -
 drivers/net/wireless/rtl8187_dev.c          |   31 ++--
 drivers/net/wireless/zd1201.c               |    4 
 drivers/net/wireless/zd1211rw/zd_usb.c      |    7 
 drivers/oprofile/cpu_buffer.c               |    7 
 drivers/oprofile/cpu_buffer.h               |    1 
 drivers/oprofile/oprofile_stats.c           |    4 
 drivers/pci/msi.c                           |    2 
 drivers/pnp/pnpacpi/rsparser.c              |   15 +-
 drivers/scsi/dpt_i2o.c                      |  132 ++++++++---------
 drivers/scsi/dpti.h                         |    9 -
 drivers/scsi/esp_scsi.c                     |    4 
 drivers/scsi/hptiop.c                       |    5 
 drivers/scsi/scsi.c                         |   31 +++-
 drivers/usb/core/hcd.h                      |    8 -
 drivers/usb/core/hub.c                      |   15 +-
 drivers/usb/core/quirks.c                   |   81 ----------
 drivers/usb/core/urb.c                      |    2 
 drivers/usb/gadget/ether.c                  |   12 +
 drivers/usb/host/ehci-hcd.c                 |   11 +
 drivers/usb/image/microtek.c                |    2 
 drivers/usb/serial/generic.c                |    7 
 drivers/usb/storage/unusual_devs.h          |   14 +
 drivers/video/fb_ddc.c                      |    8 -
 drivers/video/platinumfb.c                  |   48 +++---
 drivers/video/ps3fb.c                       |    2 
 fs/locks.c                                  |   11 +
 fs/minix/itree_v1.c                         |    9 -
 fs/minix/itree_v2.c                         |    9 -
 fs/nfs/write.c                              |   17 +-
 fs/nfsd/nfs2acl.c                           |    2 
 fs/nfsd/nfs3acl.c                           |    2 
 fs/nfsd/nfsfh.c                             |   43 +++--
 fs/ocfs2/aops.c                             |   22 ++
 fs/proc/array.c                             |    6 
 fs/reiserfs/stree.c                         |    3 
 fs/splice.c                                 |    2 
 fs/xfs/linux-2.6/xfs_buf.c                  |   15 ++
 include/asm-i386/system.h                   |    2 
 include/asm-mips/hazards.h                  |   54 +++++++
 include/asm-x86_64/system.h                 |    8 -
 include/linux/blkdev.h                      |    2 
 include/linux/bootmem.h                     |    1 
 include/linux/ide.h                         |    7 
 include/linux/libata.h                      |    2 
 include/linux/netlink.h                     |    2 
 include/linux/pci_ids.h                     |    8 +
 include/linux/pnp.h                         |    4 
 include/linux/sched.h                       |    1 
 include/linux/skbuff.h                      |    3 
 include/linux/thread_info.h                 |   17 ++
 include/linux/usb/quirks.h                  |    7 
 include/net/9p/9p.h                         |   12 +
 include/net/sock.h                          |   13 +
 include/net/tcp.h                           |    3 
 include/scsi/scsi_device.h                  |    3 
 include/xen/interface/vcpu.h                |    5 
 ipc/mqueue.c                                |    6 
 kernel/exit.c                               |    5 
 kernel/fork.c                               |    2 
 kernel/futex.c                              |   25 +--
 kernel/futex_compat.c                       |   27 ++-
 kernel/hrtimer.c                            |    8 +
 kernel/irq/manage.c                         |   20 ++
 kernel/lockdep.c                            |   10 -
 kernel/params.c                             |    9 -
 kernel/sched.c                              |    6 
 kernel/sched_fair.c                         |    2 
 kernel/softlockup.c                         |   54 ++++---
 kernel/time/ntp.c                           |    2 
 lib/libcrc32c.c                             |    7 
 lib/textsearch.c                            |    8 -
 mm/filemap.c                                |   13 -
 mm/page-writeback.c                         |    4 
 mm/shmem.c                                  |   20 ++
 mm/slub.c                                   |   22 --
 mm/sparse.c                                 |   11 -
 net/8021q/vlan.c                            |    5 
 net/8021q/vlan_dev.c                        |    3 
 net/bridge/br.c                             |    4 
 net/bridge/br_input.c                       |    7 
 net/bridge/netfilter/ebtable_broute.c       |    4 
 net/decnet/dn_dev.c                         |    4 
 net/ieee80211/ieee80211_crypt_tkip.c        |    2 
 net/ieee80211/softmac/ieee80211softmac_wx.c |    2 
 net/ipv4/arp.c                              |   19 --
 net/ipv4/ipcomp.c                           |    3 
 net/ipv4/netfilter/nf_nat_core.c            |    7 
 net/ipv4/route.c                            |    8 -
 net/ipv4/sysctl_net_ipv4.c                  |    2 
 net/ipv4/tcp_illinois.c                     |    2 
 net/ipv4/tcp_input.c                        |    5 
 net/ipv4/tcp_output.c                       |    1 
 net/ipv6/addrconf.c                         |   11 +
 net/ipv6/ipcomp6.c                          |    3 
 net/key/af_key.c                            |    2 
 net/mac80211/ieee80211.c                    |   55 ++++---
 net/mac80211/ieee80211_ioctl.c              |   11 +
 net/mac80211/ieee80211_sta.c                |  128 +++++++----------
 net/netfilter/nf_conntrack_extend.c         |    2 
 net/netfilter/nf_conntrack_proto_tcp.c      |   38 ++---
 net/netfilter/xt_CONNMARK.c                 |   10 -
 net/netfilter/xt_CONNSECMARK.c              |   10 -
 net/netfilter/xt_TCPMSS.c                   |    4 
 net/netlink/af_netlink.c                    |   10 -
 net/rxrpc/Kconfig                           |    1 
 net/sched/cls_u32.c                         |    4 
 net/sched/sch_api.c                         |    5 
 net/sched/sch_generic.c                     |    5 
 net/sched/sch_teql.c                        |    3 
 net/socket.c                                |    6 
 net/unix/af_unix.c                          |    9 +
 net/xfrm/xfrm_state.c                       |    2 
 sound/core/Makefile                         |    3 
 sound/core/memalloc.c                       |    6 
 sound/pci/emu10k1/emumixer.c                |    4 
 sound/pci/hda/patch_sigmatel.c              |   29 ++-
 sound/pci/rme9652/hdsp.c                    |    3 
 sound/usb/usbmixer.c                        |    2 
 219 files changed, 1973 insertions(+), 1135 deletions(-)

