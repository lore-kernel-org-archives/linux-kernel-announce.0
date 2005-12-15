From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.14.4 released
Date: Thu, 15 Dec 2005 06:32:48 GMT
Message-ID: <200512150632.jBF6WmCF021283@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.14.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.14.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.14.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                19705             68627
Full source                       39194430         224102400

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                     |    2 
 arch/i386/kernel/cpu/mtrr/main.c             |    8 +
 arch/ppc64/Kconfig                           |   11 --
 arch/s390/appldata/appldata_base.c           |    7 -
 arch/x86_64/kernel/setup.c                   |    5 
 drivers/acpi/scan.c                          |    2 
 drivers/block/cciss.c                        |    7 -
 drivers/block/cfq-iosched.c                  |    4 
 drivers/block/pktcdvd.c                      |    2 
 drivers/char/agp/sworks-agp.c                |   18 +++
 drivers/char/i8k.c                           |    6 -
 drivers/char/rtc.c                           |   65 +++++++-----
 drivers/char/vt_ioctl.c                      |    6 +
 drivers/hwmon/it87.c                         |    7 +
 drivers/hwmon/lm78.c                         |    2 
 drivers/hwmon/w83627hf.c                     |    8 +
 drivers/ide/ide-floppy.c                     |    6 -
 drivers/infiniband/core/mad.c                |    4 
 drivers/isdn/hardware/eicon/os_4bri.c        |    3 
 drivers/media/dvb/ttpci/Kconfig              |    1 
 drivers/media/video/cx88/cx88-cards.c        |    2 
 drivers/media/video/saa7134/saa7134-cards.c  |    2 
 drivers/message/i2o/pci.c                    |    2 
 drivers/net/bonding/bond_main.c              |   32 ++----
 drivers/net/bonding/bonding.h                |    7 -
 drivers/net/wan/hdlc_cisco.c                 |    6 +
 drivers/net/wan/hdlc_fr.c                    |    4 
 drivers/net/wan/hdlc_generic.c               |    6 +
 drivers/net/wireless/airo.c                  |    2 
 drivers/net/wireless/airo.h                  |    9 +
 drivers/net/wireless/airo_cs.c               |    6 -
 drivers/net/wireless/prism54/islpci_eth.c    |    7 -
 drivers/pcmcia/i82365.c                      |    1 
 drivers/scsi/dpt_i2o.c                       |    9 -
 drivers/scsi/libata-core.c                   |    2 
 drivers/scsi/libata-scsi.c                   |    9 +
 drivers/usb/core/sysfs.c                     |   33 ++----
 drivers/usb/core/usb.c                       |   63 ++++--------
 drivers/usb/image/microtek.c                 |   31 ++++--
 drivers/usb/image/microtek.h                 |    2 
 fs/exec.c                                    |   10 +
 fs/locks.c                                   |    2 
 fs/xattr.c                                   |    2 
 fs/xfs/Kconfig                               |    2 
 include/asm-alpha/barrier.h                  |    2 
 include/linux/cciss_ioctl.h                  |    2 
 include/linux/proc_fs.h                      |    1 
 include/linux/sysctl.h                       |    3 
 include/net/ipv6.h                           |    2 
 kernel/audit.c                               |    4 
 kernel/ptrace.c                              |    5 
 kernel/signal.c                              |    4 
 kernel/sysctl.c                              |  136 +++++++++++++++++++++------
 mm/truncate.c                                |    6 -
 net/bridge/br_if.c                           |    1 
 net/core/datagram.c                          |    4 
 net/ipv4/fib_frontend.c                      |    8 +
 net/ipv4/ipvs/ip_vs_core.c                   |    7 -
 net/ipv4/netfilter/ip_conntrack_ftp.c        |    4 
 net/ipv4/netfilter/ip_conntrack_irc.c        |    4 
 net/ipv4/netfilter/ip_conntrack_netlink.c    |    9 +
 net/ipv4/netfilter/ip_conntrack_proto_icmp.c |    3 
 net/ipv4/netfilter/ip_conntrack_proto_tcp.c  |    6 +
 net/ipv4/netfilter/ip_conntrack_tftp.c       |    4 
 net/ipv4/netfilter/ip_nat_core.c             |    6 -
 net/ipv4/netfilter/ip_nat_helper_pptp.c      |   28 +++++
 net/ipv4/netfilter/ip_nat_proto_gre.c        |    4 
 net/ipv4/netfilter/ip_nat_proto_unknown.c    |    2 
 net/ipv4/tcp_bic.c                           |    2 
 net/ipv6/datagram.c                          |    2 
 net/ipv6/exthdrs.c                           |   22 ++++
 net/ipv6/ip6_flowlabel.c                     |   12 --
 net/ipv6/raw.c                               |    4 
 net/ipv6/udp.c                               |    4 
 net/netfilter/nf_queue.c                     |    2 
 sound/pci/nm256/nm256.c                      |   23 +++-
 76 files changed, 495 insertions(+), 256 deletions(-)

