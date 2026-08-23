Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C27A17BCA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488890; cv=none; b=KqGZmzOfgHqQU9HInJ1ULIx8YtcFzwiFMKnb+TVy9wWPTVN/Vf6DQvli5dtsDk8nixg7rXKoBafNjvB0Qp54wwQXnLjzBPOIViYRWZKOtHQrDEINAvBEl2PVjfqv9ORJHRVqojD4PT47DmmtcO0J81/OYjEuFZk/TPTSQbKeaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488890; c=relaxed/simple;
	bh=6kmhxrNtorkjsZ79HrX/57C3+PtcL3o4UxFG7uQ1t6c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=n8+4zZt07exp1EJx9fEPGw9IFHUt6ATU3xM7BKBz7ddSFgFYjrHqKKr47IW/za0voQcqjfP76CNBd1htHwt6u1NIXE3UVMRcUodFh0Go2I7nLP92yoSAsyIT0TsmGQLwTxHcV7iPq36UgAXeIAXdj3ZFrCaiimQQtOjwvicUPi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787488890;
	bh=6kmhxrNtorkjsZ79HrX/57C3+PtcL3o4UxFG7uQ1t6c=;
	h=Subject:From:To:Date:From;
	b=tn+bJqVpII+mpxvgTdinltBkDZw0pNBYdtJuQJKQNGTzD1htqZD9BLuj1Yny2rGjH
	 kjdDSQYx2LBtKsrxiuolQPI/K7hOXoq+LJq7qpRoPcayms79Hk0cpmsP91a7IXDPeL
	 GiLH7QGj35V5KK5pM1Zd5kEPiWTJ87x0uTjd0UQE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8ED01F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:41:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 594EE380CFE6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:40:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.153 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:40:37 +0000
Message-Id: <20260823124037.release-6.6.153@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.153
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.153.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.153.xz

Linux kernel version 6.6.153 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.153.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.153.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.153.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.153/v6.6.152

