Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34816415F14
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785410159; cv=none; b=MEyJrRyzybNRVGw5qb0v4yVB5Ku33daU4xz15zSEVXCcrSXG60KDu1x0hzcDcccZfu+14ZOQWI3OrCfJ2tu+3pLLXFliPGfWBfs5Wn/3SkOhqUJAmbZ0FVL/fzNhlEcR6uPE7Yp+WX5GO7wvEXTJoQ/bOmJJTsFIC3r/O/z4Sck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785410159; c=relaxed/simple;
	bh=AmvlWQYl7edMMeM2CHcrTvpxOIfMP1FnAaGdQzToy3w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iTwvY730bRyDWkTswQWiQs/WgxKD+qMp+C1v9UZVahXk5rqxm4Zp9Wf6ncJoMHRH/HBXCc1qVJ4GSLiiswzvV1ImZmc/p9TdYS/BlzIWaIhR0sWMdyqpebApF3a2wwevJrV6ysq87daB+XHpci+0zai91rOxaRk0WxM8yaQop+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785410159;
	bh=AmvlWQYl7edMMeM2CHcrTvpxOIfMP1FnAaGdQzToy3w=;
	h=Subject:From:To:Date:From;
	b=hIEZfqv//YVi8zv6JQyfJ9sFrkihhynUviE3AY9Bh1ojBzYPWuAKorQldsPpECbbR
	 FBAAS1GR/R4RaJI+jmb35eQ9V4MlhQF8rbFGBPW3RC53woQ1rTRRKX8OPh5pvEnkME
	 fT3gZRzOYnwSNC6Re17xD538wok5kTdsBMh4ozkw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6AA51F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:15:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9773B38119C9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.180 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:15:21 +0000
Message-Id: <20260730111521.release-6.1.180@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.180
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.180.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.180.xz

Linux kernel version 6.1.180 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.180.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.180.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.180.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.180/v6.1.179

