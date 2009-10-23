From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.31.5 released
Date: Fri, 23 Oct 2009 01:04:25 GMT
Message-ID: <200910230104.n9N14PBm021216@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.31.5 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.31.5.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.31.5.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               109683            454998
Full source                       61448996         365762560

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/connector/cn_test.c                    |    4 
 Documentation/connector/connector.txt                |    8 
 Documentation/networking/timestamping/timestamping.c |    2 
 MAINTAINERS                                          |    8 
 Makefile                                             |    7 
 arch/alpha/kernel/core_marvel.c                      |    2 
 arch/alpha/kernel/core_titan.c                       |    2 
 arch/alpha/kernel/pci_impl.h                         |    2 
 arch/alpha/kernel/pci_iommu.c                        |    4 
 arch/arm/Makefile                                    |    2 
 arch/arm/kernel/Makefile                             |    3 
 arch/arm/mach-pxa/cpufreq-pxa2xx.c                   |    2 
 arch/arm/mach-pxa/sharpsl_pm.c                       |    4 
 arch/arm/mm/highmem.c                                |    8 
 arch/cris/Makefile                                   |    2 
 arch/cris/kernel/Makefile                            |    1 
 arch/mips/Makefile                                   |   27 -
 arch/mips/kernel/vmlinux.lds.S                       |   13 
 arch/powerpc/Makefile                                |    2 
 arch/powerpc/include/asm/mmu-hash64.h                |    2 
 arch/powerpc/include/asm/pmc.h                       |   16 
 arch/powerpc/include/asm/pte-common.h                |    2 
 arch/powerpc/kernel/lparcfg.c                        |    3 
 arch/powerpc/kernel/perf_counter.c                   |   68 +--
 arch/powerpc/kernel/rtas.c                           |    7 
 arch/powerpc/kernel/sysfs.c                          |    3 
 arch/powerpc/mm/pgtable.c                            |   19 
 arch/powerpc/mm/slb.c                                |   16 
 arch/powerpc/platforms/pseries/reconfig.c            |    9 
 arch/powerpc/platforms/pseries/setup.c               |    4 
 arch/sparc/Makefile                                  |    4 
 arch/sparc/kernel/Makefile                           |    6 
 arch/um/Makefile                                     |    9 
 arch/um/kernel/Makefile                              |    3 
 arch/um/kernel/vmlinux.lds.S                         |    3 
 arch/x86/ia32/ia32entry.S                            |   36 +
 arch/x86/include/asm/checksum_32.h                   |    3 
 arch/x86/include/asm/elf.h                           |    2 
 arch/x86/include/asm/kvm_host.h                      |    1 
 arch/x86/include/asm/paravirt.h                      |   38 -
 arch/x86/include/asm/processor.h                     |   12 
 arch/x86/include/asm/stackprotector.h                |    4 
 arch/x86/include/asm/system.h                        |    2 
 arch/x86/include/asm/uv/uv_hub.h                     |    2 
 arch/x86/kernel/acpi/cstate.c                        |    2 
 arch/x86/kernel/amd_iommu.c                          |    2 
 arch/x86/kernel/apic/es7000_32.c                     |    2 
 arch/x86/kernel/cpu/common.c                         |    2 
 arch/x86/kernel/cpu/cpufreq/powernow-k8.c            |   17 
 arch/x86/kernel/head_32.S                            |    1 
 arch/x86/kernel/i8253.c                              |   27 -
 arch/x86/kernel/kvm.c                                |    7 
 arch/x86/kernel/kvmclock.c                           |    4 
 arch/x86/kvm/lapic.c                                 |   11 
 arch/x86/kvm/mmu.c                                   |    9 
 arch/x86/kvm/svm.c                                   |   25 -
 arch/x86/kvm/vmx.c                                   |   19 
 arch/x86/kvm/x86.c                                   |   36 +
 arch/x86/kvm/x86_emulate.c                           |   17 
 arch/x86/mm/Makefile                                 |    5 
 arch/x86/mm/mmap.c                                   |   17 
 arch/x86/mm/pageattr.c                               |    9 
 arch/x86/xen/Makefile                                |    2 
 arch/x86/xen/enlighten.c                             |  139 +++++-
 arch/x86/xen/smp.c                                   |    1 
 arch/x86/xen/spinlock.c                              |   28 -
 arch/xtensa/kernel/Makefile                          |    3 
 block/blk-sysfs.c                                    |    7 
 drivers/acpi/osl.c                                   |    8 
 drivers/acpi/pci_slot.c                              |    4 
 drivers/ata/ahci.c                                   |    4 
 drivers/ata/libata-core.c                            |    8 
 drivers/ata/libata-eh.c                              |   50 +-
 drivers/ata/pata_amd.c                               |    3 
 drivers/base/base.h                                  |    2 
 drivers/base/bus.c                                   |   23 -
 drivers/base/core.c                                  |    2 
 drivers/char/agp/intel-agp.c                         |   39 +
 drivers/char/pty.c                                   |    6 
 drivers/char/tpm/tpm.c                               |    8 
 drivers/char/tpm/tpm_tis.c                           |   12 
 drivers/char/tty_buffer.c                            |   29 -
 drivers/char/tty_io.c                                |    1 
 drivers/char/tty_ldisc.c                             |    7 
 drivers/char/tty_port.c                              |   29 +
 drivers/connector/cn_proc.c                          |    3 
 drivers/connector/cn_queue.c                         |   15 
 drivers/connector/connector.c                        |   24 -
 drivers/gpu/drm/i915/i915_drv.c                      |    2 
 drivers/gpu/drm/i915/i915_gem.c                      |   55 +-
 drivers/gpu/drm/i915/i915_gem_tiling.c               |   15 
 drivers/gpu/drm/i915/i915_reg.h                      |    6 
 drivers/gpu/drm/i915/intel_bios.c                    |    3 
 drivers/gpu/drm/i915/intel_crt.c                     |    9 
 drivers/gpu/drm/i915/intel_display.c                 |   35 +
 drivers/gpu/drm/i915/intel_lvds.c                    |   11 
 drivers/gpu/drm/i915/intel_sdvo.c                    |   96 +++-
 drivers/hid/hid-core.c                               |    1 
 drivers/i2c/busses/i2c-amd756.c                      |    2 
 drivers/i2c/busses/i2c-amd8111.c                     |    4 
 drivers/i2c/busses/i2c-i801.c                        |    4 
 drivers/i2c/busses/i2c-isch.c                        |    2 
 drivers/i2c/busses/i2c-piix4.c                       |    4 
 drivers/i2c/busses/i2c-sis96x.c                      |    2 
 drivers/i2c/busses/i2c-viapro.c                      |    2 
 drivers/ide/sis5513.c                                |   10 
 drivers/isdn/gigaset/interface.c                     |   19 
 drivers/macintosh/therm_adt746x.c                    |    4 
 drivers/macintosh/therm_pm72.c                       |    4 
 drivers/macintosh/windfarm_lm75_sensor.c             |    4 
 drivers/macintosh/windfarm_max6690_sensor.c          |    4 
 drivers/macintosh/windfarm_smu_sat.c                 |    4 
 drivers/md/dm-log-userspace-base.c                   |    2 
 drivers/md/dm-log-userspace-transfer.c               |    6 
 drivers/media/video/em28xx/em28xx-cards.c            |   32 -
 drivers/media/video/em28xx/em28xx.h                  |    4 
 drivers/media/video/saa7134/saa7134-input.c          |   56 +-
 drivers/media/video/saa7134/saa7134.h                |    4 
 drivers/message/fusion/mptbase.c                     |   10 
 drivers/mfd/ab3100-core.c                            |    2 
 drivers/mmc/core/mmc.c                               |   10 
 drivers/mmc/core/sd.c                                |   10 
 drivers/mtd/chips/cfi_cmdset_0002.c                  |   11 
 drivers/mtd/chips/cfi_util.c                         |    4 
 drivers/mtd/nand/ndfc.c                              |    4 
 drivers/mtd/ofpart.c                                 |   21 
 drivers/net/appletalk/ipddp.c                        |    3 
 drivers/net/can/vcan.c                               |    2 
 drivers/net/e1000e/82571.c                           |    4 
 drivers/net/iseries_veth.c                           |    2 
 drivers/net/mlx4/eq.c                                |   42 -
 drivers/net/mlx4/main.c                              |    9 
 drivers/net/mlx4/mlx4.h                              |    7 
 drivers/net/sky2.c                                   |    4 
 drivers/net/tun.c                                    |    4 
 drivers/net/usb/kaweth.c                             |   18 
 drivers/net/usb/smsc95xx.c                           |    2 
 drivers/net/usb/usbnet.c                             |    2 
 drivers/net/wireless/ath/ar9170/usb.c                |    2 
 drivers/net/wireless/ath/ath5k/ath5k.h               |    1 
 drivers/net/wireless/ath/ath5k/attach.c              |    2 
 drivers/net/wireless/ath/ath5k/base.c                |   57 +-
 drivers/net/wireless/ath/ath5k/reset.c               |  155 +++++-
 drivers/net/wireless/iwlwifi/iwl-1000.c              |    6 
 drivers/net/wireless/iwlwifi/iwl-3945.c              |   40 +
 drivers/net/wireless/iwlwifi/iwl-4965.c              |   39 +
 drivers/net/wireless/iwlwifi/iwl-5000.c              |   58 ++
 drivers/net/wireless/iwlwifi/iwl-6000.c              |   25 -
 drivers/net/wireless/iwlwifi/iwl-agn.c               |   57 +-
 drivers/net/wireless/iwlwifi/iwl-core.h              |   16 
 drivers/net/wireless/iwlwifi/iwl-dev.h               |   43 +
 drivers/net/wireless/iwlwifi/iwl-eeprom.c            |  184 ++++++--
 drivers/net/wireless/iwlwifi/iwl-eeprom.h            |   10 
 drivers/net/wireless/iwlwifi/iwl-prph.h              |    5 
 drivers/net/wireless/iwlwifi/iwl-scan.c              |    3 
 drivers/net/wireless/iwlwifi/iwl3945-base.c          |   45 +
 drivers/net/wireless/p54/p54usb.c                    |    1 
 drivers/pci/dmar.c                                   |   22 
 drivers/pci/quirks.c                                 |    4 
 drivers/pcmcia/at91_cf.c                             |    2 
 drivers/pcmcia/au1000_generic.c                      |    2 
 drivers/pcmcia/bfin_cf_pcmcia.c                      |    2 
 drivers/pcmcia/cs.c                                  |    2 
 drivers/pcmcia/i82092.c                              |    2 
 drivers/pcmcia/i82365.c                              |    2 
 drivers/pcmcia/m32r_cfc.c                            |    2 
 drivers/pcmcia/m32r_pcc.c                            |    2 
 drivers/pcmcia/m8xx_pcmcia.c                         |    2 
 drivers/pcmcia/omap_cf.c                             |    2 
 drivers/pcmcia/pd6729.c                              |    2 
 drivers/pcmcia/pxa2xx_base.c                         |    2 
 drivers/pcmcia/sa1100_generic.c                      |    2 
 drivers/pcmcia/sa1111_generic.c                      |    2 
 drivers/pcmcia/tcic.c                                |    2 
 drivers/pcmcia/vrc4171_card.c                        |    2 
 drivers/pcmcia/yenta_socket.c                        |   88 ++-
 drivers/platform/x86/sony-laptop.c                   |    6 
 drivers/platform/x86/thinkpad_acpi.c                 |    8 
 drivers/ps3/ps3stor_lib.c                            |   65 ++
 drivers/scsi/libsrp.c                                |    1 
 drivers/scsi/mpt2sas/mpt2sas_base.c                  |   23 -
 drivers/scsi/mpt2sas/mpt2sas_base.h                  |   43 +
 drivers/scsi/mpt2sas/mpt2sas_config.c                |   61 ++
 drivers/scsi/mpt2sas/mpt2sas_ctl.c                   |   16 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c                 |  207 ++++-----
 drivers/scsi/mpt2sas/mpt2sas_transport.c             |   29 -
 drivers/scsi/scsi.c                                  |   11 
 drivers/scsi/scsi_error.c                            |    3 
 drivers/scsi/sd.c                                    |    2 
 drivers/scsi/sg.c                                    |   12 
 drivers/serial/bfin_5xx.c                            |    4 
 drivers/serial/serial_cs.c                           |    1 
 drivers/staging/dst/dcore.c                          |    8 
 drivers/staging/pohmelfs/config.c                    |    6 
 drivers/staging/rt2860/common/cmm_data_2860.c        |    2 
 drivers/usb/class/cdc-acm.c                          |    7 
 drivers/usb/class/cdc-wdm.c                          |   30 +
 drivers/usb/class/usbtmc.c                           |   22 
 drivers/usb/core/config.c                            |    2 
 drivers/usb/host/sl811-hcd.c                         |    8 
 drivers/usb/host/xhci-dbg.c                          |    5 
 drivers/usb/host/xhci-hcd.c                          |  370 +++++++++++++---
 drivers/usb/host/xhci-mem.c                          |   64 ++
 drivers/usb/host/xhci-pci.c                          |   13 
 drivers/usb/host/xhci-ring.c                         |  232 +++++++++-
 drivers/usb/host/xhci.h                              |   41 +
 drivers/usb/serial/ark3116.c                         |   46 --
 drivers/usb/serial/console.c                         |   28 -
 drivers/usb/serial/cp210x.c                          |    7 
 drivers/usb/serial/cypress_m8.c                      |   12 
 drivers/usb/serial/digi_acceleport.c                 |    8 
 drivers/usb/serial/empeg.c                           |   12 
 drivers/usb/serial/ftdi_sio.c                        |  429 ++++++-------------
 drivers/usb/serial/ftdi_sio.h                        |   10 
 drivers/usb/serial/generic.c                         |    2 
 drivers/usb/serial/ipaq.c                            |    9 
 drivers/usb/serial/iuu_phoenix.c                     |   31 -
 drivers/usb/serial/kobil_sct.c                       |   22 
 drivers/usb/serial/option.c                          |    6 
 drivers/usb/serial/oti6858.c                         |   21 
 drivers/usb/serial/pl2303.c                          |    9 
 drivers/usb/serial/pl2303.h                          |    4 
 drivers/usb/serial/spcp8x5.c                         |   21 
 drivers/usb/serial/usb-serial.c                      |  391 +++++++----------
 drivers/usb/serial/whiteheat.c                       |    6 
 drivers/usb/storage/initializers.c                   |    2 
 drivers/usb/storage/onetouch.c                       |    2 
 drivers/usb/storage/transport.c                      |   46 +-
 drivers/video/console/fbcon.c                        |   10 
 drivers/video/s3c-fb.c                               |    2 
 drivers/video/sis/vstruct.h                          |    2 
 drivers/video/uvesafb.c                              |    6 
 drivers/w1/w1_netlink.c                              |    3 
 drivers/xen/Makefile                                 |    3 
 fs/binfmt_elf.c                                      |   28 -
 fs/cifs/cifsglob.h                                   |    4 
 fs/ecryptfs/crypto.c                                 |    5 
 fs/ecryptfs/inode.c                                  |    2 
 fs/ecryptfs/keystore.c                               |   28 -
 fs/ecryptfs/kthread.c                                |   24 -
 fs/ecryptfs/main.c                                   |   10 
 fs/inode.c                                           |   14 
 fs/namei.c                                           |    6 
 fs/nfsd/nfs4callback.c                               |    4 
 fs/nilfs2/btnode.c                                   |    1 
 fs/proc/kcore.c                                      |    8 
 fs/proc/uptime.c                                     |    7 
 fs/sysfs/file.c                                      |   14 
 include/linux/connector.h                            |   11 
 include/linux/ftrace.h                               |    2 
 include/linux/kvm_para.h                             |    1 
 include/linux/tty.h                                  |    8 
 include/linux/usb/serial.h                           |    4 
 include/linux/usb/usbnet.h                           |    1 
 include/net/bluetooth/hci_core.h                     |    4 
 include/pcmcia/ss.h                                  |    2 
 ipc/shm.c                                            |    2 
 kernel/acct.c                                        |    8 
 kernel/exit.c                                        |    2 
 kernel/fork.c                                        |   10 
 kernel/futex.c                                       |   42 +
 kernel/perf_counter.c                                |   64 +-
 kernel/time/tick-sched.c                             |    9 
 kernel/trace/ftrace.c                                |   23 -
 kernel/trace/trace_events_filter.c                   |    3 
 mm/hugetlb.c                                         |    2 
 mm/memory.c                                          |    3 
 mm/mlock.c                                           |   99 +---
 mm/mmap.c                                            |    4 
 mm/nommu.c                                           |   34 -
 mm/page_alloc.c                                      |   12 
 mm/swap_state.c                                      |   70 ++-
 net/appletalk/aarp.c                                 |   16 
 net/appletalk/ddp.c                                  |   58 +-
 net/ax25/af_ax25.c                                   |    8 
 net/bluetooth/hci_conn.c                             |   17 
 net/bluetooth/hci_event.c                            |    2 
 net/bluetooth/hidp/core.c                            |   65 +-
 net/bluetooth/hidp/hidp.h                            |    2 
 net/bridge/br_netfilter.c                            |    2 
 net/bridge/netfilter/ebt_ulog.c                      |    2 
 net/can/af_can.c                                     |    4 
 net/core/dev.c                                       |    6 
 net/core/sock.c                                      |   19 
 net/ipv4/netfilter/nf_nat_core.c                     |    2 
 net/ipv4/tcp_minisocks.c                             |    2 
 net/ipv6/sit.c                                       |    2 
 net/mac80211/rx.c                                    |   10 
 net/mac80211/sta_info.c                              |    2 
 net/mac80211/tx.c                                    |    3 
 net/netfilter/nf_conntrack_core.c                    |    6 
 net/packet/af_packet.c                               |    4 
 net/unix/af_unix.c                                   |    5 
 net/wireless/scan.c                                  |    2 
 scripts/Kbuild.include                               |    4 
 scripts/Makefile.build                               |    3 
 scripts/kallsyms.c                                   |    2 
 sound/aoa/codecs/tas.c                               |    9 
 sound/pci/cs46xx/cs46xx_lib.h                        |    2 
 sound/pci/hda/patch_realtek.c                        |    1 
 sound/pci/oxygen/oxygen_io.c                         |   11 
 sound/pci/via82xx.c                                  |   27 -
 sound/ppc/keywest.c                                  |   12 
 sound/soc/codecs/wm8350.c                            |    6 
 tools/perf/builtin-annotate.c                        |    4 
 tools/perf/builtin-report.c                          |    4 
 tools/perf/builtin-stat.c                            |  170 +++----
 tools/perf/util/module.c                             |    2 
 virt/kvm/ioapic.c                                    |    2 
 309 files changed, 3760 insertions(+), 2283 deletions(-)

