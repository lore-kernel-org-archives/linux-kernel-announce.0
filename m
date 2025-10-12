Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C009F2686A0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760268350; cv=none; b=oWYGpfOHjHafhM3bxtbnfrh14IZ7u0vXHFG5Qbhx3S8Buhn6+hET2VOt+SAnRBPrJon731NBdIIRpQtA4+jtZDXYQghwt5tvT4DRChHQDZ73lYVIpAWTgyXAgjevYaLc3TznYhdCEi5jiqraOCK/KN7Cmd5oYR+oSuj/0aKPdO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760268350; c=relaxed/simple;
	bh=KFuJx2tXKZ+Zc0SObfxJ4ZO3Xh0HVxhxugmMUCwwYtk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Lu3BWEV6hQ0HWD/NFjGRRx60fx9ovsaGy+fGhmCJJF3fn1+UH67SPYbUXcI2V1gcRbQv2y8wgT2cY432YTt+l5z7K7HXj9OB6xfKkErgXoCDZ8yoMY6NeaDBMhYZXvgWpqFOZreyBydvtgImoMe176EqB2k3TJOAU3vPlWLthkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760268350;
	bh=KFuJx2tXKZ+Zc0SObfxJ4ZO3Xh0HVxhxugmMUCwwYtk=;
	h=Subject:From:To:Date:From;
	b=GsJAighc4VqphKiKtGQWJlBH3HbZEaNjFfdWa0tqlN3PN5qDLySZUgW3/XHZ/74C4
	 pTweMFYauwKHsreNLkPyOhXqQ76vx1dDjA3CEBWQsa+OagJI6EW/ZLzlR6lagvGK05
	 B3eptzabDp8aBbwobvr4SfV6a3pB8h108zoCqZRU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DA01C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:25:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEF643809A1A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:25:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Oct 2025 11:25:36 +0000
Message-Id: <20251012112536.release-6.17.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.2.xz

Linux kernel version 6.17.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.2/v6.17.1

