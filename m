From: Chris Wright <chrisw@osdl.org>
Subject: Linux 2.6.12.5
Date: Sun, 14 Aug 2005 22:40:22 -0700
Message-ID: <20050815054022.GK7762@shell0.pdx.osdl.net>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org
Cc: torvalds@osdl.org, akpm@osdl.org, stable@kernel.org

We (the -stable team) are announcing the release of the 2.6.12.5 kernel.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.12.4 and 2.6.12.5, as it is small enough to do so.

The updated 2.6.12.y git tree can be found at:
	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/chrisw/linux-2.6.12.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

----------

 Makefile                     |    2 -
 arch/ppc64/boot/zlib.c       |    3 +
 arch/x86_64/kernel/setup.c   |    2 -
 arch/x86_64/kernel/smp.c     |   65 +++++++++++++++++++++++++++++++++++++++++++
 arch/x86_64/kernel/smpboot.c |   21 +++++++------
 fs/isofs/compress.c          |    6 +++
 include/asm-x86_64/smp.h     |    2 +
 include/linux/zlib.h         |    5 +++
 kernel/module.c              |   15 +++++++--
 lib/inflate.c                |   16 +++++-----
 lib/zlib_inflate/inftrees.c  |    2 -
 mm/mempolicy.c               |    2 -
 security/keys/keyring.c      |    6 +++
 security/keys/process_keys.c |    2 -
 14 files changed, 121 insertions(+), 28 deletions(-)

Summary of changes from v2.6.12.4 to v2.6.12.5
==============================================

Andi Kleen:
  Fix SRAT for non dual core AMD systems
  x86_64: Fixing smpboot timing problem

Chris Wright:
  Linux 2.6.12.5

David Howells:
  CAN-2005-2098 Error during attempt to join key management session can leave semaphore pinned
  CAN-2005-2099 Destruction of failed keyring oopses

Eric Dumazet:
  sys_set_mempolicy() doesnt check if mode < 0

Linus Torvalds:
  Check input buffer size in zisofs

Rusty Russell:
  Module per-cpu alignment cannot always be met

Tim Yamin:
  Update in-kernel zlib routines (CAN-2005-2458, CAN-2005-2459)

