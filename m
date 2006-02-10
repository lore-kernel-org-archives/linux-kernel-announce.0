From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.15.4 released
Date: Fri, 10 Feb 2006 07:58:34 GMT
Message-ID: <200602100758.k1A7wYe3015172@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.15.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.15.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.15.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                18466             64211
Full source                       39846379         228167680

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                       |    2 
 arch/i386/kernel/acpi/boot.c                   |   13 +++-
 arch/ppc/boot/simple/Makefile                  |    2 
 arch/sparc64/Kconfig                           |    2 
 arch/sparc64/kernel/entry.S                    |    7 --
 arch/sparc64/kernel/sys32.S                    |    1 
 arch/sparc64/kernel/systbls.S                  |    4 -
 arch/sparc64/kernel/time.c                     |   22 +++---
 arch/x86_64/kernel/pci-gart.c                  |    1 
 arch/x86_64/kernel/vmlinux.lds.S               |   10 +--
 arch/x86_64/mm/srat.c                          |   28 ++++++--
 block/ll_rw_blk.c                              |   24 -------
 drivers/char/moxa.c                            |    2 
 drivers/ide/ide-cd.c                           |   10 ---
 drivers/input/joystick/db9.c                   |   70 +++++++++++----------
 drivers/input/joystick/grip.c                  |    3 
 drivers/input/joystick/iforce/iforce-main.c    |    2 
 drivers/input/joystick/iforce/iforce-packets.c |    4 -
 drivers/input/joystick/iforce/iforce-usb.c     |    1 
 drivers/input/joystick/sidewinder.c            |    2 
 drivers/input/mousedev.c                       |    9 --
 drivers/md/dm-crypt.c                          |    5 +
 drivers/md/md.c                                |    3 
 drivers/message/i2o/i2o_scsi.c                 |    2 
 drivers/net/hamradio/mkiss.c                   |    1 
 drivers/net/ppp_generic.c                      |    3 
 drivers/net/skge.c                             |   80 +++++++++++++++----------
 drivers/net/wireless/hostap/Kconfig            |    2 
 drivers/scsi/scsi_lib.c                        |    5 -
 drivers/usb/input/pid.c                        |    2 
 drivers/video/aty/atyfb_base.c                 |    2 
 drivers/video/console/vgacon.c                 |    8 ++
 fs/dcache.c                                    |    7 +-
 fs/reiserfs/super.c                            |    2 
 fs/ufs/super.c                                 |    4 -
 fs/ufs/util.h                                  |    4 -
 fs/xfs/linux-2.6/xfs_buf.c                     |    7 ++
 include/asm-alpha/system.h                     |    2 
 include/linux/blkdev.h                         |    1 
 include/linux/security.h                       |    4 -
 include/linux/skbuff.h                         |    2 
 ipc/mqueue.c                                   |   59 ++++++++++--------
 kernel/workqueue.c                             |   16 +++--
 net/bridge/br_if.c                             |    7 --
 net/bridge/br_input.c                          |   10 ++-
 net/bridge/br_netfilter.c                      |   55 +++++++++++------
 net/bridge/br_stp_bpdu.c                       |    8 +-
 net/bridge/br_stp_if.c                         |    2 
 net/bridge/netfilter/ebt_ip.c                  |    3 
 net/core/net-sysfs.c                           |   28 +++++---
 net/ipv4/icmp.c                                |    2 
 net/ipv4/netfilter/ip_nat_helper_pptp.c        |   59 ++++++++----------
 net/netlink/af_netlink.c                       |    4 -
 security/keys/keyctl.c                         |   15 +++-
 security/seclvl.c                              |    2 
 sound/pci/emu10k1/emumixer.c                   |    2 
 sound/usb/usbaudio.c                           |   26 ++++++--
 57 files changed, 382 insertions(+), 281 deletions(-)

