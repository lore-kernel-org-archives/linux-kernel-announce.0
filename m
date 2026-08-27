Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4D7470E9D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787836294; cv=none; b=b6+53vtUlRritC7mUbyPWWtEvFjxLV1oRMx4PPu2nTypgrEQo+c3Zh2JM6xdJ8/vnEm9y/xUcMEdZmDPSCScS8DJLUFCThxJ79rCDO5U0WTDn7Bo6py543vZLJMiotu7+GSvPiN67APkQuuBSw1n+TgDf3/rkvsCBG5efMgCMKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787836294; c=relaxed/simple;
	bh=lptOsBa/02ZLgmWzoy6t8N6wUStSMqsDA5mxwC3Xc0E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NQo8NmH+QypZSPLX0k5er5QUr5qbMwa8kIDSoouH9YPi9Y3XfxyvYTa8QYyeSSZ8xoRje+MB7mxzSbKOaS25VGK+CtIDRUC25X07+LdpdnuJX34T3r6NcojAqf6Cspir7Ckb6Ca0TxDwAR2C1luonaEVZJt+Zy0u75emzEM5juM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787836294;
	bh=lptOsBa/02ZLgmWzoy6t8N6wUStSMqsDA5mxwC3Xc0E=;
	h=Subject:From:To:Date:From;
	b=ZHUZm67hKS15nsDlIlrbRAVCLeh8Yp+MtHYHRb9drHVBh1L6eznFXvInwp8Bel9AP
	 htDRAc0/44vhe9QtsJ8N5FedyMPLE5bsr9ZeIDhZDNQT73VC2+BDH9NwpAgJ9NfpTK
	 PMhfOXtR+OHOhDfTKaozmsxqSMp7LUi3uK6XE9Oo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE9DF1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:11:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9642A3809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 13:10:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 13:10:26 +0000
Message-Id: <20260827131026.release-7.2.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.1.xz

Linux kernel version 7.2.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.1/v7.2

