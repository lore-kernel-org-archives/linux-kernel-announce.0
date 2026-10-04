Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A763B14BB
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Oct 2026 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791147775; cv=none; b=MAE9StyWLecvWxzWj53J/OfwtCXALqPw+6lqpPKXID633E52eWARzzW5M7R1bbY3XEKESMt9i2KQbDIcXpXQg8kRJbSXUm8QbVhdEpjhyMR0kcnllhW53PEe5dwCZ+sMx/GQs07XuyFdBal9PMbSDbeGfT9EhrVWVe6uTCLHiX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791147775; c=relaxed/simple;
	bh=WWyIjdXvlp66gX6SDKNOwktnn4urewosmOs7QNDR1OM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qWUgKieWIPpZwwJbmDp4MVpRJdaO4MPpNEZWFXPQTp6KGf+JnFU18CluRugSAFpRcEuxzCkWBmhIknl+5hv9jbceTULjtLgzpouZyVIV948Ue87sahtmJAW7s41Xehkz0BJ8tdM9C8TzItZS45x5iQV/PaWt86YacH290NS4l/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791147775;
	bh=WWyIjdXvlp66gX6SDKNOwktnn4urewosmOs7QNDR1OM=;
	h=Subject:From:To:Date:From;
	b=fNeeNIqDiHpUvXEELUonAMYmdzj68paqJ1g4GyGeVs8QiQrB5xAnt3QcBz1oklH0E
	 E4ZyDxHSgtojx2VLW3BM5s0T7jN49fYpiJn7pc8HOGDteNiHiV4eiuil++rXPnrm4d
	 DDzYmJ1kg5/HJVjrzhl3JsxzIWqEeAFR8yVXULsU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF7241F000FF
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Oct 2026 21:02:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6E863924FFC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Oct 2026 21:02:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 04 Oct 2026 21:02:52 +0000
Message-Id: <20261004210252.release-7.3-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc6/v7.2

Linux kernel version 7.3-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc6/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc6/v7.3-rc5

