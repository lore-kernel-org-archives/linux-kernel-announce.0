Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE63D2BD19
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Aug 2024 20:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724014467; cv=none; b=RE8QCKAB6C1+pMIHOXGa1RVnJFrgpnsu68Vb2bK8io4ep9EUUsvC1vVJtyWkSxYhvlz7KC3JgL9Uuw2p/1jHCNG0Vgo3Q/LFsKc20w/gY7r3QXELiZqhN/41G4n9zJwuAVEm8IBcCf1kcv1hCcEcux6KRezap0GJ9lil1jwY+6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724014467; c=relaxed/simple;
	bh=VmycpLblk07CfnA57l+nZ4USu146Z2ysmJZB1abyq3k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TCnz7tHMPeu1vgNLb/bmXnx8dMhLPODcd+rIY4nKZsB7oCAt/QV4J5mKV8J2sEkY0hbjnYH0fXyEP7WtL3cVMTGFbFKPiyMh9sH35yNJ+tegrZAjvTaBoRmlW732V7cAgE391F2uMZSvXP8Mhf03V4GyKsZd8qf22cclqZO85yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724014467;
	bh=VmycpLblk07CfnA57l+nZ4USu146Z2ysmJZB1abyq3k=;
	h=Subject:From:To:Date:From;
	b=tcb03OPPKMUhaA+EeOsyjauFMbNXL6GNTOAH17JFs2xNiCiaMlgtaSeQTvuVpefea
	 a6kyJ/XuujSW/8Jizgh3CFBb7/9ymgVdcNIKL+gNGrbWfZNifo0d7l6iwa31FNgZjD
	 AnMO1/wTKJJGws2UvdsmRLMm5z7SSghtstQkvVro=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78B21C32786
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Aug 2024 20:54:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F02D13823358
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 Aug 2024 20:54:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 Aug 2024 20:54:26 +0000
Message-Id: <20240818205426.release-6.11-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc4/v6.10

Linux kernel version 6.11-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc4/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc4/v6.11-rc3

