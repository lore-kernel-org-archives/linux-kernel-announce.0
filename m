Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B9B1B1D7F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946947; cv=none; b=oMBAWKLKIT3uQfHCR54S7BHcBzJDTSO+5yn+DEZ5D/kQX+7tnoHSNbbco9mJXJV12Cyez2UJoOkmQl3Mb9kqchXYsWLeBnD/saHU6SOmSzM/SS8NrJ2pKXXHe3wDxmRq3X+j/kmQ47NTyao9J0i5XBDDPLaoDGz5QYPw6dUFV/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946947; c=relaxed/simple;
	bh=AAQRPwAlwq2bnD/kMAltIZSB+l1zou6R5YrTGXia2PQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BinuQzTw7wyFMOS5GJW3/7LERWwC2eAe7kFBHwHa64J5VMtdGRtGEk4Dw9kk2n3Ou1sCDv8EQAp94TpXN5d7sCXUgtWaOkTuPFqXLxYtsuZ3MbCClGsan6bf9jVljjGwJMErBe75pZHmcUXEKt+/tqD2sr5QBidG74WAQaVwRoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724946946;
	bh=AAQRPwAlwq2bnD/kMAltIZSB+l1zou6R5YrTGXia2PQ=;
	h=Subject:From:To:Date:From;
	b=ktitGIpLhw7d7Dle6hx1TW8H+y67xuGGilnVuKb9uyuJuMypPbjwH4JaoP/Zy/3De
	 wucB5Gk/wQ/OBmOXdwoFHaZ7VHDepl2+rpkGgLmzHf000mtRIaz6x+Z1bFVJdfYg0r
	 Uoy0qsddZJSavK9Ax9PEiApK/StFRrQzELsx3YJ4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CFA7C4CEC1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:55:45 +0000 (UTC)
Received: from ip-10-30-226-235.us-west-2.compute.internal (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 2AB713822D6A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:55:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 29 Aug 2024 15:55:47 +0000
Message-Id: <20240829155547.release-6.10.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.7.xz

Linux kernel version 6.10.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.7/v6.10.6

