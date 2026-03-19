Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FCC19CD1D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773934530; cv=none; b=mCq/Ow7HT/Egnwy5aqb8F9JMfvU2x2RB8F0RVAN1NzZ8vdx0735SGjOSgOQ51vIAtuDXsf1oZgQejSkXrqiMjEGskboPzvSYE6YEOkzS7aF0U3LbWuK6aJC7Dg3k0xhGJV1S/lfl5d1ZCVIIhcdof14T0H9p6KAIHPAotq7YEmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773934530; c=relaxed/simple;
	bh=/hejYW9TTvBFqj/6R7dnH/KJO97veP2vfKDF15Qgb1w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Gqn0u/FiSxPL+X5+Az1+i+spwPPYqNjbFlWOCTjzMUbULKbo92w4lYswJpfrPPfy/j57LUNIU2jwHUtMEkVMKMPRlK+cwpQA0c9K+64b9RkjLaV2Gu36XP7gpyhHApzDKbYk7CwrUNllFmineatg+zIBGb5B5+cnFqLpd49ouUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773934530;
	bh=/hejYW9TTvBFqj/6R7dnH/KJO97veP2vfKDF15Qgb1w=;
	h=Subject:From:To:Date:From;
	b=AH2vSg7P11I+kJJK/yRSxClvNroR8IafzH0JrK9T+HIZHOtDpyuU5JhsooCA2k1hY
	 sKBiJpCz0VLqmeeWkjpnqxLoOSY67bBpXtwvOl/tBLUF5328COIvEii6BSOd0FFVwH
	 13ls/8SpARZT6XJFkpGR+6jh+61Jum7Ncl89ExcI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07D6C19424
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:35:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05DBC380692A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:35:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Mar 2026 15:35:20 +0000
Message-Id: <20260319153520.release-6.19.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.9.xz

Linux kernel version 6.19.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.9/v6.19.8

