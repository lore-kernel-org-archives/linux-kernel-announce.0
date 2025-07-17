Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2422FEE0C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771919; cv=none; b=uBMymDZrP3PgaNcSkqdSGi/TnL3o6+Pmpa7lG87nDmIgzW/JWfaE9Dtkba89se174elJgcrTwIIvvoPzyAtHycJ+Ukwzl/vCTnSZRh3DZ6u2zSprHiIGdRK6PcvMyTNiW0ZpIsUFm6zBL1ggVPAQDHF92EaEec0JwAqT/k4metw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771919; c=relaxed/simple;
	bh=lGFMgDlhFsl59n82TuAcL/WLb76Juo/RiMJZh/I/OVc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QGn+8SO5jol2M4B1HekFyoEmzsSb7iS8//f2NqBQd8wRpNtvuNK8s/31bZ5Vzjvgm7UEu+ft+9zstpvhEuRjVVWMmfz+T2ma0u8VF3ZJ1UJGBCP2cJVwSaGJZzdm2es7nw4ldUbf1dDf5sZnDPnmAiS+H0Wmk+4uj+oT4M1U9b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752771919;
	bh=lGFMgDlhFsl59n82TuAcL/WLb76Juo/RiMJZh/I/OVc=;
	h=Subject:From:To:Date:From;
	b=Qgj2sM1BeVbXft0BgWNFfbDEmNq8K57QzmDWN8RyBczl3KNThoSffvft6bxHWpswJ
	 wUthAU5g7eBgNvTqZljecjJwtiMowV3q6xsrQEYKScI4t7isju/aJ114+M9CIxF7G+
	 WspPfh9pLeKJfePHT3he7lCrUd4Am2582f6D9FoM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18659C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 382CC383BF4A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.39 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 17:05:37 +0000
Message-Id: <20250717170537.release-6.12.39@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.39
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.39.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.39.xz

Linux kernel version 6.12.39 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.39.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.39.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.39.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.39/v6.12.38

