From: Andrew Morton <akpm@osdl.org>
Subject: 2.6.12-rc3-mm2
Date: Sat, 30 Apr 2005 16:43:03 -0700
Message-ID: <20050430164303.6538f47c.akpm@osdl.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org


ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.12-rc3/2.6.12-rc3-mm2/

- Various fixes against 2.6.12-rc3-mm1.



Changes since 2.6.12-rc3-mm1:

-netlink-audit-warning-fix.patch
-ppc64-fix-32-bit-signal-frame-back-link.patch

 Merged

-preserve-arch-and-cross_compile-in-the-build-directory-generated-makefile.patch

 Dropped - Sam no likee.

+sis900-must-select-mii.patch

 Net driver Kconfig fix

+proc-pid-smaps-fix.patch

 Fix proc-pid-smaps.patch for arm

+x86-port-lockless-mce-implementation-fix-2.patch

 Fix x86-port-lockless-mce-preparation.patch

+x86-x86_64-deferred-handling-of-writes-to-proc-irq-xx-smp_affinitypatch-added-to-mm-tree-fix.patch
+x86-x86_64-deferred-handling-of-writes-to-proc-irq-xx-smp_affinitypatch-added-to-mm-tree-fix-2.patch

 Fix x86-x86_64-deferred-handling-of-writes-to-proc-irq-xx-smp_affinitypatch-added-to-mm-tree.patch

+sep-initializing-rework-fix.patch

 Fix sep-initializing-rework.patch

+suspend-resume-smp-support-fix-3.patch

 Fix suspend-resume-smp-support.patch

+setitimer-timer-expires-too-early.patch

 setitimer fix

+drivers-ide-pci-sis5513c-section-fixes.patch
+uninline-tty_paranoia_check.patch
+docbook-tell-users-to-install-xmlto-not-stylesheets.patch
+drivers-char-agp-make-code-static.patch
+drivers-char-rio-rio_linuxc-make-a-variable-static.patch
+drivers-char-stallionc-make-a-function-static.patch
+drivers-char-istallionc-remove-an-unneeded-variable.patch
+drivers-char-mwave-3780ic-cleanups.patch
+drivers-char-nvramc-possible-cleanups.patch
+drivers-char-rocketc-cleanups.patch

Various little fixes and cleanups



number of patches in -mm: 978
number of changesets in external trees: 468
number of patches in -mm only: 965
total patches: 1433


All 978 patches: ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.12-rc3/2.6.12-rc3-mm2/patch-list

