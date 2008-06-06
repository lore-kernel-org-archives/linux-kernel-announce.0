From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.25.5 released
Date: Fri, 6 Jun 2008 23:44:51 GMT
Message-ID: <200806062344.m56Nip7p000902@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.25.5 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.25.5.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.25.5.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                40180            153837
Full source                       48589640         284672000

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
 arch/alpha/kernel/osf_sys.c                    |    1 
 arch/arm/kernel/kprobes-decode.c               |    2 
 arch/arm/kernel/kprobes.c                      |    2 
 arch/sparc/kernel/entry.S                      |    2 
 arch/sparc/kernel/process.c                    |   25 +-
 arch/sparc/kernel/ptrace.c                     |    6 
 arch/sparc/kernel/rtrap.S                      |   11 -
 arch/sparc/kernel/signal.c                     |   84 ++++----
 arch/sparc/kernel/sys_sparc.c                  |   51 ----
 arch/sparc64/kernel/etrap.S                    |    7 
 arch/sparc64/kernel/irq.c                      |    3 
 arch/sparc64/kernel/pci.c                      |  130 +++---------
 arch/sparc64/kernel/pci_common.c               |    6 
 arch/sparc64/kernel/pci_impl.h                 |    9 
 arch/sparc64/kernel/process.c                  |   18 +
 arch/sparc64/kernel/ptrace.c                   |   16 +
 arch/sparc64/kernel/rtrap.S                    |    1 
 arch/sparc64/kernel/signal.c                   |   88 ++++----
 arch/sparc64/kernel/signal32.c                 |   48 +++-
 arch/sparc64/kernel/sys_sparc.c                |   44 ----
 arch/sparc64/kernel/sys_sparc32.c              |   33 ---
 arch/x86/Kconfig                               |   12 +
 arch/x86/kernel/io_apic_32.c                   |    1 
 arch/x86/pci/common.c                          |    7 
 arch/x86/pci/init.c                            |    2 
 arch/x86/pci/irq.c                             |   12 -
 arch/x86/pci/pci.h                             |    2 
 crypto/authenc.c                               |    5 
 crypto/cryptd.c                                |    4 
 crypto/eseqiv.c                                |    3 
 drivers/acpi/processor_idle.c                  |    4 
 drivers/ata/ata_piix.c                         |   25 ++
 drivers/char/vt.c                              |    6 
 drivers/i2c/busses/i2c-piix4.c                 |   32 ++-
 drivers/infiniband/hw/nes/nes.c                |    4 
 drivers/infiniband/hw/nes/nes_cm.c             |    6 
 drivers/infiniband/hw/nes/nes_hw.c             |   20 -
 drivers/md/dm-exception-store.c                |    2 
 drivers/md/md.c                                |    2 
 drivers/md/raid5.c                             |   25 +-
 drivers/media/dvb/dvb-usb/dib0700_devices.c    |  259 ++++++++++++++++++++++---
 drivers/media/dvb/dvb-usb/dvb-usb-ids.h        |    9 
 drivers/media/video/cx88/cx88-cards.c          |    4 
 drivers/media/video/ivtv/ivtv-ioctl.c          |    3 
 drivers/media/video/tea5761.c                  |   15 -
 drivers/media/video/tuner-core.c               |    6 
 drivers/net/macvlan.c                          |    2 
 drivers/net/r8169.c                            |    8 
 drivers/net/s2io.c                             |    4 
 drivers/net/tehuti.c                           |   15 +
 drivers/net/tg3.c                              |   52 ++++-
 drivers/net/tg3.h                              |    1 
 drivers/net/wireless/b43/b43.h                 |    4 
 drivers/net/wireless/b43/dma.c                 |   73 +++++--
 drivers/net/wireless/b43/main.c                |   68 +++++-
 drivers/rtc/rtc-lib.c                          |    2 
 drivers/rtc/rtc-pcf8583.c                      |    2 
 drivers/scsi/aha152x.c                         |    8 
 drivers/scsi/libiscsi.c                        |   29 +-
 drivers/scsi/qla1280.c                         |    4 
 drivers/scsi/qla2xxx/qla_os.c                  |    2 
 drivers/serial/dz.c                            |    2 
 drivers/serial/mpc52xx_uart.c                  |    2 
 drivers/serial/serial_core.c                   |    3 
 drivers/serial/sunhv.c                         |    2 
 drivers/serial/sunsab.c                        |    2 
 drivers/serial/sunsu.c                         |    2 
 drivers/serial/sunzilog.c                      |   32 +--
 drivers/ssb/pci.c                              |    5 
 drivers/usb/core/hub.c                         |    1 
 drivers/usb/host/ohci-at91.c                   |    1 
 drivers/usb/host/ohci-ep93xx.c                 |    2 
 drivers/usb/host/ohci-hub.c                    |   43 ++++
 drivers/usb/host/ohci-omap.c                   |    2 
 drivers/usb/host/ohci-pci.c                    |   41 ---
 drivers/usb/host/ohci-pxa27x.c                 |    3 
 drivers/usb/host/ohci-sm501.c                  |    2 
 drivers/usb/host/ohci-ssb.c                    |    1 
 drivers/usb/serial/airprime.c                  |    2 
 drivers/usb/serial/sierra.c                    |    1 
 fs/aio.c                                       |   12 +
 fs/cifs/asn1.c                                 |   14 +
 fs/dnotify.c                                   |   11 +
 fs/jffs2/erase.c                               |   18 -
 fs/locks.c                                     |   17 +
 fs/reiserfs/ioctl.c                            |    4 
 fs/reiserfs/super.c                            |   17 +
 fs/utimes.c                                    |   17 +
 include/asm-sparc/mman.h                       |    5 
 include/asm-sparc/psr.h                        |    1 
 include/asm-sparc/ptrace.h                     |   13 +
 include/asm-sparc/signal.h                     |    8 
 include/asm-sparc64/mman.h                     |    5 
 include/asm-sparc64/psrcompat.h                |    2 
 include/asm-sparc64/pstate.h                   |    1 
 include/asm-sparc64/ptrace.h                   |   13 +
 include/asm-sparc64/signal.h                   |    8 
 include/asm-sparc64/ttable.h                   |    7 
 include/asm-x86/topology.h                     |   18 -
 include/crypto/scatterwalk.h                   |    4 
 include/linux/reiserfs_fs.h                    |    1 
 include/linux/rtnetlink.h                      |    4 
 include/net/ip_vs.h                            |    3 
 include/net/netfilter/nf_conntrack_tuple.h     |   10 
 include/net/tcp.h                              |    7 
 include/net/xfrm.h                             |    3 
 kernel/cgroup.c                                |    7 
 kernel/hrtimer.c                               |   34 ++-
 kernel/sched.c                                 |   66 ++++++
 mm/page_alloc.c                                |   14 +
 mm/pagewalk.c                                  |    8 
 net/can/af_can.c                               |   16 +
 net/can/raw.c                                  |    3 
 net/core/rtnetlink.c                           |    6 
 net/dccp/feat.c                                |    2 
 net/dccp/probe.c                               |    2 
 net/ipv4/ipvs/ip_vs_proto.c                    |    2 
 net/ipv4/ipvs/ip_vs_proto_ah.c                 |    1 
 net/ipv4/ipvs/ip_vs_proto_esp.c                |    1 
 net/ipv4/ipvs/ip_vs_proto_tcp.c                |    1 
 net/ipv4/ipvs/ip_vs_proto_udp.c                |    1 
 net/ipv4/ipvs/ip_vs_sync.c                     |   80 +++++--
 net/ipv4/netfilter/ip_queue.c                  |    5 
 net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c |    2 
 net/ipv4/netfilter/nf_nat_snmp_basic.c         |   14 +
 net/ipv4/tcp_probe.c                           |    9 
 net/ipv6/netfilter/ip6_queue.c                 |    5 
 net/ipv6/sit.c                                 |    2 
 net/key/af_key.c                               |    2 
 net/netfilter/nf_conntrack_core.c              |    4 
 net/netfilter/nfnetlink_queue.c                |    5 
 net/rose/af_rose.c                             |    6 
 net/sched/sch_htb.c                            |    8 
 net/tipc/socket.c                              |    4 
 net/xfrm/xfrm_policy.c                         |    2 
 net/xfrm/xfrm_state.c                          |    2 
 net/xfrm/xfrm_user.c                           |    2 
 security/selinux/hooks.c                       |   15 +
 139 files changed, 1339 insertions(+), 697 deletions(-)

