From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.1a file/swap crypto package
Date: Sat, 08 May 2004 14:22:10 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <409CC2E2.EBABFE1F@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Makefile updated to work with 2.6.6-rc3 kernel.
- build-initrd.sh changed to consume 40 KB less kernel RAM when used with
  gpg encrypted key files. This change may break really old gpg versions
  that choke with read-only mounted keyrings.
- Kernel patch versions now require removal of drivers/block/loop.c and
  include/linux/loop.h source files before patch can be applied.
- Added back aes.c code that avoids byte swaps on big endian boxes. This
  change improves performance on all non-x86 computers.
- Security fix: restrict length of passphrase to max 4094 bytes when it is
  read from file descriptor using "mount -p 0" option.
- Added ioctl32 compatibility that is needed on 64bit boxes running 32bit
  losetup/mount programs (2.4 and 2.6 kernels).
- Fixed build-initrd.sh incompatibility with distros that have system
  libraries in /lib64 instead of /lib

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1a.tar.bz2
    md5sum 4ce8f2e7a711edd37908149d536bf434

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1a.tar.bz2.sign


Additional ciphers package changes since previous release:
- Makefile updated to work with 2.6.6-rc3 kernel.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0g.tar.bz2
    md5sum 2619495cc7228579ac09a051384c4239

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0g.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
