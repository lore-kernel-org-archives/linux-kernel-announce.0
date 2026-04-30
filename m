Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD311A6810
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777542065; cv=none; b=oVMIrEdKn0Q0KfWkXrfzPU9A0q0p4TzlfkdXUJRA4W5xvgjwLMzt2POobKSYfzfrWNDdV0lkWsrLqwMgv6Hcf5X7V1xSdmgWm0RMrGIZ0Ag9HFgQG1h+yxHI8cbv9+58AngVys+CTnsftKFAnKdZDszNGt+oWpA6+3bJF20iftw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777542065; c=relaxed/simple;
	bh=s0ybTXKH/wacRR50Ybdrh0HGxpf/ixJHJIGyHXr4oHE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NbpWezGATlwC5RxYyX9UtXWLALNPoaSyt9MZ32p7/qoC5g0S3WoD5xTemlWlgHSfcPMYKWQlJ6QU0nWLspXX8kq2s4sCBXdO4I3LAKDShvW/WK1MmivZYBqQw1l7ZfYysuaIuK2Wl1Rem4Mhp6K/ZAKFCjHwySPRTG9W3gGkp6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777542065;
	bh=s0ybTXKH/wacRR50Ybdrh0HGxpf/ixJHJIGyHXr4oHE=;
	h=Subject:From:To:Date:From;
	b=lU+I2EHujVAGpk4tlgKqvyN8R34bt9TCPfjIkk0PmJ22dliScHvFbD38uNFuwZ5zO
	 XBb58h0an3Gm6g+kp2lNe6RTjH6gKJVHYC/xjTIILLk8/6Xh/7loA/6PZuWCF0iTGn
	 5/F+hvqX0U2XAJOcjlfTycSWMR48VU2mcShTZuBE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B150C2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:41:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 058D5380A962
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:40:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.137 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:40:19 +0000
Message-Id: <20260430094019.release-6.6.137@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.137
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.137.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.137.xz

Linux kernel version 6.6.137 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.137.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.137.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.137.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.137/v6.6.136

