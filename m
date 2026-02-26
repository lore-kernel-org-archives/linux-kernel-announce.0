Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0124E26E6E4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772148015; cv=none; b=EB+y3ZSb19OXjIINl6CqMBhGsPuBU6KQ0INhHItQR2IqZpgP+obFTAktCiW4XfXEAyhBD5kkL+tQ9q/mIh97y1XLLUM7qTut7hY2KY+oB8GY2brYQT/bhHA7mYaHlLJEm+K6L3CnUO/NdMzth/ZDOFJreXU0ZklMMSqbbIkCpBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772148015; c=relaxed/simple;
	bh=jYJYSU+S7Kyf8JdDFtgvs9N+lU62hDsjh52+GsW2TFM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OkCDEEAPLNBsX98re3H8Rf9URcLzkNyxBXcmRfxIb3GxP7wxqBkYv6u5AEB3T5imJV8u7TdgZ2LPYRVmf07MPLXFC40q+wCfUeZ+QjHkuDQBQLf7httRO/RKJfITPwyV8lphIZJM6JSxy/Nr0H1RTD237q0j3JEZTOAVx93czak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772148015;
	bh=jYJYSU+S7Kyf8JdDFtgvs9N+lU62hDsjh52+GsW2TFM=;
	h=Subject:From:To:Date:From;
	b=K6+VB/R/+e/PpXTObVlky+OOFwN/P1eZwEOcsNtb42AM3rAXgA4b18rx8C1KIgOJ8
	 Ck0KReP3TjwL6/uGIR0YFciUhY43UT33jpZESF7KG3k0Voz1pGXUcrHfcUsh0UHPzd
	 wZB1wxb3EGcVAB6TqHxBKTEXeq0xrW9YdkN/uMg8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A97FCC116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:20:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0598D3931098
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:20:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 26 Feb 2026 23:20:18 +0000
Message-Id: <20260226232018.release-6.19.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.4.xz

Linux kernel version 6.19.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.4/v6.19.3

