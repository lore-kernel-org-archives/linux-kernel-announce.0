From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.30.4 released
Date: Thu, 30 Jul 2009 23:31:49 GMT
Message-ID: <200907302331.n6UNVnex010523@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.30.4 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.30.4.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.30.4.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                70914            285270
Full source                       59416037         353177600

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/RCU/rculist_nulls.txt                        |    7 
 Documentation/sysctl/vm.txt                                |   12 -
 Makefile                                                   |    7 
 arch/alpha/include/asm/percpu.h                            |    6 
 arch/arm/include/asm/cacheflush.h                          |    8 
 arch/blackfin/kernel/irqchip.c                             |   50 +----
 arch/blackfin/kernel/setup.c                               |    3 
 arch/blackfin/mach-common/head.S                           |   16 -
 arch/blackfin/mach-common/smp.c                            |   13 -
 arch/parisc/include/asm/system.h                           |    4 
 arch/parisc/include/asm/tlbflush.h                         |   14 -
 arch/parisc/kernel/cache.c                                 |   23 +-
 arch/parisc/kernel/pci-dma.c                               |   12 -
 arch/powerpc/sysdev/mpic.c                                 |   29 +--
 arch/x86/boot/video-vga.c                                  |   44 +++-
 arch/x86/crypto/aesni-intel_asm.S                          |    5 
 arch/x86/include/asm/apic.h                                |    2 
 arch/x86/include/asm/cpufeature.h                          |    1 
 arch/x86/include/asm/fixmap.h                              |   10 -
 arch/x86/include/asm/io_apic.h                             |    2 
 arch/x86/include/asm/kvm_host.h                            |    2 
 arch/x86/include/asm/mce.h                                 |    2 
 arch/x86/include/asm/pci.h                                 |    2 
 arch/x86/include/asm/uaccess.h                             |    4 
 arch/x86/include/asm/uaccess_64.h                          |   10 -
 arch/x86/include/asm/uv/uv_bau.h                           |    2 
 arch/x86/include/asm/uv/uv_hub.h                           |    6 
 arch/x86/include/asm/vmx.h                                 |    1 
 arch/x86/kernel/apic/io_apic.c                             |   14 -
 arch/x86/kernel/apic/x2apic_uv_x.c                         |   15 +
 arch/x86/kernel/cpu/amd.c                                  |   14 +
 arch/x86/kernel/cpu/mcheck/mce_32.c                        |    1 
 arch/x86/kernel/cpu/mcheck/mce_64.c                        |    1 
 arch/x86/kernel/hpet.c                                     |    3 
 arch/x86/kernel/mfgpt_32.c                                 |    2 
 arch/x86/kernel/pci-gart_64.c                              |   10 -
 arch/x86/kernel/reboot.c                                   |    9 +
 arch/x86/kernel/setup.c                                    |   28 +--
 arch/x86/kernel/tlb_uv.c                                   |   24 +-
 arch/x86/kernel/tsc.c                                      |   11 +
 arch/x86/kernel/vm86_32.c                                  |    9 -
 arch/x86/kernel/vsyscall_64.c                              |    8 
 arch/x86/kvm/vmx.c                                         |   64 ++++++-
 arch/x86/kvm/x86.c                                         |   10 +
 arch/x86/mm/gup.c                                          |    9 -
 arch/x86/mm/memtest.c                                      |   14 -
 arch/x86/mm/srat_64.c                                      |    6 
 arch/x86/pci/i386.c                                        |    7 
 block/blk-core.c                                           |   10 -
 drivers/ata/libata-eh.c                                    |    4 
 drivers/block/floppy.c                                     |    5 
 drivers/char/epca.c                                        |    9 -
 drivers/char/moxa.c                                        |    7 
 drivers/char/n_r3964.c                                     |   26 +-
 drivers/char/pcmcia/cm4000_cs.c                            |    3 
 drivers/char/rocket.c                                      |    6 
 drivers/char/vc_screen.c                                   |    4 
 drivers/char/vt_ioctl.c                                    |    3 
 drivers/firmware/memmap.c                                  |   16 +
 drivers/gpu/drm/i915/i915_drv.c                            |    4 
 drivers/hid/usbhid/hiddev.c                                |    4 
 drivers/hwmon/max6650.c                                    |    1 
 drivers/ide/ide-cd.c                                       |    2 
 drivers/infiniband/hw/mlx4/qp.c                            |    4 
 drivers/input/misc/wistron_btns.c                          |    9 +
 drivers/isdn/gigaset/ev-layer.c                            |   44 ++--
 drivers/isdn/hisax/hfc_pci.c                               |   41 +++-
 drivers/isdn/hisax/hisax.h                                 |    2 
 drivers/md/dm-exception-store.c                            |    9 -
 drivers/md/dm-exception-store.h                            |    2 
 drivers/md/dm-log.c                                        |    2 
 drivers/md/dm-mpath.c                                      |   12 +
 drivers/md/dm-raid1.c                                      |    1 
 drivers/md/dm-table.c                                      |    3 
 drivers/md/dm.c                                            |    4 
 drivers/md/md.c                                            |    8 
 drivers/md/raid5.c                                         |    4 
 drivers/media/dvb/frontends/lgdt3305.c                     |   17 -
 drivers/media/video/Makefile                               |   77 ++++----
 drivers/media/video/cx18/cx18-controls.c                   |    2 
 drivers/media/video/cx2341x.c                              |    2 
 drivers/media/video/ivtv/ivtv-controls.c                   |    2 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c                  |   56 +++---
 drivers/media/video/saa7134/Makefile                       |    3 
 drivers/mmc/host/mvsdio.c                                  |    4 
 drivers/net/8139too.c                                      |    1 
 drivers/net/arm/ixp4xx_eth.c                               |    4 
 drivers/net/bonding/bond_sysfs.c                           |    1 
 drivers/net/e1000e/netdev.c                                |    2 
 drivers/net/ehea/ehea_main.c                               |    2 
 drivers/net/gianfar.c                                      |    2 
 drivers/net/mv643xx_eth.c                                  |    7 
 drivers/net/plip.c                                         |    3 
 drivers/net/ps3_gelic_net.c                                |    1 
 drivers/net/ps3_gelic_wireless.c                           |    1 
 drivers/net/sky2.c                                         |   31 +--
 drivers/net/smc91x.c                                       |    1 
 drivers/net/smsc911x.c                                     |    1 
 drivers/net/sunvnet.c                                      |    2 
 drivers/net/tun.c                                          |   11 -
 drivers/net/usb/kaweth.c                                   |    3 
 drivers/net/usb/pegasus.c                                  |   32 ++-
 drivers/net/via-rhine.c                                    |    1 
 drivers/net/via-velocity.c                                 |    2 
 drivers/net/wireless/ath5k/base.c                          |    7 
 drivers/net/wireless/ath9k/calib.c                         |   67 ++-----
 drivers/net/wireless/ath9k/main.c                          |   28 ++-
 drivers/net/wireless/ath9k/pci.c                           |   18 ++
 drivers/net/wireless/ath9k/regd.c                          |    2 
 drivers/net/wireless/ath9k/xmit.c                          |    5 
 drivers/net/wireless/orinoco/main.c                        |    3 
 drivers/parport/parport_pc.c                               |   34 +++
 drivers/pci/iova.c                                         |   26 ++
 drivers/pci/pci.c                                          |    7 
 drivers/pci/pcie/aspm.c                                    |    4 
 drivers/scsi/qla2xxx/qla_dbg.c                             |    2 
 drivers/scsi/sg.c                                          |    4 
 drivers/scsi/sym53c8xx_2/sym_hipd.c                        |    5 
 drivers/scsi/zalon.c                                       |    2 
 drivers/serial/bfin_5xx.c                                  |    5 
 drivers/spi/spi_mpc83xx.c                                  |    6 
 drivers/staging/rt2870/rt2870.h                            |    1 
 drivers/staging/rtl8187se/ieee80211/ieee80211_softmac_wx.c |   12 -
 drivers/staging/uc2322/aten2011.c                          |    4 
 drivers/usb/class/usbtmc.c                                 |    6 
 drivers/usb/core/devio.c                                   |   57 +++---
 drivers/usb/core/message.c                                 |   63 +++++--
 drivers/usb/gadget/ether.c                                 |   11 -
 drivers/usb/host/ehci-sched.c                              |   12 -
 drivers/usb/serial/aircable.c                              |    5 
 drivers/usb/serial/belkin_sa.c                             |    7 
 drivers/usb/serial/cp210x.c                                |    6 
 drivers/usb/serial/cyberjack.c                             |   20 +-
 drivers/usb/serial/cypress_m8.c                            |   11 -
 drivers/usb/serial/digi_acceleport.c                       |   20 +-
 drivers/usb/serial/empeg.c                                 |    8 
 drivers/usb/serial/ftdi_sio.c                              |   14 -
 drivers/usb/serial/garmin_gps.c                            |   16 +
 drivers/usb/serial/generic.c                               |    9 -
 drivers/usb/serial/io_edgeport.c                           |   29 ++-
 drivers/usb/serial/io_tables.h                             |   12 -
 drivers/usb/serial/io_ti.c                                 |   22 +-
 drivers/usb/serial/ipaq.c                                  |    7 
 drivers/usb/serial/iuu_phoenix.c                           |    6 
 drivers/usb/serial/keyspan.c                               |   13 +
 drivers/usb/serial/keyspan.h                               |   12 -
 drivers/usb/serial/keyspan_pda.c                           |    4 
 drivers/usb/serial/kl5kusb105.c                            |   39 ++--
 drivers/usb/serial/kobil_sct.c                             |   12 -
 drivers/usb/serial/mct_u232.c                              |   13 -
 drivers/usb/serial/mos7720.c                               |    9 -
 drivers/usb/serial/mos7840.c                               |   42 ++++
 drivers/usb/serial/omninet.c                               |   19 +-
 drivers/usb/serial/opticon.c                               |   14 +
 drivers/usb/serial/option.c                                |   17 +
 drivers/usb/serial/oti6858.c                               |    7 
 drivers/usb/serial/pl2303.c                                |    5 
 drivers/usb/serial/sierra.c                                |   28 ++-
 drivers/usb/serial/spcp8x5.c                               |    5 
 drivers/usb/serial/symbolserial.c                          |   14 +
 drivers/usb/serial/ti_usb_3410_5052.c                      |   13 -
 drivers/usb/serial/usb-serial.c                            |   29 +--
 drivers/usb/serial/visor.c                                 |   13 -
 drivers/usb/serial/whiteheat.c                             |    6 
 drivers/video/fbmon.c                                      |    4 
 fs/Kconfig                                                 |   14 -
 fs/binfmt_elf.c                                            |    4 
 fs/bio.c                                                   |   22 +-
 fs/cifs/connect.c                                          |    1 
 fs/cifs/dir.c                                              |    9 +
 fs/cifs/file.c                                             |   10 -
 fs/ecryptfs/keystore.c                                     |   13 +
 fs/eventpoll.c                                             |   21 +-
 fs/fs-writeback.c                                          |    2 
 fs/fuse/dev.c                                              |    2 
 fs/fuse/file.c                                             |    2 
 fs/jfs/jfs_extent.c                                        |    1 
 fs/nfsd/vfs.c                                              |    3 
 fs/nilfs2/cpfile.c                                         |    5 
 fs/nilfs2/dat.c                                            |    9 -
 fs/nilfs2/segment.c                                        |   30 ---
 fs/ocfs2/super.c                                           |   32 ++-
 fs/partitions/check.c                                      |    2 
 fs/ramfs/inode.c                                           |    9 -
 fs/xfs/xfs_bmap.c                                          |    1 
 include/asm-generic/percpu.h                               |    4 
 include/linux/blkdev.h                                     |    1 
 include/linux/firmware-map.h                               |   12 -
 include/linux/kvm_host.h                                   |    1 
 include/linux/mlx4/qp.h                                    |    1 
 include/linux/mm.h                                         |    2 
 include/linux/percpu-defs.h                                |    3 
 include/linux/personality.h                                |    5 
 include/linux/sched.h                                      |    3 
 include/linux/security.h                                   |    2 
 include/linux/serial.h                                     |  116 +++++++------
 include/linux/usb/serial.h                                 |   12 -
 include/linux/vmstat.h                                     |    3 
 include/net/netfilter/nf_conntrack.h                       |    4 
 include/net/x25.h                                          |    2 
 kernel/acct.c                                              |    6 
 kernel/freezer.c                                           |    7 
 kernel/futex.c                                             |   43 ++--
 kernel/resource.c                                          |    2 
 kernel/sched.c                                             |    1 
 kernel/sched_rt.c                                          |   18 +-
 kernel/sysctl.c                                            |    2 
 kernel/trace/trace_functions.c                             |   10 -
 lib/Kconfig.debug                                          |    2 
 lib/dma-debug.c                                            |   45 ++++-
 lib/genalloc.c                                             |    1 
 mm/Kconfig                                                 |   19 ++
 mm/filemap.c                                               |    1 
 mm/internal.h                                              |    4 
 mm/mmap.c                                                  |    3 
 mm/nommu.c                                                 |    3 
 mm/page_alloc.c                                            |   32 ++-
 mm/slab.c                                                  |    2 
 mm/slob.c                                                  |    2 
 mm/slub.c                                                  |    2 
 mm/vmscan.c                                                |   66 ++++++-
 mm/vmstat.c                                                |    3 
 net/dsa/mv88e6xxx.c                                        |    2 
 net/ipv4/arp.c                                             |    7 
 net/ipv4/netfilter/nf_nat_helper.c                         |   17 +
 net/ipv4/route.c                                           |   36 +++-
 net/mac80211/rc80211_minstrel.c                            |    2 
 net/netfilter/nf_conntrack_core.c                          |   36 +++-
 net/netfilter/nf_conntrack_proto_tcp.c                     |    6 
 net/netfilter/nf_log.c                                     |   22 +-
 net/netfilter/xt_quota.c                                   |    1 
 net/netfilter/xt_rateest.c                                 |    2 
 net/wireless/nl80211.c                                     |   26 ++
 net/wireless/reg.c                                         |   10 +
 net/wireless/scan.c                                        |    1 
 net/x25/af_x25.c                                           |   23 ++
 net/x25/x25_timer.c                                        |    2 
 security/Kconfig                                           |   22 --
 security/integrity/ima/ima_audit.c                         |    2 
 security/integrity/ima/ima_main.c                          |   13 -
 security/security.c                                        |    3 
 sound/core/seq/seq_midi_event.c                            |    8 
 sound/isa/cmi8330.c                                        |    2 
 sound/pci/ca0106/ca0106_main.c                             |    4 
 sound/pci/ca0106/ca0106_mixer.c                            |    6 
 sound/pci/hda/patch_realtek.c                              |   35 ++-
 sound/pci/hda/patch_sigmatel.c                             |    7 
 sound/pci/intel8x0.c                                       |   24 +-
 sound/pci/oxygen/virtuoso.c                                |    2 
 sound/soc/codecs/wm8753.c                                  |    2 
 sound/soc/codecs/wm8903.c                                  |    4 
 sound/usb/usbaudio.c                                       |   14 +
 virt/kvm/kvm_main.c                                        |   18 +-
 253 files changed, 1894 insertions(+), 1079 deletions(-)

