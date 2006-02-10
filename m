From: Chris Wright <chrisw@sous-sol.org>
Subject: Linux 2.6.15.4
Date: Fri, 10 Feb 2006 00:15:52 -0800
Message-ID: <20060210081552.GF30803@sorel.sous-sol.org>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org, stable@kernel.org
Cc: torvalds@osdl.org

We (the -stable team) are announcing the release of the 2.6.15.4 kernel.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.15.3 and 2.6.15.4, as it is small enough to do so.

The updated 2.6.15.y git tree can be found at:
 	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/chrisw/linux-2.6.15.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

--------

 Makefile                                       |    2 
 arch/i386/kernel/acpi/boot.c                   |   13 +++-
 arch/sparc64/kernel/sys32.S                    |    1 
 arch/sparc64/kernel/systbls.S                  |    2 
 arch/x86_64/kernel/vmlinux.lds.S               |   10 ++-
 arch/x86_64/mm/srat.c                          |   28 +++++++---
 drivers/input/joystick/db9.c                   |   70 ++++++++++++-------------
 drivers/input/joystick/grip.c                  |    3 +
 drivers/input/joystick/iforce/iforce-main.c    |    2 
 drivers/input/joystick/iforce/iforce-packets.c |    4 -
 drivers/input/joystick/iforce/iforce-usb.c     |    1 
 drivers/input/joystick/sidewinder.c            |    2 
 drivers/input/mousedev.c                       |    9 +--
 drivers/md/dm-crypt.c                          |    5 +
 drivers/md/md.c                                |    3 +
 drivers/net/ppp_generic.c                      |    3 +
 drivers/net/wireless/hostap/Kconfig            |    2 
 drivers/scsi/scsi_lib.c                        |    5 -
 fs/dcache.c                                    |    7 ++
 fs/xfs/linux-2.6/xfs_buf.c                     |    7 ++
 include/asm-alpha/system.h                     |    2 
 include/linux/security.h                       |    4 -
 net/bridge/br_if.c                             |    7 --
 net/bridge/br_input.c                          |   10 ++-
 net/bridge/br_netfilter.c                      |   55 +++++++++++++------
 net/bridge/br_stp_bpdu.c                       |    8 ++
 security/keys/keyctl.c                         |   15 +++--
 security/seclvl.c                              |    2 
 sound/pci/emu10k1/emumixer.c                   |    2 
 29 files changed, 178 insertions(+), 106 deletions(-)

Summary of changes from v2.6.15.3 to v2.6.15.4
==============================================

Adrian Bunk:
      PCMCIA=m, HOSTAP_CS=y is not a legal configuration

Alexey Dobriyan:
      Input: iforce - do not return ENOMEM upon successful allocation

Andi Kleen:
      x86_64: Let impossible CPUs point to reference per cpu data
      x86_64: Clear more state when ignoring empty node in SRAT parsing

Ashok Raj:
      x86_64: Dont record local apic ids when they are disabled in MADT

Chris Wright:
      Linux 2.6.15.4

Davi Arnaut:
      Fix keyctl usage of strnlen_user()

David S. Miller:
      Kill compat_sys_clock_settime sign extension stub.

Dmitry Torokhov:
      Input: grip - fix crash when accessing device
      Input: db9 - fix possible crash with Saturn gamepads
      Input: iforce - fix detection of USB devices

Herbert Xu:
      Fixed hardware RX checksum handling

Jens Axboe:
      SCSI: turn off ordered flush barriers

Kimball Murray:
      Input: mousedev - fix memory leak

Linus Torvalds:
      seclvl settime fix

Nathan Scott:
      fix regression in xfs_buf_rele

Neil Brown:
      md: remove slashes from disk names when creation dev names in sysfs

Oleg Drokin:
      d_instantiate_unique / NFS inode leakage

Stefan Rompf:
      dm-crypt: zero key before freeing it

Stephen Hemminger:
      bridge: netfilter races on device removal
      bridge: fix RCU race on device removal

Stephen Smalley:
      SELinux: fix size-128 slab leak

Steve Langasek:
      __cmpxchg() must really always be inlined

Takashi Iwai:
      emu10k1 - Fix the confliction of 'Front' control

Zinx Verituse:
      Input: sidewinder - fix an oops

