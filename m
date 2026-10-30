Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793363130;
	b=CJVgEhwnh5vwM5Ngrzw7tvgT7cirA8uXf+87PrUG1ReJtwti6jeyb2Gef5tBHcO3gtVJ
	 nsTcFIBBREKlT27CxlShFQ13Xz+PNJVN7YyBE+XMiY2Ab0NKTpS54x7tiRyUgMfY2HHlz
	 Sctoyxgoq0eOfdBGBUd+xZk7l16mBKv1BHm3hbUs4q1o8QZleX5kzgT+zskWCFF8q0VNz
	 t9Bi//QLp3z6T9GETYp6wv7+eCc3OHa/MMgD/XNMKjD700NJwBFjOhi0+K+GeUykIkrXL
	 /gkCnCxGNH1GiTN9Vpqh57FW3O6VTafUncO3sT9l8EKmlXyCV9nBvf+PBfr2AbWa6dA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793363130;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=EZ7KXeOFmb0hmTrguD5S9eQN0K1bY0a70k5yty2zaPg=;
	b=EuchK+OQMLy6TpZep4PJZf8e/DTsS1tUvojZCZqqz8x4Q2R5sckwAjme/7fNrKJ7YdVP
	 qEf+0tLr8hXm8F7wmikzO02ZXmHtRILl3rCbTvUgjlaCI55eIklDGjXmtmR8e3H0a3nC4
	 mfeI2jOdvOOWbuQsa7tkQyhmUKf6oKV0hS1+8xx2ZzIM5l0QTeRkrNKxCjLX3VoYb37M2
	 /y3vwjJdwLH8m1k5WGHcOqX6nzsVU2XeCRnSbNaB2fGg1p94dHOYj8HXX2tK+3dVdTeMJ
	 V7Dh8kDByQ1hb7nzTsksSQA1t70M2MFWlE3G07nTP38IP7ZUJ4kyWq9y0fvPETHrseQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBA8606A325
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793363130;
	bh=EZ7KXeOFmb0hmTrguD5S9eQN0K1bY0a70k5yty2zaPg=;
	h=Subject:From:To:Date;
	b=Id8glQ8JPADGJprJtDw6pSWDR9x9sih0yxWQYr03dhJXIru6AiWQuxWlPJ4F8XtPb
	 ZhssiJ9Hyh9mJ+vrluEXQmlo06eb1toVppqHAp8S9d8mSn2bSzXST5ycIhagBIIgT4
	 Nylg2FbORhNEMehp0OO6W2SHld9CMFT0aGgy8MZK763SyUO+EmYQkCQEwWkXs5kIRG
	 zB+dy1BLFjHEz3ZRiD4b6nIEN5B9ySi6X+v5OB02pDiwgjo6rSVe5Dcq52wZus1EHq
	 TDxHucAjUQlD2BulfRqPtJ2ypedVgJq55MO14UchrRM4ProaKBBX48PTqzLkAIHClZ
	 ejSxoYoi3GEzg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11F81F0093A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BA187380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.191 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:25:28 +0000
Message-Id: <20261030122528.release-6.1.191@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.191
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.191.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.191.xz

Linux kernel version 6.1.191 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.191.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.191.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.191.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.191/v6.1.190

