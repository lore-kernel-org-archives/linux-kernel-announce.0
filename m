Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C471A0BF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743196825; cv=none; b=najkyFRKAKpsQTtDY3MPefWmrN15w7byDMPsLqV+xSzKa0tR/5+zFAHXS9kUEjca9IG8ifVs70dvrgvIdQA0oK7igtScJbqk73yiWwoYlFUoKAVU8I7dOop2w7WiCDYYHA9GDoDJYosJoroycwLRj9bpUsQjY0zgB/s78ZLpCXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743196825; c=relaxed/simple;
	bh=oOitHkL+H3NcE+Q2I+TgU9L659I7Qg6FbDUDbfuCAW0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VrwCBO6uCYUaE1vxD/9jJDYCC3xC1ms9Sx/fetL6QVenYmZ81C4JaMH7ApKHHqTAeWGrvUOqfbkUsDwa66uB8CiwBnu99j7mFvKPEAUivf2Cxn7Y6Og5JGWm9FLzxiZTE3GJBVCJd9Lul5ITqkxKE1+OMJFdhg4UOqDB7B8Z7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1743196825;
	bh=oOitHkL+H3NcE+Q2I+TgU9L659I7Qg6FbDUDbfuCAW0=;
	h=Subject:From:To:Date:From;
	b=uEtJXYCWMm9vnkjKuaJGxgYD/+3KH5ElP2iD+MMtVwgtN1S3ZDamdhM/RFYcxusfO
	 bxbJtTeHhvfeQ7rr/SCpfd/+nWn/loszEOXunx/cZUarHA7Uqh7Y/Eh91hjrQUvbGS
	 KbHKL+ohr25BNTe5dEUM1+tMffKAQEGcx+fWzjWc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0045C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:20:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 77D913805D89
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:21:02 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.85 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Mar 2025 21:21:01 +0000
Message-Id: <20250328212101.release-6.6.85@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.85
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.85.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.85.xz

Linux kernel version 6.6.85 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.85.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.85.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.85.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.85/v6.6.84

