Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF1D13D891
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 Jul 2026 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784960156; cv=none; b=Pbw0Xv4P2T2omIwm3dtnOOzrTpUJeci2R//S5JIa5+cgYnMzhD6JwTMizjv0uFpr4pNKUFOrY/TRV8ek8Sj1jR5XQOG/4RAs5jPLFNPENzFNaUX9hgZ5+wSQT0AaGVA5FTj/Suv7/etU5NI5DFJZbznbg28x0T+5beqNqjDn96s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784960156; c=relaxed/simple;
	bh=saY/sj6ZYXEb/YKo5UHeZHVXdRBDJtNGnWfRoX7ot7U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Q9fFgQGaoVTepjj6J7pxf83FxZDRol/hl/iIGYj9wTL8QXA6VOzvVCtLO5DdgSXi0VsZuUEQ2q5ZvsHFlbCNAnj9laPri+BTxNzIuYbtqOHx03HPyt3sCusikHbSE0pMicLVGj/lGMxMZfyhCX32gnIptUXwarlmDasoq4DqC3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784960156;
	bh=saY/sj6ZYXEb/YKo5UHeZHVXdRBDJtNGnWfRoX7ot7U=;
	h=Subject:From:To:Date:From;
	b=oo2W4rnWRFhgm+sPWZVR2H5gzc8K9QgFkglTqX1Ym7pywr3ThVGTCgcysKHcRKOzn
	 KuCwFjplhA5DqJDZNBTevMKsi6jn0Ou95tOgXqA2+521KI/HagsLROcMFGaAR/E6rO
	 0BpyHW0d2Sdi76dqRHcWYczBhIegAkA9t3YOG6Yg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A0181F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 Jul 2026 06:15:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1D74A3811960
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 Jul 2026 06:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.98 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 Jul 2026 06:15:20 +0000
Message-Id: <20260725061520.release-6.12.98@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.98
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.98.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.98.xz

Linux kernel version 6.12.98 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.98.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.98.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.98.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.98/v6.12.97

