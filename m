Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B753A0E92
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541166; cv=none; b=S2a153/phYbOPPsmrUbfHOrBFbnyOb91HN1am0SD42Ct4ANEfx4BV9/G780cszSsTs0X7cAhyGtRN6c0dXGEKmzHJuj6TCY5msN+yd+LFiKFGB37JKEOY2sbDzJXUHlhzp6xl4CpA9IiaVTaIDmxiTSTPjCzmRscc6WiVgBv1ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541166; c=relaxed/simple;
	bh=f23iU+vI4LsBoGVYBTSyEFMDhDp6f+rIaLKtZrWz308=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uHholAV9ssZy/xDq2kM7U9jbGS8dC0Groar+1JrkBQJpYpBUxsmfsQpa/rzaBP+C2+SLuE/7rM51szlideiJlVZruUWoKg/RI6jx6ax54dtUwqyTKnIsEhJuntIJl1UO+WQnAC5ZN4JpQYFWfUPV5/mB3V+lm9/xof9QfUieYIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777541166;
	bh=f23iU+vI4LsBoGVYBTSyEFMDhDp6f+rIaLKtZrWz308=;
	h=Subject:From:To:Date:From;
	b=jWE/sNaHRTqQXRmmqMFmvEc1wL6YYhAsUIYd5Xq64++6jJPgxhX1qSvTatYdQ2yjA
	 J7ZTQjmJyxkWS2kBQ3A1MY1ps5vPA8C+p4YuKa/zhUMPc39rNK2uaUj3DrhhsLcfpP
	 xAaID8UW3cXFAIbX9zrSLMgbx/u4KFQo0TlGfK4Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A7EC2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:26:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCAD9380A95D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:25:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:25:20 +0000
Message-Id: <20260430092520.release-7.0.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.3.xz

Linux kernel version 7.0.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.3/v7.0.2

