Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793028033;
	b=lzFISrsZGxWzVgc3CM0QNGMCkef/nqaYKh4mRqDMjJq0QY2I181SIWPz1IyA7oGpaCJQ
	 BBjH1iSdG2EkJsF7UM7Km3/OK+pt6vEYVLxGs+HjWsPlP/ZrRphyxO2GgCbEFXJekPa89
	 Qt4yDuNuMHizVjA6duiz/i5G6SXa3GVMKPem6uYi0Wftp4E3m4FyH5Qc8k/WsxE5JysjK
	 0VOCLkM4kY5hMx9MobjqEXKfvtbHr96q1bT9oi0sPAmiSdjwXv8MHzmAtKaqMTi0VKkLr
	 WvqJ9mgQn4f+q4viAJSngIghtxgdmy7qC0aIBGn7FDVlWR0WfcD3FUkKeINNvOFqhaQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793028033;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=3yhHiCnlufTtTfjvqVdbCzLfQLdS8aMBxfxhBBneCq0=;
	b=yg2OuvGQNHiZYtGKrx6AisKwzbALr367TeWBLQdSjJd0KPWbhDwTaQPoiktuoz1ddzB0
	 itVZ9Rf1NGkIq9Gye8Rrw8ysmOQyVQmfA/NAtw2JAyR1dwhQExeQYbz97llM+dfLUGxjM
	 wjlMERWsPxj87SFxc+LuSMdGhYNHJtzDNd52LctPh7ABh9pbShprbDrMKmmLe4etnbohp
	 zIQ3BvCAuGcXXdaIT5s1gUrfJ32jMPZg9YMMMMwJ98/3zPJsUIaX6jxwWnvF53hkObVzt
	 hnnCO8o+YPXR97EqSYDcC0mW1GccIqYmge8AIQ7hQTiFXK1951MT0T+NdiGLcGPhEWw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCFC606A31A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793028033;
	bh=3yhHiCnlufTtTfjvqVdbCzLfQLdS8aMBxfxhBBneCq0=;
	h=Subject:From:To:Date;
	b=v4Z3spqbw/C1Zpf2qD1uXiEDXe3a+XnoBVUNagyDyd2875J127IDMEkvxY40j7UqN
	 G1MIWUrBnbFNMesrmLm4umeXy7GIeY4hEWXWniWX6wXkVuszemdsCwI3iU8zw8kFUe
	 JfC3QUU/OSShAlH8aRZXZRkosmD/JpJeDxoO28lrjK31ShelQCc4lx2Wp1XJf5VNNG
	 NrQXaTmtf2AqVmskB8kwF25Oyuzx8q30GHYUvX2SVx6rlcX4WfAMf0SQVhCg8LbFXA
	 B16UcMckDMpCguj+OuKkNmwROTLrUBR4aPmCy+VJqNDdVFsTyT+/jk4yyFba95qutB
	 hXZHQsYcU2HuA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B240C1F01825
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:20:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 84CAF3AA58BA
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:20:32 +0000 (UTC)
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
Subject: Linux kernel 7.2.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 26 Oct 2026 15:20:31 +0000
Message-Id: <20261026152031.release-7.2.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.13.xz

Linux kernel version 7.2.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.13/v7.2.12

