From: Andrew Morton <akpm@linux-foundation.org>
Subject: mmotm git repository
Date: Tue, 16 Dec 2008 11:43:43 -0800
Message-ID: <20081216114343.2ca29bdf.akpm__2729.35267207703$1229456768$gmane$org@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-ID: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org, mm-commits@vger.kernel.org
Cc: jT <toyj@union.edu>


"mmotm" is the "-mm tree of the moment" tree.  The -mm patch pile, updated
usually more than once per day.

Thus far the mmotm tree has been available in `quilt' form, at
http://userweb.kernel.org/~akpm/mmotm/.

Each time the mmotm tree is re-uploaded an announcement is sent to the
mm-commits@vger.kernel.org list.  (echo subscribe mm-commits | mail
majordomo@vger.kernel.org).


jT <toyj@union.edu> has developed scripts to pull the mmotm tree down
into a git tree (thanks!), available via

	git clone git://git.zen-sources.org/zen/mmotm.git

browseable here:

	http://git.zen-sources.org/?p=mmotm.git;a=summary

The patch titles are all screwed up - that's my fault, because the
.patch files don't include the title - I'll fix that sometime. 


This is all very new and I don't know what the update latency is.
