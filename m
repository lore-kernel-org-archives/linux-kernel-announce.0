From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.2a file/swap crypto package
Date: Wed, 08 Sep 2004 22:20:41 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <413F5B89.4AF97168@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Fixed multi-key ioctl incompatibility with sparc64 boxes running 64 bit
  kernel and 32 bit userland. Fix enabled for 2.4.26 and later 2.4 kernels.
  2.6 kernels were not affected.
- Added key scrubbing support for AES loop cipher. This feature is not
  enabled by default because it doubles storage space requirement for loop
  encryption keys. To enable, add KEYSCRUB=y parameter to loop module make
  command. (2.4 and 2.6 kernels only).
- Added multi-key compatibility to losetup and mount -p option handling.
- Fixed incompatibility with 2.6.8.1 kernel struct bio handling.
- Small optimization to bio I/O barrier support. Also added support for
  queue->issue_flush_fn() I/O barrier calls. (2.6 kernels only).
- Added workaround for kernel bug that causes I/O errors on -EWOULDBLOCK I/O
  elevator failures (2.6 kernels only).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2a.tar.bz2
    md5sum ab10564704317b38b5c7f24e382acae3

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2a.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
