Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6366B45C6FF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791726329; cv=none; b=n/Uj2ccTsngi3Wb+2boU4D1cZlLdzqmBInsTwgbmOZr6StKN72Nyxuft+yOAkdlc0EdvAQa2Xw/KiVh4goUtNf/mY4EN7egKeVdWQLfZ9B63q1TBeMkFXTBZVbBqMpFdMbJhIulnuP3MDdRnYSW6PPwH9ob1mEq9IGHVfvXAkW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791726329; c=relaxed/simple;
	bh=92JjwftTYqGtFVMbe7TucpRqwUzJ3Tw8kgMBgoWWk74=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ja+yAVfgYS4brKuPycoD8N59BG3J3kbqathWDoTxP7ZudqBXkjpKmXpbRwpfWsjAyMSISxk+vV3xP1ovWh8pxbZM9soG0sENFPFukXp3M7ig0wuEZ3er/YFBQz2Ic6FRigBkDIkqnGeD6HobRYD2T9tBR+iWp/PT3yDtNF+f+Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791726329;
	bh=92JjwftTYqGtFVMbe7TucpRqwUzJ3Tw8kgMBgoWWk74=;
	h=Subject:From:To:Date:From;
	b=f5+6HvggkckWXdSaoW+jJ2GYALwLL2sCEInX4Xzs8YUBN89JzaX1AHughJtOnkPmo
	 jdAlVz5aXMeQYB6poLFFnEVWfAojeUyKcNCQhONaXPQT5HRTcDX9eQP7Xg/P3KzeIE
	 eVpbfxHRjPBhJPTpZKkGyoh9hCYw1VKRWnGxnsK8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D20031F0089B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:45:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B66353811966
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:45:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.56 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Oct 2026 13:45:23 +0000
Message-Id: <20261011134523.release-6.18.56@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.56
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.56.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.56.xz

Linux kernel version 6.18.56 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.56.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.56.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.56.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.56/v6.18.55

