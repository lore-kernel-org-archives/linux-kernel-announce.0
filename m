Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA34447801
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787835404; cv=none; b=EmWbze9IBHnJt8BL4/aPziVBH8SJzAMLZY4g82fVwm/bQoyLLn2Ki0iXWdjEAkBRT3nKKv7hvPt0CvZTkXixEH43x4zV4hyNRbtTCUjqZ1PSmefSnZe2RVSV+KfnMe8j7cvwdsdF4ynAVa7JRHFfbsS6jeOf2JWt6Sl5K2K9sao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787835404; c=relaxed/simple;
	bh=gc2voGKiOci9xcEjd/0ZZDnKKQ8h6EKP3x/XOXuwzr8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fycvAmEpSFcc2fZvCyZBJn+1my+ea4Ib///354qN366ZyXSHwfODVbi2pgxh5Hwns6DzOZGZ9E89XSN7oaAIISWEdMwfHOM/1XIC+nMRk9Wk91qwj97UvRZFKchF8LOtz+bLAqX8/ODrHU5S2JKE3poDuVDRz13P3A8ebF+RjOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787835404;
	bh=gc2voGKiOci9xcEjd/0ZZDnKKQ8h6EKP3x/XOXuwzr8=;
	h=Subject:From:To:Date:From;
	b=v2WAGiP0MgN2PBKTIuZb8wJTJCQ+il/kBePNlUY6Q5SzGsYKociI5Sa6EUGK+hzz7
	 e5M1QaYRcgs4dhzB2GCyRQ5kuwdmdDEAyopILv+nRCwZmZ+MxtjqvRy/2nt0L1p30u
	 t6RXfz2IX9udf40mSoiEOrYSbtl7eHg3ZFb2Fqqg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4BDA1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:56:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 963AD3809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:55:33 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.106 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 12:55:32 +0000
Message-Id: <20260827125532.release-6.12.106@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.106
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.106.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.106.xz

Linux kernel version 6.12.106 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.106.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.106.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.106.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.106/v6.12.105

