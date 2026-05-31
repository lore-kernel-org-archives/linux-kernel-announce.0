Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FAA1D54FA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 May 2026 22:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780267205; cv=none; b=k1YTnN6vuHY8qTurqgmobdcaRZvopCir5l/8FzSlXraheXhG3EYn/X0aMPJoS5hY/mi/VPLWl7FBP8w2p2uejpC5azVKXyRpiB1tqBRLaeeTJuWrwst8B/5y8zmgMlnnvO9f4DcIIu1yX3dfFBixjXGhb9/yOchJsLOizwE8sNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780267205; c=relaxed/simple;
	bh=SHwVKNsfG8zSIdDrLMgKleB/bH4i4w4Wmt/lA7pm9QM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BcnXgNHIbrWz9r9buxN7Ri+7TMRB2kzYN9s5CW9Gxn3FOG+6Gn4GQXEWl5rYmiKLOpReKohHQBmGaBQsVGn4s3IInqlr3EabZeWdC2Z/7wmPwyCwjS+aCi8XgToscCkOT1a6KpaJqbO07CLUOs0kkz0YT9m/KZrOasFIUoSQWwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780267205;
	bh=SHwVKNsfG8zSIdDrLMgKleB/bH4i4w4Wmt/lA7pm9QM=;
	h=Subject:From:To:Date:From;
	b=EqAJ7x0KUwEWFxZ60FZEkWy6BwuwKnOIfKG7AKvtW28T9rYwxXPG34XyDERUT2gjU
	 8w3QXTZtRWS1JZZ20mPJi5NvJ62absah36gADW+Vxarc8xmBsNtJfwRgIxXydnVhXg
	 80v2mZRchDTUtPmCt6l8m95z5YfBpSo/KqkW1VII=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C051F00893
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 May 2026 22:40:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5976E39302F7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 May 2026 22:40:08 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 31 May 2026 22:40:06 +0000
Message-Id: <20260531224006.release-7.1-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc6/v7.0

Linux kernel version 7.1-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc6/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc6/v7.1-rc5

