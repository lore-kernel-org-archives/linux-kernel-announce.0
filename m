From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.2b file/swap crypto package
Date: Thu, 09 Sep 2004 13:34:14 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <414031A6.40A58D77@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Fixed queue->issue_flush_fn() bug that slipped to loop-AES-v2.2a and only
  affected barrier mounts on 2.6.9-rc and later kernels.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2b.tar.bz2
    md5sum a0fef265f8cc71dfc55856d59ce81ddf

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2b.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
