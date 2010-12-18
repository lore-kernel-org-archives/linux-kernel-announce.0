From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.4.37.11 released
Date: Sat, 18 Dec 2010 19:57:52 GMT
Message-ID: <201012181957.oBIJvqhL020634@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.4.37.11 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.4/patch-2.4.37.11.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.4/linux-2.4.37.11.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                55892            208672
Full source                       31121458         175421440

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                            |   11 
 Rules.make                          |    4 
 arch/i386/kernel/dmi_scan.c         |    2 
 arch/i386/kernel/i386_ksyms.c       |    3 
 arch/m68k/config.in                 |    7 
 arch/mips/config-shared.in          |    1 
 drivers/block/DAC960.c              |    1 
 drivers/block/amiflop.c             |    1 
 drivers/block/cciss.c               |    2 
 drivers/block/cpqarray.c            |    2 
 drivers/block/floppy.c              |    1 
 drivers/block/sx8.c                 |    2 
 drivers/block/umem.c                |    1 
 drivers/block/xd.c                  |    1 
 drivers/char/Config.in              |    8 
 drivers/char/Makefile               |    7 
 drivers/char/agp/agpgart_fe.c       |    2 
 drivers/char/drm/r128_cce.c         |   18 
 drivers/char/drm/r128_drv.h         |    8 
 drivers/char/drm/r128_state.c       |   27 
 drivers/char/ibm_workpad_keymap.map |  343 ++++
 drivers/char/joystick/pcigame.c     |    2 
 drivers/char/ppdev.c                |    1 
 drivers/ide/legacy/hd.c             |    1 
 drivers/md/raid5.c                  |    2 
 drivers/message/i2o/i2o_block.c     |    1 
 drivers/mtd/maps/Config.in          |    3 
 drivers/mtd/maps/Makefile           |    1 
 drivers/mtd/maps/mirage-flash.c     |  194 ++
 drivers/mtd/nftlcore.c              |    1 
 drivers/net/8139cp.c                |    2 
 drivers/net/bonding/bond_main.c     |    2 
 drivers/net/e1000/e1000.h           |    1 
 drivers/net/e1000/e1000_main.c      |   14 
 drivers/net/eql.c                   |    2 
 drivers/net/hamradio/hdlcdrv.c      |    2 
 drivers/net/r8169.c                 |  102 +
 drivers/net/sgiseeq.c               |   50 
 drivers/net/tulip/interrupt.c       |   42 
 drivers/net/tulip/tulip.h           |   31 
 drivers/net/tun.c                   |   12 
 drivers/scsi/scsi.c                 |    7 
 drivers/usb/devio.c                 |    7 
 drivers/usb/host/ehci-sched.c       |    2 
 drivers/usb/storage/unusual_devs.h  |   10 
 drivers/usb/storage/usb.c           |    3 
 fs/buffer.c                         |   10 
 fs/exec.c                           |    3 
 fs/ext3/namei.c                     |    3 
 fs/fat/file.c                       |    4 
 fs/jfs/xattr.c                      |   70 
 fs/pipe.c                           |   35 
 fs/proc/array.c                     |   24 
 include/asm-mips/sgi/hpc3.h         |   44 
 include/asm-mips64/sgi/hpc3.h       |   44 
 include/linux/capability.h          |   14 
 include/linux/fs.h                  |    1 
 include/linux/netlink.h             |    1 
 include/linux/pkt_cls.h             |    1 
 include/linux/pkt_sched.h           |    9 
 include/net/af_unix.h               |    1 
 include/net/neighbour.h             |    1 
 include/net/sctp/sm.h               |    2 
 include/net/sctp/structs.h          |    2 
 ipc/sem.c                           |    2 
 ipc/shm.c                           |    1 
 kernel/exit.c                       |   15 
 kernel/fork.c                       |    6 
 kernel/ksyms.c                      |    1 
 kernel/resource.c                   |    2 
 kernel/signal.c                     |   15 
 lib/string.c                        |    1 
 net/8021q/vlan_dev.c                |   22 
 net/appletalk/Makefile              |    2 
 net/appletalk/aarp.c                |   20 
 net/appletalk/ddp.c                 |   47 
 net/atm/br2684.c                    |   12 
 net/atm/clip.c                      |    2 
 net/atm/svc.c                       |    4 
 net/ax25/af_ax25.c                  |    2 
 net/core/neighbour.c                |   26 
 net/core/rtnetlink.c                |    2 
 net/core/sock.c                     |    4 
 net/core/wireless.c                 |    1 
 net/econet/af_econet.c              |   63 
 net/ipv4/ipmr.c                     |   10 
 net/ipv6/addrconf.c                 |    1 
 net/ipv6/ip6_flowlabel.c            |    8 
 net/irda/af_irda.c                  |   52 
 net/irda/parameters.c               |    4 
 net/netrom/af_netrom.c              |    7 
 net/packet/af_packet.c              |    5 
 net/rose/af_rose.c                  |    9 
 net/sched/cls_api.c                 |    2 
 net/sched/cls_rsvp.h                |    1 
 net/sched/sch_api.c                 |    4 
 net/sched/sch_cbq.c                 |    3 
 net/sctp/sm_make_chunk.c            |  135 +
 net/sctp/sm_statefuns.c             |   18 
 net/socket.c                        |    3 
 net/unix/af_unix.c                  |    8 
 net/unix/garbage.c                  |   18 
 net/x25/af_x25.c                    |    4 
 net/x25/x25_facilities.c            |   10 
 scripts/Configure                   |    4 
 scripts/checkpatch.pl               | 2615 ++++++++++++++++++++++++++++++++++++
 scripts/mkspec                      |    1 
 107 files changed, 4051 insertions(+), 337 deletions(-)

