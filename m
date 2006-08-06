From: Andrew Morton <akpm@osdl.org>
Subject: 2.6.18-rc3-mm2
Date: Sun, 6 Aug 2006 03:08:09 -0700
Message-ID: <20060806030809.2cfb0b1e.akpm@osdl.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org


ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.18-rc3/2.6.18-rc3-mm2/

- 2.6.18-rc3-mm1 gets mysterious udev timeouts during boot and crashes in
  NFS.  This kernel reverts the patches which were causing that.



Changes since 2.6.18-rc3-mm1:


+revert-x86_64-mm-i386-remove-lock-section.patch

 Revert patch which caues udev timeouts.

-knfsd-make-rpc-threads-pools-numa-aware-fix.patch

 Folded into knfsd-make-rpc-threads-pools-numa-aware.patch

+revert-knfsd-make-rpc-threads-pools-numa-aware.patch

 Revert patch which causes nfs crashes.



All 1136 patches:

ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.18-rc3/2.6.18-rc3-mm2/patch-list


