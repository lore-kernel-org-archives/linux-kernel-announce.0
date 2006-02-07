From: Chris Wright <chrisw@sous-sol.org>
Subject: Re: Linux 2.6.15.3
Date: Mon, 6 Feb 2006 17:42:41 -0800
Message-ID: <20060207014241.GD4483@sorel.sous-sol.org>
References: <20060207014122.GC4483@sorel.sous-sol.org>
Mime-Version: 1.0
Return-path: <linux-kernel-announce-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20060207014122.GC4483@sorel.sous-sol.org>
Sender: linux-kernel-announce-owner@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org, stable@kernel.org
Cc: torvalds@osdl.org

diff --git a/Makefile b/Makefile
index 76a00d4..a88ae43 100644
--- a/Makefile
+++ b/Makefile
@@ -1,7 +1,7 @@
 VERSION = 2
 PATCHLEVEL = 6
 SUBLEVEL = 15
-EXTRAVERSION = .2
+EXTRAVERSION = .3
 NAME=Sliding Snow Leopard
 
 # *DOCUMENTATION*
diff --git a/net/ipv4/icmp.c b/net/ipv4/icmp.c
index 92e23b2..84de934 100644
--- a/net/ipv4/icmp.c
+++ b/net/ipv4/icmp.c
@@ -524,7 +524,7 @@ void icmp_send(struct sk_buff *skb_in, i
 					  iph->tos;
 
 	if (ip_options_echo(&icmp_param.replyopts, skb_in))
-		goto ende;
+		goto out_unlock;
 
 
 	/*
