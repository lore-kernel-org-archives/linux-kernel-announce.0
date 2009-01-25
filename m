From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.28.2 released
Date: Sun, 25 Jan 2009 00:53:54 GMT
Message-ID: <200901250053.n0P0rsAk005285@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.28.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.28.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.28.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                64075            292668
Full source                       52697313         310292480

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/sound/alsa/ALSA-Configuration.txt |    3 
 Makefile                                        |    2 
 arch/Kconfig                                    |    3 
 arch/alpha/kernel/entry.S                       |    8 -
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
 arch/m68k/kernel/entry.S                        |    2 
 arch/m68knommu/kernel/syscalltable.S            |    2 
 arch/mips/kernel/scall32-o32.S                  |    2 
 arch/mn10300/kernel/entry.S                     |    2 
 arch/powerpc/Kconfig                            |    1 
 arch/powerpc/include/asm/systbl.h               |    2 
 arch/powerpc/mm/slice.c                         |   11 +
 arch/powerpc/platforms/pseries/Kconfig          |    2 
 arch/s390/Kconfig                               |    1 
 arch/s390/kernel/compat_wrapper.S               |    4 
 arch/s390/kernel/entry.h                        |   16 +-
 arch/s390/kernel/process.c                      |    9 -
 arch/s390/kernel/signal.c                       |   19 +-
 arch/s390/kernel/sys_s390.c                     |   35 ++--
 arch/s390/kernel/syscalls.S                     |   12 -
 arch/sh/include/asm/syscalls_32.h               |    6 
 arch/sh/kernel/sys_sh32.c                       |    2 
 arch/sh/kernel/syscalls_32.S                    |    4 
 arch/sh/kernel/syscalls_64.S                    |    2 
 arch/sparc/kernel/entry.S                       |    4 
 arch/sparc/kernel/systbls.S                     |    4 
 arch/sparc64/kernel/syscalls.S                  |    2 
 arch/sparc64/kernel/systbls.S                   |    4 
 arch/x86/Kconfig                                |    2 
 arch/x86/kernel/cpu/addon_cpuid_features.c      |    8 +
 arch/x86/kernel/cpu/intel.c                     |    8 -
 arch/x86/kernel/head64.c                        |    2 
 arch/x86/kernel/head_64.S                       |    2 
 arch/x86/kernel/syscall_table_32.S              |    2 
 arch/x86/kernel/tlb_uv.c                        |    9 -
 arch/x86/mm/fault.c                             |    2 
 drivers/dma/ioat_dma.c                          |   13 -
 drivers/firmware/dell_rbu.c                     |    4 
 drivers/hid/hid-sony.c                          |    2 
 drivers/hwmon/abituguru3.c                      |    2 
 drivers/ide/tx4938ide.c                         |    4 
 drivers/ide/tx4939ide.c                         |   10 +
 drivers/md/bitmap.c                             |    8 -
 drivers/md/dm-log.c                             |    5 
 drivers/md/dm-raid1.c                           |    6 
 drivers/misc/sgi-xp/xpc_sn2.c                   |    2 
 drivers/net/irda/irda-usb.c                     |    2 
 drivers/net/r6040.c                             |   17 +-
 drivers/net/wireless/ath5k/phy.c                |    4 
 drivers/net/wireless/ath5k/reset.c              |    4 
 drivers/net/wireless/ath9k/recv.c               |    5 
 drivers/net/wireless/iwlwifi/iwl-agn.c          |   12 -
 drivers/net/wireless/iwlwifi/iwl-rx.c           |   29 ++-
 drivers/net/wireless/p54/p54usb.c               |    6 
 drivers/net/wireless/rt2x00/rt73usb.c           |    1 
 drivers/pci/pcie/aspm.c                         |  125 +++++++++++++---
 drivers/pci/syscall.c                           |   12 -
 drivers/scsi/eata.c                             |   15 +
 drivers/scsi/ibmvscsi/ibmvfc.c                  |   25 ++-
 drivers/scsi/ibmvscsi/ibmvfc.h                  |    6 
 drivers/scsi/mvsas.c                            |    2 
 drivers/scsi/pcmcia/aha152x_stub.c              |    2 
 drivers/usb/core/driver.c                       |    9 -
 drivers/usb/core/hub.c                          |    2 
 drivers/usb/core/message.c                      |   25 +--
 drivers/usb/core/usb.c                          |    2 
 drivers/usb/core/usb.h                          |    4 
 drivers/usb/host/isp1760-if.c                   |  113 ++++++++------
 drivers/usb/misc/emi26.c                        |    2 
 drivers/usb/storage/libusual.c                  |    7 
 drivers/usb/storage/scsiglue.c                  |   31 +++
 drivers/usb/storage/transport.c                 |   80 ++++++++++
 drivers/usb/storage/unusual_devs.h              |  187 +++---------------------
 drivers/usb/storage/usb.c                       |    6 
 drivers/usb/storage/usb.h                       |    4 
 fs/affs/file.c                                  |    2 
 fs/afs/write.c                                  |    2 
 fs/aio.c                                        |   22 +-
 fs/buffer.c                                     |    6 
 fs/cifs/cifs_dfs_ref.c                          |   48 ++++--
 fs/cifs/file.c                                  |    2 
 fs/compat.c                                     |    6 
 fs/dcache.c                                     |    7 
 fs/dcookies.c                                   |   10 +
 fs/ecryptfs/inode.c                             |    3 
 fs/ecryptfs/mmap.c                              |    2 
 fs/eventfd.c                                    |    5 
 fs/eventpoll.c                                  |   18 +-
 fs/exec.c                                       |    2 
 fs/ext3/inode.c                                 |    2 
 fs/ext3/namei.c                                 |    3 
 fs/ext4/inode.c                                 |    4 
 fs/ext4/namei.c                                 |    3 
 fs/fcntl.c                                      |   11 -
 fs/filesystems.c                                |    2 
 fs/fs-writeback.c                               |   92 +++++++----
 fs/fuse/file.c                                  |    4 
 fs/gfs2/ops_address.c                           |    2 
 fs/hostfs/hostfs_kern.c                         |    2 
 fs/inotify_user.c                               |    9 -
 fs/ioctl.c                                      |    2 
 fs/ioprio.c                                     |    5 
 fs/jffs2/file.c                                 |    2 
 fs/libfs.c                                      |    2 
 fs/locks.c                                      |    2 
 fs/minix/dir.c                                  |    2 
 fs/namei.c                                      |   48 +++---
 fs/namespace.c                                  |   13 -
 fs/nfs/file.c                                   |    2 
 fs/nfs/read.c                                   |    6 
 fs/nfsctl.c                                     |    4 
 fs/open.c                                       |   82 ++++++----
 fs/pipe.c                                       |    4 
 fs/quota.c                                      |    3 
 fs/read_write.c                                 |   49 ++++--
 fs/readdir.c                                    |    9 -
 fs/reiserfs/inode.c                             |    2 
 fs/select.c                                     |   29 +--
 fs/signalfd.c                                   |    8 -
 fs/smbfs/file.c                                 |    2 
 fs/splice.c                                     |   12 -
 fs/stat.c                                       |   38 ++--
 fs/super.c                                      |    2 
 fs/sync.c                                       |   34 +++-
 fs/timerfd.c                                    |   10 -
 fs/ubifs/file.c                                 |    9 -
 fs/utimes.c                                     |   11 -
 fs/xattr.c                                      |   53 +++---
 fs/xfs/xfs_dir2_block.c                         |    7 
 fs/xfs/xfs_dir2_leaf.c                          |    6 
 fs/xfs/xfs_dir2_sf.c                            |   15 +
 include/linux/compat.h                          |   13 +
 include/linux/fs.h                              |    6 
 include/linux/mm.h                              |    1 
 include/linux/pagemap.h                         |    3 
 include/linux/radix-tree.h                      |    2 
 include/linux/syscalls.h                        |  171 +++++++++++++++------
 include/linux/time.h                            |    1 
 include/linux/usb_usual.h                       |    5 
 include/linux/writeback.h                       |    1 
 ipc/mqueue.c                                    |   28 +--
 ipc/msg.c                                       |   12 -
 ipc/sem.c                                       |   18 +-
 ipc/shm.c                                       |    8 -
 kernel/acct.c                                   |    2 
 kernel/capability.c                             |    4 
 kernel/cgroup.c                                 |    6 
 kernel/exec_domain.c                            |    3 
 kernel/exit.c                                   |   17 +-
 kernel/fork.c                                   |    4 
 kernel/futex.c                                  |   17 +-
 kernel/hrtimer.c                                |    4 
 kernel/itimer.c                                 |    7 
 kernel/kexec.c                                  |    5 
 kernel/module.c                                 |   10 -
 kernel/posix-timers.c                           |   43 ++---
 kernel/printk.c                                 |    7 
 kernel/ptrace.c                                 |    2 
 kernel/sched.c                                  |   30 +--
 kernel/sched_clock.c                            |    5 
 kernel/sched_fair.c                             |    2 
 kernel/signal.c                                 |   59 +++----
 kernel/sys.c                                    |   72 ++++-----
 kernel/sys_ni.c                                 |    1 
 kernel/sysctl.c                                 |    4 
 kernel/time.c                                   |   14 -
 kernel/time/timekeeping.c                       |    7 
 kernel/timer.c                                  |   18 +-
 kernel/trace/ring_buffer.c                      |   19 ++
 kernel/uid16.c                                  |   39 ++---
 lib/idr.c                                       |   10 -
 mm/fadvise.c                                    |   18 ++
 mm/filemap.c                                    |   40 ++---
 mm/fremap.c                                     |    4 
 mm/madvise.c                                    |    2 
 mm/mempolicy.c                                  |   24 +--
 mm/migrate.c                                    |    8 -
 mm/mincore.c                                    |    4 
 mm/mlock.c                                      |    8 -
 mm/mmap.c                                       |    4 
 mm/mprotect.c                                   |    4 
 mm/mremap.c                                     |    6 
 mm/msync.c                                      |    2 
 mm/nommu.c                                      |   10 -
 mm/page-writeback.c                             |  121 +++++++++++----
 mm/swapfile.c                                   |    4 
 mm/vmalloc.c                                    |    5 
 net/bridge/netfilter/ebtables.c                 |    2 
 net/ipv4/netfilter/nf_conntrack_proto_icmp.c    |    2 
 net/ipv4/tcp.c                                  |    8 -
 net/ipv6/ip6_fib.c                              |   15 +
 net/ipv6/netfilter/nf_conntrack_proto_icmpv6.c  |    2 
 net/netfilter/x_tables.c                        |    8 +
 net/sched/cls_u32.c                             |    3 
 net/sched/sch_htb.c                             |    1 
 net/sctp/sm_statefuns.c                         |   14 +
 net/socket.c                                    |   63 ++++----
 security/device_cgroup.c                        |    3 
 security/keys/keyctl.c                          |   23 +-
 sound/pci/hda/patch_analog.c                    |   54 ++++++
 sound/pci/hda/patch_realtek.c                   |    1 
 sound/pci/hda/patch_sigmatel.c                  |   18 ++
 sound/pci/oxygen/virtuoso.c                     |   17 +-
 sound/usb/caiaq/caiaq-device.h                  |    1 
 sound/usb/caiaq/caiaq-midi.c                    |   32 ++--
 214 files changed, 1759 insertions(+), 1207 deletions(-)

