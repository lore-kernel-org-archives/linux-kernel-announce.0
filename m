From: Chris Wright <chrisw@sous-sol.org>
Subject: Linux 2.6.15.3
Date: Mon, 6 Feb 2006 17:41:22 -0800
Message-ID: <20060207014122.GC4483@sorel.sous-sol.org>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org, stable@kernel.org
Cc: torvalds@osdl.org

We (the -stable team) are announcing the release of the 2.6.15.3 kernel.
This contains a single security fix (CVE-2006-0454) which can potentially
be used as remote DoS exploit.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.15.2 and 2.6.15.3, as it is small enough to do so.

The updated 2.6.15.y git tree can be found at:
 	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/chrisw/linux-2.6.15.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

--------

 Makefile        |    2 +-
 net/ipv4/icmp.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

Summary of changes from v2.6.15.2 to v2.6.15.3
==============================================

Chris Wright:
      Linux 2.6.15.3

Herbert Xu:
      Fix extra dst release when ip_options_echo fails

