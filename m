From: Chris Wright <chrisw@osdl.org>
Subject: Linux 2.6.13.3
Date: Mon, 3 Oct 2005 18:16:20 -0700
Message-ID: <20051004011620.GO16352@shell0.pdx.osdl.net>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org
Cc: akpm@osdl.org, torvalds@osdl.org, stable@kernel.org

We (the -stable team) are announcing the release of the 2.6.13.3 kernel.

The diffstat and short summary of the fixes are below.

I'll also be replying to this message with a copy of the patch between
2.6.13.2 and 2.6.13.3, as it is small enough to do so.

The updated 2.6.13.y git tree can be found at:
	rsync://rsync.kernel.org/pub/scm/linux/kernel/git/chrisw/linux-2.6.13.y.git
and can be browsed at the normal kernel.org git web browser:
	www.kernel.org/git/

thanks,
-chris

----------

 Makefile                               |    2 -
 arch/um/kernel/skas/include/mmu-skas.h |    4 +++
 arch/um/kernel/skas/mmu.c              |    9 ++++++-
 drivers/net/skge.c                     |   24 ++++++++++++-------
 drivers/pcmcia/yenta_socket.c          |   13 +++++++++-
 fs/exec.c                              |    5 +---
 include/asm-um/pgalloc.h               |   12 +++++----
 include/asm-um/pgtable-3level.h        |    9 ++-----
 include/net/ip_vs.h                    |    3 ++
 net/ipv4/ipvs/ip_vs_conn.c             |   41 ++++++++++++++++++++++++++++++---
 net/ipv4/ipvs/ip_vs_core.c             |   16 ++++++------
 net/ipv4/ipvs/ip_vs_sync.c             |   20 +++++++++++-----
 net/ipv4/tcp_input.c                   |    2 -
 net/ipv4/tcp_minisocks.c               |    2 -
 net/ipv6/udp.c                         |    5 +---
 15 files changed, 119 insertions(+), 48 deletions(-)

Summary of changes from v2.6.13.2 to v2.6.13.3
============================================

Alexander Nyberg:
  Fix fs/exec.c:788 (de_thread()) BUG_ON

Alexey Kuznetsov:
  Don't over-clamp window in tcp_clamp_window()

Chris Wright:
  Linux 2.6.13.3

David Stevens:
  fix IPv6 per-socket multicast filtering in exact-match case

Ivan Kokshaysky:
  yenta oops fix

Julian Anastasov:
  ipvs: ip_vs_ftp breaks connections using persistence

Paolo 'Blaisorblade' Giarrusso:
  uml - Fix x86_64 page leak

Stephen Hemminger:
  skge: set mac address oops with bonding
  tcp: set default congestion control correctly for incoming connections
