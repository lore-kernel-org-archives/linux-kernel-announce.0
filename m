From: kdist@linux.kernel.org (Linux Kernel Distribution System)
Subject: Linux kernel 2.6.23.3 released
Date: Fri, 16 Nov 2007 16:53:41 GMT
Message-ID: <200711161653.lAGGrfrV023829@hera.kernel.org>
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-announce@hera.kernel.org

Linux kernel version 2.6.23.3 has been released.  It is available from:

Patch:		ftp://ftp.kernel.org/pub/linux/kernel/v2.6/patch-2.6.23.3.bz2
Full source:	ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.23.3.tar.bz2

Sizes in bytes			Compressed	Uncompressed
------------------------------------------------------------
Patch                                20663             65218
Full source                       45478886         264714240

-----------------------------------------------------------------------------
 This is an automatically generated message.  To unsubscribe from this list,
 please send a message to majordomo@vger.kernel.org containing
 the line:

   unsubscribe linux-kernel-announce <your_email_address>

 ... where <your_email_address> is the email address you are receiving
     this message at.
-----------------------------------------------------------------------------

The following files were changed in this release:

 Documentation/ja_JP/HOWTO              |   84 +++++++++++++++++----------------
 Makefile                               |    2 
 arch/i386/boot/boot.h                  |    8 +--
 arch/i386/boot/header.S                |   62 +++++++++++++++++-------
 arch/i386/boot/video-bios.c            |    2 
 arch/i386/boot/video-vesa.c            |    2 
 arch/i386/boot/video.c                 |    2 
 arch/i386/kernel/tsc.c                 |    5 -
 arch/i386/xen/enlighten.c              |   57 +++++++++++++++-------
 arch/i386/xen/mmu.c                    |   29 ++++++++++-
 arch/i386/xen/multicalls.c             |   29 ++++++++++-
 arch/i386/xen/multicalls.h             |    3 +
 arch/i386/xen/xen-ops.h                |    1 
 arch/mips/mm/c-r4k.c                   |   21 +++++++-
 arch/powerpc/math-emu/math.c           |   13 +++--
 arch/powerpc/platforms/cell/axon_msi.c |    4 -
 arch/sparc64/kernel/sys_sparc.c        |    2 
 arch/sparc64/lib/xor.S                 |   12 ++--
 arch/um/Makefile                       |    3 -
 arch/um/include/common-offsets.h       |    1 
 arch/um/include/sysdep-i386/stub.h     |    3 -
 arch/um/kernel/skas/clone.c            |    1 
 arch/um/os-Linux/main.c                |    1 
 arch/um/os-Linux/skas/mem.c            |    1 
 arch/um/os-Linux/skas/process.c        |    2 
 arch/um/os-Linux/start_up.c            |    1 
 arch/um/os-Linux/tt.c                  |    1 
 arch/um/os-Linux/util.c                |   38 ++++++++++++++
 arch/um/sys-i386/user-offsets.c        |    6 +-
 arch/um/sys-x86_64/user-offsets.c      |    9 ---
 arch/x86_64/mm/init.c                  |    6 --
 arch/x86_64/mm/pageattr.c              |    9 ++-
 block/ll_rw_blk.c                      |    8 +--
 drivers/ata/sata_mv.c                  |   27 +++++++---
 fs/locks.c                             |   11 ++++
 fs/proc/array.c                        |    6 +-
 fs/splice.c                            |    2 
 fs/xfs/linux-2.6/xfs_buf.c             |   13 +++++
 include/asm-mips/hazards.h             |   54 ++++++++++++++++++++-
 include/linux/blkdev.h                 |    2 
 include/linux/bootmem.h                |    1 
 include/linux/sched.h                  |    1 
 include/xen/interface/vcpu.h           |    5 +
 kernel/fork.c                          |    2 
 kernel/futex_compat.c                  |   27 +++++++---
 kernel/lockdep.c                       |   10 +--
 kernel/params.c                        |    9 ++-
 kernel/softlockup.c                    |    7 +-
 mm/filemap.c                           |   13 -----
 mm/page-writeback.c                    |    4 +
 mm/shmem.c                             |   15 +++++
 mm/slub.c                              |   22 --------
 mm/sparse.c                            |   11 ----
 53 files changed, 450 insertions(+), 220 deletions(-)

