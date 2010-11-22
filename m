From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.36.1 released
Date: Mon, 22 Nov 2010 19:28:25 GMT
Message-ID: <201011221928.oAMJSPnH016578@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.36.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.36.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.36.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                18254             65384
Full source                       70236745         413665280

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Makefile                                         |    2 -
 arch/arm/include/asm/kgdb.h                      |    5 +-
 arch/arm/kernel/kgdb.c                           |    2 -
 arch/arm/mach-cns3xxx/include/mach/debug-macro.S |    2 -
 arch/powerpc/kernel/ppc970-pmu.c                 |    2 +
 arch/x86/include/asm/cpufeature.h                |    2 -
 arch/x86/include/asm/io.h                        |    1 
 arch/x86/include/asm/mrst.h                      |    2 -
 arch/x86/include/asm/smp.h                       |    9 ++++-
 arch/x86/kernel/apic/io_apic.c                   |    2 +
 arch/x86/kernel/cpu/mtrr/cleanup.c               |    2 -
 arch/x86/kernel/cpu/perf_event_amd.c             |    4 +-
 arch/x86/kernel/crash_dump_64.c                  |    3 +
 arch/x86/kernel/olpc.c                           |    5 ++
 arch/x86/kernel/reboot.c                         |    2 -
 arch/x86/kernel/smp.c                            |   15 +++++---
 arch/x86/kernel/traps.c                          |    1 
 arch/x86/kernel/vm86_32.c                        |   10 ++++-
 arch/x86/kvm/svm.c                               |   37 ++++++++++++++++++++-
 arch/x86/kvm/x86.c                               |    4 +-
 arch/x86/xen/enlighten.c                         |    2 -
 arch/x86/xen/smp.c                               |    6 +--
 drivers/ata/ahci.h                               |    1 
 drivers/ata/libahci.c                            |   18 ++++++++--
 drivers/bluetooth/hci_ldisc.c                    |    7 ++++
 drivers/char/pcmcia/synclink_cs.c                |    2 +
 drivers/idle/intel_idle.c                        |    2 -
 drivers/misc/sgi-xp/xpc_uv.c                     |   17 ++++++++++
 drivers/net/wireless/p54/eeprom.c                |    4 +-
 drivers/net/wireless/p54/p54usb.c                |   15 ++++++++
 drivers/platform/x86/asus-laptop.c               |    6 +--
 drivers/scsi/gdth.c                              |    8 ++++
 drivers/scsi/libsas/sas_ata.c                    |    1 
 drivers/scsi/pmcraid.h                           |    1 
 drivers/scsi/qla4xxx/ql4_nx.c                    |    1 
 drivers/scsi/scsi_lib.c                          |    3 +
 drivers/scsi/scsi_sysfs.c                        |    3 +
 drivers/scsi/sd.c                                |   15 +++++---
 drivers/staging/phison/phison.c                  |    2 -
 drivers/staging/usbip/usbip_event.c              |   16 +--------
 drivers/staging/usbip/vhci_hcd.c                 |    2 +
 drivers/usb/core/hub.c                           |    9 +++--
 drivers/usb/core/message.c                       |   14 ++++----
 drivers/usb/gadget/atmel_usba_udc.c              |    3 +
 drivers/usb/gadget/composite.c                   |    3 +
 drivers/usb/gadget/f_acm.c                       |    2 -
 drivers/usb/gadget/g_ffs.c                       |    4 +-
 drivers/usb/gadget/multi.c                       |    4 +-
 drivers/usb/host/r8a66597.h                      |    2 -
 drivers/usb/musb/blackfin.c                      |    7 ++--
 drivers/usb/musb/davinci.c                       |    2 +
 drivers/usb/musb/musb_core.c                     |    4 --
 drivers/usb/musb/omap2430.c                      |    1 
 drivers/usb/musb/tusb6010.c                      |    4 ++
 drivers/usb/serial/cp210x.c                      |    2 +
 drivers/usb/serial/ftdi_sio.c                    |   39 ++++++++++++++++++++---
 drivers/usb/serial/ftdi_sio_ids.h                |   39 ++++++++++++++++++++++-
 drivers/usb/serial/mct_u232.c                    |    7 ++--
 drivers/usb/serial/opticon.c                     |    6 +--
 drivers/usb/serial/option.c                      |   23 +++++++++++--
 drivers/usb/serial/visor.c                       |   11 +++++-
 fs/cifs/cifsproto.h                              |    3 +
 fs/cifs/dir.c                                    |   12 ++-----
 fs/cifs/file.c                                   |    4 +-
 fs/nfs/direct.c                                  |    2 -
 fs/pipe.c                                        |    2 -
 kernel/futex.c                                   |   31 +++++++++---------
 kernel/perf_event.c                              |    8 ++++
 kernel/sched.c                                   |   13 +------
 mm/vmalloc.c                                     |    9 +++++
 net/bluetooth/l2cap.c                            |    4 +-
 net/netfilter/xt_SECMARK.c                       |    2 -
 72 files changed, 379 insertions(+), 141 deletions(-)

