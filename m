From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.28.6 released
Date: Tue, 17 Feb 2009 17:52:30 GMT
Message-ID: <200902171752.n1HHqUFo019166@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.28.6 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.28.6.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.28.6.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               112812            492611
Full source                       52711800         310312960

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/filesystems/sysfs-pci.txt         |   13 +
 Documentation/sound/alsa/ALSA-Configuration.txt |    3 
 Makefile                                        |    2 
 arch/Kconfig                                    |    3 
 arch/alpha/kernel/entry.S                       |    8 
 arch/alpha/kernel/irq_srm.c                     |    2 
 arch/alpha/kernel/systbls.S                     |    2 
 arch/arm/kernel/calls.S                         |    2 
 arch/cris/arch-v10/kernel/entry.S               |    2 
 arch/cris/arch-v32/kernel/entry.S               |    2 
 arch/h8300/kernel/syscalls.S                    |    2 
 arch/ia64/Kconfig                               |    1 
 arch/ia64/ia32/ia32_entry.S                     |    2 
 arch/ia64/include/asm/unistd.h                  |    2 
 arch/ia64/kernel/entry.S                        |    2 
 arch/ia64/kernel/sys_ia64.c                     |    2 
 arch/ia64/sn/kernel/io_acpi_init.c              |    2 
 arch/ia64/sn/kernel/io_init.c                   |    2 
 arch/m68k/kernel/entry.S                        |    2 
 arch/m68knommu/Kconfig                          |    4 
 arch/m68knommu/kernel/syscalltable.S            |    2 
 arch/mips/kernel/scall32-o32.S                  |    2 
 arch/mn10300/kernel/entry.S                     |    2 
 arch/powerpc/Kconfig                            |    1 
 arch/powerpc/include/asm/systbl.h               |    2 
 arch/powerpc/mm/fsl_booke_mmu.c                 |    4 
 arch/powerpc/mm/pgtable_32.c                    |    4 
 arch/powerpc/mm/slice.c                         |   11 +
 arch/powerpc/platforms/pseries/Kconfig          |    2 
 arch/s390/Kconfig                               |    1 
 arch/s390/kernel/compat_wrapper.S               |    4 
 arch/s390/kernel/entry.h                        |   16 -
 arch/s390/kernel/process.c                      |    9 -
 arch/s390/kernel/signal.c                       |   19 --
 arch/s390/kernel/sys_s390.c                     |   35 ++--
 arch/s390/kernel/syscalls.S                     |   12 -
 arch/sh/include/asm/syscalls_32.h               |    6 
 arch/sh/kernel/sys_sh32.c                       |    2 
 arch/sh/kernel/syscalls_32.S                    |    4 
 arch/sh/kernel/syscalls_64.S                    |    2 
 arch/sparc/kernel/entry.S                       |    4 
 arch/sparc/kernel/systbls.S                     |    4 
 arch/sparc64/Kconfig                            |    1 
 arch/sparc64/kernel/sys_sparc.c                 |   48 ++---
 arch/sparc64/kernel/syscalls.S                  |    4 
 arch/sparc64/kernel/systbls.S                   |   20 +-
 arch/sparc64/kernel/systbls.h                   |    3 
 arch/x86/Kconfig                                |    2 
 arch/x86/include/asm/pgalloc.h                  |    1 
 arch/x86/kernel/acpi/cstate.c                   |    4 
 arch/x86/kernel/apic.c                          |    2 
 arch/x86/kernel/cpu/addon_cpuid_features.c      |    8 
 arch/x86/kernel/cpu/intel.c                     |    8 
 arch/x86/kernel/head64.c                        |    2 
 arch/x86/kernel/head_64.S                       |    2 
 arch/x86/kernel/microcode_amd.c                 |   23 --
 arch/x86/kernel/syscall_table_32.S              |    2 
 arch/x86/kernel/tlb_uv.c                        |    9 -
 arch/x86/kernel/vmi_32.c                        |   11 +
 arch/x86/lib/usercopy_32.c                      |    4 
 arch/x86/lib/usercopy_64.c                      |    4 
 arch/x86/mm/fault.c                             |   10 -
 arch/x86/mm/pageattr.c                          |   49 ++++--
 arch/x86/mm/pat.c                               |   43 +++--
 arch/x86/pci/irq.c                              |    1 
 crypto/async_tx/async_tx.c                      |    2 
 crypto/authenc.c                                |   24 +-
 crypto/ccm.c                                    |    2 
 drivers/acpi/asus_acpi.c                        |   16 +
 drivers/acpi/battery.c                          |    5 
 drivers/acpi/dock.c                             |    6 
 drivers/acpi/namespace/nsutils.c                |    8 
 drivers/acpi/pci_link.c                         |    4 
 drivers/acpi/tables.c                           |    7 
 drivers/acpi/tables/tbutils.c                   |    7 
 drivers/acpi/video.c                            |   34 +++-
 drivers/ata/libata-eh.c                         |    5 
 drivers/ata/pata_via.c                          |   22 ++
 drivers/ata/sata_mv.c                           |    6 
 drivers/ata/sata_nv.c                           |   77 ++++++---
 drivers/ata/sata_via.c                          |    2 
 drivers/block/nbd.c                             |   13 +
 drivers/char/agp/intel-agp.c                    |   11 +
 drivers/char/selection.c                        |    2 
 drivers/cpuidle/governors/menu.c                |   10 +
 drivers/dma/ioat_dma.c                          |   13 -
 drivers/firewire/fw-ohci.c                      |    2 
 drivers/firewire/fw-sbp2.c                      |   43 +++--
 drivers/firmware/dell_rbu.c                     |    4 
 drivers/gpio/gpiolib.c                          |    1 
 drivers/gpu/drm/drm_agpsupport.c                |    3 
 drivers/hid/hid-microsoft.c                     |   13 -
 drivers/hid/hid-sony.c                          |    2 
 drivers/hwmon/abituguru3.c                      |    2 
 drivers/ide/ide-cd.c                            |    3 
 drivers/ide/ide-io.c                            |    9 -
 drivers/ide/it821x.c                            |   12 +
 drivers/ide/tx4938ide.c                         |    4 
 drivers/ide/tx4939ide.c                         |   10 -
 drivers/ieee1394/ohci1394.h                     |    2 
 drivers/ieee1394/sbp2.c                         |   10 +
 drivers/input/keyboard/atkbd.c                  |   25 +++
 drivers/md/bitmap.c                             |    8 
 drivers/md/dm-log.c                             |    5 
 drivers/md/dm-raid1.c                           |    6 
 drivers/md/linear.c                             |    6 
 drivers/md/md.c                                 |   24 +-
 drivers/misc/eeepc-laptop.c                     |    7 
 drivers/misc/panasonic-laptop.c                 |    2 
 drivers/misc/sgi-xp/xpc.h                       |    5 
 drivers/misc/sgi-xp/xpc_sn2.c                   |   21 +-
 drivers/misc/sgi-xp/xpc_uv.c                    |   13 -
 drivers/net/bnx2x_main.c                        |    3 
 drivers/net/e1000/e1000_main.c                  |    6 
 drivers/net/irda/irda-usb.c                     |    2 
 drivers/net/r6040.c                             |   17 +-
 drivers/net/skfp/skfddi.c                       |    4 
 drivers/net/sky2.c                              |    6 
 drivers/net/sungem.c                            |    8 
 drivers/net/tun.c                               |   10 -
 drivers/net/virtio_net.c                        |    3 
 drivers/net/wireless/ath5k/base.c               |   10 -
 drivers/net/wireless/ath5k/phy.c                |    4 
 drivers/net/wireless/ath5k/reset.c              |    4 
 drivers/net/wireless/ath9k/recv.c               |    5 
 drivers/net/wireless/ipw2200.c                  |   28 ++-
 drivers/net/wireless/ipw2200.h                  |    1 
 drivers/net/wireless/iwlwifi/iwl-3945-rs.c      |   12 +
 drivers/net/wireless/iwlwifi/iwl-agn-rs.c       |   12 +
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   12 -
 drivers/net/wireless/iwlwifi/iwl-rx.c           |   29 ++-
 drivers/net/wireless/orinoco.c                  |   30 +--
 drivers/net/wireless/p54/p54common.c            |   12 -
 drivers/net/wireless/p54/p54usb.c               |  147 +++++++++++-------
 drivers/net/wireless/p54/p54usb.h               |    1 
 drivers/net/wireless/rt2x00/rt73usb.c           |    1 
 drivers/net/wireless/rtl8187_dev.c              |    1 
 drivers/net/wireless/rtl8187_rtl8225.c          |   10 -
 drivers/net/wireless/zd1211rw/zd_rf.c           |    1 
 drivers/net/wireless/zd1211rw/zd_usb.c          |    1 
 drivers/parport/parport_serial.c                |    5 
 drivers/pci/hotplug/pciehp_core.c               |    4 
 drivers/pci/msi.c                               |   16 -
 drivers/pci/pci-sysfs.c                         |    4 
 drivers/pci/pcie/aspm.c                         |  129 +++++++++++++--
 drivers/pci/rom.c                               |    8 
 drivers/pci/syscall.c                           |   12 -
 drivers/scsi/eata.c                             |   15 +
 drivers/scsi/ibmvscsi/ibmvfc.c                  |   25 ++-
 drivers/scsi/ibmvscsi/ibmvfc.h                  |    6 
 drivers/scsi/mvsas.c                            |    2 
 drivers/scsi/pcmcia/aha152x_stub.c              |    2 
 drivers/serial/8250_pci.c                       |   12 +
 drivers/serial/jsm/jsm_tty.c                    |    6 
 drivers/usb/core/devio.c                        |   20 +-
 drivers/usb/core/driver.c                       |   11 -
 drivers/usb/core/hub.c                          |    6 
 drivers/usb/core/inode.c                        |    1 
 drivers/usb/core/message.c                      |   65 ++++----
 drivers/usb/core/usb.c                          |    2 
 drivers/usb/core/usb.h                          |   10 -
 drivers/usb/host/isp1760-if.c                   |  113 ++++++++-----
 drivers/usb/misc/emi26.c                        |    2 
 drivers/usb/mon/mon_bin.c                       |  105 ++++++++----
 drivers/usb/serial/option.c                     |   93 ++++++-----
 drivers/usb/serial/ti_usb_3410_5052.c           |   13 +
 drivers/usb/serial/ti_usb_3410_5052.h           |    4 
 drivers/usb/storage/libusual.c                  |    7 
 drivers/usb/storage/scsiglue.c                  |   33 ++++
 drivers/usb/storage/transport.c                 |   80 +++++++++
 drivers/usb/storage/unusual_devs.h              |  194 +++---------------------
 drivers/usb/storage/usb.c                       |    6 
 drivers/usb/storage/usb.h                       |    4 
 drivers/video/aty/mach64_ct.c                   |   11 +
 drivers/w1/slaves/w1_therm.c                    |    2 
 drivers/xen/balloon.c                           |   33 +++-
 fs/affs/file.c                                  |    2 
 fs/afs/write.c                                  |    2 
 fs/aio.c                                        |   22 +-
 fs/binfmt_elf.c                                 |   14 +
 fs/buffer.c                                     |    6 
 fs/cifs/cifs_dfs_ref.c                          |   48 ++++-
 fs/cifs/connect.c                               |   18 +-
 fs/cifs/file.c                                  |    2 
 fs/compat.c                                     |    6 
 fs/compat_ioctl.c                               |    7 
 fs/dcache.c                                     |    7 
 fs/dcookies.c                                   |   10 -
 fs/dlm/plock.c                                  |    2 
 fs/ecryptfs/inode.c                             |    3 
 fs/ecryptfs/mmap.c                              |    2 
 fs/eventfd.c                                    |    5 
 fs/eventpoll.c                                  |   40 +---
 fs/exec.c                                       |    2 
 fs/ext3/inode.c                                 |    2 
 fs/ext3/namei.c                                 |   23 +-
 fs/ext4/inode.c                                 |    4 
 fs/ext4/namei.c                                 |    3 
 fs/fcntl.c                                      |   11 -
 fs/filesystems.c                                |    2 
 fs/fs-writeback.c                               |   92 ++++++-----
 fs/fuse/dev.c                                   |    3 
 fs/fuse/file.c                                  |    6 
 fs/fuse/inode.c                                 |   10 -
 fs/gfs2/ops_address.c                           |    2 
 fs/hostfs/hostfs_kern.c                         |    2 
 fs/inotify_user.c                               |  144 +++++++++--------
 fs/ioctl.c                                      |    2 
 fs/ioprio.c                                     |    5 
 fs/jffs2/file.c                                 |    2 
 fs/libfs.c                                      |    2 
 fs/lockd/svclock.c                              |    6 
 fs/locks.c                                      |    2 
 fs/minix/dir.c                                  |    2 
 fs/namei.c                                      |   48 +++--
 fs/namespace.c                                  |   13 -
 fs/nfs/file.c                                   |    2 
 fs/nfs/read.c                                   |    6 
 fs/nfsctl.c                                     |    4 
 fs/nfsd/nfs4state.c                             |   31 ++-
 fs/open.c                                       |   82 ++++++----
 fs/pipe.c                                       |    4 
 fs/quota.c                                      |    3 
 fs/read_write.c                                 |   49 ++++--
 fs/readdir.c                                    |    9 -
 fs/reiserfs/inode.c                             |    2 
 fs/select.c                                     |   29 +--
 fs/seq_file.c                                   |  115 +++++++-------
 fs/signalfd.c                                   |    8 
 fs/smbfs/file.c                                 |    2 
 fs/splice.c                                     |   12 -
 fs/stat.c                                       |   38 ++--
 fs/super.c                                      |    2 
 fs/sync.c                                       |   34 +++-
 fs/sysfs/bin.c                                  |    6 
 fs/timerfd.c                                    |   10 -
 fs/ubifs/file.c                                 |    9 -
 fs/utimes.c                                     |   11 -
 fs/xattr.c                                      |   53 ++----
 fs/xfs/linux-2.6/xfs_buf.c                      |    3 
 fs/xfs/xfs_dir2_block.c                         |    7 
 fs/xfs/xfs_dir2_leaf.c                          |    6 
 fs/xfs/xfs_dir2_sf.c                            |   15 -
 include/acpi/pdc_intel.h                        |    2 
 include/linux/Kbuild                            |    3 
 include/linux/ata.h                             |   15 +
 include/linux/compat.h                          |   13 +
 include/linux/fs.h                              |    6 
 include/linux/if_tunnel.h                       |    3 
 include/linux/klist.h                           |    2 
 include/linux/mm.h                              |    1 
 include/linux/module.h                          |    1 
 include/linux/pagemap.h                         |    3 
 include/linux/pci.h                             |    2 
 include/linux/pci_ids.h                         |    8 
 include/linux/radix-tree.h                      |    2 
 include/linux/sched.h                           |    1 
 include/linux/serial.h                          |    3 
 include/linux/slab_def.h                        |   10 -
 include/linux/syscalls.h                        |  171 ++++++++++++++-------
 include/linux/time.h                            |    1 
 include/linux/usb_usual.h                       |    5 
 include/linux/wait.h                            |   11 +
 include/linux/writeback.h                       |    1 
 include/net/sctp/checksum.h                     |    2 
 ipc/mqueue.c                                    |   28 +--
 ipc/msg.c                                       |   12 -
 ipc/sem.c                                       |   18 +-
 ipc/shm.c                                       |   12 -
 kernel/acct.c                                   |    2 
 kernel/capability.c                             |    4 
 kernel/cgroup.c                                 |    6 
 kernel/exec_domain.c                            |    3 
 kernel/exit.c                                   |   17 +-
 kernel/fork.c                                   |    4 
 kernel/futex.c                                  |   17 --
 kernel/hrtimer.c                                |    4 
 kernel/itimer.c                                 |    7 
 kernel/kexec.c                                  |    5 
 kernel/module.c                                 |   10 -
 kernel/posix-timers.c                           |   43 ++---
 kernel/printk.c                                 |    7 
 kernel/ptrace.c                                 |    2 
 kernel/relay.c                                  |    4 
 kernel/resource.c                               |    9 +
 kernel/sched.c                                  |   34 ++--
 kernel/sched_clock.c                            |    5 
 kernel/sched_fair.c                             |    2 
 kernel/signal.c                                 |   59 ++-----
 kernel/sys.c                                    |   88 +++++-----
 kernel/sys_ni.c                                 |    1 
 kernel/sysctl.c                                 |    4 
 kernel/time.c                                   |   14 -
 kernel/time/timekeeping.c                       |    7 
 kernel/timer.c                                  |   18 +-
 kernel/trace/ring_buffer.c                      |   19 ++
 kernel/uid16.c                                  |   39 ++--
 kernel/wait.c                                   |   59 ++++++-
 lib/idr.c                                       |   10 -
 mm/fadvise.c                                    |   18 +-
 mm/filemap.c                                    |   40 ++--
 mm/fremap.c                                     |    4 
 mm/madvise.c                                    |    2 
 mm/memory.c                                     |    2 
 mm/mempolicy.c                                  |   24 +-
 mm/migrate.c                                    |    8 
 mm/mincore.c                                    |    4 
 mm/mlock.c                                      |   56 ------
 mm/mmap.c                                       |   20 +-
 mm/mprotect.c                                   |    4 
 mm/mremap.c                                     |    6 
 mm/msync.c                                      |    2 
 mm/nommu.c                                      |   10 -
 mm/page-writeback.c                             |  133 ++++++++++++----
 mm/swapfile.c                                   |    4 
 mm/vmalloc.c                                    |   16 +
 net/bridge/netfilter/ebtables.c                 |    2 
 net/core/net_namespace.c                        |    2 
 net/core/skbuff.c                               |   76 ++++-----
 net/core/sock.c                                 |    2 
 net/ipv4/ipconfig.c                             |    6 
 net/ipv4/netfilter/nf_conntrack_proto_icmp.c    |    2 
 net/ipv4/tcp.c                                  |   20 +-
 net/ipv4/udp.c                                  |    7 
 net/ipv6/ip6_fib.c                              |   15 -
 net/ipv6/ip6_flowlabel.c                        |    8 
 net/ipv6/ip6_output.c                           |   67 ++++++--
 net/ipv6/netfilter/nf_conntrack_proto_icmpv6.c  |    6 
 net/mac80211/rc80211_minstrel.c                 |   10 -
 net/mac80211/tx.c                               |    8 
 net/netfilter/nf_conntrack_netlink.c            |    3 
 net/netfilter/x_tables.c                        |    8 
 net/netfilter/xt_sctp.c                         |    2 
 net/packet/af_packet.c                          |   17 +-
 net/sched/cls_u32.c                             |    3 
 net/sched/sch_htb.c                             |    1 
 net/sctp/input.c                                |   13 +
 net/sctp/output.c                               |    7 
 net/sctp/outqueue.c                             |    3 
 net/sctp/sm_statefuns.c                         |   14 +
 net/socket.c                                    |   63 +++----
 scripts/kernel-doc                              |   40 ++++
 security/device_cgroup.c                        |    3 
 security/keys/keyctl.c                          |   23 +-
 sound/drivers/mtpav.c                           |    3 
 sound/pci/hda/patch_analog.c                    |   58 ++++++-
 sound/pci/hda/patch_conexant.c                  |    1 
 sound/pci/hda/patch_realtek.c                   |    6 
 sound/pci/hda/patch_sigmatel.c                  |   20 ++
 sound/pci/oxygen/virtuoso.c                     |   18 +-
 sound/usb/caiaq/caiaq-device.h                  |    1 
 sound/usb/caiaq/caiaq-midi.c                    |   32 ++-
 sound/usb/usbaudio.c                            |    1 
 353 files changed, 3295 insertions(+), 2032 deletions(-)

