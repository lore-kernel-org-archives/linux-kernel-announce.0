From: Marc-Christian Petersen <m.c.p@kernel.linux-systeme.com>
Subject: Linux 2.2.26 aka "2.2 is not dead" released
Date: Wed, 25 Feb 2004 02:15:13 +0100
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200402250142.17024@WOLK>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-kernel-announce@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi all,

so here we go, 2.2.26 final. I am very proud to announce this because it fixes
several of security bugs including the last mremap() bug, the longer known
hashing exploit possibility in the network stack and /dev/rtc leakage.

I encourage all 2.2 kernel users to update.

Please send me all fixes/patches/etc. I've forgotton for 2.2.27-pre/rc
inclusion.


Have fun :)


2.2.26
- ------
o	CAN-2004-0077: behave safely in case of do_munmap()	(Solar Designer)
	  failures in mremap(2)
o	CAN-2003-0984: /dev/rtc can leak parts of kernel	(Solar Designer)
	  memory to unprivileged users (2.4 backport)
o	CAN-2003-0244: hashing exploits in network stack	(David S. Miller)
o	update_atime() performance improvement (2.4 backport)	(Solar Designer)
o	ability to swapoff after a device file might		(Solar Designer)
	  have been re-created
o	MAINTAINERS correction for Kernel 2.2 and 2.2 fixes	(me)
o	fixed some typos					(Solar Designer, me)



Expect my 2.2-secure tree updated within the next days.



Thanks/Kudos:
- -------------
- - to Alan Cox for 2.2 mainline handover 8-)
- - to Solar for almost all the work
- - to Linux-Systeme GmbH for sponsoring my kernel maintenance



- --
Kind regards
        Marc-Christian Petersen

http://sourceforge.net/projects/wolk

PGP/GnuPG Key: 1024D/569DE2E3DB441A16
Fingerprint:  3469 0CF8 CA7E 0042 7824 080A 569D E2E3 DB44 1A16
Key available at http://pgp.mit.edu. Encrypted e-mail preferred
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQFAO/chVp3i49tEGhYRAuy1AKC4H7RK8JuP40/ihA63Hh29aruUTwCdFMry
XtieYeWMfnhLFmKYivfe+cw=
=oqYy
-----END PGP SIGNATURE-----
