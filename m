From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.1b file/swap crypto package
Date: Thu, 27 May 2004 21:31:58 +0300
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <40B6341E.6AF21441__29794.578246265$1085682831@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Makefile and loop updated to work with 2.6.7-rc1-mm1 kernel.
- Fixed bio vec merge bug that only affected loop on top of md-raid0 or
  md-linear (2.6 kernels only).
- Enabled support for 2.6 kernel bio write barriers using
  QUEUE_FLAG_ORDERED flag.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1b.tar.bz2
    md5sum 456652609ed0af2e85a8c186572a04f6

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.1b.tar.bz2.sign


Additional ciphers package changes since previous release:
- Makefile updated to work with 2.6.7-rc1-mm1 kernel.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0h.tar.bz2
    md5sum fd8e0947c7f7848cac253b6da9950c8d

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0h.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
