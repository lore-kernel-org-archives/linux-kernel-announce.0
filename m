From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.0.1 released
Date: Tue, 19 Oct 2004 18:55:10 GMT
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200410191855.i9JItAnT032727@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.0.1 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.0/patch-2.0.1.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.0/linux-2.0.1.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                               181680            987607
Full source                        4736116          23900160

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/Changes              |    5 
 Documentation/devices.tex          |   47 
 Documentation/devices.txt          |   44 
 Documentation/ioctl-number.txt     |    3 
 Documentation/isdn/INTERFACE       |    6 
 Documentation/isdn/README.teles    |    3 
 Documentation/logo.txt             |    2 
 Documentation/modules.txt          |    4 
 Makefile                           |    2 
 README                             |   13 
 arch/alpha/defconfig               |   13 
 arch/alpha/kernel/head.S           |   14 
 arch/alpha/kernel/irq.c            |  252 +---
 arch/alpha/kernel/osf_sys.c        |   21 
 arch/alpha/kernel/process.c        |    6 
 arch/alpha/kernel/signal.c         |  106 -
 arch/i386/kernel/ksyms.c           |    1 
 arch/i386/kernel/signal.c          |    8 
 drivers/block/README.md            |    2 
 drivers/block/ide.c                |    2 
 drivers/block/loop.c               |   58 
 drivers/block/md.c                 |   46 
 drivers/block/rd.c                 |    2 
 drivers/block/xd.c                 |    2 
 drivers/char/baycom.c              |   27 
 drivers/char/console.c             |    2 
 drivers/char/lp.c                  |    4 
 drivers/char/mem.c                 |    2 
 drivers/char/n_tty.c               |   34 
 drivers/char/pty.c                 |    7 
 drivers/char/random.c              |    2 
 drivers/char/serial.c              |    5 
 drivers/char/softdog.c             |    1 
 drivers/char/tty_io.c              |   15 
 drivers/isdn/icn/icn.c             |  110 +
 drivers/isdn/icn/icn.h             |   12 
 drivers/isdn/isdn_common.c         |   69 -
 drivers/isdn/isdn_net.c            |  109 +
 drivers/isdn/isdn_ppp.c            |  229 +++
 drivers/isdn/isdn_tty.c            |   56 
 drivers/isdn/pcbit/callbacks.c     |    3 
 drivers/isdn/pcbit/capi.c          |   36 
 drivers/isdn/pcbit/capi.h          |    3 
 drivers/isdn/pcbit/drv.c           |   27 
 drivers/isdn/pcbit/edss1.c         |   10 
 drivers/isdn/pcbit/layer2.c        |  185 +-
 drivers/isdn/teles/callc.c         |   19 
 drivers/isdn/teles/card.c          |  110 -
 drivers/net/de4x5.c                |  260 ++--
 drivers/net/net_init.c             |   11 
 drivers/net/slhc.c                 |   14 
 drivers/net/wic.c                  |    2 
 drivers/scsi/Config.in             |    4 
 drivers/scsi/README.st             |   20 
 drivers/scsi/hosts.h               |    2 
 drivers/scsi/qlogicisp.c           | 2306 +++++++++++++++++++------------------
 drivers/scsi/qlogicisp.h           |   59 
 drivers/scsi/scsi.c                |   43 
 drivers/scsi/scsi.h                |    2 
 drivers/scsi/sg.c                  |   16 
 drivers/scsi/st.c                  |   76 -
 drivers/sound/.blurb               |    3 
 drivers/sound/.object_files        |   35 
 drivers/sound/.objects             |   16 
 drivers/sound/.version             |    4 
 drivers/sound/CHANGELOG            |   62 
 drivers/sound/COPYING              |  362 +++++
 drivers/sound/Config.in            |    9 
 drivers/sound/Config.std           |    9 
 drivers/sound/Makefile             |   39 
 drivers/sound/Readme               |   55 
 drivers/sound/Readme.cards         |  233 ++-
 drivers/sound/Readme.linux         |    9 
 drivers/sound/Readme.modules       |   12 
 drivers/sound/Readme.v30           |   13 
 drivers/sound/ad1848.c             | 1027 ++++++++++------
 drivers/sound/ad1848_mixer.h       |   24 
 drivers/sound/adlib_card.c         |   32 
 drivers/sound/aedsp16.c            |   28 
 drivers/sound/audio.c              |   77 -
 drivers/sound/configure.c          |   92 -
 drivers/sound/cs4232.c             |  104 -
 drivers/sound/dev_table.c          |  270 +++-
 drivers/sound/dev_table.h          |  115 +
 drivers/sound/dmabuf.c             |  605 +++++----
 drivers/sound/finetune.h           |   24 
 drivers/sound/gus_card.c           |   48 
 drivers/sound/gus_midi.c           |   36 
 drivers/sound/gus_vol.c            |   24 
 drivers/sound/gus_wave.c           |  636 ++++++----
 drivers/sound/ics2101.c            |   36 
 drivers/sound/iwmem.h              |   33 
 drivers/sound/lowlevel/Config.tmpl |    5 
 drivers/sound/lowlevel/Makefile    |   19 
 drivers/sound/lowlevel/README      |   13 
 drivers/sound/lowlevel/aci.c       |  590 +++++++++
 drivers/sound/lowlevel/aci.readme  |   40 
 drivers/sound/lowlevel/init.c      |   26 
 drivers/sound/mad16.c              |  227 ++-
 drivers/sound/mad16_sb_midi.c      |  357 -----
 drivers/sound/maui.c               |   68 -
 drivers/sound/midi_synth.c         |   62 
 drivers/sound/midibuf.c            |  135 --
 drivers/sound/mpu401.c             |  110 -
 drivers/sound/opl3.c               |   68 -
 drivers/sound/opl3.h               |   26 
 drivers/sound/os.h                 |    7 
 drivers/sound/pas.h                |  236 ---
 drivers/sound/pas2_card.c          |  232 +--
 drivers/sound/pas2_midi.c          |  100 -
 drivers/sound/pas2_mixer.c         |  223 +--
 drivers/sound/pas2_pcm.c           |  217 +--
 drivers/sound/patmgr.c             |   84 -
 drivers/sound/pss.c                |  191 +--
 drivers/sound/sb.h                 |  117 +
 drivers/sound/sb16_dsp.c           |  643 ----------
 drivers/sound/sb16_midi.c          |  364 -----
 drivers/sound/sb_audio.c           | 1202 +++++++++++++++++++
 drivers/sound/sb_card.c            |   37 
 drivers/sound/sb_common.c          | 1207 +++++++++++++++++++
 drivers/sound/sb_dsp.c             | 1661 --------------------------
 drivers/sound/sb_midi.c            |  237 +--
 drivers/sound/sb_mixer.c           |  486 ++-----
 drivers/sound/sb_mixer.h           |   65 -
 drivers/sound/sequencer.c          |  300 ++--
 drivers/sound/sound_calls.h        |  116 -
 drivers/sound/sound_config.h       |   32 
 drivers/sound/sound_switch.c       |  124 +
 drivers/sound/sound_timer.c        |   30 
 drivers/sound/soundcard.c          |  129 +-
 drivers/sound/soundvers.h          |    4 
 drivers/sound/sscape.c             |  370 +----
 drivers/sound/sys_timer.c          |   30 
 drivers/sound/trix.c               |  129 --
 drivers/sound/uart401.c            |  437 +++++++
 drivers/sound/uart6850.c           |   37 
 fs/affs/namei.c                    |    5 
 fs/exec.c                          |    1 
 fs/ext/namei.c                     |    3 
 fs/ext2/acl.c                      |    7 
 fs/ext2/ioctl.c                    |    2 
 fs/ext2/namei.c                    |   50 
 fs/ioctl.c                         |    4 
 fs/locks.c                         |    6 
 fs/minix/namei.c                   |    9 
 fs/msdos/namei.c                   |    3 
 fs/namei.c                         |   47 
 fs/ncpfs/dir.c                     |    6 
 fs/nfs/bio.c                       |   97 +
 fs/nfs/dir.c                       |   27 
 fs/nfs/file.c                      |    4 
 fs/nfs/nfsiod.c                    |   25 
 fs/nfs/proc.c                      |   20 
 fs/open.c                          |   14 
 fs/pipe.c                          |    5 
 fs/proc/array.c                    |    5 
 fs/smbfs/dir.c                     |    6 
 fs/smbfs/proc.c                    |    4 
 fs/sysv/namei.c                    |    9 
 fs/umsdos/ioctl.c                  |    2 
 fs/umsdos/namei.c                  |    6 
 fs/vfat/namei.c                    |    8 
 fs/xiafs/namei.c                   |   11 
 include/asm-alpha/byteorder.h      |    9 
 include/asm-alpha/errno.h          |    2 
 include/asm-i386/errno.h           |    2 
 include/asm-i386/posix_types.h     |   14 
 include/linux/affs_fs.h            |    3 
 include/linux/dirent.h             |    4 
 include/linux/ext2_fs.h            |    2 
 include/linux/ext_fs.h             |    2 
 include/linux/fs.h                 |    2 
 include/linux/if_arp.h             |    1 
 include/linux/isdn.h               |   10 
 include/linux/loop.h               |    4 
 include/linux/minix_fs.h           |    2 
 include/linux/mm.h                 |    3 
 include/linux/msdos_fs.h           |    6 
 include/linux/nfs_fs.h             |    5 
 include/linux/nfsiod.h             |   22 
 include/linux/posix_types.h        |   12 
 include/linux/soundcard.h          |   58 
 include/linux/sysv_fs.h            |    2 
 include/linux/time.h               |    3 
 include/linux/ultrasound.h         |   26 
 include/linux/umsdos_fs.p          |    3 
 include/linux/xia_fs.h             |    3 
 include/scsi/scsi.h                |    2 
 kernel/exit.c                      |   23 
 kernel/fork.c                      |    3 
 kernel/sched.c                     |   32 
 kernel/signal.c                    |   12 
 kernel/sys.c                       |   41 
 lib/ctype.c                        |   13 
 mm/mremap.c                        |    5 
 mm/swapfile.c                      |    5 
 mm/vmscan.c                        |    1 
 net/core/sock.c                    |    2 
 net/ipv4/af_inet.c                 |    2 
 net/ipv4/ip_forward.c              |    2 
 net/ipv4/ip_fw.c                   |    4 
 net/ipv4/ip_masq_app.c             |   28 
 net/ipv4/ip_output.c               |   21 
 net/ipv4/tcp.c                     |  102 +
 net/ipv4/tcp_input.c               |   10 
 net/ipv4/tcp_output.c              |   12 
 net/socket.c                       |    2 
 207 files changed, 11086 insertions(+), 9241 deletions(-)

