From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.1c file/swap crypto package
Date: Wed, 28 Jul 2004 18:45:58 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <4107CA36.2C105379@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org
Cc: linux-kernel@vger.kernel.org

loop-AES changes since previous release:
- Adapted and merged Russell King's loop.c flush_dcache_page() fix. Most
  sane processors were not affected, but some processors with goofy aliasing
  caches were indeed affected (2.4 and 2.6 kernels).
- Added optimized assembler implementations of AES and MD5 functions for
  AMD64 and compatible processors.
- Pentium-2 optimized assembler implementations of AES and MD5 are really
  i386 compatible, so now those assembler implementations are enabled for
  all x86 processors.
- Fixed Makefile to be compatible with distros that include "" characters in
  KERNELRELEASE string.
- Added dkms.conf configuration file for Dynamic Kernel Module Support.
  Charles Duffy wrote original version.
- Added support for /lib/modules/`uname -r`/source symlink.
- Converted MODULE_PARM macros to module_param (2.6 kernels only).
- Added workaround for scripts/modpost breakage (2.6 kernels only).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1c.tar.bz2
    md5sum b404d9d679b7096dd3fb089345c52320

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1c.tar.bz2.sign


Additional ciphers package changes since previous release:
- Fixed Makefile to be compatible with distros that include "" characters in
  KERNELRELEASE string.
- Added dkms.conf configuration file for Dynamic Kernel Module Support.
  Adapted from version that was originally written by Charles Duffy.
- Added support for /lib/modules/`uname -r`/source symlink.
- Added workaround for scripts/modpost breakage (2.6 kernels only).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0i.tar.bz2
    md5sum 1a5e1d967bca0cde71a32e533ef26ce9

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0i.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
