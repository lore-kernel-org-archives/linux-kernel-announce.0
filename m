From: Jari Ruusu <jariruusu@users.sourceforge.net>
Subject: Announce loop-AES-v2.0b file/swap crypto package
Date: Sat, 29 Nov 2003 15:45:20 +0200
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <3FC8A2F0.8C199016@users.sourceforge.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-crypto@nl.linux.org

loop-AES changes since previous release:
- Added workaround for module naming breakage in recent module-init-tools
  (2.6 kernels).
- loop.c-2.6.patched updated with fixes from 2.6.0-test11
- Added INITIALDELAY setting to build-initrd.sh. This delays /linuxrc mounts
  to be more compatible with slowly initializing devices. Code from Andreas
  Voegele.
- Added support for struct loop_info64 (2.4 kernels).
- Added support for removing offset from IV computations (2.4 and 2.6
  kernels).
- Added -r option to losetup for read-only mode.
- 64 bit loop device/file offset can now be used on 2.4 and later kernels.
- Added 64 bit "-s nnn" option to losetup and "-o sizelimit=nnn" option to
  mount to limit size of loop device. This option works only on 2.4 and
  later kernels.
- Added support for MD5 IV computation and multi-key operation that reduce
  chances of identical ciphertexts and triggers change to all cipher blocks
  in 512 byte CBC chain if any bit is changed in the 512 byte CBC chain. MD5
  IV is only used in multi-key mode, read losetup -K man page for more
  details.
- Unhashed encryption type, created using ancient loop-AES-v1.0c, now needs
  'mount -o phash=unhashed1' or 'losetup -H unhashed1'.
- Added support for separate object dir on 2.6.x kernels.
- Eliminated highmem io buffer bouncing (2.4 and 2.6 kernels).
- Added proper error handling to kernel_thread() error cases (2.4 and 2.6
  kernels).

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0b.tar.bz2
    md5sum 1e42495aabb814d71a8bac65b6780474

    http://loop-aes.sourceforge.net/loop-AES/loop-AES-v2.0b.tar.bz2.sign


Additional ciphers package changes since previous release:
- Added workaround for module naming breakage in recent module-init-tools
  (2.6 kernels).
- Switched default loop_serpent.o byte order to correct little endian
  serpent. Old incorrect big endian serpent disk images can be used with
  "losetup -I 2" or "mount -o loinit=2" options.
- Added support for MD5 IV computation and multi-key operation to
  loop_serpent.o and loop_twofish.o modules. They reduce chances of
  identical ciphertexts and trigger change to all cipher blocks in 512 byte
  CBC chain if any bit is changed in the 512 byte CBC chain. MD5 IV is only
  used in multi-key mode, read losetup -K man page for more details.
- Little endian blowfish tests are now disabled by default.
- Added support for separate object dir on 2.6.x kernels.

bzip2 compressed tarball is here:

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0b.tar.bz2
    md5sum 8a07d3ae4ca7e081b2c44f0dbd5f60df

    http://loop-aes.sourceforge.net/ciphers/ciphers-v2.0b.tar.bz2.sign

-- 
Jari Ruusu  1024R/3A220F51 5B 4B F9 BB D3 3F 52 E9  DB 1D EB E3 24 0E A9 DD
