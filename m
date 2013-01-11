From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 3.7.2 released
Date: Fri, 11 Jan 2013 23:46:13 +0000 (UTC)
Message-ID: <20130111234613.8ECFB725@oxcart-to.int.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@oxcart-to.int.kernel.org

Linux kernel version 3.7.2 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v3.0/patch-3.7.2.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.7.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                50031            194768
Full source                       83625776         499056640

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
 arch/arm/kernel/swp_emulate.c                  |    2 
 arch/arm/mach-realview/include/mach/board-eb.h |    2 
 arch/arm/mm/cache-v7.S                         |    6 
 arch/arm/mm/mmu.c                              |    2 
 arch/arm64/include/asm/pgtable.h               |    2 
 arch/arm64/include/asm/unistd32.h              |    2 
 arch/arm64/kernel/signal.c                     |   37 +-
 arch/cris/include/asm/io.h                     |   39 ++
 arch/sparc/crypto/aes_asm.S                    |   20 +
 arch/sparc/crypto/aes_glue.c                   |   31 ++
 arch/sparc/crypto/camellia_glue.c              |    3 
 arch/sparc/crypto/des_asm.S                    |    1 
 arch/sparc/crypto/des_glue.c                   |    6 
 arch/sparc/include/asm/hugetlb.h               |   10 
 arch/x86/kernel/hpet.c                         |    4 
 arch/x86/pci/common.c                          |    3 
 drivers/acpi/battery.c                         |   77 +++++
 drivers/acpi/scan.c                            |    2 
 drivers/acpi/sleep.c                           |  340 +++++++++++++------------
 drivers/acpi/video.c                           |   14 +
 drivers/acpi/video_detect.c                    |    8 
 drivers/ata/libata-acpi.c                      |    4 
 drivers/atm/solos-pci.c                        |    5 
 drivers/base/firmware_class.c                  |   30 +-
 drivers/bluetooth/btusb.c                      |    1 
 drivers/clk/ux500/u8500_clk.c                  |    2 
 drivers/hid/hid-core.c                         |    1 
 drivers/hwmon/fam15h_power.c                   |    4 
 drivers/input/joystick/walkera0701.c           |    7 
 drivers/input/keyboard/gpio_keys.c             |   13 
 drivers/input/keyboard/gpio_keys_polled.c      |   13 
 drivers/input/mouse/sentelic.c                 |    2 
 drivers/input/serio/i8042-x86ia64io.h          |    9 
 drivers/input/tablet/wacom_wac.c               |    3 
 drivers/misc/sgi-xp/xpc_main.c                 |   34 ++
 drivers/net/can/dev.c                          |    3 
 drivers/net/usb/cdc_ether.c                    |   15 +
 drivers/net/usb/qmi_wwan.c                     |   14 +
 drivers/net/wireless/b43/dma.c                 |    7 
 drivers/net/wireless/b43/main.c                |   12 
 drivers/net/wireless/b43/pio.c                 |    4 
 drivers/net/wireless/b43legacy/b43legacy.h     |    5 
 drivers/net/wireless/b43legacy/main.c          |   37 ++
 drivers/net/wireless/p54/p54usb.c              |    4 
 drivers/net/wireless/rtlwifi/usb.c             |    7 
 drivers/pci/pci-driver.c                       |   67 ++--
 drivers/pci/pci.c                              |    2 
 drivers/pci/pcie/portdrv_pci.c                 |   20 +
 drivers/pci/quirks.c                           |    7 
 drivers/pnp/pnpacpi/core.c                     |    5 
 drivers/rtc/class.c                            |    1 
 drivers/rtc/rtc-vt8500.c                       |   11 
 drivers/staging/bcm/InterfaceInit.c            |    3 
 drivers/staging/bcm/InterfaceInit.h            |    2 
 drivers/staging/omapdrm/omap_crtc.c            |    2 
 drivers/staging/telephony/ixj.c                |   24 -
 drivers/usb/chipidea/core.c                    |    3 
 drivers/usb/class/cdc-acm.c                    |   38 ++
 drivers/usb/core/message.c                     |   54 ++-
 drivers/usb/gadget/f_ecm.c                     |    4 
 drivers/usb/gadget/f_eem.c                     |    5 
 drivers/usb/gadget/f_midi.c                    |    1 
 drivers/usb/gadget/f_ncm.c                     |    4 
 drivers/usb/gadget/f_phonet.c                  |    8 
 drivers/usb/gadget/f_rndis.c                   |    4 
 drivers/usb/gadget/f_subset.c                  |    4 
 drivers/usb/gadget/f_uvc.c                     |   39 +-
 drivers/usb/gadget/tcm_usb_gadget.c            |    1 
 drivers/usb/host/ehci-pci.c                    |    3 
 drivers/usb/host/ehci-q.c                      |   12 
 drivers/usb/host/ehci-sched.c                  |    4 
 drivers/usb/host/ohci-q.c                      |   19 +
 drivers/usb/host/pci-quirks.c                  |    4 
 drivers/usb/host/xhci-mem.c                    |    9 
 drivers/usb/host/xhci-pci.c                    |    7 
 drivers/usb/host/xhci-ring.c                   |   32 +-
 drivers/usb/host/xhci.c                        |    4 
 drivers/usb/misc/Kconfig                       |    1 
 drivers/usb/musb/cppi_dma.c                    |    1 
 drivers/usb/musb/musb_dsps.c                   |    3 
 drivers/usb/serial/cp210x.c                    |    1 
 drivers/usb/serial/ftdi_sio.c                  |    3 
 drivers/usb/serial/ftdi_sio_ids.h              |    6 
 drivers/usb/serial/option.c                    |   25 +
 drivers/usb/storage/Kconfig                    |    2 
 drivers/virtio/virtio_ring.c                   |    7 
 fs/binfmt_misc.c                               |    5 
 fs/binfmt_script.c                             |    4 
 fs/cifs/readdir.c                              |   59 ++--
 fs/cifs/smb1ops.c                              |    7 
 fs/cifs/smb2pdu.c                              |    2 
 fs/cifs/transport.c                            |    6 
 fs/dcache.c                                    |    2 
 fs/exec.c                                      |   15 +
 fs/file_table.c                                |    2 
 fs/nfs/callback_proc.c                         |    2 
 fs/nfs/client.c                                |    3 
 fs/nfs/dir.c                                   |   27 +
 fs/nfs/direct.c                                |    8 
 fs/nfs/nfs4proc.c                              |   46 ++-
 fs/nfs/pnfs.c                                  |    2 
 fs/nfs/read.c                                  |   10 
 fs/nfs/super.c                                 |    2 
 fs/nfs/write.c                                 |   13 
 fs/nfsd/nfs4proc.c                             |    8 
 fs/nfsd/nfs4state.c                            |    2 
 fs/nfsd/nfs4xdr.c                              |   11 
 fs/nfsd/nfssvc.c                               |    2 
 fs/nfsd/vfs.c                                  |   10 
 fs/proc/array.c                                |    2 
 fs/splice.c                                    |    4 
 fs/xfs/xfs_aops.c                              |   81 ++---
 fs/xfs/xfs_log.c                               |    3 
 fs/xfs/xfs_qm.c                                |   15 -
 include/asm-generic/tlb.h                      |    9 
 include/linux/binfmts.h                        |    1 
 include/linux/cgroup.h                         |    1 
 include/linux/freezer.h                        |   50 +++
 include/linux/hugetlb_cgroup.h                 |    5 
 include/linux/kernel.h                         |    6 
 include/linux/libata.h                         |    1 
 include/linux/page-flags.h                     |    8 
 include/linux/pci_ids.h                        |    1 
 include/net/gro_cells.h                        |   14 -
 include/net/inet_connection_sock.h             |    1 
 include/net/ndisc.h                            |    7 
 kernel/cgroup.c                                |   76 ++---
 kernel/cgroup_freezer.c                        |   13 
 kernel/fork.c                                  |    9 
 kernel/irq/manage.c                            |   23 +
 kernel/printk.c                                |    5 
 kernel/rcutree.c                               |   15 -
 kernel/signal.c                                |    1 
 kernel/trace/ftrace.c                          |    2 
 kernel/trace/ring_buffer.c                     |   16 -
 lib/atomic64.c                                 |   17 -
 mm/dmapool.c                                   |   31 --
 mm/highmem.c                                   |    1 
 mm/hugetlb.c                                   |   11 
 mm/hugetlb_cgroup.c                            |   19 +
 mm/memory.c                                    |    5 
 mm/mempolicy.c                                 |   64 +---
 mm/page-writeback.c                            |   25 +
 net/9p/trans_virtio.c                          |    3 
 net/batman-adv/bat_iv_ogm.c                    |    2 
 net/bluetooth/hci_core.c                       |    2 
 net/bluetooth/rfcomm/sock.c                    |    4 
 net/bluetooth/sco.c                            |   19 -
 net/dccp/ipv4.c                                |    4 
 net/dccp/ipv6.c                                |    3 
 net/ipv4/inet_connection_sock.c                |   16 +
 net/ipv4/tcp_ipv4.c                            |    6 
 net/ipv6/ndisc.c                               |   17 +
 net/ipv6/tcp_ipv6.c                            |    3 
 net/mac802154/wpan.c                           |    2 
 net/sched/sch_htb.c                            |    2 
 net/sctp/probe.c                               |    3 
 sound/pci/hda/hda_intel.c                      |   19 +
 sound/pci/hda/patch_conexant.c                 |    1 
 sound/pci/hda/patch_hdmi.c                     |   18 -
 sound/pci/hda/patch_realtek.c                  |   34 ++
 sound/pci/hda/patch_sigmatel.c                 |    2 
 sound/usb/midi.c                               |   91 ++++--
 tools/perf/builtin-test.c                      |   38 --
 165 files changed, 1547 insertions(+), 833 deletions(-)

