Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C61A9F98
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Aug 2025 23:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756682270; cv=none; b=S/xeaSqWd8eussnFuQBZfAE4a7V2eadYLI7hBECCIOPh6N4aT7SD6yj1RcdupBN0MK98QegnbwhK4bmRsKespPNn0D6IionyObRapGdES4mTvWODdH8+EoSq8aBHFtb5KSLF7wHqho8fkbw3vAc7hKDdwMluQSH11edgyxXSxXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756682270; c=relaxed/simple;
	bh=VLY3r6BIMw99TNwGpNB8Fw7+7rpROHcs3/luCp1suUs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FlmmuDxf9sVS7j9v8e5EJoBxvFRRDBosf+MTFx01IecvezPvdvnbhxi0GOFkTKHMDQ7TTKIUS0lDsOuh91Z4BIxPAEb+nQAUwPL4XJBu2kyiitt7clf/9g7Y645F7cqgnEd8N8HBGifOaWr/61PTbw2k/bOuPrXPuPv2HGxZMLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756682270;
	bh=VLY3r6BIMw99TNwGpNB8Fw7+7rpROHcs3/luCp1suUs=;
	h=Subject:From:To:Date:From;
	b=bsyEVXs5mdRLjf8H74bRcpvDCgF/6GDxP0JMronDaC4YqV800v6I7fAQOOSDKF82k
	 0wDEoNO5kWWztZOxSrU5Ux2kpdZRSq10QCDpggqUmWiRkXxDz9Rs4w/TnEqEP6ZQ+b
	 Wr/3V9xqOxB2epvivFze9jqQIy+6G3f9z2tTLbyc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 925ABC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Aug 2025 23:17:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1BA5383BF58
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Aug 2025 23:17:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 31 Aug 2025 23:17:55 +0000
Message-Id: <20250831231755.release-6.17-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc4/v6.16

Linux kernel version 6.17-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc4/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc4/v6.17-rc3

