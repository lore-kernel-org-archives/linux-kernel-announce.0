From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v3.0c file/swap crypto package
Date: Fri, 18 Mar 2005 21:34:44 +0200
Message-ID: <423B2D54.5E4B9F6C@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Changed gpg pipe code in losetup/mount to use '--no-options' instead of
  '--options /dev/null'. Fix from Lars Packschies.
- Changed losetup/mount programs to warn about unknown key data format.
- Added workaround for vanished QUEUE_FLAG_ORDERED define in 2.6.11-rc3-mm1
  kernel.
- Changed gcc command line parameter order to be same as in kernel Makefile.
  Wrong parameter order caused miscompilation with Xen architecture (2.6
  kernels).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v3.0c.tar.bz2
    md5sum 3ba40e971da6a18df3e82fbbd3795ac8

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v3.0c.tar.bz2.sign


Additional ciphers package changes since previous release:
- Changed gcc command line parameter order to be same as in kernel Makefile.
  Wrong parameter order caused miscompilation with Xen architecture (2.6
  kernels).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v3.0b.tar.bz2
    md5sum 603b188299dfbe1d05e3bca7d281a9a2

    http://loop-aes.sourceforge.net/ciphers/ciphers-v3.0b.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
