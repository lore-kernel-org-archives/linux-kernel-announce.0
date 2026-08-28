Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD413CB2E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787900192; cv=none; b=FLMRNIrGfRfMquGzKCP1MYXSorfFsxgf9YgJqfnKJPqHZEr1HQuzt7q00zQDQ8XkKWfkVHZPxs29rL2cyn0fCVQT4Mo/2IV5yqbyneSM6dbfJ8o7cmAm4n3lahQVjLzDk/ijDY1yrwaq36a0tnu2izLk9tGx2FzvkVyeIWp7aEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787900192; c=relaxed/simple;
	bh=TDzQJ/y6M2B3REvaciz8QAcKCYsV5ek416tiDtbDN8k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=N8ryHv9pE6YpEZ9I3HidbWmrF6QX4K5xXC7IptamZi/ueykH2/iLAIOfal//2bmIe418SrYSfvtzTyKTsf3vCRkbIpGI+GhW8SS3s0+iNvTBx3CIgY1sxBUcTEAwF6yVYRyi+xp/92bLPTwc2iHdIf5Z4FzBu9pD47BnRLoNJhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787900192;
	bh=TDzQJ/y6M2B3REvaciz8QAcKCYsV5ek416tiDtbDN8k=;
	h=Subject:From:To:Date:From;
	b=on+1vvId6diTBICyaoVWh8jNUhJH8Oakn043fsHz7cVOxXnjyjMgUQZzw9nL5KfRV
	 JCy6zmHo148S+3JG4cmzWrbRv/C43L2IWzASieRrUicK9bioWt3OUQ1LZiMFpF1DOA
	 I6xn4bbtRk4gYFDsCSdxr/sbYmQBWEXR6kRAVKWY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9DB51F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:56:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19AD6380A942
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:55:36 +0000
Message-Id: <20260828065536.release-7.1.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.12.xz

Linux kernel version 7.1.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.12/v7.1.11

