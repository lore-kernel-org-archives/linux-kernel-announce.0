From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.0f file/swap crypto package
Date: Mon, 09 Feb 2004 13:49:38 +0200
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <402773D2.CEF844C6@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Modified build-initrd.sh so that initrd loads loop module using .ko
  extension on 2.6 kernels. Previous version always used .o extension.
- Removed 2.6.1-mm5 Makefile breakage workaround.
- Modified Pentium assembler implementation detection to work with new style
  CPU selection code that is present in some 2.6 kernels.
- Changed some build-initrd.sh defaults. New defaults are: USEGPGKEY=1,
  USEPIVOT=1, and USEDIETLIBC=1
- Updated loop code to be compatible with Pavel Machek's software suspend
  code (2.4 and 2.6 kernels).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0f.tar.bz2
    md5sum 7bbdc33a7e664313318a946a7a9ff479

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0f.tar.bz2.sign


Additional ciphers package changes since previous release:
- Removed 2.6.1-mm5 Makefile breakage workaround.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0f.tar.bz2
    md5sum bc10a2b1e6bbc9c32ec13cc334588202

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0f.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
