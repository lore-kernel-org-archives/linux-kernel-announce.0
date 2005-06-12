From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.11.12 released
Date: Sun, 12 Jun 2005 06:12:07 GMT
Message-ID: <200506120612.j5C6C7b9023258@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.11.12 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.11.12.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.11.12.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                23413             84064
Full source                       36609110         208261120

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/SecurityBugs               |   38 +++++++++++++++++++
 MAINTAINERS                              |    5 ++
 Makefile                                 |    4 +-
 REPORTING-BUGS                           |    4 ++
 arch/ia64/kernel/fsys.S                  |    4 +-
 arch/ia64/kernel/signal.c                |    3 +
 arch/ppc/oprofile/op_model_fsl_booke.c   |    3 -
 arch/ppc/platforms/4xx/ebony.h           |    4 +-
 arch/ppc/platforms/4xx/luan.h            |    6 +--
 arch/ppc/platforms/4xx/ocotea.h          |    4 +-
 arch/ppc64/kernel/pSeries_iommu.c        |   55 ++++++++++++++++++++++++++++
 arch/sparc/kernel/ptrace.c               |   12 ------
 arch/sparc64/kernel/ptrace.c             |   19 ---------
 arch/sparc64/kernel/signal32.c           |    5 ++
 arch/sparc64/kernel/systbls.S            |    2 -
 arch/um/include/sysdep-i386/syscalls.h   |   12 +++---
 arch/um/include/sysdep-x86_64/syscalls.h |    5 --
 arch/um/kernel/skas/uaccess.c            |    3 +
 arch/um/kernel/sys_call_table.c          |   11 ++---
 arch/x86_64/kernel/apic.c                |    2 -
 arch/x86_64/kernel/ptrace.c              |   17 +++++---
 arch/x86_64/kernel/smpboot.c             |    4 --
 arch/x86_64/mm/fault.c                   |   11 ++++-
 arch/x86_64/mm/ioremap.c                 |    2 -
 drivers/block/ioctl.c                    |    2 +
 drivers/block/pktcdvd.c                  |    4 +-
 drivers/char/drm/drm_ioctl.c             |    2 +
 drivers/char/raw.c                       |    2 -
 drivers/i2c/chips/eeprom.c               |    3 +
 drivers/i2c/chips/it87.c                 |    2 -
 drivers/i2c/chips/via686a.c              |    2 -
 drivers/ide/ide-disk.c                   |    4 +-
 drivers/input/serio/i8042-x86ia64io.h    |    6 +--
 drivers/md/raid6altivec.uc               |    4 ++
 drivers/media/video/adv7170.c            |    2 -
 drivers/media/video/adv7175.c            |    2 -
 drivers/media/video/bt819.c              |    2 -
 drivers/media/video/bttv-cards.c         |    3 -
 drivers/media/video/saa7110.c            |   33 ++++++++---------
 drivers/media/video/saa7114.c            |    2 -
 drivers/media/video/saa7185.c            |    2 -
 drivers/net/3c59x.c                      |    9 +++-
 drivers/net/amd8111e.c                   |    2 +
 drivers/net/ppp_async.c                  |    2 -
 drivers/net/r8169.c                      |   17 +++++---
 drivers/net/sis900.c                     |   30 +++++++--------
 drivers/net/tun.c                        |    2 -
 drivers/net/via-rhine.c                  |    7 +++
 drivers/net/wan/hd6457x.c                |    2 -
 drivers/pci/hotplug/pciehp_ctrl.c        |    3 +
 drivers/usb/serial/visor.c               |   38 ++++++++++++++-----
 drivers/video/matrox/matroxfb_accel.c    |   14 +++++--
 drivers/video/matrox/matroxfb_base.h     |    4 +-
 fs/binfmt_elf.c                          |   34 +++++++++--------
 fs/cramfs/inode.c                        |    1 
 fs/eventpoll.c                           |    3 +
 fs/exec.c                                |    2 -
 fs/ext2/dir.c                            |    1 
 fs/ext3/balloc.c                         |    3 +
 fs/hfs/mdb.c                             |    5 ++
 fs/hfs/super.c                           |    8 +---
 fs/hfsplus/super.c                       |    6 ++-
 fs/isofs/inode.c                         |    5 ++
 fs/isofs/rock.c                          |   25 +++++++++----
 fs/jbd/checkpoint.c                      |    4 +-
 fs/jbd/transaction.c                     |    6 +--
 include/asm-x86_64/processor.h           |    4 +-
 include/linux/err.h                      |    4 +-
 kernel/exit.c                            |    2 -
 kernel/signal.c                          |    1 
 lib/rwsem-spinlock.c                     |   42 +++++++++++++---------
 lib/rwsem.c                              |   16 +++++---
 mm/mmap.c                                |   59 ++++++++++++++++---------------
 mm/rmap.c                                |    6 +--
 net/bluetooth/af_bluetooth.c             |    6 +--
 net/bridge/br_input.c                    |    6 ++-
 net/bridge/br_stp_bpdu.c                 |    3 +
 net/bridge/netfilter/ebtables.c          |    3 +
 net/ipv4/fib_hash.c                      |   12 +++++-
 net/ipv4/netfilter/ip_queue.c            |   10 +++++
 net/ipv4/tcp_input.c                     |    5 ++
 net/ipv4/tcp_timer.c                     |    1 
 net/ipv4/xfrm4_output.c                  |   12 +++---
 net/ipv6/xfrm6_output.c                  |   12 +++---
 net/netrom/nr_in.c                       |    9 ----
 net/rose/rose_route.c                    |    3 +
 net/sched/sch_netem.c                    |   13 ++++--
 net/xfrm/xfrm_state.c                    |    2 -
 security/keys/key.c                      |    3 +
 sound/core/timer.c                       |    5 ++
 sound/pci/ac97/ac97_codec.c              |   13 ++++--
 sound/usb/usbaudio.c                     |    2 -
 sound/usb/usx2y/usbusx2y.c               |   11 +++--
 93 files changed, 507 insertions(+), 303 deletions(-)

