Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5551F1932
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781870727; cv=none; b=F/9W/AjR8xvNSmPyeu8gxEG250sIkDI4wEaP2p/ByKfTNdBuJizIrPXVi2rT7IV5HLWQOhpdIUJ67yqTBgIVex31Liwx33WAMGX66S4BjANOXIJkSrKQfZgRDY/5LIF5OUmA3VEhenh12BM8Po4RJTEQgAZIfuQS6+lJjhoDTto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781870727; c=relaxed/simple;
	bh=EF83jM8ATjwcoQJ3gkji8a2JuaM5YoaE7PzyyQZnOJU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GIsOFA7G0bzwGQN+uGZ64LfjAfvc/fSDURIMEkTvlc1xCAtHqxWa+a+jgDstnMYiVeit0B5O+B74N3BKtj7gfb5QftgV5YNHzrp8TaTfqI/O63ahS3nOi4vMvKF47vIdVsOiOgsyZIogfZV9rDi41qehP+Zcbg1KR2Xwy8T5lOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781870727;
	bh=EF83jM8ATjwcoQJ3gkji8a2JuaM5YoaE7PzyyQZnOJU=;
	h=Subject:From:To:Date:From;
	b=aSOMmsD0lRVlliyZ9UOhATwUANsfcNc5HwCyhYBJHVWzY4hhp48iqI98RAyw6cDcV
	 9IKT9KxFkwseLZIIWcpNLNatzKWoANqJ6XZESQ+XImjqZe7dRyghGGkRJLlE8QrV0P
	 bIea5vedeYM8mJBN8WhEYLZA7pQcT5tz61r2uJ8g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42B381F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:05:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7E96A3AA6A58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:05:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.94 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 12:05:19 +0000
Message-Id: <20260619120519.release-6.12.94@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.94
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.94.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.94.xz

Linux kernel version 6.12.94 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.94.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.94.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.94.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.94/v6.12.93

