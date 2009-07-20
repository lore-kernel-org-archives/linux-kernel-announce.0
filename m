From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.30.2 released
Date: Mon, 20 Jul 2009 04:19:40 GMT
Message-ID: <200907200419.n6K4JepB005213@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.30.2 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.30.2.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.30.2.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                50497            203357
Full source                       59414632         353167360

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/sysctl/vm.txt               |   12 ++-
 Makefile                                  |    7 +
 arch/alpha/include/asm/percpu.h           |    6 -
 arch/arm/include/asm/cacheflush.h         |    8 ++
 arch/blackfin/kernel/irqchip.c            |   50 ++----------
 arch/blackfin/kernel/setup.c              |    3 
 arch/blackfin/mach-common/head.S          |   16 ++--
 arch/blackfin/mach-common/smp.c           |   13 +--
 arch/x86/crypto/aesni-intel_asm.S         |    5 -
 arch/x86/include/asm/apic.h               |    2 
 arch/x86/include/asm/cpufeature.h         |    1 
 arch/x86/include/asm/kvm_host.h           |    2 
 arch/x86/include/asm/mce.h                |    2 
 arch/x86/include/asm/pci.h                |    2 
 arch/x86/include/asm/uv/uv_bau.h          |    2 
 arch/x86/include/asm/uv/uv_hub.h          |    6 +
 arch/x86/include/asm/vmx.h                |    1 
 arch/x86/kernel/apic/x2apic_uv_x.c        |   15 ++-
 arch/x86/kernel/cpu/amd.c                 |   14 +++
 arch/x86/kernel/cpu/mcheck/mce_32.c       |    1 
 arch/x86/kernel/cpu/mcheck/mce_64.c       |    1 
 arch/x86/kernel/hpet.c                    |    3 
 arch/x86/kernel/pci-gart_64.c             |   10 ++
 arch/x86/kernel/reboot.c                  |    9 ++
 arch/x86/kernel/setup.c                   |   15 ---
 arch/x86/kernel/tlb_uv.c                  |   24 +++---
 arch/x86/kernel/tsc.c                     |   11 ++
 arch/x86/kernel/vm86_32.c                 |    9 +-
 arch/x86/kernel/vsyscall_64.c             |    8 --
 arch/x86/kvm/vmx.c                        |   64 +++++++++++++++-
 arch/x86/kvm/x86.c                        |   10 ++
 arch/x86/mm/memtest.c                     |   14 +--
 block/blk-core.c                          |   10 +-
 drivers/block/floppy.c                    |    5 +
 drivers/char/epca.c                       |    9 +-
 drivers/char/moxa.c                       |    7 +
 drivers/char/n_r3964.c                    |   26 +++---
 drivers/char/pcmcia/cm4000_cs.c           |    3 
 drivers/char/rocket.c                     |    6 -
 drivers/char/vt_ioctl.c                   |    3 
 drivers/firmware/memmap.c                 |   16 ++--
 drivers/gpu/drm/i915/i915_drv.c           |    4 -
 drivers/ide/ide-cd.c                      |    2 
 drivers/infiniband/hw/mlx4/qp.c           |    4 +
 drivers/isdn/hisax/hfc_pci.c              |   41 +++++++---
 drivers/isdn/hisax/hisax.h                |    2 
 drivers/md/dm-exception-store.c           |    9 +-
 drivers/md/dm-exception-store.h           |    2 
 drivers/md/dm-log.c                       |    2 
 drivers/md/dm-mpath.c                     |   12 +++
 drivers/md/dm-table.c                     |    3 
 drivers/md/dm.c                           |    4 +
 drivers/md/md.c                           |    8 +-
 drivers/md/raid5.c                        |    4 -
 drivers/media/dvb/frontends/lgdt3305.c    |   17 ----
 drivers/media/video/Makefile              |   77 ++++++++++---------
 drivers/media/video/cx18/cx18-controls.c  |    2 
 drivers/media/video/cx2341x.c             |    2 
 drivers/media/video/ivtv/ivtv-controls.c  |    2 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c |   56 ++++++++------
 drivers/media/video/saa7134/Makefile      |    3 
 drivers/net/bonding/bond_sysfs.c          |    1 
 drivers/net/e1000e/netdev.c               |    2 
 drivers/net/mv643xx_eth.c                 |    7 -
 drivers/net/sky2.c                        |   31 ++++----
 drivers/net/tun.c                         |   11 +-
 drivers/net/usb/pegasus.c                 |   29 ++++---
 drivers/net/via-velocity.c                |    2 
 drivers/net/wireless/ath5k/base.c         |    7 +
 drivers/net/wireless/ath9k/calib.c        |   67 ++++++-----------
 drivers/net/wireless/ath9k/main.c         |   28 ++++---
 drivers/net/wireless/ath9k/pci.c          |   18 ++++
 drivers/net/wireless/ath9k/regd.c         |    2 
 drivers/net/wireless/ath9k/xmit.c         |    5 -
 drivers/parport/parport_pc.c              |   34 +++++++-
 drivers/pci/iova.c                        |   26 +++++-
 drivers/pci/pci.c                         |    7 +
 drivers/pci/pcie/aspm.c                   |    4 +
 drivers/scsi/qla2xxx/qla_dbg.c            |    2 
 drivers/scsi/sym53c8xx_2/sym_hipd.c       |    5 -
 drivers/serial/bfin_5xx.c                 |    5 +
 drivers/spi/spi_mpc83xx.c                 |    6 -
 drivers/staging/uc2322/aten2011.c         |    4 -
 drivers/usb/class/usbtmc.c                |    6 +
 drivers/usb/serial/aircable.c             |    5 -
 drivers/usb/serial/belkin_sa.c            |    7 -
 drivers/usb/serial/cp210x.c               |    6 -
 drivers/usb/serial/cyberjack.c            |   20 +++--
 drivers/usb/serial/cypress_m8.c           |   11 +-
 drivers/usb/serial/digi_acceleport.c      |   20 +++--
 drivers/usb/serial/empeg.c                |    8 --
 drivers/usb/serial/ftdi_sio.c             |   14 ---
 drivers/usb/serial/garmin_gps.c           |   16 +++-
 drivers/usb/serial/generic.c              |    9 +-
 drivers/usb/serial/io_edgeport.c          |   29 +++++--
 drivers/usb/serial/io_tables.h            |   12 ++-
 drivers/usb/serial/io_ti.c                |   22 ++++-
 drivers/usb/serial/ipaq.c                 |    7 -
 drivers/usb/serial/iuu_phoenix.c          |    6 -
 drivers/usb/serial/keyspan.c              |   13 +++
 drivers/usb/serial/keyspan.h              |   12 ++-
 drivers/usb/serial/keyspan_pda.c          |    4 -
 drivers/usb/serial/kl5kusb105.c           |   39 +++++-----
 drivers/usb/serial/kobil_sct.c            |   12 +--
 drivers/usb/serial/mct_u232.c             |   13 +--
 drivers/usb/serial/mos7720.c              |    9 --
 drivers/usb/serial/mos7840.c              |   42 +++++++++-
 drivers/usb/serial/omninet.c              |   19 +++-
 drivers/usb/serial/opticon.c              |   14 ++-
 drivers/usb/serial/option.c               |   17 +++-
 drivers/usb/serial/oti6858.c              |    7 -
 drivers/usb/serial/pl2303.c               |    5 -
 drivers/usb/serial/sierra.c               |   28 ++++++-
 drivers/usb/serial/spcp8x5.c              |    5 -
 drivers/usb/serial/symbolserial.c         |   14 ++-
 drivers/usb/serial/ti_usb_3410_5052.c     |   10 +-
 drivers/usb/serial/usb-serial.c           |   29 +++----
 drivers/usb/serial/visor.c                |   13 +--
 drivers/usb/serial/whiteheat.c            |    6 -
 fs/Kconfig                                |   14 +--
 fs/cifs/file.c                            |   10 +-
 fs/eventpoll.c                            |   21 +++--
 fs/fs-writeback.c                         |    2 
 fs/fuse/dev.c                             |    2 
 fs/fuse/file.c                            |    2 
 fs/jfs/jfs_extent.c                       |    1 
 fs/ocfs2/super.c                          |   32 ++++----
 fs/ramfs/inode.c                          |    9 +-
 fs/xfs/xfs_bmap.c                         |    1 
 include/asm-generic/percpu.h              |    4 +
 include/linux/firmware-map.h              |   12 +--
 include/linux/kvm_host.h                  |    1 
 include/linux/mlx4/qp.h                   |    1 
 include/linux/mm.h                        |    2 
 include/linux/percpu-defs.h               |    3 
 include/linux/personality.h               |    5 +
 include/linux/security.h                  |    2 
 include/linux/serial.h                    |  116 +++++++++++++++++-------------
 include/linux/usb/serial.h                |   12 ++-
 include/linux/vmstat.h                    |    3 
 include/net/x25.h                         |    2 
 kernel/acct.c                             |    6 +
 kernel/futex.c                            |   43 ++++++-----
 kernel/resource.c                         |    2 
 kernel/sysctl.c                           |    2 
 kernel/trace/trace_functions.c            |    8 +-
 lib/Kconfig.debug                         |    2 
 lib/dma-debug.c                           |   45 ++++++++++-
 lib/genalloc.c                            |    1 
 mm/Kconfig                                |   19 ++++
 mm/mmap.c                                 |    3 
 mm/page_alloc.c                           |    6 -
 mm/vmscan.c                               |   55 ++++++++++++--
 mm/vmstat.c                               |    3 
 net/ipv4/arp.c                            |    7 -
 net/ipv4/route.c                          |   36 ++++++++-
 net/mac80211/rc80211_minstrel.c           |    2 
 net/wireless/nl80211.c                    |   26 ++++--
 net/wireless/reg.c                        |   10 ++
 net/x25/af_x25.c                          |   23 ++++-
 net/x25/x25_timer.c                       |    2 
 security/Kconfig                          |   22 -----
 security/integrity/ima/ima_audit.c        |    2 
 security/integrity/ima/ima_main.c         |   13 ++-
 security/security.c                       |    3 
 sound/core/seq/seq_midi_event.c           |    8 +-
 sound/isa/cmi8330.c                       |    2 
 sound/pci/ca0106/ca0106_mixer.c           |    6 +
 sound/pci/hda/patch_realtek.c             |    2 
 sound/pci/intel8x0.c                      |   24 +++---
 sound/soc/codecs/wm8903.c                 |    4 -
 virt/kvm/kvm_main.c                       |   18 +++-
 172 files changed, 1365 insertions(+), 796 deletions(-)

