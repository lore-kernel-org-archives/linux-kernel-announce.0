From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.26.6 released
Date: Thu, 9 Oct 2008 03:39:41 GMT
Message-ID: <200810090339.m993dfqO027939@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.26.6 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.26.6.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.26.6.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               103229            414239
Full source                       49450729         289566720

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/ftrace.txt                        | 1353 ------------------------
 Documentation/networking/udplite.txt            |    2 
 Documentation/video4linux/cx18.txt              |   12 
 Makefile                                        |    5 
 arch/ia64/kvm/kvm-ia64.c                        |    8 
 arch/powerpc/kernel/ppc32.h                     |    2 
 arch/powerpc/kernel/ptrace32.c                  |   27 
 arch/powerpc/kvm/powerpc.c                      |    4 
 arch/powerpc/platforms/cell/cbe_cpufreq_pmi.c   |    6 
 arch/s390/kernel/compat_ptrace.h                |    1 
 arch/s390/kernel/ptrace.c                       |   28 
 arch/s390/kvm/kvm-s390.c                        |    4 
 arch/sparc64/kernel/irq.c                       |   62 +
 arch/sparc64/kernel/kstack.h                    |   60 +
 arch/sparc64/kernel/ldc.c                       |   38 
 arch/sparc64/kernel/of_device.c                 |    9 
 arch/sparc64/kernel/pci.c                       |    2 
 arch/sparc64/kernel/pci_psycho.c                |   14 
 arch/sparc64/kernel/process.c                   |   32 
 arch/sparc64/kernel/prom.c                      |  104 -
 arch/sparc64/kernel/signal.c                    |    6 
 arch/sparc64/kernel/stacktrace.c                |   11 
 arch/sparc64/kernel/time.c                      |   15 
 arch/sparc64/kernel/traps.c                     |    7 
 arch/sparc64/lib/mcount.S                       |   39 
 arch/sparc64/mm/init.c                          |   41 
 arch/sparc64/mm/ultra.S                         |    7 
 arch/um/include/init.h                          |    8 
 arch/x86/Kconfig.cpu                            |    2 
 arch/x86/boot/boot.h                            |    8 
 arch/x86/boot/cpucheck.c                        |    8 
 arch/x86/boot/main.c                            |    4 
 arch/x86/kernel/acpi/sleep.c                    |   17 
 arch/x86/kernel/alternative.c                   |   18 
 arch/x86/kernel/apic_32.c                       |   30 
 arch/x86/kernel/apic_64.c                       |    3 
 arch/x86/kernel/cpu/bugs.c                      |    6 
 arch/x86/kernel/cpu/cyrix.c                     |   18 
 arch/x86/kernel/cpu/mtrr/generic.c              |   22 
 arch/x86/kernel/e820_32.c                       |    2 
 arch/x86/kernel/e820_64.c                       |    2 
 arch/x86/kernel/genapic_64.c                    |    2 
 arch/x86/kernel/head64.c                        |    1 
 arch/x86/kernel/hpet.c                          |   19 
 arch/x86/kernel/i387.c                          |    4 
 arch/x86/kernel/io_delay.c                      |   11 
 arch/x86/kernel/kprobes.c                       |    1 
 arch/x86/kernel/mpparse.c                       |    5 
 arch/x86/kernel/process.c                       |    3 
 arch/x86/kernel/ptrace.c                        |    4 
 arch/x86/kernel/reboot.c                        |    8 
 arch/x86/kernel/setup.c                         |    1 
 arch/x86/kernel/setup_32.c                      |   11 
 arch/x86/kernel/signal_64.c                     |   62 +
 arch/x86/kernel/traps_64.c                      |    9 
 arch/x86/kernel/vmi_32.c                        |    2 
 arch/x86/kernel/vsmp_64.c                       |    2 
 arch/x86/kvm/mmu.c                              |   11 
 arch/x86/kvm/paging_tmpl.h                      |    2 
 arch/x86/kvm/svm.c                              |   55 
 arch/x86/kvm/vmx.c                              |    9 
 arch/x86/kvm/x86.c                              |  114 --
 arch/x86/kvm/x86_emulate.c                      |    2 
 arch/x86/mach-generic/bigsmp.c                  |    2 
 arch/x86/mm/init_64.c                           |    2 
 arch/x86/mm/pageattr.c                          |    6 
 arch/x86/oprofile/nmi_int.c                     |   39 
 arch/x86/pci/k8-bus_64.c                        |    4 
 block/bsg.c                                     |    9 
 block/scsi_ioctl.c                              |    2 
 crypto/async_tx/async_tx.c                      |    3 
 crypto/authenc.c                                |   10 
 drivers/accessibility/braille/braille_console.c |   13 
 drivers/acpi/ec.c                               |    2 
 drivers/acpi/processor_perflib.c                |   15 
 drivers/ata/sata_mv.c                           |   34 
 drivers/char/hw_random/via-rng.c                |    8 
 drivers/char/random.c                           |   19 
 drivers/cpufreq/cpufreq.c                       |    3 
 drivers/crypto/padlock-aes.c                    |   28 
 drivers/crypto/padlock-sha.c                    |    9 
 drivers/dma/iop-adma.c                          |    2 
 drivers/i2c/Kconfig                             |   14 
 drivers/i2c/algos/Kconfig                       |   11 
 drivers/i2c/i2c-core.c                          |    4 
 drivers/i2c/i2c-dev.c                           |    4 
 drivers/ide/ide-cd.c                            |   29 
 drivers/ide/pci/cs5520.c                        |    1 
 drivers/ide/pci/it821x.c                        |    6 
 drivers/input/serio/i8042-x86ia64io.h           |   43 
 drivers/md/linear.c                             |    2 
 drivers/md/md.c                                 |    2 
 drivers/media/dvb/dvb-usb/dib0700_devices.c     |    7 
 drivers/media/dvb/dvb-usb/dvb-usb-ids.h         |    1 
 drivers/media/video/Kconfig                     |    8 
 drivers/media/video/cx18/cx18-firmware.c        |    2 
 drivers/media/video/cx23885/cx23885-core.c      |  142 ++
 drivers/media/video/saa7134/saa7134-cards.c     |    3 
 drivers/media/video/saa7134/saa7134-core.c      |    5 
 drivers/media/video/uvc/Kconfig                 |   17 
 drivers/media/video/uvc/uvc_driver.c            |   12 
 drivers/media/video/uvc/uvc_status.c            |   19 
 drivers/media/video/uvc/uvc_video.c             |  116 +-
 drivers/media/video/uvc/uvcvideo.h              |    2 
 drivers/misc/acer-wmi.c                         |   19 
 drivers/misc/eeepc-laptop.c                     |    2 
 drivers/mmc/card/block.c                        |    4 
 drivers/mmc/host/pxamci.c                       |    2 
 drivers/net/atlx/atl1.c                         |    1 
 drivers/net/forcedeth.c                         |    4 
 drivers/net/hamradio/hdlcdrv.c                  |    1 
 drivers/net/ixgbe/ixgbe_main.c                  |    8 
 drivers/net/myri10ge/myri10ge.c                 |   30 
 drivers/net/niu.c                               |   56 
 drivers/net/r8169.c                             |    8 
 drivers/net/tg3.c                               |   53 
 drivers/net/tg3.h                               |    3 
 drivers/net/wireless/ath5k/base.c               |   40 
 drivers/net/wireless/ath5k/base.h               |    2 
 drivers/net/wireless/b43legacy/main.c           |    2 
 drivers/net/wireless/rt2x00/rt2x00.h            |    4 
 drivers/net/wireless/rt2x00/rt2x00dev.c         |   17 
 drivers/net/wireless/rt2x00/rt2x00mac.c         |    4 
 drivers/net/wireless/rtl8187.h                  |    4 
 drivers/net/wireless/rtl8187_dev.c              |    3 
 drivers/pci/quirks.c                            |    7 
 drivers/pci/search.c                            |    2 
 drivers/pcmcia/ds.c                             |   23 
 drivers/rtc/rtc-at91rm9200.c                    |   16 
 drivers/rtc/rtc-dev.c                           |   15 
 drivers/rtc/rtc-lib.c                           |    5 
 drivers/s390/block/dasd_eckd.h                  |    2 
 drivers/scsi/ch.c                               |    1 
 drivers/scsi/hptiop.c                           |    7 
 drivers/scsi/qla2xxx/qla_attr.c                 |   43 
 drivers/scsi/qla2xxx/qla_def.h                  |    1 
 drivers/scsi/qla2xxx/qla_gbl.h                  |    2 
 drivers/scsi/qla2xxx/qla_init.c                 |   16 
 drivers/scsi/qla2xxx/qla_isr.c                  |    1 
 drivers/scsi/qla2xxx/qla_os.c                   |   57 -
 drivers/scsi/scsi_transport_spi.c               |    8 
 drivers/scsi/ses.c                              |   18 
 drivers/serial/8250.c                           |   16 
 drivers/serial/8250.h                           |    1 
 drivers/spi/mpc52xx_psc_spi.c                   |   22 
 drivers/spi/pxa2xx_spi.c                        |  116 +-
 drivers/usb/class/cdc-acm.c                     |    2 
 drivers/usb/core/hcd.c                          |    3 
 drivers/usb/core/message.c                      |    2 
 drivers/usb/serial/ftdi_sio.c                   |    5 
 drivers/usb/serial/ftdi_sio.h                   |    6 
 drivers/usb/serial/pl2303.c                     |    1 
 drivers/usb/serial/pl2303.h                     |    4 
 drivers/usb/serial/usb-serial.c                 |   12 
 drivers/usb/storage/scsiglue.c                  |   25 
 drivers/usb/storage/transport.c                 |   17 
 drivers/usb/storage/unusual_devs.h              |   18 
 drivers/video/arkfb.c                           |   18 
 drivers/video/aty/radeon_accel.c                |   12 
 drivers/video/console/fbcon.h                   |    2 
 drivers/video/fb_defio.c                        |   19 
 drivers/video/fbmem.c                           |    4 
 drivers/video/matrox/matroxfb_maven.c           |    2 
 drivers/video/s3fb.c                            |   18 
 drivers/video/vt8623fb.c                        |   20 
 fs/binfmt_misc.c                                |    4 
 fs/bio.c                                        |   48 
 fs/buffer.c                                     |   13 
 fs/cifs/asn1.c                                  |    2 
 fs/cifs/cifs_spnego.c                           |   18 
 fs/cifs/cifsfs.c                                |    2 
 fs/cifs/file.c                                  |    4 
 fs/cifs/inode.c                                 |    1 
 fs/cramfs/inode.c                               |   84 -
 fs/dquot.c                                      |   16 
 fs/ecryptfs/crypto.c                            |   30 
 fs/exec.c                                       |    2 
 fs/isofs/rock.c                                 |   22 
 fs/jbd/transaction.c                            |   57 -
 fs/libfs.c                                      |    4 
 fs/namei.c                                      |   19 
 fs/nfs/inode.c                                  |    4 
 fs/nfs/internal.h                               |    1 
 fs/nfs/nfs3acl.c                                |    9 
 fs/nfs/nfs4proc.c                               |    5 
 fs/nfsd/nfs4acl.c                               |    2 
 fs/ocfs2/stackglue.c                            |    7 
 fs/proc/array.c                                 |   59 -
 fs/proc/task_mmu.c                              |    2 
 fs/romfs/inode.c                                |   37 
 include/asm-arm/bitops.h                        |    9 
 include/asm-generic/rtc.h                       |   12 
 include/asm-generic/vmlinux.lds.h               |    4 
 include/asm-sparc64/futex.h                     |    2 
 include/asm-sparc64/io.h                        |    1 
 include/asm-sparc64/irq.h                       |    4 
 include/asm-sparc64/ptrace.h                    |    8 
 include/asm-x86/i387.h                          |   88 -
 include/asm-x86/mpspec.h                        |    1 
 include/asm-x86/pgtable_64.h                    |    2 
 include/asm-x86/signal.h                        |    4 
 include/asm-x86/spinlock.h                      |    4 
 include/linux/Kbuild                            |    1 
 include/linux/clockchips.h                      |    2 
 include/linux/cpufreq.h                         |    1 
 include/linux/fb.h                              |    3 
 include/linux/ipv6.h                            |    2 
 include/linux/kvm_host.h                        |    1 
 include/linux/mmzone.h                          |   12 
 include/linux/mroute.h                          |    2 
 include/linux/mroute6.h                         |    1 
 include/linux/pim.h                             |   18 
 include/linux/rmap.h                            |    2 
 include/linux/sched.h                           |    4 
 include/linux/smb.h                             |    2 
 include/linux/usb/serial.h                      |    3 
 include/net/addrconf.h                          |    3 
 include/net/ip6_route.h                         |    1 
 include/net/netlink.h                           |    2 
 include/sound/emu10k1.h                         |    1 
 include/video/radeon.h                          |    9 
 kernel/cgroup.c                                 |    5 
 kernel/cpuset.c                                 |    4 
 kernel/exit.c                                   |   18 
 kernel/marker.c                                 |   12 
 kernel/posix-timers.c                           |   19 
 kernel/rcupreempt.c                             |    2 
 kernel/relay.c                                  |   12 
 kernel/sched.c                                  |   59 +
 kernel/signal.c                                 |    1 
 kernel/sys_ni.c                                 |    1 
 kernel/time/clockevents.c                       |    3 
 kernel/time/ntp.c                               |    2 
 kernel/time/tick-broadcast.c                    |   78 +
 kernel/time/tick-common.c                       |    1 
 kernel/time/tick-internal.h                     |    2 
 kernel/time/tick-oneshot.c                      |   44 
 lib/random32.c                                  |   48 
 lib/scatterlist.c                               |    5 
 mm/filemap.c                                    |    5 
 mm/filemap_xip.c                                |    2 
 mm/memcontrol.c                                 |   13 
 mm/memory.c                                     |   16 
 mm/mlock.c                                      |    2 
 mm/mmzone.c                                     |    2 
 mm/page_alloc.c                                 |    7 
 mm/rmap.c                                       |   14 
 mm/shmem.c                                      |    3 
 net/ax25/sysctl_net_ax25.c                      |   14 
 net/bluetooth/bnep/core.c                       |    5 
 net/bluetooth/hidp/core.c                       |   10 
 net/dccp/proto.c                                |    5 
 net/ipv4/ipvs/ip_vs_est.c                       |    7 
 net/ipv4/netfilter/nf_nat_sip.c                 |   38 
 net/ipv4/syncookies.c                           |    1 
 net/ipv4/tcp_input.c                            |    3 
 net/ipv4/udp.c                                  |   61 -
 net/ipv6/addrconf.c                             |    3 
 net/ipv6/fib6_rules.c                           |    3 
 net/ipv6/ip6_fib.c                              |    5 
 net/ipv6/ip6_output.c                           |   70 -
 net/ipv6/ndisc.c                                |    2 
 net/ipv6/route.c                                |   15 
 net/ipv6/syncookies.c                           |    1 
 net/ipv6/udp.c                                  |    6 
 net/ipv6/xfrm6_policy.c                         |    4 
 net/key/af_key.c                                |   30 
 net/netfilter/xt_time.c                         |    2 
 net/sched/act_api.c                             |    5 
 net/sched/sch_htb.c                             |   20 
 net/sched/sch_prio.c                            |   16 
 net/sched/sch_tbf.c                             |   11 
 net/sctp/associola.c                            |    9 
 net/sctp/auth.c                                 |    7 
 net/sctp/endpointola.c                          |    4 
 net/sctp/ipv6.c                                 |    3 
 net/sctp/sm_make_chunk.c                        |   15 
 net/sctp/socket.c                               |   96 +
 net/sunrpc/sysctl.c                             |   18 
 net/xfrm/xfrm_output.c                          |   12 
 net/xfrm/xfrm_state.c                           |   32 
 scripts/Makefile.modpost                        |    1 
 scripts/mod/modpost.c                           |    3 
 sound/core/pcm.c                                |    4 
 sound/core/pcm_native.c                         |   13 
 sound/core/rawmidi.c                            |    4 
 sound/core/seq/oss/seq_oss_synth.c              |    3 
 sound/pci/emu10k1/emu10k1_main.c                |    1 
 sound/pci/emu10k1/emumixer.c                    |   13 
 sound/pci/hda/hda_intel.c                       |  124 +-
 sound/pci/hda/patch_analog.c                    |   33 
 sound/pci/hda/patch_sigmatel.c                  |    2 
 sound/pci/oxygen/hifier.c                       |    4 
 sound/pci/oxygen/oxygen.c                       |    4 
 sound/pci/oxygen/oxygen_mixer.c                 |    5 
 sound/pci/trident/trident_main.c                |    5 
 sound/ppc/awacs.c                               |   50 
 sound/soc/fsl/fsl_dma.c                         |  242 ++--
 sound/soc/fsl/fsl_ssi.c                         |   74 +
 virt/kvm/kvm_main.c                             |    3 
 300 files changed, 3191 insertions(+), 2852 deletions(-)

