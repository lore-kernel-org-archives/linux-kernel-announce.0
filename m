From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.2c file/swap crypto package
Date: Sun, 24 Oct 2004 20:18:14 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <417BE3D6.BB54FE7D@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Added compile time autodetection and workaround for per-thread vs.
  per-process rlimits (2.6 kernels).
- Added Gentoo compatible binary key setup option to mount and losetup
  'mount -p 0 -o phash=unhashed3' or 'losetup -p 0 -H unhashed3'.
- Added random key setup option to mount and losetup. This can be used to
  encrypt /tmp with random keys.
- Added workaround for module_param_array() breakage in 2.6.10-rc

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2c.tar.bz2
    md5sum 439a25bd1e85e8053bf0cf3c504279ed

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.2c.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
