From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.0-test9 released
Date: Sat, 25 Oct 2003 19:25:59 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200310251925.h9PJPxGa031686@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.0-test9 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.0-test9.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0-test9.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               106858                 0
486902                                   0          33226512
/pub/linux/kernel/v2.6/linux-2.6.0-test9.tar.bz2         187289600                 0
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

 b/Documentation/DocBook/Makefile              |    2 
 b/Documentation/DocBook/libata.tmpl           |   91 
 b/MAINTAINERS                                 |    8 
 b/Makefile                                    |    2 
 b/arch/arm/mm/proc-xscale.S                   |    2 
 b/arch/i386/kernel/acpi/boot.c                |   28 
 b/arch/i386/kernel/io_apic.c                  |    5 
 b/arch/i386/kernel/irq.c                      |    2 
 b/arch/i386/kernel/microcode.c                |    2 
 b/arch/i386/kernel/setup.c                    |   12 
 b/arch/i386/kernel/time.c                     |    9 
 b/arch/ia64/ia32/binfmt_elf32.c               |    9 
 b/arch/ia64/ia32/ia32_entry.S                 |   29 
 b/arch/ia64/ia32/ia32_ldt.c                   |    2 
 b/arch/ia64/ia32/ia32_signal.c                |    5 
 b/arch/ia64/ia32/ia32_support.c               |   97 
 b/arch/ia64/ia32/ia32priv.h                   |   55 
 b/arch/ia64/ia32/sys_ia32.c                   |  108 
 b/arch/ia64/kernel/efi.c                      |   87 
 b/arch/ia64/kernel/gate-data.S                |    2 
 b/arch/ia64/kernel/ia64_ksyms.c               |    9 
 b/arch/ia64/kernel/irq.c                      |    5 
 b/arch/ia64/kernel/module.c                   |   82 
 b/arch/ia64/kernel/perfmon.c                  |  202 -
 b/arch/ia64/kernel/perfmon_default_smpl.c     |   21 
 b/arch/ia64/kernel/process.c                  |   22 
 b/arch/ia64/kernel/setup.c                    |    8 
 b/arch/ia64/kernel/smpboot.c                  |    4 
 b/arch/ia64/kernel/unwind_i.h                 |    8 
 b/arch/ia64/lib/checksum.c                    |   10 
 b/arch/ia64/lib/csum_partial_copy.c           |    6 
 b/arch/ia64/mm/discontig.c                    |    2 
 b/arch/ia64/mm/init.c                         |    5 
 b/arch/ia64/mm/numa.c                         |   56 
 b/arch/sparc/kernel/pcic.c                    |    9 
 b/arch/sparc/kernel/time.c                    |    9 
 b/arch/sparc64/Kconfig                        |   16 
 b/arch/sparc64/defconfig                      |   14 
 b/arch/sparc64/kernel/time.c                  |    9 
 b/arch/sparc64/mm/hugetlbpage.c               |  566 ++--
 b/arch/sparc64/mm/init.c                      |   37 
 b/arch/v850/kernel/as85ep1.c                  |   12 
 b/arch/v850/kernel/rte_me2_cb.c               |   22 
 b/arch/v850/kernel/rte_nb85e_cb.c             |   15 
 b/arch/v850/kernel/sim85e2.c                  |   15 
 b/arch/v850/kernel/simcons.c                  |    9 
 b/drivers/acpi/battery.c                      |    6 
 b/drivers/acpi/bus.c                          |    4 
 b/drivers/acpi/ec.c                           |   16 
 b/drivers/acpi/events/evgpe.c                 |    4 
 b/drivers/acpi/power.c                        |    7 
 b/drivers/acpi/utilities/utdelete.c           |   42 
 b/drivers/base/cpu.c                          |   10 
 b/drivers/block/as-iosched.c                  |    1 
 b/drivers/block/deadline-iosched.c            |    1 
 b/drivers/block/scsi_ioctl.c                  |    2 
 b/drivers/char/Kconfig                        |   16 
 b/drivers/char/Makefile                       |    1 
 b/drivers/char/drm/drm_drv.h                  |    2 
 b/drivers/char/keyboard.c                     |   12 
 b/drivers/char/mem.c                          |   32 
 b/drivers/char/sn_serial.c                    | 1000 +++++++
 b/drivers/char/toshiba.c                      |    2 
 b/drivers/char/tty_io.c                       |    4 
 b/drivers/ide/Makefile                        |    2 
 b/drivers/ide/pci/piix.c                      |    2 
 b/drivers/ide/pci/siimage.c                   |    5 
 b/drivers/input/gameport/fm801-gp.c           |    2 
 b/drivers/input/gameport/vortex.c             |    2 
 b/drivers/input/keyboard/atkbd.c              |    3 
 b/drivers/isdn/capi/kcapi.c                   |    2 
 b/drivers/mca/mca-driver.c                    |   11 
 b/drivers/mca/mca-legacy.c                    |    2 
 b/drivers/md/raid0.c                          |    7 
 b/drivers/media/common/saa7146_i2c.c          |    5 
 b/drivers/media/dvb/dvb-core/dvb_demux.c      |    4 
 b/drivers/media/dvb/frontends/tda1004x.c      |    6 
 b/drivers/media/dvb/ttpci/av7110.c            |   24 
 b/drivers/media/dvb/ttpci/av7110_firm.h       |    4 
 b/drivers/media/video/bttv-driver.c           |    1 
 b/drivers/media/video/tda9840.c               |    3 
 b/drivers/media/video/tea6415c.c              |    3 
 b/drivers/media/video/tea6420.c               |    5 
 b/drivers/mtd/inftlcore.c                     |    4 
 b/drivers/net/tg3.c                           |    9 
 b/drivers/net/wireless/arlan-proc.c           |    3 
 b/drivers/parport/parport_pc.c                |    6 
 b/drivers/pci/quirks.c                        |   79 
 b/drivers/pcmcia/yenta_socket.c               |    6 
 b/drivers/scsi/Kconfig                        |   52 
 b/drivers/scsi/Makefile                       |    6 
 b/drivers/scsi/aacraid/aacraid.h              |    2 
 b/drivers/scsi/aacraid/comminit.c             |   16 
 b/drivers/scsi/ata_piix.c                     |  590 ++++
 b/drivers/scsi/atp870u.c                      |    5 
 b/drivers/scsi/constants.c                    |   62 
 b/drivers/scsi/libata-core.c                  | 3292 ++++++++++++++++++++++++++
 b/drivers/scsi/libata-scsi.c                  | 1115 ++++++++
 b/drivers/scsi/libata.h                       |   94 
 b/drivers/scsi/sata_promise.c                 |  766 ++++++
 b/drivers/scsi/sata_sil.c                     |  331 ++
 b/drivers/scsi/sata_svw.c                     |  389 +++
 b/drivers/scsi/sata_via.c                     |  264 ++
 b/drivers/scsi/scsi.c                         |    4 
 b/drivers/scsi/scsi_devinfo.c                 |   15 
 b/drivers/scsi/scsi_priv.h                    |    3 
 b/drivers/scsi/scsi_scan.c                    |   23 
 b/drivers/scsi/scsi_sysfs.c                   |    3 
 b/drivers/scsi/sd.c                           |   72 
 b/drivers/scsi/sg.c                           |    2 
 b/drivers/scsi/sr.c                           |    8 
 b/drivers/serial/8250.c                       |    3 
 b/drivers/usb/class/audio.c                   |    4 
 b/drivers/usb/class/cdc-acm.c                 |   82 
 b/drivers/usb/core/message.c                  |   12 
 b/drivers/usb/core/usb.c                      |    3 
 b/drivers/usb/gadget/inode.c                  |    4 
 b/drivers/usb/media/vicam.c                   |    1 
 b/drivers/usb/misc/brlvger.c                  |    1 
 b/drivers/usb/net/usbnet.c                    |    7 
 b/drivers/usb/serial/digi_acceleport.c        |    4 
 b/drivers/usb/serial/ftdi_sio.c               |   46 
 b/drivers/usb/serial/ftdi_sio.h               |    7 
 b/drivers/usb/serial/io_edgeport.c            |    1 
 b/drivers/usb/storage/scsiglue.c              |    8 
 b/drivers/usb/storage/unusual_devs.h          |   14 
 b/drivers/video/acornfb.c                     |    2 
 b/fs/befs/linuxvfs.c                          |    5 
 b/fs/binfmt_elf.c                             |    4 
 b/fs/cifs/AUTHORS                             |    1 
 b/fs/cifs/CHANGES                             |   17 
 b/fs/cifs/README                              |    7 
 b/fs/cifs/cifs_debug.c                        |   14 
 b/fs/cifs/cifsencrypt.c                       |    6 
 b/fs/cifs/cifsfs.c                            |   30 
 b/fs/cifs/cifsglob.h                          |   27 
 b/fs/cifs/cifssmb.c                           |    2 
 b/fs/cifs/connect.c                           |  121 
 b/fs/cifs/dir.c                               |    2 
 b/fs/cifs/file.c                              |  194 +
 b/fs/cifs/misc.c                              |   14 
 b/fs/cifs/smbdes.c                            |   40 
 b/fs/cifs/smbencrypt.c                        |   43 
 b/fs/cifs/transport.c                         |   22 
 b/fs/dquot.c                                  |   53 
 b/fs/hugetlbfs/inode.c                        |   20 
 b/fs/jbd/commit.c                             |    8 
 b/fs/jbd/journal.c                            |    4 
 b/fs/libfs.c                                  |    2 
 b/fs/nfsd/nfs3xdr.c                           |    2 
 b/fs/ramfs/inode.c                            |    7 
 b/fs/xfs/linux/xfs_ioctl.c                    |    2 
 b/fs/xfs/linux/xfs_vnode.h                    |    8 
 b/fs/xfs/support/move.h                       |   18 
 b/fs/xfs/xfs_dir2_node.c                      |  119 
 b/fs/xfs/xfs_ialloc_btree.c                   |    8 
 b/fs/xfs/xfs_log.c                            |    3 
 b/include/asm-arm/arch-shark/hardware.h       |    1 
 b/include/asm-i386/hw_irq.h                   |    4 
 b/include/asm-i386/mach-default/irq_vectors.h |    6 
 b/include/asm-i386/mach-pc9800/irq_vectors.h  |    5 
 b/include/asm-i386/mach-visws/irq_vectors.h   |    1 
 b/include/asm-i386/mach-voyager/irq_vectors.h |    1 
 b/include/asm-i386/pci.h                      |    2 
 b/include/asm-ia64/ia32.h                     |    2 
 b/include/asm-ia64/io.h                       |    3 
 b/include/asm-ia64/module.h                   |    3 
 b/include/asm-ia64/namei.h                    |    2 
 b/include/asm-ia64/numnodes.h                 |    2 
 b/include/asm-ia64/perfmon_default_smpl.h     |    5 
 b/include/asm-ia64/processor.h                |   19 
 b/include/asm-ia64/unwind.h                   |    6 
 b/include/asm-sparc64/page.h                  |    6 
 b/include/asm-sparc64/pgtable.h               |   11 
 b/include/linux/ata.h                         |  179 +
 b/include/linux/etherdevice.h                 |    2 
 b/include/linux/ioport.h                      |    1 
 b/include/linux/kernel.h                      |    2 
 b/include/linux/libata.h                      |  567 ++++
 b/include/linux/netdevice.h                   |    3 
 b/include/linux/timex.h                       |    1 
 b/include/linux/toshiba.h                     |    9 
 b/include/net/llc.h                           |    8 
 b/include/net/xfrm.h                          |    9 
 b/include/scsi/scsi_device.h                  |    2 
 b/include/scsi/scsi_devinfo.h                 |   22 
 b/include/scsi/scsi_host.h                    |    6 
 b/init/do_mounts_initrd.c                     |    6 
 b/init/do_mounts_rd.c                         |    2 
 b/init/initramfs.c                            |    2 
 b/init/main.c                                 |    2 
 b/ipc/msg.c                                   |   11 
 b/kernel/kmod.c                               |    2 
 b/kernel/resource.c                           |   12 
 b/kernel/sched.c                              |    2 
 b/kernel/sys.c                                |    2 
 b/kernel/time.c                               |    5 
 b/kernel/timer.c                              |    7 
 b/lib/string.c                                |    4 
 b/lib/vsprintf.c                              |    2 
 b/mm/filemap.c                                |    3 
 b/mm/memory.c                                 |    2 
 b/mm/mmap.c                                   |   65 
 b/mm/shmem.c                                  |   63 
 b/mm/slab.c                                   |   47 
 b/net/bluetooth/af_bluetooth.c                |    2 
 b/net/bridge/br_netfilter.c                   |    1 
 b/net/bridge/netfilter/ebt_redirect.c         |    5 
 b/net/compat.c                                |   87 
 b/net/core/dev.c                              |   11 
 b/net/core/neighbour.c                        |   29 
 b/net/core/net-sysfs.c                        |    2 
 b/net/core/sysctl_net_core.c                  |   17 
 b/net/ipv4/devinet.c                          |   40 
 b/net/ipv4/ip_gre.c                           |    3 
 b/net/ipv4/ipip.c                             |    3 
 b/net/ipv4/tcp.c                              |   17 
 b/net/ipv6/addrconf.c                         |   37 
 b/net/ipv6/ip6_tunnel.c                       |    3 
 b/net/ipv6/sit.c                              |    3 
 b/net/ipv6/xfrm6_policy.c                     |    2 
 b/net/llc/af_llc.c                            |    1 
 b/net/llc/llc_proc.c                          |   11 
 b/sound/core/pcm_native.c                     |    2 
 drivers/scsi/scsi_devinfo.h                   |   17 
 include/net/llc_proc.h                        |   18 
 226 files changed, 11357 insertions(+), 1291 deletions(-)

