Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793991023;
	b=AdXqOzexyl3S1+UiMw0bjqgX60Gcv2Bx/uJ58fcOegN6y4oVuVXCXY7FH7StQjg0jQOr
	 8PeQjSNlhL5+sx1tAAbJmHSrnV5Vpt6bQgy/jlZ0FvUbRf71YwHyCcEOXST+/buDOpEtb
	 WC4737fmqd1BhsvLWBwkB8FYNXrnRKZKDBKW8/AjoQW0jqfqEDndo9Jf3QkW2i3TZNqxB
	 IoJlHb/76UGQmpteFQLP7lA0imJY2QEI/Uko+nIdQS+J5hfx6IwC4mJTstwd1XuMGay1U
	 lB4Orn6LjShTwkAe2c4MZHgVwEOF2Nz34R9Lea7DblIh0fuB9xlWcoXDAx48RuCHHhg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793991023;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=MEBzU0RQGa+7TWxbU4Huwif2uCCIyo1kuPD/hxboMOw=;
	b=Z/5qZ0DngqWagf+8h1F74H3nHQg6aV2BV2mxvkBIs6ZUmMnmQdRILM4Id/Nk0JOxFMCo
	 yia7MV66xyizc8nyGe1lKHwltHL1u1O3v/N29TeKxxmXdOCpjutuDjTuc9W3cwmHgHsWX
	 86D4/UpVI5AuSb6ZVGtRNgMJSHr4JOufHD84+SJoHKWVg7opXDeSN1prLz5yAzJEJmcM0
	 A4l7L2a2e6+DarJcW1VMcLZVcd9WGnj68yf1csxBAf6qDFNnM8+hYnhNZOm6Pd1eQrXzY
	 cEOIY2h3SBvFPp8PTDUesKHdiLCANEu1Ji6pWM9VielUXWWmVbGcJHTLP6stIW61Alw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A144D606A326
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793991023;
	bh=MEBzU0RQGa+7TWxbU4Huwif2uCCIyo1kuPD/hxboMOw=;
	h=Subject:From:To:Date;
	b=KIrPhL3BJvFKcLYrVdu4uI6tEPf5ZaQ72UrmCvrMim/JPr5/3bPRw6mn69V2INeUa
	 KSCNWeu16XJZ7G2vqO5deCDvDiCRL2H5DLcMx4muln8Mz3g8BSrxt3/IBPvpgCptBv
	 2hUFNqS9Vg+0wHY+u+3Zz+ztRtkl8d1uea5hP2HpxSgcTW144/mHo+bagYckzMRY1l
	 24Q1oi5Q+LeWMCp8BIBIkslzOCmGwLqBSHDCgLUKufgWZwmg61kC/fTVvRx29L4wc8
	 YK6KAmAjZnRzjWMeYTJ+4pkI4uOth/VvkvWM1dvuLRxX59jFazRQjM+dTz419N0rDh
	 5KFSPSVh4yPIw==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2D91F008A1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:50:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74C093A41021
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:50:23 +0000 (UTC)
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
Subject: Linux kernel 6.18.62 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:50:22 +0000
Message-Id: <20261106185022.release-6.18.62@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.62
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.62.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.62.xz

Linux kernel version 6.18.62 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.62.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.62.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.62.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.62/v6.18.61

