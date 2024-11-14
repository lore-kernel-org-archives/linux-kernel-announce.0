Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0EF1F9A8D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731587732; cv=none; b=YWAz+slOgJjB1og/xWLIqz6srCBiMyEcKXCZB337cemgkuK/pBBimqitOYnMO6MR2ejIleSNEs9bctKNBzv/NZDpZvFLsyTY8fbPGST1cfXbQ8mqavnBFcjvLDTHTlrBKC/2/5VK9zualSIml6M82In6uILwSmLODqv4phhqGCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731587732; c=relaxed/simple;
	bh=FEPcWpldKdrJ2/bavihS2y3caIr4ZFaXNMGfpTWKlSU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ToHN9wMl0I3Zmd1Dgd2i6G8sydMdyuCFuKq1xSSO3Ii0C0mltzAsL7Z9tR1xB22VrMCZ3aHXOjGkaVmM7BaXn6SlIJiCYVDtS2hZ95pnZpkRs0COx55b+KHt/UX6/8qkug4oTMhbo90prMSHgqEuufUeYSI9DNtns3u5UNnYugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731587732;
	bh=FEPcWpldKdrJ2/bavihS2y3caIr4ZFaXNMGfpTWKlSU=;
	h=Subject:From:To:Date:From;
	b=hQc+U72Ky+/JHePfb45sj5cQaz2vUBqIjyV1zmP6DxVb/H9EnodzS7kr40nnGzeuh
	 HU6T2JRzXf+DvwqL1JdkoB04i13w9oUAJmSLw79Ny2gB7l0JxJV+baYlG0EXsRLPT4
	 1AosJnFXMTLJgvC5rs3o/5t77MbIVReZtjQpglvo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1393AC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:35:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1D9E3809A80
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:35:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.117 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 Nov 2024 12:35:42 +0000
Message-Id: <20241114123542.release-6.1.117@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.117
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.117.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.117.xz

Linux kernel version 6.1.117 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.117.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.117.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.117.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.117/v6.1.116

