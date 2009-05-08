From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.29.3 released
Date: Fri, 8 May 2009 23:27:23 GMT
Message-ID: <200905082327.n48NRNot006347@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.29.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.29.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.29.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                69971            273102
Full source                       56553508         336199680

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/networking/bonding.txt       |    2 
 Makefile                                   |    2 
 arch/arm/include/asm/elf.h                 |    1 
 arch/arm/kernel/module.c                   |    9 
 arch/arm/mach-iop13xx/pci.c                |    5 
 arch/arm/mach-omap2/mmc-twl4030.c          |    1 
 arch/arm/mm/mmu.c                          |    2 
 arch/ia64/kvm/Kconfig                      |    4 
 arch/mips/kernel/linux32.c                 |    6 
 arch/powerpc/include/asm/futex.h           |   12 
 arch/powerpc/include/asm/processor.h       |   19 +
 arch/powerpc/kernel/signal.c               |    4 
 arch/powerpc/kernel/signal.h               |    2 
 arch/powerpc/kernel/signal_32.c            |    4 
 arch/powerpc/kernel/signal_64.c            |    2 
 arch/powerpc/kvm/Kconfig                   |    3 
 arch/s390/kvm/Kconfig                      |    3 
 arch/sparc/include/asm/tlb_64.h            |    4 
 arch/sparc/kernel/nmi.c                    |   23 +
 arch/sparc/kernel/smp_64.c                 |    4 
 arch/x86/Kconfig.cpu                       |    1 
 arch/x86/boot/memory.c                     |    7 
 arch/x86/kernel/check.c                    |    6 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c |   12 
 arch/x86/kernel/cpu/mtrr/generic.c         |   51 +-
 arch/x86/kernel/io_apic.c                  |   13 
 arch/x86/kernel/ptrace.c                   |    3 
 arch/x86/kernel/tlb_uv.c                   |    3 
 arch/x86/kernel/xsave.c                    |    4 
 arch/x86/kvm/Kconfig                       |    4 
 arch/x86/kvm/i8254.c                       |   15 
 arch/x86/kvm/i8254.h                       |    1 
 arch/x86/kvm/mmu.c                         |    2 
 arch/x86/kvm/mmu.h                         |    2 
 arch/x86/kvm/paging_tmpl.h                 |    6 
 arch/x86/kvm/svm.c                         |   41 +-
 arch/x86/kvm/vmx.c                         |   56 +--
 arch/x86/kvm/x86.c                         |    5 
 arch/x86/lguest/boot.c                     |   10 
 arch/x86/mm/kmmio.c                        |    2 
 arch/x86/mm/pat.c                          |  103 +-----
 arch/x86/pci/fixup.c                       |   20 -
 arch/x86/pci/i386.c                        |    3 
 arch/x86/pci/mmconfig-shared.c             |    6 
 block/genhd.c                              |   12 
 crypto/shash.c                             |    3 
 drivers/acpi/acpica/rscreate.c             |   27 -
 drivers/acpi/dock.c                        |    3 
 drivers/ata/pata_hpt37x.c                  |   22 -
 drivers/char/agp/generic.c                 |    4 
 drivers/char/hw_random/virtio-rng.c        |    4 
 drivers/char/raw.c                         |    1 
 drivers/char/vt.c                          |    2 
 drivers/crypto/ixp4xx_crypto.c             |  182 +++-------
 drivers/gpu/drm/drm_gem.c                  |    7 
 drivers/gpu/drm/i915/i915_dma.c            |    9 
 drivers/gpu/drm/i915/i915_drv.h            |    4 
 drivers/gpu/drm/i915/i915_gem.c            |    1 
 drivers/gpu/drm/i915/i915_gem_tiling.c     |   31 -
 drivers/gpu/drm/i915/i915_reg.h            |   17 
 drivers/gpu/drm/i915/intel_crt.c           |   45 +-
 drivers/gpu/drm/i915/intel_display.c       |   19 +
 drivers/gpu/drm/i915/intel_tv.c            |   30 +
 drivers/ide/cs5536.c                       |    1 
 drivers/ide/hpt366.c                       |    4 
 drivers/ide/ide-atapi.c                    |   10 
 drivers/ide/ide-io.c                       |    9 
 drivers/input/gameport/gameport.c          |   14 
 drivers/lguest/page_tables.c               |    4 
 drivers/md/dm-bio-record.h                 |   26 +
 drivers/md/dm-io.c                         |    5 
 drivers/md/dm-kcopyd.c                     |   23 -
 drivers/md/dm-path-selector.c              |   21 -
 drivers/md/dm-raid1.c                      |   25 +
 drivers/md/dm-snap.c                       |  101 +++--
 drivers/md/dm-table.c                      |   26 -
 drivers/md/dm-target.c                     |   20 -
 drivers/md/raid1.c                         |    7 
 drivers/media/dvb/firewire/firedtv-avc.c   |    6 
 drivers/media/video/cx88/cx88-input.c      |   25 -
 drivers/media/video/v4l2-common.c          |    8 
 drivers/message/fusion/mptbase.c           |    2 
 drivers/net/b44.c                          |    2 
 drivers/net/bonding/bond_main.c            |    5 
 drivers/net/bonding/bond_sysfs.c           |   14 
 drivers/net/dnet.c                         |    1 
 drivers/net/forcedeth.c                    |    3 
 drivers/net/ixgbe/ixgbe_ethtool.c          |  101 +++--
 drivers/net/mv643xx_eth.c                  |   24 -
 drivers/net/r8169.c                        |    5 
 drivers/net/sfc/efx.c                      |    8 
 drivers/net/skge.c                         |    4 
 drivers/net/wireless/ath5k/base.c          |   22 -
 drivers/net/wireless/ath5k/base.h          |    2 
 drivers/net/wireless/ath5k/debug.c         |    2 
 drivers/net/wireless/ath9k/main.c          |    5 
 drivers/net/wireless/ath9k/recv.c          |    7 
 drivers/net/wireless/ath9k/xmit.c          |    2 
 drivers/net/wireless/b43/dma.c             |   50 ++
 drivers/net/wireless/b43/xmit.c            |    2 
 drivers/net/wireless/rndis_wlan.c          |   14 
 drivers/net/wireless/rt2x00/rt2x00.h       |    3 
 drivers/net/wireless/rt2x00/rt2x00dev.c    |    2 
 drivers/net/wireless/rt2x00/rt2x00lib.h    |   10 
 drivers/net/wireless/rt2x00/rt2x00rfkill.c |   86 ++---
 drivers/pci/dmar.c                         |   11 
 drivers/pci/intel-iommu.c                  |    8 
 drivers/pci/probe.c                        |    9 
 drivers/pci/quirks.c                       |    1 
 drivers/platform/x86/acer-wmi.c            |   25 +
 drivers/platform/x86/thinkpad_acpi.c       |   41 +-
 drivers/scsi/arm/cumana_2.c                |    2 
 drivers/scsi/libiscsi.c                    |    9 
 drivers/scsi/sg.c                          |  495 ++++++++++++++---------------
 drivers/spi/spi.c                          |   22 -
 drivers/usb/class/cdc-wdm.c                |    2 
 drivers/usb/core/message.c                 |    3 
 drivers/usb/core/quirks.c                  |    4 
 drivers/usb/core/sysfs.c                   |    4 
 drivers/usb/gadget/f_rndis.c               |    2 
 drivers/usb/gadget/u_ether.c               |    8 
 drivers/usb/host/ehci-q.c                  |   32 +
 drivers/usb/host/ehci.h                    |    3 
 drivers/usb/serial/ftdi_sio.c              |    1 
 drivers/usb/serial/ftdi_sio.h              |    7 
 drivers/usb/serial/ti_usb_3410_5052.c      |   26 -
 drivers/usb/serial/usb-serial.c            |   99 +++--
 drivers/usb/storage/cypress_atacb.c        |   15 
 drivers/usb/storage/scsiglue.c             |    6 
 drivers/usb/storage/unusual_devs.h         |   12 
 drivers/video/console/fbcon.c              |   24 -
 drivers/video/fbmem.c                      |   18 -
 drivers/video/pxafb.c                      |   14 
 drivers/virtio/virtio_balloon.c            |    3 
 fs/Makefile                                |    2 
 fs/bio.c                                   |    3 
 fs/cifs/CHANGES                            |    3 
 fs/cifs/cifssmb.c                          |    6 
 fs/cifs/connect.c                          |    2 
 fs/compat.c                                |   27 +
 fs/dquot.c                                 |    2 
 fs/drop_caches.c                           |    2 
 fs/exec.c                                  |   43 +-
 fs/ext4/mballoc.c                          |    4 
 fs/fs-writeback.c                          |    3 
 fs/fs_struct.c                             |  170 +++++++++
 fs/fuse/file.c                             |    3 
 fs/hugetlbfs/inode.c                       |    3 
 fs/internal.h                              |    8 
 fs/namei.c                                 |    7 
 fs/namespace.c                             |   60 ---
 fs/nfs/nfs3xdr.c                           |    3 
 fs/nfsd/nfssvc.c                           |    7 
 fs/ocfs2/file.c                            |    8 
 fs/proc/array.c                            |   13 
 fs/proc/base.c                             |   55 +--
 fs/proc/meminfo.c                          |    2 
 fs/proc/task_mmu.c                         |    4 
 fs/proc/task_nommu.c                       |    2 
 fs/splice.c                                |   25 +
 include/drm/drm_pciids.h                   |    1 
 include/linux/capability.h                 |   23 +
 include/linux/fs_struct.h                  |    7 
 include/linux/genhd.h                      |    1 
 include/linux/hrtimer.h                    |    5 
 include/linux/interrupt.h                  |    1 
 include/linux/kvm.h                        |    2 
 include/linux/kvm_host.h                   |   17 
 include/linux/mm.h                         |   15 
 include/linux/mman.h                       |    9 
 include/linux/pagemap.h                    |   12 
 include/linux/pci_regs.h                   |    2 
 include/linux/sched.h                      |    3 
 include/linux/usb/quirks.h                 |    3 
 kernel/exec_domain.c                       |   22 -
 kernel/exit.c                              |   34 -
 kernel/fork.c                              |   75 ++--
 kernel/hrtimer.c                           |   55 +--
 kernel/kprobes.c                           |    4 
 kernel/posix-cpu-timers.c                  |    9 
 kernel/ptrace.c                            |    4 
 kernel/sched.c                             |   81 ++++
 kernel/softirq.c                           |    2 
 kernel/sysctl.c                            |   15 
 kernel/time/tick-common.c                  |   12 
 kernel/trace/trace.c                       |    3 
 lib/cpumask.c                              |    4 
 mm/filemap_xip.c                           |    4 
 mm/madvise.c                               |    8 
 mm/memory.c                                |    6 
 mm/mmap.c                                  |   14 
 mm/nommu.c                                 |   13 
 mm/swap.c                                  |   46 --
 net/bridge/br_if.c                         |    1 
 net/core/dev.c                             |    9 
 net/core/skbuff.c                          |    2 
 net/ipv4/netfilter/arp_tables.c            |    4 
 net/ipv4/netfilter/ip_tables.c             |    4 
 net/ipv4/udp.c                             |    6 
 net/ipv6/ip6_input.c                       |    4 
 net/ipv6/netfilter/ip6_tables.c            |    4 
 net/mac80211/mlme.c                        |    2 
 net/mac80211/rx.c                          |   13 
 net/netfilter/nf_conntrack_proto_tcp.c     |    3 
 net/netrom/af_netrom.c                     |    8 
 net/rose/af_rose.c                         |    4 
 net/wireless/reg.c                         |   23 -
 net/x25/af_x25.c                           |    6 
 net/xfrm/xfrm_state.c                      |    2 
 scripts/mod/modpost.c                      |    1 
 security/commoncap.c                       |    1 
 security/selinux/hooks.c                   |    1 
 security/smack/smack_lsm.c                 |    4 
 sound/pci/hda/hda_codec.c                  |    6 
 sound/pci/hda/patch_analog.c               |    2 
 sound/soc/codecs/wm8580.c                  |    2 
 sound/usb/usx2y/us122l.c                   |   12 
 virt/kvm/ioapic.c                          |    6 
 virt/kvm/irq_comm.c                        |   24 +
 virt/kvm/kvm_main.c                        |   22 -
 220 files changed, 2153 insertions(+), 1530 deletions(-)

