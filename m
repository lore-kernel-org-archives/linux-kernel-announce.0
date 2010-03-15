From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.33.1 released
Date: Mon, 15 Mar 2010 16:44:06 GMT
Message-ID: <201003151644.o2FGi667019778@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.33.1 has been released.  It is available from:

Patch:		http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.33.1.bz2
Full source:	http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.33.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                46688            172566
Full source                       66219178         395089920

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/kernel-parameters.txt     |    7 
 Documentation/laptops/thinkpad-acpi.txt |    4 
 Makefile                                |    2 
 arch/Kconfig                            |    2 
 arch/x86/ia32/ia32_aout.c               |    1 
 arch/x86/include/asm/io_apic.h          |    1 
 arch/x86/include/asm/pgalloc.h          |    5 
 arch/x86/include/asm/uv/uv_hub.h        |    3 
 arch/x86/include/asm/vmx.h              |    1 
 arch/x86/kernel/acpi/boot.c             |    9 
 arch/x86/kernel/apic/io_apic.c          |   68 +-
 arch/x86/kernel/reboot.c                |    8 
 arch/x86/kvm/emulate.c                  |   55 +
 arch/x86/kvm/vmx.c                      |   10 
 arch/x86/mm/pgtable.c                   |   31 -
 arch/x86/oprofile/nmi_int.c             |   17 
 arch/x86/oprofile/op_model_amd.c        |   42 -
 arch/x86/oprofile/op_model_p4.c         |    6 
 arch/x86/oprofile/op_model_ppro.c       |    6 
 arch/x86/pci/mmconfig-shared.c          |   17 
 arch/x86/xen/enlighten.c                |    7 
 arch/x86/xen/mmu.c                      |   11 
 drivers/ata/ahci.c                      |   12 
 drivers/ata/pata_hpt3x2n.c              |   20 
 drivers/base/core.c                     |   13 
 drivers/base/devtmpfs.c                 |   13 
 drivers/char/tty_ldisc.c                |   50 +
 drivers/clocksource/sh_cmt.c            |   32 -
 drivers/clocksource/sh_mtu2.c           |    6 
 drivers/clocksource/sh_tmu.c            |    6 
 drivers/gpio/cs5535-gpio.c              |    4 
 drivers/gpio/wm831x-gpio.c              |   22 
 drivers/gpu/drm/i915/intel_lvds.c       |    7 
 drivers/gpu/drm/i915/intel_sdvo.c       |   23 
 drivers/gpu/drm/radeon/atom.c           |    4 
 drivers/gpu/drm/ttm/ttm_tt.c            |   18 
 drivers/hid/hid-core.c                  |    2 
 drivers/hid/hid-ids.h                   |    4 
 drivers/hid/usbhid/hid-core.c           |   28 
 drivers/hid/usbhid/usbhid.h             |    2 
 drivers/hwmon/ams/ams-core.c            |   11 
 drivers/hwmon/ams/ams-i2c.c             |    2 
 drivers/hwmon/ams/ams-pmu.c             |    2 
 drivers/hwmon/ams/ams.h                 |    1 
 drivers/hwmon/fschmd.c                  |   15 
 drivers/hwmon/tmp401.c                  |    7 
 drivers/hwmon/tmp421.c                  |   24 
 drivers/macintosh/therm_adt746x.c       |   34 -
 drivers/md/dm-ioctl.c                   |    9 
 drivers/md/dm.c                         |    4 
 drivers/media/dvb/dvb-core/dvb_net.c    |    1 
 drivers/media/video/gspca/mr97310a.c    |    6 
 drivers/media/video/soc_mediabus.c      |    3 
 drivers/mmc/host/s3cmci.c               |    4 
 drivers/net/wireless/airo.c             |   34 -
 drivers/net/wireless/ath/ath5k/ath5k.h  |    1 
 drivers/net/wireless/ath/ath5k/base.c   |   26 
 drivers/net/wireless/ath/ath9k/beacon.c |    9 
 drivers/net/wireless/ath/ath9k/hw.c     |   10 
 drivers/net/wireless/ath/ath9k/main.c   |    6 
 drivers/net/wireless/ath/ath9k/phy.h    |    3 
 drivers/net/wireless/ath/ath9k/rc.c     |   15 
 drivers/net/wireless/b43/main.c         |    3 
 drivers/net/wireless/b43legacy/main.c   |    2 
 drivers/net/wireless/p54/p54pci.c       |   18 
 drivers/net/wireless/p54/p54usb.c       |    1 
 drivers/pci/hotplug/ibmphp_ebda.c       |   13 
 drivers/platform/x86/Kconfig            |   10 
 drivers/platform/x86/eeepc-laptop.c     |    3 
 drivers/platform/x86/thinkpad_acpi.c    |  116 ++--
 drivers/rtc/class.c                     |    1 
 drivers/rtc/rtc-coh901331.c             |    5 
 drivers/scsi/mpt2sas/mpt2sas_scsih.c    |   17 
 drivers/scsi/qla1280.c                  |    4 
 drivers/serial/imx.c                    |    6 
 drivers/staging/Kconfig                 |    2 
 drivers/staging/Makefile                |    1 
 drivers/staging/hv/vmbus_drv.c          |   30 +
 drivers/staging/mimio/Kconfig           |   10 
 drivers/staging/mimio/Makefile          |    1 
 drivers/staging/mimio/mimio.c           |  914 --------------------------------
 drivers/staging/pohmelfs/inode.c        |   20 
 drivers/staging/pohmelfs/netfs.h        |    3 
 drivers/staging/wlan-ng/Kconfig         |    1 
 drivers/usb/core/driver.c               |    4 
 drivers/usb/core/hcd.c                  |    2 
 drivers/usb/core/hcd.h                  |    2 
 drivers/usb/core/hub.c                  |   12 
 drivers/usb/core/usb.c                  |    3 
 drivers/usb/gadget/f_mass_storage.c     |    1 
 drivers/usb/host/ohci-pnx4008.c         |    6 
 drivers/usb/host/uhci-hcd.c             |    1 
 drivers/usb/host/xhci-ext-caps.h        |    7 
 drivers/usb/serial/cp210x.c             |    3 
 drivers/usb/serial/ftdi_sio.c           |    5 
 drivers/usb/serial/ftdi_sio_ids.h       |   15 
 drivers/usb/serial/sierra.c             |   19 
 drivers/usb/storage/unusual_devs.h      |   88 +++
 drivers/video/sunxvr500.c               |    1 
 fs/file_table.c                         |    2 
 fs/nfs/dns_resolve.c                    |   18 
 fs/nfsd/nfs4state.c                     |    2 
 fs/ocfs2/aops.c                         |    5 
 fs/sysfs/dir.c                          |   82 ++
 include/linux/fs.h                      |    3 
 include/linux/irq.h                     |    2 
 include/linux/netdevice.h               |    2 
 include/linux/perf_event.h              |    5 
 include/linux/sched.h                   |    5 
 include/linux/skbuff.h                  |   13 
 include/linux/syscalls.h                |    6 
 include/trace/ftrace.h                  |    3 
 kernel/irq/chip.c                       |   52 +
 kernel/perf_event.c                     |  134 +++-
 kernel/power/snapshot.c                 |    2 
 kernel/sched.c                          |   21 
 kernel/trace/trace.h                    |    3 
 mm/fadvise.c                            |   10 
 mm/readahead.c                          |    6 
 mm/slab.c                               |    6 
 net/core/scm.c                          |    2 
 net/mac80211/agg-tx.c                   |    3 
 net/mac80211/rx.c                       |    8 
 net/mac80211/tx.c                       |    5 
 net/netfilter/xt_recent.c               |    4 
 net/sunrpc/svc_xprt.c                   |    5 
 net/sunrpc/xprtsock.c                   |    5 
 scripts/get_maintainer.pl               |    4 
 security/integrity/ima/ima_iint.c       |    3 
 security/selinux/ss/ebitmap.c           |    2 
 sound/core/pcm_native.c                 |    8 
 sound/pci/hda/hda_intel.c               |    3 
 sound/pci/hda/patch_analog.c            |    2 
 sound/pci/via82xx.c                     |    6 
 sound/soc/codecs/ak4104.c               |    6 
 sound/usb/usbaudio.c                    |   32 +
 sound/usb/usbmidi.c                     |   24 
 sound/usb/usbquirks.h                   |   27 
 tools/perf/util/symbol.c                |    2 
 139 files changed, 1281 insertions(+), 1408 deletions(-)

