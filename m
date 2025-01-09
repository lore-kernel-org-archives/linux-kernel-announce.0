Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63BB218596
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426431; cv=none; b=qeDwCBTWjeYAaKAZWQasg2C5h4RoQ54a1aliRM4yQg769N/dzdl2hpmE4pRCR7jCoPzPljc3++ZLk7CTX4vFMOO3WWKp52flZfQ3BmJfw3Lvx2SW/TzCYV0UbIpbK1b8nHwtQM0tHDyZfpbRU8FOuhVeDxbQ+HPff8wrsv6G7ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426431; c=relaxed/simple;
	bh=2fvDT48f/ydNxfBlVeMOWk2rIUbE4iWwiO7dzRwAfYs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mPIdpXeHGUj5PMufHQPBV+y+fz8s5y6hreCqKuPeuAntYO3kwROpPkVKWYpXg78w5tiVJsv+L4XXMcRyEgQuyQv3Y1vsE3BqgHPO27LgquxsPOEfRZSG9MJJ3LNyLnrW8SzRrKzi//T9JCOHDJqfqstXpaAqL5307/HwzXBDOkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736426431;
	bh=2fvDT48f/ydNxfBlVeMOWk2rIUbE4iWwiO7dzRwAfYs=;
	h=Subject:From:To:Date:From;
	b=jgp9/ozZU+V60A0Tu7H4f82cO9H2mSaRoHBxsl0U0cSWqRagSL2IJJXuW/cPTM0H2
	 Gbu9zJaqshFSQWQr/q4wDhzPhpz6/R6YTS1LICv/qEw8jdfq0zE4nf5DWyx3EswyM2
	 9Id8QMfITgcyR3yX5jKAm79rx9JTqGJIdPB6CBo8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F860C4CED2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33D663805DB2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.289 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 09 Jan 2025 12:40:52 +0000
Message-Id: <20250109124052.release-5.4.289@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.289
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.289.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.289.xz

Linux kernel version 5.4.289 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.289.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.289.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.289.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.289/v5.4.288

