From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.0d file/swap crypto package
Date: Fri, 19 Dec 2003 17:57:12 +0200
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <3FE31FD8.8C6F5B1@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- v2.0c SMP race fix created new race with small security hole on 2.2 and
  2.0 kernels when loop is in multi-key mode. That security hole is now
  fixed. No change at all for 2.4 and later kernels because they were not
  affected.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0d.tar.bz2
    md5sum efd11783ddf5f6cbd3f524f5e42b46dd

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0d.tar.bz2.sign


Additional ciphers package changes since previous release:
- v2.0c SMP race fix created new race with small security hole on 2.2 and
  2.0 kernels when loop is in multi-key mode. That security hole is now
  fixed. No change at all for 2.4 and later kernels because they were not
  affected.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0d.tar.bz2
    md5sum 98c717e5e0c2daceacc228a17847cbcf

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0d.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
