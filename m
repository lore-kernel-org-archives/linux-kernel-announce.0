Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E04B358381
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778222779; cv=none; b=d2zRWHqG97Ke8x8Or928FcswZ6XXJjFL44L/gVgVM4Yih4NaSEL5rBFah/EVfJYRqM9y0AmUAYB9HyLRzH8jEZG47mzxQBO3RDqUshtaBZA5NhiMagbyJViBhHahYi0WHg1lcVs7q2o1Up3q9RJmR9t2Rv+6iujEUnUSeXb0DuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778222779; c=relaxed/simple;
	bh=tvomfYMN4L5msPEMmMCu2irwZv7SIaJbwNFR2gTK5gU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bcJkJFbwnlZSJCKIdEyIml8EG44Aa/QqpMX2z03BjbSpt275FICI4MZRLZDx6cpO0Sh6uPMyClD1HBxTDScuWKqQRkoRPEXannb5fG930tf6UdsEwBzjPsEKgEZaBl7xe5TTg1yQ/nfLh/6r89yN1sTZOmTn6VrqauWV6z74PQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778222779;
	bh=tvomfYMN4L5msPEMmMCu2irwZv7SIaJbwNFR2gTK5gU=;
	h=Subject:From:To:Date:From;
	b=o6leH82ZQWQZmb+PxMCJ1GfKt45FgAP+6gyH2aX3A+LLOn06P4eXd/zmi3SQ3BLD3
	 sqk1aB7SwwSxmn5dqkhoIsg1Yju+VAjFZLB8Spk1aHE4aft3mAtCGQUUfa3zgjryH0
	 d/KlhWjrzsDkG5Etbgs3v8Fs+b0DU2brI3J2HuO0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50626C2BCC9
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:46:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4287C3810908
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:45:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.138 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 06:45:26 +0000
Message-Id: <20260508064526.release-6.6.138@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.138
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.138.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.138.xz

Linux kernel version 6.6.138 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.138.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.138.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.138.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.138/v6.6.137

