From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.11.9 released
Date: Wed, 11 May 2005 23:33:45 GMT
Message-ID: <200505112333.j4BNXjGU026543@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.11.9 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.11.9.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.11.9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                14553             54940
Full source                       37103700         208250880

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/SecurityBugs               |   38 ++++++++++++++++++++++++++++
 MAINTAINERS                              |    5 +++
 Makefile                                 |    4 +-
 REPORTING-BUGS                           |    4 ++
 arch/ia64/kernel/fsys.S                  |    4 ++
 arch/ia64/kernel/signal.c                |    3 +-
 arch/ppc/oprofile/op_model_fsl_booke.c   |    3 --
 arch/ppc/platforms/4xx/ebony.h           |    4 +-
 arch/ppc/platforms/4xx/luan.h            |    6 ++--
 arch/ppc/platforms/4xx/ocotea.h          |    4 +-
 arch/sparc/kernel/ptrace.c               |   12 --------
 arch/sparc64/kernel/ptrace.c             |   19 --------------
 arch/sparc64/kernel/signal32.c           |    5 ++-
 arch/sparc64/kernel/systbls.S            |    2 -
 arch/um/include/sysdep-i386/syscalls.h   |   12 ++++----
 arch/um/include/sysdep-x86_64/syscalls.h |    5 ---
 arch/um/kernel/skas/uaccess.c            |    3 +-
 arch/um/kernel/sys_call_table.c          |   11 ++------
 drivers/char/drm/drm_ioctl.c             |    2 +
 drivers/i2c/chips/eeprom.c               |    3 +-
 drivers/i2c/chips/it87.c                 |    2 -
 drivers/i2c/chips/via686a.c              |    2 -
 drivers/input/serio/i8042-x86ia64io.h    |    6 ++--
 drivers/md/raid6altivec.uc               |    4 ++
 drivers/media/video/adv7170.c            |    2 -
 drivers/media/video/adv7175.c            |    2 -
 drivers/media/video/bt819.c              |    2 -
 drivers/media/video/bttv-cards.c         |    2 -
 drivers/media/video/saa7110.c            |   33 +++++++++++-------------
 drivers/media/video/saa7114.c            |    2 -
 drivers/media/video/saa7185.c            |    2 -
 drivers/net/amd8111e.c                   |    2 +
 drivers/net/ppp_async.c                  |    2 -
 drivers/net/r8169.c                      |   17 +++++++-----
 drivers/net/sis900.c                     |   30 ++++++++++------------
 drivers/net/tun.c                        |    2 -
 drivers/net/via-rhine.c                  |    7 ++++-
 drivers/net/wan/hd6457x.c                |    2 -
 drivers/pci/hotplug/pciehp_ctrl.c        |    3 +-
 fs/binfmt_elf.c                          |   34 ++++++++++++++-----------
 fs/cramfs/inode.c                        |    1 
 fs/eventpoll.c                           |    3 +-
 fs/exec.c                                |    2 -
 fs/ext2/dir.c                            |    1 
 fs/isofs/inode.c                         |    5 +++
 fs/isofs/rock.c                          |   25 +++++++++++++-----
 fs/jbd/transaction.c                     |    6 ++--
 kernel/exit.c                            |    2 -
 kernel/signal.c                          |    1 
 lib/rwsem-spinlock.c                     |   42 +++++++++++++++++++------------
 lib/rwsem.c                              |   16 +++++++----
 net/bluetooth/af_bluetooth.c             |    6 ++--
 net/ipv4/fib_hash.c                      |   12 ++++++++
 net/ipv4/tcp_input.c                     |    5 ++-
 net/ipv4/tcp_timer.c                     |    1 
 net/ipv4/xfrm4_output.c                  |   12 ++++----
 net/ipv6/xfrm6_output.c                  |   12 ++++----
 net/netrom/nr_in.c                       |    9 ------
 net/xfrm/xfrm_state.c                    |    2 -
 security/keys/key.c                      |    3 +-
 sound/core/timer.c                       |    5 ++-
 sound/pci/ac97/ac97_codec.c              |   13 +++++----
 62 files changed, 283 insertions(+), 208 deletions(-)

