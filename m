From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.25.9 released
Date: Tue, 24 Jun 2008 21:44:56 GMT
Message-ID: <200806242144.m5OLiukE015168@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.25.9 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.25.9.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.25.9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                74972            295971
Full source                       48609371         284682240

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/cciss.txt                        |    5 
 Makefile                                       |    2 
 arch/alpha/kernel/osf_sys.c                    |    1 
 arch/arm/kernel/kprobes-decode.c               |    2 
 arch/arm/kernel/kprobes.c                      |    2 
 arch/powerpc/kernel/smp.c                      |    2 
 arch/powerpc/kernel/vdso.c                     |    2 
 arch/powerpc/mm/slb.c                          |   21 +-
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
 arch/x86/Kconfig                               |   15 -
 arch/x86/kernel/apic_64.c                      |    2 
 arch/x86/kernel/cpu/cpufreq/acpi-cpufreq.c     |   10 
 arch/x86/kernel/io_apic_32.c                   |    1 
 arch/x86/kernel/irq_32.c                       |    2 
 arch/x86/kernel/process_32.c                   |   28 ++
 arch/x86/kernel/process_64.c                   |   29 ++
 arch/x86/kernel/ptrace.c                       |    7 
 arch/x86/kernel/setup_32.c                     |   10 
 arch/x86/kernel/tsc_32.c                       |   38 +--
 arch/x86/kernel/tsc_64.c                       |    5 
 arch/x86/lib/copy_user_64.S                    |   25 +-
 arch/x86/lib/copy_user_nocache_64.S            |   25 +-
 arch/x86/mm/init_64.c                          |    2 
 arch/x86/pci/common.c                          |   24 --
 arch/x86/pci/init.c                            |    2 
 arch/x86/pci/irq.c                             |   12 -
 arch/x86/pci/pci.h                             |    2 
 crypto/authenc.c                               |    5 
 crypto/cryptd.c                                |    4 
 crypto/eseqiv.c                                |    3 
 drivers/acpi/processor_idle.c                  |    4 
 drivers/acpi/tables/tbinstal.c                 |   18 -
 drivers/ata/ata_piix.c                         |   25 ++
 drivers/ata/libata-core.c                      |   12 +
 drivers/block/brd.c                            |    1 
 drivers/block/cciss.c                          |   21 +-
 drivers/char/pcmcia/ipwireless/hardware.c      |   20 +
 drivers/char/vt.c                              |    6 
 drivers/cpufreq/cpufreq.c                      |    6 
 drivers/hid/hid-input.c                        |    5 
 drivers/hid/usbhid/hid-quirks.c                |   38 +--
 drivers/hwmon/adt7473.c                        |    3 
 drivers/hwmon/lm85.c                           |    2 
 drivers/i2c/busses/i2c-nforce2.c               |   28 ++
 drivers/i2c/busses/i2c-piix4.c                 |   32 ++-
 drivers/i2c/chips/max6875.c                    |    3 
 drivers/ide/pci/opti621.c                      |   23 --
 drivers/infiniband/core/umem.c                 |    2 
 drivers/infiniband/hw/nes/nes.c                |    4 
 drivers/infiniband/hw/nes/nes_cm.c             |    6 
 drivers/infiniband/hw/nes/nes_hw.c             |   20 -
 drivers/infiniband/ulp/ipoib/ipoib_multicast.c |    6 
 drivers/md/dm-exception-store.c                |    2 
 drivers/md/md.c                                |    4 
 drivers/md/raid5.c                             |   35 ++-
 drivers/media/dvb/dvb-usb/dib0700_devices.c    |  259 ++++++++++++++++++++++---
 drivers/media/dvb/dvb-usb/dvb-usb-ids.h        |    9 
 drivers/media/video/bt8xx/bttv-driver.c        |    2 
 drivers/media/video/cx88/cx88-cards.c          |    4 
 drivers/media/video/ivtv/ivtv-ioctl.c          |    3 
 drivers/media/video/tea5761.c                  |   15 -
 drivers/media/video/tuner-core.c               |    6 
 drivers/media/video/videobuf-core.c            |    3 
 drivers/mmc/host/wbsd.c                        |   21 --
 drivers/net/atl1/atl1_hw.c                     |    1 
 drivers/net/atl1/atl1_main.c                   |    1 
 drivers/net/cassini.c                          |   11 -
 drivers/net/forcedeth.c                        |   20 +
 drivers/net/macvlan.c                          |    2 
 drivers/net/pppol2tp.c                         |  124 +++++++++--
 drivers/net/ps3_gelic_wireless.c               |    2 
 drivers/net/r8169.c                            |    8 
 drivers/net/s2io.c                             |    4 
 drivers/net/tehuti.c                           |   15 +
 drivers/net/tg3.c                              |   52 ++++-
 drivers/net/tg3.h                              |    1 
 drivers/net/virtio_net.c                       |    8 
 drivers/net/wireless/b43/b43.h                 |    5 
 drivers/net/wireless/b43/dma.c                 |   75 +++++--
 drivers/net/wireless/b43/main.c                |   96 +++++++--
 drivers/rtc/rtc-lib.c                          |    2 
 drivers/rtc/rtc-pcf8583.c                      |    2 
 drivers/scsi/aha152x.c                         |    8 
 drivers/scsi/hosts.c                           |    5 
 drivers/scsi/libiscsi.c                        |   29 +-
 drivers/scsi/qla1280.c                         |    4 
 drivers/scsi/qla2xxx/qla_os.c                  |    2 
 drivers/scsi/sr.c                              |    3 
 drivers/serial/8250.c                          |    4 
 drivers/serial/dz.c                            |    2 
 drivers/serial/mpc52xx_uart.c                  |    2 
 drivers/serial/serial_core.c                   |    8 
 drivers/serial/sunhv.c                         |    3 
 drivers/serial/sunsab.c                        |    2 
 drivers/serial/sunsu.c                         |    2 
 drivers/serial/sunzilog.c                      |   32 +--
 drivers/ssb/driver_pcicore.c                   |    4 
 drivers/ssb/pci.c                              |    5 
 drivers/usb/class/cdc-acm.c                    |    3 
 drivers/usb/core/hub.c                         |    1 
 drivers/usb/host/ohci-at91.c                   |    1 
 drivers/usb/host/ohci-ep93xx.c                 |    2 
 drivers/usb/host/ohci-hub.c                    |   43 ++++
 drivers/usb/host/ohci-omap.c                   |    5 
 drivers/usb/host/ohci-pci.c                    |   41 ---
 drivers/usb/host/ohci-pxa27x.c                 |    3 
 drivers/usb/host/ohci-sm501.c                  |    5 
 drivers/usb/host/ohci-ssb.c                    |    1 
 drivers/usb/misc/ldusb.c                       |    4 
 drivers/usb/serial/airprime.c                  |    2 
 drivers/usb/serial/ftdi_sio.c                  |    1 
 drivers/usb/serial/ftdi_sio.h                  |    6 
 drivers/usb/serial/option.c                    |    9 
 drivers/usb/serial/pl2303.c                    |    1 
 drivers/usb/serial/pl2303.h                    |    1 
 drivers/usb/serial/sierra.c                    |    1 
 drivers/usb/storage/unusual_devs.h             |   10 
 drivers/video/hgafb.c                          |   26 +-
 drivers/video/modedb.c                         |    1 
 drivers/watchdog/hpwdt.c                       |  154 +++++++-------
 fs/aio.c                                       |   12 +
 fs/cifs/asn1.c                                 |   14 +
 fs/cifs/cifsfs.c                               |   21 --
 fs/cifs/inode.c                                |   15 +
 fs/dnotify.c                                   |   11 +
 fs/ecryptfs/crypto.c                           |    2 
 fs/ecryptfs/ecryptfs_kernel.h                  |    2 
 fs/ecryptfs/file.c                             |    2 
 fs/ecryptfs/inode.c                            |   15 -
 fs/ecryptfs/read_write.c                       |   22 --
 fs/ext3/xattr.c                                |    5 
 fs/ext4/xattr.c                                |    5 
 fs/jffs2/erase.c                               |   18 -
 fs/locks.c                                     |   17 +
 fs/pipe.c                                      |    3 
 fs/proc/array.c                                |    2 
 fs/proc/base.c                                 |   33 ++-
 fs/proc/task_mmu.c                             |   28 --
 fs/reiserfs/ioctl.c                            |    4 
 fs/reiserfs/super.c                            |   17 +
 fs/utimes.c                                    |   17 +
 fs/xfs/linux-2.6/xfs_buf.c                     |   24 +-
 fs/xfs/linux-2.6/xfs_buf.h                     |   19 +
 include/asm-m68k/bitops.h                      |   46 ++++
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
 include/asm-x86/page_32.h                      |    3 
 include/asm-x86/tlbflush.h                     |   13 +
 include/asm-x86/topology.h                     |   18 -
 include/crypto/scatterwalk.h                   |    4 
 include/linux/bootmem.h                        |    2 
 include/linux/capability.h                     |   29 ++
 include/linux/hid.h                            |    1 
 include/linux/pci_ids.h                        |    1 
 include/linux/reiserfs_fs.h                    |    1 
 include/linux/rtnetlink.h                      |    4 
 include/linux/types.h                          |    4 
 include/media/videobuf-core.h                  |    3 
 include/net/ip_vs.h                            |    3 
 include/net/netfilter/nf_conntrack_tuple.h     |   10 
 include/net/netlink.h                          |   11 -
 include/net/tcp.h                              |    7 
 include/net/xfrm.h                             |    3 
 init/Kconfig                                   |    1 
 kernel/capability.c                            |  111 +++++++---
 kernel/cgroup.c                                |    9 
 kernel/hrtimer.c                               |   34 ++-
 kernel/sched.c                                 |   66 ++++++
 mm/bootmem.c                                   |    4 
 mm/memory.c                                    |   41 +++
 mm/memory_hotplug.c                            |   78 +++----
 mm/migrate.c                                   |   10 
 mm/mmap.c                                      |    8 
 mm/page_alloc.c                                |   17 +
 mm/pagewalk.c                                  |    8 
 net/8021q/vlan.c                               |    4 
 net/ax25/ax25_subr.c                           |   11 -
 net/bluetooth/rfcomm/core.c                    |    2 
 net/bluetooth/rfcomm/tty.c                     |   13 +
 net/can/af_can.c                               |   16 +
 net/can/raw.c                                  |   24 +-
 net/core/dev.c                                 |    2 
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
 net/ipv4/route.c                               |    2 
 net/ipv4/tcp_cong.c                            |   12 -
 net/ipv4/tcp_input.c                           |   65 ++++--
 net/ipv4/tcp_output.c                          |   10 
 net/ipv4/tcp_probe.c                           |    9 
 net/ipv6/netfilter/ip6_queue.c                 |    5 
 net/ipv6/netfilter/nf_conntrack_reasm.c        |    8 
 net/ipv6/route.c                               |    2 
 net/ipv6/sit.c                                 |    2 
 net/key/af_key.c                               |    4 
 net/mac80211/ieee80211_sta.c                   |    5 
 net/netfilter/nf_conntrack_core.c              |    7 
 net/netfilter/nf_conntrack_expect.c            |    4 
 net/netfilter/nf_conntrack_h323_main.c         |   22 +-
 net/netfilter/nfnetlink_queue.c                |    5 
 net/netfilter/xt_connlimit.c                   |    3 
 net/netfilter/xt_iprange.c                     |    2 
 net/rose/af_rose.c                             |    6 
 net/sched/cls_api.c                            |    2 
 net/sched/sch_htb.c                            |    8 
 net/sctp/socket.c                              |    4 
 net/tipc/socket.c                              |    4 
 net/xfrm/xfrm_policy.c                         |    2 
 net/xfrm/xfrm_state.c                          |    2 
 net/xfrm/xfrm_user.c                           |    2 
 security/selinux/hooks.c                       |   15 +
 security/smack/smack_lsm.c                     |   12 +
 sound/pci/emu10k1/emu10k1_main.c               |   15 -
 sound/pci/hda/patch_realtek.c                  |    1 
 248 files changed, 2423 insertions(+), 1310 deletions(-)

