From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.12.4 released
Date: Fri, 5 Aug 2005 21:56:25 GMT
Message-ID: <200508052156.j75LuPIJ018445@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.12.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.12.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.12.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                11404             36963
Full source                       37498292         212725760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                     |    4 -
 arch/i386/kernel/cpu/cpufreq/powernow-k8.c   |    8 +-
 arch/i386/kernel/process.c                   |    2 
 arch/ia64/kernel/ptrace.c                    |   15 +++--
 arch/ia64/kernel/signal.c                    |    5 +
 arch/ppc/kernel/time.c                       |   13 ++--
 arch/um/kernel/process.c                     |   48 ++++++++++-------
 arch/x86_64/ia32/syscall32.c                 |    7 ++
 drivers/acpi/pci_irq.c                       |    3 -
 drivers/char/rocket.c                        |    3 -
 drivers/char/tpm/tpm.c                       |   76 ---------------------------
 drivers/char/tpm/tpm.h                       |    2 
 drivers/char/tpm/tpm_atmel.c                 |   16 +++--
 drivers/char/tpm/tpm_nsc.c                   |   16 +++--
 drivers/char/tty_ioctl.c                     |    4 -
 drivers/media/video/cx88/cx88-video.c        |    2 
 drivers/net/e1000/e1000_main.c               |    1 
 drivers/net/hamradio/Kconfig                 |    2 
 drivers/net/shaper.c                         |   40 +++++---------
 drivers/pci/pci-driver.c                     |    2 
 drivers/scsi/qla2xxx/qla_init.c              |    4 +
 drivers/scsi/qla2xxx/qla_os.c                |   55 +++++++++----------
 fs/bio.c                                     |    1 
 fs/char_dev.c                                |    2 
 fs/exec.c                                    |    1 
 include/asm-i386/string.h                    |   32 +++++++----
 include/linux/if_shaper.h                    |    2 
 include/linux/skbuff.h                       |    2 
 mm/memory.c                                  |    2 
 net/8021q/vlan.c                             |    8 ++
 net/ipv4/ip_output.c                         |    3 -
 net/ipv4/netfilter/ip_conntrack_core.c       |    3 +
 net/ipv4/netfilter/ip_conntrack_standalone.c |    7 ++
 net/ipv4/netfilter/ip_nat_proto_tcp.c        |    3 -
 net/ipv4/netfilter/ip_nat_proto_udp.c        |    3 -
 net/ipv6/netfilter/ip6_queue.c               |    2 
 net/netlink/af_netlink.c                     |   11 ++-
 net/packet/af_packet.c                       |    6 ++
 net/xfrm/xfrm_user.c                         |    3 +
 39 files changed, 210 insertions(+), 209 deletions(-)

