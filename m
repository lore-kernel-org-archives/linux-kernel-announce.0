From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.0e file/swap crypto package
Date: Wed, 21 Jan 2004 21:03:10 +0200
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <400ECCEE.A0FD8253__33036.0611122616$1074712138@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Modified build-initrd.sh to make it work with Debian version of
  module-init-tools. Patch from Martin Godisch.
- build-initrd.sh can now be configured to build linuxrc using dietlibc.
  Patch originally from Martin Godisch. Patch cleaned up by Jari Ruusu.
- Tiny speed optimization in MD5 IV computation.
- Added workaround for Makefile breakage in 2.6.1-mm5
- Added workaround for CONFIG_REGPARM=y breakage.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0e.tar.bz2
    md5sum cd0d017e9accd6c84010d915e9eaf03c

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0e.tar.bz2.sign


Additional ciphers package changes since previous release:
- Tiny speed optimization in MD5 IV computation.
- Added workaround for Makefile breakage in 2.6.1-mm5
- Added workaround for CONFIG_REGPARM=y breakage.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0e.tar.bz2
    md5sum c123257ff41e9945a8fcdf095e9ad2e7

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0e.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
