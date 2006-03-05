From: Chris Wright <chrisw@sous-sol.org>
Subject: Linux 2.6.15.6
Date: Sun, 5 Mar 2006 13:09:04 -0800
Message-ID: <20060305210904.GT3883@sorel.sous-sol.org>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org, stable@kernel.org
Cc: torvalds@osdl.org

We (the -stable team) are announcing the release of the 2.6.15.6 kernel.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.15.5 and 2.6.15.6, as it is small enough to do so.

The updated 2.6.15.y git tree can be found at:
 	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/stable/linux-2.6.15.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

--------

 Makefile                     |    2 +-
 arch/ia64/kernel/unaligned.c |    2 +-
 fs/nfs/direct.c              |    7 ++++++-
 include/linux/types.h        |    1 +
 net/core/request_sock.c      |    1 -
 5 files changed, 9 insertions(+), 4 deletions(-)

Summary of changes from v2.6.15.5 to v2.6.15.6
==============================================


Arnaldo Carvalho de Melo:
      Don't reset rskq_defer_accept in reqsk_queue_alloc

Chris Wright:
      fs/nfs/direct.c compile fix
      Linux 2.6.15.6

Dave Jones:
      mempolicy.c compile fix, make sure BITS_PER_BYTE is defined

Tony Luck:
      [IA64] die_if_kernel() can return (CVE-2006-0742)

