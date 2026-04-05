Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E91C14A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Apr 2026 22:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775429360; cv=none; b=dWyjKZcJm298kgV2HZ64NxqtekeHec4zttdKMS7yV2ImM3/b9rt6VLifqYod2ZruAPrxueqEXYg4d4DiYJvx1dN2xFpR8cTe2TVNSM67NXN7eEqLmNC7t3U+z7CULtJqDyEeQ+52uRBUVZuF3b1Fi9Gjia+66sPBPI/oOkNB45Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775429360; c=relaxed/simple;
	bh=huwGkTFF7N2FwiMm8wwUxop9t5C5gVTnZ0N6bmfHF0s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NJKt+J/9Net98PbjqPyVrHMAs929A8yEMZdJ3C3cPYkcrRjwELJVxDzKBK+DIzsiKiSYv5SIHjcvnDgiv4dVN1E8CkIQxFJzXT4eJA7D9Mta0SKqmGwbQN7mMBN9yTW2OUMB9sBYGCFtizsLx6pV10tBQClkzbHtpKcpXEABl4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775429360;
	bh=huwGkTFF7N2FwiMm8wwUxop9t5C5gVTnZ0N6bmfHF0s=;
	h=Subject:From:To:Date:From;
	b=bjiLS2/ZfFhNvWPLPHerRUZe2y4Vhe9C0GuspLEVmKgL2WlQiYc14lIXiAwhy9y17
	 hb5TvL3zedKDjk393rAguMHkU3lyKzMXQFadytSzFY3KjvvBeSb7K1Oj//PqtjCjjD
	 C4FIMEpCl+HugS9UPLFRB68rYKMRsXyVFpJ1OTnQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9862C116C6
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Apr 2026 22:49:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FAC63809A28
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Apr 2026 22:49:00 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 05 Apr 2026 22:48:59 +0000
Message-Id: <20260405224859.release-7.0-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc7/vNone

Linux kernel version 7.0-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc7/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc7/v7.0-rc6

