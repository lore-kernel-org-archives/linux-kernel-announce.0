From: Marc-Christian Petersen <m.c.p@kernel.linux-systeme.com>
Subject: Linux 2.2.27-pre1 released
Date: Wed, 24 Mar 2004 20:32:37 +0100
Sender: linux-kernel-announce-owner@vger.kernel.org
Message-ID: <200403242032.38265@WOLK>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: lkml <linux-kernel@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi all,

now some more fixes with 2.2.27-pre1. Please test. Have fun :)



2.2.27-pre1
- -----------
o	fixed TCP keepalive bug					(Neal Cardwell)
o       fixed tcp seq nr wrapping bug				(Ulrik De Bie)
o	added cciss root translation table			(Eduard Bloch)
o	VIA KL133/KM133 northbridge: vga console going crazy	(Roberto Biancardi)
o	speedup 'make dep'					(Benoit Poulot-Cazajous)
o	disabled MCE only on Pentiums by default (2.4 backport)	(Herbert Xu)
	  (boot with 'mce' if your MCE works as expected)
o	skb_realloc_headroom() panics when new headroom is	(James Morris)
	  smaller than existing headroom
o	invalid nh.raw use after free				(Julian Anastasov)
o	fix a local APIC initaliziation ordering bug that	(Andrea Arcangeli)
	  triggers on the P4
o	TSC calibration must be dynamic and not a compile	(Andrea Arcangeli)
	  time thing because gettimeofday is dynamic and it
	  depends on the TSCs to be in sync
o	fix deadlock on shutdown in 8139too			(Herbert Xu)
o	support for ELF executables which use an a.out format	(Solar Designer)
	  interpreter (dynamic linker) moved into a separate
	  configuration option and disabled by default
o	fixed sys_utimes perm check according to sys_utim	(Al Viro)
o	show us the saved kernel command line (2.4 backport)	(me)
o	some whitespace cleanups, some coding style cleanups	(me)
o	fixed some gcc warnings					(me)
o	add PCI ID for 82820 NIC to eepro100 network driver	(me)
o	move 'Network device support' near 'Networking options'	(me)




- --
Kind regards
        Marc-Christian Petersen

http://sourceforge.net/projects/wolk

PGP/GnuPG Key: 1024D/569DE2E3DB441A16
Fingerprint:  3469 0CF8 CA7E 0042 7824 080A 569D E2E3 DB44 1A16
Key available at http://pgp.mit.edu. Encrypted e-mail preferred
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)
Comment: !! No Risk - No Fun !! - Try to crack this ;-)

iD8DBQFAYeJVVp3i49tEGhYRAuHmAKD2ihPakphQJTuVAuxlue4OyIOMjQCgoS8h
0stEf8UFmhkHcPYfftNGeO0=
=BpqA
-----END PGP SIGNATURE-----
