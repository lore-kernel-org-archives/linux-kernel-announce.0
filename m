From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v3.0b file/swap crypto package
Date: Sun, 16 Jan 2005 23:58:07 +0200
Message-ID: <41EAE36F.35354DDF@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Fixed externally compiled module version multi-key-v3 ioctl
  incompatibility with boxes running 64 bit kernel and 32 bit userland.
  Kernel patch versions were not affected (2.4 and 2.6 kernels).
- Fixed bug that made v3 on-disk format always use file backed code path on
  some 2.6 kernels that did not have LO_FLAGS_DO_BMAP defined. No data loss,
  but file backed code path is not journaled file system safe. Same bug also
  had cosmetic side effect of "losetup -a" status query always displaying
  file backed v2 on-disk format as v3 on-disk format.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v3.0b.tar.bz2
    md5sum b295ff982cd4503603b38fdc54e604cc

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v3.0b.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
