From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0-test1 released
Date: Mon, 14 Jul 2003 03:59:22 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200307140359.h6E3xMCG028343@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0-test1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0-test1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0-test1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               294151                 0
1546597                                  0          32927268
/pub/linux/kernel/v2.6/linux-2.6.0-test1.tar.bz2         185692160                 0
                                         0                 0

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/CodingStyle               |    8 
 Documentation/DocBook/procfs-guide.tmpl |   35 
 Documentation/DocBook/procfs_example.c  |   12 
 Documentation/filesystems/cifs.txt      |   84 
 Documentation/kernel-parameters.txt     |    2 
 Documentation/nbd.txt                   |   92 
 MAINTAINERS                             |    4 
 Makefile                                |    8 
 arch/alpha/Kconfig                      |   11 
 arch/alpha/kernel/systbls.S             |    1 
 arch/alpha/kernel/time.c                |   27 
 arch/arm/Kconfig                        |    8 
 arch/arm26/Kconfig                      |    8 
 arch/i386/Kconfig                       |    7 
 arch/i386/kernel/entry.S                |    3 
 arch/i386/kernel/microcode.c            |    1 
 arch/i386/kernel/time.c                 |   28 
 arch/ia64/Kconfig                       |    8 
 arch/ia64/kernel/time.c                 |   15 
 arch/m68k/kernel/time.c                 |   16 
 arch/m68knommu/kernel/time.c            |   17 
 arch/mips/kernel/time.c                 |   21 
 arch/mips64/kernel/time.c               |   20 
 arch/parisc/Kconfig                     |   14 
 arch/parisc/hpux/sys_hpux.c             |    2 
 arch/parisc/kernel/drivers.c            |    4 
 arch/parisc/kernel/ioctl32.c            |    3 
 arch/parisc/kernel/module.c             |   49 
 arch/parisc/kernel/pci.c                |    5 
 arch/parisc/kernel/sys_parisc32.c       |    4 
 arch/parisc/kernel/time.c               |   22 
 arch/parisc/kernel/traps.c              |   16 
 arch/parisc/kernel/unaligned.c          |  198 +
 arch/ppc/Kconfig                        |    7 
 arch/ppc/kernel/time.c                  |   20 
 arch/ppc64/kernel/time.c                |   21 
 arch/s390/kernel/time.c                 |   18 
 arch/sh/kernel/time.c                   |   21 
 arch/sparc/boot/Makefile                |    3 
 arch/sparc/defconfig                    |   40 
 arch/sparc/kernel/Makefile              |    3 
 arch/sparc/kernel/pcic.c                |   23 
 arch/sparc/kernel/process.c             |   18 
 arch/sparc/kernel/sys_sparc.c           |    5 
 arch/sparc/kernel/time.c                |   34 
 arch/sparc/mm/srmmu.c                   |   10 
 arch/sparc64/Kconfig                    |    7 
 arch/sparc64/kernel/entry.S             |   14 
 arch/sparc64/kernel/sys_sparc.c         |   51 
 arch/sparc64/kernel/sys_sparc32.c       |   26 
 arch/sparc64/kernel/time.c              |   36 
 arch/v850/kernel/bug.c                  |   24 
 arch/v850/kernel/gbus_int.c             |   11 
 arch/v850/kernel/simcons.c              |    2 
 arch/v850/kernel/time.c                 |    4 
 arch/x86_64/Kconfig                     |    7 
 arch/x86_64/boot/setup.S                |    5 
 arch/x86_64/ia32/ipc32.c                |    8 
 arch/x86_64/kernel/time.c               |   31 
 arch/x86_64/kernel/x8664_ksyms.c        |    2 
 drivers/block/Kconfig                   |   41 
 drivers/block/Makefile                  |    1 
 drivers/block/as-iosched.c              |    2 
 drivers/block/cryptoloop.c              |  182 +
 drivers/block/floppy98.c                |   40 
 drivers/block/ll_rw_blk.c               |    4 
 drivers/block/loop.c                    |   26 
 drivers/block/nbd.c                     |  332 +-
 drivers/char/agp/amd-k8-agp.c           |   82 
 drivers/char/agp/frontend.c             |   62 
 drivers/char/agp/hp-agp.c               |  250 +-
 drivers/char/agp/sis-agp.c              |   56 
 drivers/char/agp/via-agp.c              |    2 
 drivers/char/drm/ati_pcigart.h          |   16 
 drivers/char/drm/drm.h                  |  454 ++-
 drivers/char/drm/drmP.h                 |  493 ++--
 drivers/char/drm/drm_agpsupport.h       |  154 +
 drivers/char/drm/drm_auth.h             |   78 
 drivers/char/drm/drm_bufs.h             |  146 +
 drivers/char/drm/drm_context.h          |  183 +
 drivers/char/drm/drm_dma.h              |  102 
 drivers/char/drm/drm_drawable.h         |   16 
 drivers/char/drm/drm_drv.h              |  194 +
 drivers/char/drm/drm_fops.h             |   32 
 drivers/char/drm/drm_init.h             |   56 
 drivers/char/drm/drm_ioctl.h            |   84 
 drivers/char/drm/drm_lock.h             |   73 
 drivers/char/drm/drm_memory.h           |   61 
 drivers/char/drm/drm_memory_debug.h     |   14 
 drivers/char/drm/drm_os_linux.h         |   34 
 drivers/char/drm/drm_proc.h             |  130 -
 drivers/char/drm/drm_sarea.h            |   29 
 drivers/char/drm/drm_scatter.h          |   12 
 drivers/char/drm/drm_stub.h             |   73 
 drivers/char/drm/drm_vm.h               |  108 
 drivers/char/drm/i810.h                 |   12 
 drivers/char/drm/i810_dma.c             |  126 +
 drivers/char/drm/i810_drm.h             |    4 
 drivers/char/drm/i810_drv.h             |   20 
 drivers/char/drm/r128.h                 |   10 
 drivers/char/drm/r128_drv.h             |    7 
 drivers/char/drm/r128_state.c           |    2 
 drivers/char/drm/radeon.h               |    2 
 drivers/char/drm/radeon_drm.h           |    5 
 drivers/char/drm/radeon_drv.c           |   13 
 drivers/char/drm/radeon_drv.h           |    4 
 drivers/char/drm/radeon_state.c         |   48 
 drivers/char/dtlk.c                     |    2 
 drivers/char/genrtc.c                   |    4 
 drivers/eisa/Kconfig                    |    2 
 drivers/ide/ide-cd.c                    |   21 
 drivers/input/misc/gsc_ps2.c            |   22 
 drivers/isdn/hisax/isurf.c              |    2 
 drivers/net/appletalk/cops.c            |    5 
 drivers/net/appletalk/ltpc.c            |    5 
 drivers/net/declance.c                  |    2 
 drivers/net/dgrs.c                      |   27 
 drivers/net/e100/e100_main.c            |   32 
 drivers/net/e100/e100_phy.c             |    2 
 drivers/net/hamradio/mkiss.c            |  141 -
 drivers/net/hamradio/mkiss.h            |    2 
 drivers/net/irda/Kconfig                |   18 
 drivers/net/irda/irda-usb.c             |   16 
 drivers/net/irda/nsc-ircc.c             |  212 +
 drivers/net/irda/old_belkin.c           |    2 
 drivers/net/pcmcia/3c574_cs.c           |    2 
 drivers/net/pcmcia/3c589_cs.c           |    2 
 drivers/net/pcmcia/axnet_cs.c           |    4 
 drivers/net/pcmcia/ibmtr_cs.c           |    4 
 drivers/net/pcmcia/nmclan_cs.c          |  115 
 drivers/net/pcmcia/pcnet_cs.c           |    4 
 drivers/net/pcmcia/smc91c92_cs.c        |    6 
 drivers/net/pcmcia/xirc2ps_cs.c         |    2 
 drivers/net/plip.c                      |   96 
 drivers/net/sb1250-mac.c                |    2 
 drivers/net/sk_mca.c                    |    2 
 drivers/net/sundance.c                  |   10 
 drivers/net/sunhme.c                    |   10 
 drivers/net/tg3.c                       |    5 
 drivers/net/tokenring/3c359.c           |    2 
 drivers/net/tokenring/proteon.c         |    1 
 drivers/net/tokenring/skisa.c           |    1 
 drivers/net/via-rhine.c                 |    2 
 drivers/net/wireless/atmel_cs.c         |   11 
 drivers/net/wireless/wavelan.c          |    6 
 drivers/parisc/Kconfig                  |    5 
 drivers/pcmcia/bulkmem.c                |    6 
 drivers/pcmcia/cistpl.c                 |    4 
 drivers/pcmcia/cs.c                     |  114 
 drivers/pcmcia/cs_internal.h            |    2 
 drivers/pcmcia/i82092.c                 |    2 
 drivers/pcmcia/i82365.c                 |    2 
 drivers/pcmcia/ricoh.h                  |    2 
 drivers/pcmcia/rsrc_mgr.c               |    4 
 drivers/pcmcia/sa11xx_core.c            |    2 
 drivers/pcmcia/tcic.c                   |    2 
 drivers/pcmcia/ti113x.h                 |   33 
 drivers/pcmcia/yenta_socket.c           |    2 
 drivers/scsi/g_NCR5380.c                |   20 
 drivers/usb/class/usblp.c               |   24 
 drivers/usb/core/inode.c                |    4 
 drivers/usb/core/message.c              |    2 
 drivers/usb/net/usbnet.c                |    2 
 drivers/usb/serial/ftdi_sio.c           | 1976 ++++++++++++----
 drivers/usb/serial/ftdi_sio.h           |  188 +
 drivers/usb/storage/datafab.c           |   90 
 drivers/usb/storage/freecom.c           |   33 
 drivers/usb/storage/initializers.c      |   36 
 drivers/usb/storage/unusual_devs.h      |   10 
 drivers/usb/usb-skeleton.c              |    3 
 drivers/video/sis/init301.c             |    2 
 fs/aio.c                                |    7 
 fs/attr.c                               |    2 
 fs/binfmt_aout.c                        |    4 
 fs/binfmt_elf.c                         |    2 
 fs/block_dev.c                          |    6 
 fs/buffer.c                             |   17 
 fs/cifs/CHANGES                         |    6 
 fs/cifs/README                          |    5 
 fs/cifs/cifs_debug.c                    |    6 
 fs/cifs/cifsencrypt.c                   |   65 
 fs/cifs/cifsfs.c                        |   10 
 fs/cifs/cifsfs.h                        |    1 
 fs/cifs/cifsproto.h                     |    9 
 fs/cifs/cifssmb.c                       |   11 
 fs/cifs/connect.c                       |   71 
 fs/cifs/dir.c                           |   69 
 fs/cifs/file.c                          |    3 
 fs/cifs/inode.c                         |    3 
 fs/cifs/misc.c                          |   11 
 fs/cifs/smbencrypt.c                    |   55 
 fs/cifs/transport.c                     |    6 
 fs/dcache.c                             |   25 
 fs/devfs/base.c                         |   59 
 fs/direct-io.c                          |    8 
 fs/eventpoll.c                          |   41 
 fs/exec.c                               |    6 
 fs/ext2/ialloc.c                        |    5 
 fs/ext3/inode.c                         |    4 
 fs/inode.c                              |    1 
 fs/ioctl.c                              |    2 
 fs/jbd/checkpoint.c                     |   36 
 fs/jbd/commit.c                         |   28 
 fs/jbd/journal.c                        |   11 
 fs/jbd/transaction.c                    |    9 
 fs/libfs.c                              |    6 
 fs/locks.c                              |    4 
 fs/mpage.c                              |   10 
 fs/namei.c                              |   22 
 fs/namespace.c                          |   64 
 fs/nfs/inode.c                          |    8 
 fs/nfs/write.c                          |   21 
 fs/nfsd/nfssvc.c                        |   15 
 fs/open.c                               |    2 
 fs/proc/base.c                          |    9 
 fs/proc/generic.c                       |   16 
 fs/proc/inode.c                         |    2 
 fs/proc/root.c                          |    1 
 fs/quota_v1.c                           |    8 
 fs/read_write.c                         |    4 
 fs/reiserfs/bitmap.c                    |   26 
 fs/reiserfs/do_balan.c                  |    6 
 fs/reiserfs/fix_node.c                  |    6 
 fs/reiserfs/inode.c                     |    2 
 fs/reiserfs/journal.c                   |   16 
 fs/reiserfs/stree.c                     |    2 
 fs/reiserfs/tail_conversion.c           |    2 
 fs/stat.c                               |    2 
 include/asm-alpha/timex.h               |    4 
 include/asm-alpha/unistd.h              |    3 
 include/asm-generic/div64.h             |    6 
 include/asm-i386/unistd.h               |    3 
 include/asm-parisc/byteorder.h          |    4 
 include/asm-parisc/parisc-device.h      |    1 
 include/asm-parisc/pgtable.h            |    8 
 include/asm-parisc/processor.h          |    1 
 include/asm-sparc/ipc.h                 |    1 
 include/asm-sparc/pgtsrmmu.h            |    3 
 include/asm-sparc64/ipc.h               |    1 
 include/asm-sparc64/ptrace.h            |    2 
 include/asm-sparc64/thread_info.h       |    8 
 include/asm-v850/statfs.h               |   21 
 include/linux/ac97_codec.h              |   44 
 include/linux/fs.h                      |   63 
 include/linux/irda.h                    |    6 
 include/linux/jbd.h                     |   17 
 include/linux/loop.h                    |    7 
 include/linux/mount.h                   |    1 
 include/linux/nbd.h                     |   17 
 include/linux/proc_fs.h                 |    5 
 include/linux/reiserfs_fs.h             |   12 
 include/linux/reiserfs_fs_sb.h          |    2 
 include/linux/seqlock.h                 |   51 
 include/linux/sysctl.h                  |   14 
 include/linux/time.h                    |   15 
 include/net/ip6_route.h                 |    6 
 include/net/ip_vs.h                     | 1002 ++++++++
 include/net/irda/irda_device.h          |    2 
 include/net/irda/nsc-ircc.h             |   29 
 include/pcmcia/ss.h                     |    4 
 init/Kconfig                            |    8 
 init/version.c                          |    8 
 ipc/shm.c                               |    2 
 kernel/compat.c                         |    6 
 kernel/fork.c                           |    1 
 kernel/ksyms.c                          |    3 
 kernel/sched.c                          |    2 
 kernel/sys.c                            |    2 
 kernel/sysctl.c                         |   48 
 lib/vsprintf.c                          |    6 
 mm/filemap.c                            |   32 
 mm/memory.c                             |    4 
 mm/mmap.c                               |    6 
 mm/nommu.c                              |    4 
 mm/oom_kill.c                           |   34 
 mm/readahead.c                          |    5 
 mm/shmem.c                              |   18 
 mm/swapfile.c                           |    4 
 mm/vmscan.c                             |    2 
 net/compat.c                            |   31 
 net/core/net-sysfs.c                    |    2 
 net/ipv4/Kconfig                        |    1 
 net/ipv4/Makefile                       |    1 
 net/ipv4/igmp.c                         |   22 
 net/ipv4/ipvs/Kconfig                   |  257 ++
 net/ipv4/ipvs/Makefile                  |   40 
 net/ipv4/ipvs/ip_vs_app.c               |  588 +++++
 net/ipv4/ipvs/ip_vs_conn.c              |  869 +++++++
 net/ipv4/ipvs/ip_vs_core.c              | 1166 +++++++++
 net/ipv4/ipvs/ip_vs_ctl.c               | 2205 ++++++++++++++++++
 net/ipv4/ipvs/ip_vs_dh.c                |  261 ++
 net/ipv4/ipvs/ip_vs_est.c               |  197 +
 net/ipv4/ipvs/ip_vs_ftp.c               |  383 +++
 net/ipv4/ipvs/ip_vs_lblc.c              |  629 +++++
 net/ipv4/ipvs/ip_vs_lblcr.c             |  895 +++++++
 net/ipv4/ipvs/ip_vs_lc.c                |  144 +
 net/ipv4/ipvs/ip_vs_nq.c                |  181 +
 net/ipv4/ipvs/ip_vs_proto.c             |  231 +
 net/ipv4/ipvs/ip_vs_proto_ah.c          |  181 +
 net/ipv4/ipvs/ip_vs_proto_esp.c         |  180 +
 net/ipv4/ipvs/ip_vs_proto_icmp.c        |  171 +
 net/ipv4/ipvs/ip_vs_proto_tcp.c         |  611 +++++
 net/ipv4/ipvs/ip_vs_proto_udp.c         |  396 +++
 net/ipv4/ipvs/ip_vs_rr.c                |  122 +
 net/ipv4/ipvs/ip_vs_sched.c             |  261 ++
 net/ipv4/ipvs/ip_vs_sed.c               |  171 +
 net/ipv4/ipvs/ip_vs_sh.c                |  258 ++
 net/ipv4/ipvs/ip_vs_sync.c              |  909 +++++++
 net/ipv4/ipvs/ip_vs_wlc.c               |  159 +
 net/ipv4/ipvs/ip_vs_wrr.c               |  251 ++
 net/ipv4/ipvs/ip_vs_xmit.c              |  635 +++++
 net/ipv4/netfilter/ip_fw_compat.c       |   14 
 net/ipv4/raw.c                          |    2 
 net/ipv4/tcp_input.c                    |   14 
 net/ipv4/udp.c                          |    2 
 net/ipv6/ip6_fib.c                      |    7 
 net/ipv6/ip6_output.c                   |    8 
 net/ipv6/ndisc.c                        |   54 
 net/ipv6/raw.c                          |    2 
 net/ipv6/route.c                        |   67 
 net/ipv6/udp.c                          |    2 
 net/irda/ircomm/ircomm_tty.c            |    1 
 net/irda/irlap.c                        |    7 
 net/irda/irnet/irnet_irda.c             |    2 
 net/irda/irttp.c                        |    5 
 net/netlink/af_netlink.c                |    4 
 net/netsyms.c                           |    1 
 net/xfrm/xfrm_policy.c                  |    1 
 sound/oss/Kconfig                       |    7 
 sound/oss/Makefile                      |    1 
 sound/oss/ac97_codec.c                  |  420 +++
 sound/oss/ac97_plugin_ad1980.c          |  124 +
 sound/oss/ad1889.c                      | 1086 +++++++++
 sound/oss/ad1889.h                      |  134 +
 sound/oss/ali5455.c                     | 3735 ++++++++++++++++++++++++++++++++
 sound/oss/au1000.c                      | 2238 +++++++++++++++++++
 sound/oss/btaudio.c                     |    8 
 sound/oss/cmpci.c                       |    8 
 sound/oss/cs46xx.c                      |   79 
 sound/oss/cs46xx_wrapper-24.h           |    3 
 sound/oss/dmasound/dmasound_core.c      |    4 
 sound/oss/emu10k1/efxmgr.c              |   14 
 sound/oss/emu10k1/hwaccess.h            |    2 
 sound/oss/emu10k1/main.c                |   73 
 sound/oss/emu10k1/mixer.c               |   40 
 sound/oss/es1370.c                      |   16 
 sound/oss/es1371.c                      |   59 
 sound/oss/esssolo1.c                    |   16 
 sound/oss/forte.c                       | 2147 ++++++++++++++++++
 sound/oss/i810_audio.c                  |  132 -
 sound/oss/ite8172.c                     | 3012 ++++++++++++++-----------
 sound/oss/maestro.c                     |   18 
 sound/oss/maestro3.c                    |    7 
 sound/oss/msnd_pinnacle.c               |    4 
 sound/oss/nec_vrc5477.c                 |   68 
 sound/oss/nm256_audio.c                 |    2 
 sound/oss/sonicvibes.c                  |    8 
 sound/oss/soundcard.c                   |    8 
 sound/oss/swarm_cs4297a.c               | 2745 +++++++++++++++++++++++
 sound/oss/trident.c                     |  146 -
 sound/oss/trident.h                     |   12 
 sound/oss/via82cxxx_audio.c             |  634 +++--
 sound/oss/ymfpci.c                      |   30 
 sound/oss/ymfpci.h                      |    1 
 364 files changed, 35478 insertions(+), 5033 deletions(-)

