Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24811E0B66
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081339; cv=none; b=giCr31YyL0xL/5yVZ3MzmX+LHIgjPQpMVxEvSKS/ALUD5oLoW9hhM0mQETFAnXERcGPK9qf5IUzrk3gfS68TK39fiO9ImnxMeZ6NpyymzOHDoW12L5bOzB693simoKKaIc1/QGXimxkC5gapxZeuzlrax/rPHKFDsW5f725nC7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081339; c=relaxed/simple;
	bh=n4clHcV7wN01gmv7kO1MbE51ITSSixxPxQemnD5jh/o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sG6zYj0ILRC2G0PDrjk7exvRq0oOGv6gJmnTKvR2ebHPh4GhAmBFwuH5m2aA809/ZZk3d3eZw2VyqTVredGgy4SYkzGGeF9fZGkGv/rdysp8udZum+u8gfHsOaPEylA3vv/UqgiTiX2iuh7h65M1IF7rvHVo58YEy2Lenacp9g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731081339;
	bh=n4clHcV7wN01gmv7kO1MbE51ITSSixxPxQemnD5jh/o=;
	h=Subject:From:To:Date:From;
	b=juGlYR0kB6UO30jtiVhQIYQYBjPwBciO2zo/ByRTcJ96CxYZDwzfKUeIwLUMewUaE
	 mTVrTJRYF8c5e6QXT54BbtT4U4rjTTdHE1Ndqd+06R7R4yKEuyYq4l7q7rpc7x2FBw
	 bw5QQgh7fTWMmTlpzqkc5PTSMswEl6j69siFrg2Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76287C4CECF
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF41C3809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 15:55:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.116 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 15:55:48 +0000
Message-Id: <20241108155548.release-6.1.116@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.116
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.116.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.116.xz

Linux kernel version 6.1.116 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.116.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.116.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.116.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.116/v6.1.115

