Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531FD371068
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784902254; cv=none; b=kcQZgWx/C/RqifRi/CZ8L/qkfA3ATKdnsRcvC2HJDk0DrC1Oc+aXB0wOkKbiYh5Z2v/XyhjZfF0xg/iFRhP/RDHBbH4308Y+eFekkxDI3puHAhf+X74tfwTSTqHZSGC/4PMOq3/2zC1nxrIrGb2f2C+7t64WM7bhGVSlfFgEQYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784902254; c=relaxed/simple;
	bh=C4xqLBOdDPih4RASWPWOVujG2u1fnxfFs+EWJ7vLLy8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f95Q8KxkKWmGBECuzL6y9zzAxwmMPGZgCz9DlbyLc4ItRnZ6FoCPcGKSwp/CED7ETsdBaZ7OroSve/CfEjM/qfD2tbQ8M8BkQWD4l5xvYdZlxyTFlhHbFmp8mjZCPlDJITpWMr67CB83vy1nc2MhNBWYxFg+KfB9/zRX6TFXZyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784902254;
	bh=C4xqLBOdDPih4RASWPWOVujG2u1fnxfFs+EWJ7vLLy8=;
	h=Subject:From:To:Date:From;
	b=SlKGz/gAtReiHjHcSSV0RqUxcGQQ9Q8x8dZ8dAL6S4RJ1O++LMeqmN5nFnoHPNGAu
	 qeXrsWQEnXFQa+0+vIIBsXZ9h9PFcMc6ZUQ39Uz6evvR2ETIAaRTfa49KlYnqGKTDN
	 H437AT7yXgwxopDtoUXPvPJUN09fdJGyITiBLGxA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 028181F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:10:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9650B3926274
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:10:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.178 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:10:20 +0000
Message-Id: <20260724141020.release-6.1.178@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.178
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.178.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.178.xz

Linux kernel version 6.1.178 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.178.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.178.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.178.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.178/v6.1.177

