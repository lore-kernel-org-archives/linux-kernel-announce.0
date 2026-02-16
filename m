Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3537626E709
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771234226; cv=none; b=BJu/GRsMREF8ma6H9ByMzzIjGym7YfuvDTs74x4qv8dN9DcQAxVEnHOveo1ijQl4Qc+MLiPEYcAfArKtaW3B7F60f0m77HZCkZhg1nKiNyLWaZYWksETD05nE4tMyMM9MRr0wf7VPmPbSo6G4/rIRd1ZpFHcDbSRR2V/tMVgyZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771234226; c=relaxed/simple;
	bh=UkLzc0F6MnugJXexw8p5Nt06lY34ks8V43GGBBh6Z9I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nI2n6nOyYSJ8TjgNMxUuPyWkTH944K/enaSy6N/tqaKcwnaRe8NLZRwr7x/gYsSfR9xLS4RS+8nN2emGCITcZv9j4F1x0sAIcoL0CvgMNu3cP3799DnIUM35OiOrmohTFh4xNIT0JDsIg04WSWTiKhoKwpRz2Lpk4GG0AQGnMxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771234226;
	bh=UkLzc0F6MnugJXexw8p5Nt06lY34ks8V43GGBBh6Z9I=;
	h=Subject:From:To:Date:From;
	b=wFKRKcz4X6Rf03TnmlZWiAz4HLi/2FEeDZ1Eb9qTz5UrZWt26qD8NaN4oYlEfbJFt
	 CHXlyv5IIBykGcRmpkxiQXZsFe1X0bqreRmrpDmj6GX/q3aKz4eWDLjbjGljEjHbut
	 Hb76Thju/bv7lSeKZTdTIKYQJrElSrMdA1pU0oRo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C699AC116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 87B1F3930931
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.72 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 09:30:18 +0000
Message-Id: <20260216093018.release-6.12.72@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.72
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.72.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.72.xz

Linux kernel version 6.12.72 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.72.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.72.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.72.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.72/v6.12.71

