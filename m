Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610A73596EC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769164523; cv=none; b=oIVq0A0qHVnVi0EowePvELWSJd25zEVor37ezf1vjYUhYe6bLzGyVKJj2y2EhUvxFhVefFZLoj5B02UhX9aBcvKz+y81LIU8K9wu2imVKV+1hRnqDlrptCu410cfJ7X0ioKzkBcvIOUem7AP0sh1l+9FAi96wPhgzmVJyG5TN/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769164523; c=relaxed/simple;
	bh=pD7eiI8X6SJ1CSl1CrQc8WbnLdYwugGxhBI+HA94FRU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GoOiIPMkguwED6VXG44nL2wqnHuxTEDJslAy+o6rIH66WNPMfPBYzLsuhaP9QE+r7s2pfRqGy0rAcj8xsI3SWrW+SdMPmLust3u1Oo9yp/hdjb5SCfe5DkJu8/t0vJwVs3TwhlKoUdW2gGknt/k3j63yPZJGas/IweMkcD+vyJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769164523;
	bh=pD7eiI8X6SJ1CSl1CrQc8WbnLdYwugGxhBI+HA94FRU=;
	h=Subject:From:To:Date:From;
	b=gKFUfPMdHt1/zcwYWhJwRMVkInG1pNZmKx/Rr7h0CCnJFa8bY/g32REgK9HeUIWs9
	 3NatBqaOwJCIGO9BAQCHCt3C5OPHX/DrQcyuWKwxxvt80LpI1j1772xRxCEdrUksPG
	 uMlBAKd6QPdiBQnQjU7TmaLFs0pkuYd8XzF0l0Es=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24296C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 517D63808200
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Jan 2026 10:35:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Jan 2026 10:35:18 +0000
Message-Id: <20260123103518.release-6.18.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.7.xz

Linux kernel version 6.18.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.7/v6.18.6

