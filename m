Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCBE50B8B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792060526; cv=none; b=uetV1uJoMPHtvikmCVkfIxk61DdYk5jTFRpnz6Hv5viM4jRJPmCjGkfNjh4LsPox/J8QHUDAus5p1p34vSqnhpVa1oIZBLEt/jNFhFR5sfrK9GY/lIuVm+fxpI/UntHU0PN5UDrTUWFTPmffg9tKIj9LfQgjuUt7YH7B39y384s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792060526; c=relaxed/simple;
	bh=trMp4Jjk/qxpurkgfiRxdF9qld5g3dvvDql9OiZ++N0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GzT1X9mTGdZ2otaOH+bAx7arWiwfkwaHlpfoV3w2hU5xjLZquUHKvT4x19mbRJoXDf4x7itS3LF9sM8fg0Ge6NMdX9EW+prKSG+0/bac7jBaOu4PRUpfiJpTXPTrlg4Qyz25B0UbeIzAmEyGwZYs9XlHJmnRxbMAIHBM6JNNWVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792060526;
	bh=trMp4Jjk/qxpurkgfiRxdF9qld5g3dvvDql9OiZ++N0=;
	h=Subject:From:To:Date:From;
	b=op60SWttfJMrtosmKqwzNel15rq82LRj+Vduddsks2EGdj/fwTCYip65x5Ne03WoF
	 UlMmNvfbXChXorJJC1tDPznCzP0pRB4ePW4kQNj3k/j8vOy8Lw2xHLneZLvUfVfgGC
	 TVVsDLeQ8faeLWWG9vbEQ4MuiObqDZnGefgDLK9o=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F36F1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:35:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F3F93392EA54
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:35:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 10:35:23 +0000
Message-Id: <20261015103523.release-7.2.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.11.xz

Linux kernel version 7.2.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.11/v7.2.10

