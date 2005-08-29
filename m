From: Chris Wright <chrisw@osdl.org>
Subject: Linux 2.6.12.6
Date: Mon, 29 Aug 2005 11:04:18 -0700
Message-ID: <20050829180418.GZ7762__49091.1694629633$1125338766$gmane$org@shell0.pdx.osdl.net>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org
Cc: torvalds@osdl.org, akpm@osdl.org, stable@kernel.org

We (the -stable team) are announcing the release of the 2.6.12.6 kernel.
This is final one for 2.6.12 now that 2.6.13 has been released.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.12.5 and 2.6.12.6, as it is small enough to do so.

The updated 2.6.12.y git tree can be found at:
	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/chrisw/linux-2.6.12.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

----------

 Makefile                    |    2 +-
 drivers/scsi/sg.c           |   15 ++++++++-------
 drivers/usb/net/usbnet.c    |    2 +-
 kernel/signal.c             |    2 +-
 lib/zlib_inflate/inftrees.c |    2 +-
 net/ipv4/icmp.c             |   12 ++++++------
 net/ipv4/ip_sockglue.c      |    3 +++
 net/ipv6/ip6_input.c        |    9 +++++----
 net/ipv6/ipv6_sockglue.c    |    3 +++
 9 files changed, 29 insertions(+), 21 deletions(-)

Summary of changes from v2.6.12.5 to v2.6.12.6
==============================================

Bhavesh P. Davda:
  NPTL signal delivery deadlock fix

Chris Wright:
  Linux 2.6.12.6

Herbert Xu:
  Restrict socket policy loading to CAP_NET_ADMIN - CAN-2005-2555

Jan Blunck:
  sg.c: fix a memory leak in devices seq_file implementation (2nd)

lepton:
  fix gl_skb/skb type error in genelink driver in usbnet

Linus Torvalds:
  Revert unnecessary zlib_inflate/inftrees.c fix

Patrick McHardy:
  Fix DST leak in icmp_push_reply()
  Fix SKB leak in ip6_input_finish()
