From: "Jiri Slaby" <xslaby@fi.muni.cz>
Subject: [PATCH -mm] vgacon printk scrolling fix
Date: Wed,  1 Feb 2006 16:26:57 +0100
Message-ID: <20060201152656.8DEBC22AEF3@anxur.fi.muni.cz>
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1161096AbWBAP1M@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm@osdl.org>
Cc: linux-kernel@vger.kernel.org, linux-kernel-announce@vger.kernel.org, Jindrich Makovicka <makovick@kmlinux.fjfi.cvut.cz>, jirislaby@gmail.com, "Antonino A. Daplas" <adaplas@gmail.com>, Antonino Daplas <adaplas@pol.net>, ", "@fi.muni.cz, Martin@fi.muni.cz, Mares@fi.muni.cz, " <mj@ucw.cz>"@fi.muni.cz

vgacon printk scrolling fix

As Jindrich Makovicka suggested, there is a stray printk("vgacon delta: %i\n",
lines); which effectively disables the scrollback of the vga console (at least
when not using the new soft scrollback). Removing it fixes the problem.

Signed-off-by: Jiri Slaby <jirislaby@gmail.com>
Acked-by: Antonino Daplas <adaplas@pol.net>
Cc: Jindrich Makovicka <makovick@kmlinux.fjfi.cvut.cz>
Cc: Martin Mares <mj@ucw.cz>
--
 vgacon.c |    1 -
 1 files changed, 1 deletion(-)
--- linux-2.6.16-rc1-mm4/drivers/video/console/vgacon.c	2006-01-25 19:16:35.000000000 +0100
+++ linux-2.6.16-rc1-mm4/drivers/video/console/vgacon.c	2006-01-31 21:33:40.433055896 +0100
@@ -331,7 +331,6 @@
 		int margin = c->vc_size_row * 4;
 		int ul, we, p, st;
 
-		printk("vgacon delta: %i\n", lines);
 		if (vga_rolled_over >
 		    (c->vc_scr_end - vga_vram_base) + margin) {
 			ul = c->vc_scr_end - vga_vram_base;
