Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309614A5C42
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792059325; cv=none; b=hgV3ywzbTY2aiwz45mH7naRqX8Aggd/DnAq08aloZgi82YBCnmdP6ysAmS6rxeP3xjKaZ6MA7/2Tf7o+b0YgmqS4gVKmnMevMqmpohLTkBC/Je0EIUdm7n08eMloFVY3ISo5VTimEBQUAh+4giftQ/IjUkATQcyEzaPz2bUov7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792059325; c=relaxed/simple;
	bh=kdpBeJRXjYWh2fhuJicMJ5IAJNzBgXTGrPiol35mTeg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YiBZ89Qy+L9KCD3Nt/dX++tx1lSEYTcUW/CHc6DYPEYsM4WTdDsPmSXqpBPGzMGjOxrvFkccuG6wzJ3rmgnIf5VO0bu6PnAxnjoP1JMyMzcMZ+tInLslLDHaomXTDdgzrzuwEdoOpIFPpK/zTlRI5G6eqDbr5iIoAXstiTlE300=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792059325;
	bh=kdpBeJRXjYWh2fhuJicMJ5IAJNzBgXTGrPiol35mTeg=;
	h=Subject:From:To:Date:From;
	b=ThSBXaDf7Jt0tB2Cs9H4InxIgXRaceZq40JKSbmgtdiyHBEMq0gCp1SmLz+hEGt7D
	 ARx067A/y9X/S+mA4yeTXcJBzmYowIdNrXMprUh9gNc3Q6p/PDDkrLpyvjCWbeeFXP
	 7CLLerObiciwezIpLJxf1tdtSyqxkbXrET7hWFRg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0633D1F000C5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F1566392EA53
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.113 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 10:15:22 +0000
Message-Id: <20261015101522.release-6.12.113@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.113
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.113.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.113.xz

Linux kernel version 6.12.113 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.113.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.113.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.113.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.113/v6.12.112

