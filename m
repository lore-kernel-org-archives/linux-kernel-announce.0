Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC219B5A7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Feb 2026 22:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769984294; cv=none; b=eoEjC6T73WUyBCwSG07Pqb3d32gFAzVisp/KHZfug5FPYaHSdodDO6hPlTvh0v8+Xsizh0mw3keQhHK2H8H7pTUoDAWar1krMd4sGQFC90PaXDNmgQ2f3ru1aMcKuGClYG5Zuu8b/SJFdvsCmcFcDjLcBFpELlsC9mYjOWGNEas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769984294; c=relaxed/simple;
	bh=RdCBf40AgpiB1zvdrNB73Ih1a0MVJZFMHesyAG+f2/0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i6kNX6f4CYvCjGqoUJ9nYceDtYcAe8JFq8sKXYTwtOIfQSu2vDM0wJ8kYJgoxez/ASOLCn9xipgUcWOL+3Dhv0mU9f7zV8OsteCLTgbt8iGzGam5DyRQnAswz64QtsM8PW7lDHrtRkZBhIYPQ+uZVGmEnC1g2YI3HY8ypepmqqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769984294;
	bh=RdCBf40AgpiB1zvdrNB73Ih1a0MVJZFMHesyAG+f2/0=;
	h=Subject:From:To:Date:From;
	b=EX6UCJZ5clrZ6K9Y3bsIpBCV3HMCOiyOxDoCe3cGSrH6CFExjXS4jPDAPNk/IPpRj
	 3+p1nM/0J0VNKvS8b8Z+tiRdoKJf1Mk6LRkP7c4R10iKDlh1zVFvB4dsPKA5Dsb97+
	 P4I1CChPn+j1RBuVvVIik5SOhAqF+jAX7sNRzzhw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17027C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Feb 2026 22:18:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 93A353810937
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Feb 2026 22:18:12 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 01 Feb 2026 22:18:11 +0000
Message-Id: <20260201221811.release-6.19-rc8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc8
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc8.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc8/v6.18

Linux kernel version 6.19-rc8 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc8.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc8/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc8/v6.19-rc7

