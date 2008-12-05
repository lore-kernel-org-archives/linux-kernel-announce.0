From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.27.8 released
Date: Fri, 5 Dec 2008 22:38:20 GMT
Message-ID: <200812052238.mB5McKge021091@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.27.8 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.27.8.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.27.8.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               125174            532236
Full source                       50384960         293877760

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/cciss.txt                          |    2 
 Documentation/filesystems/proc.txt               |   27 
 Documentation/i2c/busses/i2c-sis96x              |    2 
 Documentation/video4linux/CARDLIST.au0828        |    2 
 MAINTAINERS                                      |   20 
 Makefile                                         |    4 
 arch/arm/mach-pxa/include/mach/reset.h           |    9 
 arch/arm/mach-pxa/reset.c                        |    9 
 arch/arm/mach-pxa/spitz.c                        |    2 
 arch/arm/mach-pxa/tosa.c                         |    2 
 arch/arm/mm/cache-feroceon-l2.c                  |    4 
 arch/arm/mm/cache-xsc3l2.c                       |    4 
 arch/ia64/kernel/acpi.c                          |   29 
 arch/ia64/kernel/setup.c                         |    7 
 arch/m68k/kernel/ints.c                          |    2 
 arch/parisc/kernel/traps.c                       |   43 -
 arch/powerpc/configs/linkstation_defconfig       |    7 
 arch/powerpc/include/asm/mpic.h                  |    2 
 arch/powerpc/mm/hash_utils_64.c                  |    6 
 arch/powerpc/mm/numa.c                           |  113 ++
 arch/powerpc/platforms/85xx/mpc85xx_ds.c         |    3 
 arch/powerpc/platforms/86xx/pic.c                |    3 
 arch/powerpc/platforms/cell/spufs/file.c         |    3 
 arch/powerpc/platforms/cell/spufs/inode.c        |    2 
 arch/powerpc/platforms/embedded6xx/linkstation.c |   14 
 arch/powerpc/sysdev/mpic.c                       |   59 +
 arch/s390/kernel/smp.c                           |   24 
 arch/s390/kernel/topology.c                      |   11 
 arch/sparc64/kernel/trampoline.S                 |   18 
 arch/x86/Kconfig                                 |   20 
 arch/x86/kernel/acpi/boot.c                      |    8 
 arch/x86/kernel/acpi/sleep.c                     |    3 
 arch/x86/kernel/alternative.c                    |    2 
 arch/x86/kernel/amd_iommu_init.c                 |    2 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c        |   18 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.h        |   17 
 arch/x86/kernel/early-quirks.c                   |   97 ++
 arch/x86/kernel/io_apic_32.c                     |    3 
 arch/x86/kernel/process_64.c                     |    4 
 arch/x86/kernel/rtc.c                            |   22 
 arch/x86/kernel/setup.c                          |   41 +
 arch/x86/kernel/tsc.c                            |    8 
 arch/x86/mm/discontig_32.c                       |   35 
 arch/x86/mm/ioremap.c                            |    2 
 arch/x86/mm/pat.c                                |    4 
 arch/x86/power/hibernate_32.c                    |    4 
 arch/x86/xen/enlighten.c                         |    2 
 block/blk-merge.c                                |   19 
 drivers/acpi/bus.c                               |   16 
 drivers/acpi/button.c                            |    3 
 drivers/acpi/dock.c                              |    5 
 drivers/acpi/ec.c                                |  409 +++++-----
 drivers/acpi/hardware/hwsleep.c                  |   44 -
 drivers/acpi/pci_slot.c                          |    2 
 drivers/acpi/reboot.c                            |   25 
 drivers/acpi/scan.c                              |   35 
 drivers/acpi/sleep/main.c                        |   10 
 drivers/acpi/system.c                            |   25 
 drivers/ata/libata-core.c                        |   27 
 drivers/ata/libata-eh.c                          |   21 
 drivers/ata/pata_it821x.c                        |    3 
 drivers/ata/sata_nv.c                            |   53 -
 drivers/ata/sata_promise.c                       |   20 
 drivers/base/core.c                              |   25 
 drivers/base/sys.c                               |    6 
 drivers/block/cciss.c                            |   28 
 drivers/block/cpqarray.c                         |    7 
 drivers/char/agp/intel-agp.c                     |   12 
 drivers/char/hvc_console.c                       |   10 
 drivers/char/ipmi/ipmi_devintf.c                 |    1 
 drivers/char/ipmi/ipmi_msghandler.c              |   20 
 drivers/char/ipmi/ipmi_si_intf.c                 |   16 
 drivers/char/tty_io.c                            |    2 
 drivers/dca/dca-core.c                           |    2 
 drivers/dma/ioat_dma.c                           |   11 
 drivers/dma/iovlock.c                            |   17 
 drivers/edac/cell_edac.c                         |    2 
 drivers/firewire/fw-cdev.c                       |    6 
 drivers/firewire/fw-sbp2.c                       |   43 -
 drivers/firewire/fw-topology.c                   |    6 
 drivers/firewire/fw-transaction.h                |    2 
 drivers/gpio/gpiolib.c                           |    4 
 drivers/gpu/drm/i915/i915_dma.c                  |    2 
 drivers/hid/hidraw.c                             |    2 
 drivers/hid/usbhid/hid-quirks.c                  |    4 
 drivers/hwmon/ibmaem.c                           |   18 
 drivers/i2c/busses/scx200_i2c.c                  |    1 
 drivers/ieee1394/sbp2.c                          |    5 
 drivers/infiniband/hw/mlx4/cq.c                  |    5 
 drivers/input/keyboard/atkbd.c                   |   35 
 drivers/input/mouse/alps.c                       |    1 
 drivers/md/dm-kcopyd.c                           |   13 
 drivers/md/dm-raid1.c                            |    1 
 drivers/md/dm-snap.c                             |   10 
 drivers/md/linear.c                              |    2 
 drivers/md/md.c                                  |    6 
 drivers/md/raid10.c                              |    2 
 drivers/media/dvb/frontends/s5h1411.c            |   35 
 drivers/media/dvb/siano/sms-cards.c              |    4 
 drivers/media/video/au0828/au0828-cards.c        |    3 
 drivers/media/video/compat_ioctl32.c             |    3 
 drivers/media/video/pvrusb2/pvrusb2-encoder.c    |    4 
 drivers/media/video/pvrusb2/pvrusb2-hdw.c        |    6 
 drivers/media/video/tvaudio.c                    |   17 
 drivers/misc/sony-laptop.c                       |    6 
 drivers/mmc/core/core.c                          |    6 
 drivers/mtd/chips/cfi_cmdset_0002.c              |   13 
 drivers/mtd/chips/jedec_probe.c                  |   10 
 drivers/net/Kconfig                              |    1 
 drivers/net/atl1e/atl1e_hw.c                     |    4 
 drivers/net/atl1e/atl1e_main.c                   |    2 
 drivers/net/atlx/atl1.c                          |    7 
 drivers/net/atlx/atl1.h                          |    2 
 drivers/net/bnx2x_init.h                         |    9 
 drivers/net/bnx2x_main.c                         |    6 
 drivers/net/bonding/bond_alb.c                   |   13 
 drivers/net/e1000/e1000_ethtool.c                |    8 
 drivers/net/e1000/e1000_main.c                   |    1 
 drivers/net/e1000e/ethtool.c                     |    8 
 drivers/net/e1000e/netdev.c                      |    1 
 drivers/net/igb/igb_ethtool.c                    |    8 
 drivers/net/igb/igb_main.c                       |    1 
 drivers/net/pcmcia/axnet_cs.c                    |    1 
 drivers/net/pcmcia/pcnet_cs.c                    |    1 
 drivers/net/r8169.c                              |  134 +--
 drivers/net/sky2.c                               |   19 
 drivers/net/wireless/ath5k/base.c                |   67 -
 drivers/net/wireless/ath5k/base.h                |    3 
 drivers/net/wireless/ath5k/hw.c                  |   22 
 drivers/net/wireless/ath5k/initvals.c            |    2 
 drivers/net/wireless/ath9k/core.h                |    2 
 drivers/net/wireless/ath9k/main.c                |    8 
 drivers/net/wireless/ath9k/recv.c                |   10 
 drivers/net/wireless/b43legacy/xmit.c            |    2 
 drivers/net/wireless/hostap/hostap_wlan.h        |    5 
 drivers/net/wireless/iwlwifi/iwl-5000-hw.h       |    7 
 drivers/net/wireless/iwlwifi/iwl-5000.c          |   63 -
 drivers/net/wireless/iwlwifi/iwl-agn.c           |   63 +
 drivers/net/wireless/iwlwifi/iwl-calib.c         |   60 +
 drivers/net/wireless/iwlwifi/iwl-core.c          |   27 
 drivers/net/wireless/iwlwifi/iwl-core.h          |    8 
 drivers/net/wireless/iwlwifi/iwl-dev.h           |   15 
 drivers/net/wireless/iwlwifi/iwl-power.c         |   39 +
 drivers/net/wireless/iwlwifi/iwl-power.h         |    4 
 drivers/net/wireless/iwlwifi/iwl-scan.c          |    8 
 drivers/net/wireless/iwlwifi/iwl3945-base.c      |    7 
 drivers/net/wireless/libertas/main.c             |   20 
 drivers/net/wireless/libertas/scan.c             |    4 
 drivers/net/wireless/rtl8187_dev.c               |    6 
 drivers/net/wireless/zd1211rw/zd_usb.c           |    2 
 drivers/parport/parport_serial.c                 |    2 
 drivers/pci/hotplug/acpiphp.h                    |    9 
 drivers/pci/hotplug/acpiphp_core.c               |   32 
 drivers/pci/hotplug/cpci_hotplug.h               |    6 
 drivers/pci/hotplug/cpci_hotplug_core.c          |   75 -
 drivers/pci/hotplug/cpci_hotplug_pci.c           |    4 
 drivers/pci/hotplug/cpqphp.h                     |   13 
 drivers/pci/hotplug/cpqphp_core.c                |   45 -
 drivers/pci/hotplug/fakephp.c                    |   18 
 drivers/pci/hotplug/ibmphp.h                     |    5 
 drivers/pci/hotplug/ibmphp_ebda.c                |   19 
 drivers/pci/hotplug/pci_hotplug_core.c           |   64 -
 drivers/pci/hotplug/pciehp.h                     |    9 
 drivers/pci/hotplug/pciehp_core.c                |   49 -
 drivers/pci/hotplug/pciehp_ctrl.c                |   48 -
 drivers/pci/hotplug/pciehp_hpc.c                 |    1 
 drivers/pci/hotplug/rpaphp_slot.c                |   10 
 drivers/pci/hotplug/sgi_hotplug.c                |   18 
 drivers/pci/hotplug/shpchp.h                     |    9 
 drivers/pci/hotplug/shpchp_core.c                |   52 -
 drivers/pci/hotplug/shpchp_ctrl.c                |   48 -
 drivers/pci/probe.c                              |    2 
 drivers/pci/slot.c                               |  143 +++
 drivers/pnp/pnpacpi/core.c                       |    6 
 drivers/rtc/rtc-cmos.c                           |   33 
 drivers/scsi/device_handler/scsi_dh_rdac.c       |    2 
 drivers/scsi/dpt_i2o.c                           |    4 
 drivers/scsi/qla2xxx/qla_def.h                   |    1 
 drivers/scsi/qla2xxx/qla_init.c                  |    2 
 drivers/scsi/qla2xxx/qla_mbx.c                   |    2 
 drivers/scsi/qla2xxx/qla_os.c                    |    1 
 drivers/scsi/qla2xxx/qla_sup.c                   |   23 
 drivers/scsi/sd.c                                |   10 
 drivers/spi/pxa2xx_spi.c                         |   24 
 drivers/usb/atm/speedtch.c                       |   12 
 drivers/usb/class/cdc-acm.c                      |   12 
 drivers/usb/class/cdc-wdm.c                      |    2 
 drivers/usb/core/driver.c                        |    3 
 drivers/usb/core/hcd.c                           |   39 -
 drivers/usb/core/hcd.h                           |    7 
 drivers/usb/core/hub.c                           |    3 
 drivers/usb/core/message.c                       |    1 
 drivers/usb/core/sysfs.c                         |    2 
 drivers/usb/core/urb.c                           |   15 
 drivers/usb/gadget/f_acm.c                       |    4 
 drivers/usb/gadget/f_rndis.c                     |    3 
 drivers/usb/gadget/s3c2410_udc.c                 |    2 
 drivers/usb/gadget/u_ether.c                     |    7 
 drivers/usb/host/Kconfig                         |   23 
 drivers/usb/host/ehci-hcd.c                      |   40 -
 drivers/usb/host/ehci-pci.c                      |   24 
 drivers/usb/host/ehci-ps3.c                      |    1 
 drivers/usb/host/ehci-sched.c                    |    4 
 drivers/usb/host/isp1760-if.c                    |   22 
 drivers/usb/host/ohci-hcd.c                      |    3 
 drivers/usb/host/ohci-hub.c                      |   87 +-
 drivers/usb/host/ohci-ps3.c                      |    3 
 drivers/usb/host/uhci-hcd.c                      |    3 
 drivers/usb/mon/mon_bin.c                        |    5 
 drivers/usb/musb/Kconfig                         |    4 
 drivers/usb/musb/cppi_dma.h                      |    4 
 drivers/usb/musb/davinci.c                       |   20 
 drivers/usb/musb/musb_core.c                     |    8 
 drivers/usb/musb/musb_host.c                     |    6 
 drivers/usb/storage/unusual_devs.h               |   16 
 drivers/video/console/fbcon.c                    |    4 
 drivers/video/fbmem.c                            |    2 
 drivers/watchdog/hpwdt.c                         |    5 
 fs/cifs/cifs_debug.c                             |  277 +++----
 fs/cifs/cifs_spnego.c                            |    3 
 fs/cifs/cifsfs.c                                 |   30 
 fs/cifs/cifsglob.h                               |   44 -
 fs/cifs/cifsproto.h                              |    2 
 fs/cifs/cifssmb.c                                |  101 +-
 fs/cifs/connect.c                                |  869 +++++++++++------------
 fs/cifs/file.c                                   |    9 
 fs/cifs/misc.c                                   |   90 +-
 fs/cifs/readdir.c                                |  129 +--
 fs/cifs/transport.c                              |   48 -
 fs/ecryptfs/keystore.c                           |   31 
 fs/eventpoll.c                                   |   85 ++
 fs/ext2/balloc.c                                 |    3 
 fs/ext2/dir.c                                    |   60 -
 fs/ext3/balloc.c                                 |    3 
 fs/ext3/dir.c                                    |   32 
 fs/ext3/resize.c                                 |    3 
 fs/ext3/super.c                                  |   11 
 fs/ext4/dir.c                                    |   31 
 fs/ext4/ext4.h                                   |   10 
 fs/ext4/ialloc.c                                 |    2 
 fs/ext4/inode.c                                  |    7 
 fs/ext4/ioctl.c                                  |   21 
 fs/ext4/mballoc.c                                |   18 
 fs/ext4/migrate.c                                |   10 
 fs/ext4/resize.c                                 |    9 
 fs/ext4/super.c                                  |   77 +-
 fs/ext4/xattr.c                                  |    6 
 fs/hfs/catalog.c                                 |    4 
 fs/hfsplus/bitmap.c                              |   12 
 fs/hfsplus/catalog.c                             |    5 
 fs/inotify.c                                     |  150 +++
 fs/jbd/transaction.c                             |   16 
 fs/jbd2/checkpoint.c                             |   41 -
 fs/jbd2/commit.c                                 |    5 
 fs/jbd2/journal.c                                |   49 +
 fs/jffs2/background.c                            |   10 
 fs/jffs2/compr_lzo.c                             |   15 
 fs/namespace.c                                   |    7 
 fs/proc/proc_sysctl.c                            |    1 
 fs/proc/task_mmu.c                               |   34 
 fs/xfs/linux-2.6/xfs_buf.c                       |    3 
 fs/xfs/linux-2.6/xfs_buf.h                       |    8 
 fs/xfs/linux-2.6/xfs_super.c                     |    2 
 fs/xfs/xfs_log.c                                 |    7 
 include/asm-generic/memory_model.h               |    2 
 include/asm-x86/mmzone_32.h                      |    4 
 include/asm-x86/pci_64.h                         |   14 
 include/linux/bio.h                              |    7 
 include/linux/idr.h                              |    3 
 include/linux/inotify.h                          |   11 
 include/linux/jbd2.h                             |    3 
 include/linux/libata.h                           |    1 
 include/linux/mtd/cfi.h                          |   22 
 include/linux/pci.h                              |    8 
 include/linux/pci_hotplug.h                      |   11 
 include/linux/sched.h                            |    8 
 include/linux/usb.h                              |    2 
 include/math-emu/op-common.h                     |   17 
 include/net/af_unix.h                            |    2 
 include/net/scm.h                                |    5 
 ipc/util.c                                       |   14 
 kernel/Makefile                                  |    4 
 kernel/audit_tree.c                              |   91 +-
 kernel/auditfilter.c                             |   14 
 kernel/cgroup.c                                  |    8 
 kernel/cpuset.c                                  |   12 
 kernel/module.c                                  |    2 
 kernel/sched.c                                   |   13 
 kernel/sched_clock.c                             |    6 
 kernel/sched_features.h                          |    2 
 kernel/sched_rt.c                                |    8 
 kernel/sched_stats.h                             |    2 
 kernel/sysctl.c                                  |   10 
 kernel/trace/Kconfig                             |    3 
 lib/idr.c                                        |   14 
 lib/scatterlist.c                                |    2 
 mm/hugetlb.c                                     |   54 +
 mm/internal.h                                    |   29 
 mm/page_alloc.c                                  |   28 
 mm/page_isolation.c                              |    5 
 mm/rmap.c                                        |   42 -
 net/core/scm.c                                   |   24 
 net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c   |    2 
 net/ipv4/netfilter/nf_nat_snmp_basic.c           |    1 
 net/ipv4/proc.c                                  |   58 -
 net/ipv4/tcp_output.c                            |   33 
 net/ipv6/tcp_ipv6.c                              |    2 
 net/mac80211/debugfs_netdev.c                    |   14 
 net/mac80211/wext.c                              |    2 
 net/netfilter/xt_iprange.c                       |    8 
 net/rfkill/rfkill.c                              |    5 
 net/sched/sch_generic.c                          |    2 
 net/unix/af_unix.c                               |   33 
 net/unix/garbage.c                               |   62 +
 scripts/package/builddeb                         |   24 
 scripts/package/mkspec                           |    3 
 security/commoncap.c                             |    6 
 security/keys/internal.h                         |    1 
 security/keys/process_keys.c                     |    2 
 security/keys/request_key.c                      |    4 
 sound/core/control.c                             |    4 
 sound/pci/hda/hda_intel.c                        |   29 
 sound/pci/hda/patch_sigmatel.c                   |   15 
 323 files changed, 4402 insertions(+), 2546 deletions(-)

