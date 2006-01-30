From: Jindrich Makovicka <makovick@kmlinux.fjfi.cvut.cz>
Subject: Re: 2.6.16-rc1-mm4
Date: Mon, 30 Jan 2006 19:50:47 +0100
Message-ID: <drln68$n82$1@sea.gmane.org>
References: <20060129144533.128af741.akpm@osdl.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S964863AbWA3SxK@vger.kernel.org>
In-Reply-To: <20060129144533.128af741.akpm@osdl.org>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org
Cc: linux-kernel-announce@vger.kernel.org

Andrew Morton wrote:
> ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.16-rc1/2.6.16-rc1-mm4/

In vgacon.c, there is a stray printk("vgacon delta: %i\n", lines); which
effectively disables the scrollback of the vga console (at least when
not using the new soft scrollback). Removing it fixes the problem.

-- 
Jindrich Makovicka
