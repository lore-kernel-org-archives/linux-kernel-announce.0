From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.0c file/swap crypto package
Date: Thu, 18 Dec 2003 16:13:44 +0200
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <3FE1B618.677174E0@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Fixed util-linux patch so it compiles on boxes where C library is compiled
  against 2.6 kernel headers.
- Fixed SMP race that could corrupt data if all following conditions are
  met: (1) loop device is in multi-key mode, (2) SMP or UP+PREEMPT box, (3)
  shared writable mappings to a file, (4) memory mapped file data modified
  at same time as that same data is being encrypted inside loop transfer
  function, and (5) unclean shutdown so that re-dirtied page won't get
  written again.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0c.tar.bz2
    md5sum 8ef53cb6783a57f0476517896ce59990

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0c.tar.bz2.sign


Additional ciphers package changes since previous release:
- Fixed SMP race in loop_twofish and loop_serpent modules that could corrupt
  data if all following conditions are met: (1) loop device is in multi-key
  mode, (2) SMP or UP+PREEMPT box, (3) shared writable mappings to a file,
  (4) memory mapped file data modified at same time as that same data is
  being encrypted inside loop transfer function, and (5) unclean shutdown so
  that re-dirtied page won't get written again.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0c.tar.bz2
    md5sum 6b40e4a1c172560e059d9439fa73942d

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0c.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
