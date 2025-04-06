Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21432146A72
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Apr 2025 21:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743973933; cv=none; b=ahx4RpC78cYFp6OFKRgLnOyRrBIfgRcJCOC727BqqgOvvn96eNOBBcUzBZD7g1N/uOyVuM0Xo6F9Ujkw9aWr6tsg0+d/zRK35tXqUejMbmlZY19NVRzoTQRK+Cx2VkAmDeO8lOlxKXpAsT5Z2tXNq+y0/8ZVipae0ZyBcDThhGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743973933; c=relaxed/simple;
	bh=TGRHHBzYloHXDcHbMLN13GyKR9hu63Zl943g1bB/SZs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=t6r2kmSp0Aq6FB5H/2MmvEyw2LRZZlDHZwV4sX+MSGFVdZ7iSb3avNiIYNOjAkQ8CRj5J8WW+u1OEGDA67F+Zpo0iyiXAtT0IRwlgXMrkEEgQ3hm7tidTLulbWa6zTopH5uEXFUcKW2pu0YN4xjXxTk1cF3c9p2S/thvUdmTNkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1743973933;
	bh=TGRHHBzYloHXDcHbMLN13GyKR9hu63Zl943g1bB/SZs=;
	h=Subject:From:To:Date:From;
	b=ch5JbTA+bW6BauSrfTkB9spUUEhg1xxrejLD5am8Ks4RJgMwmsNDpTYurDSJx8u2M
	 xy6/Tm2/W0z3/Rsajauo9pBw/Wzg1Jt0BDR+2V+Rt2MHNQuZcFXDHi7+Kn1rOJBmBd
	 tRATFMHJmixJEsy/3aTyg6r+jiM2uor0jjbZaZEY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E9F0C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Apr 2025 21:12:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE751380AAF5
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Apr 2025 21:12:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Apr 2025 21:12:49 +0000
Message-Id: <20250406211249.release-6.15-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc1/v6.14

Linux kernel version 6.15-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc1/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc1/v6.14

