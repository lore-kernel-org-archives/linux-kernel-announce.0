Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D25B29A5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  4 Nov 2024 00:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730681121; cv=none; b=tVh969RIWRNE8bzJNqqzK7yTq1BSVYAAqsgUDfQUjyxhANsctkHELthpfy1ZZVRJ2AGq4R+PLtOWrkfbyiS55QYHbbjueWkucH0dBmTvMnYKwNOB3UfiyekSU7ioZ93KuTCoB908lt8bEh1KdBiBkhI4ohmotxxHONhf8LZhgSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730681121; c=relaxed/simple;
	bh=zO1esmAupzNUOUaqTwjgJKLNBCRcYBFb5OhFAaT6tgY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=G7n4kOTspqueqNg6mHhW9Rs9V7RXiqfuhEO4aSATDtlpJCc/XaPqrIric+uXmgbIJtTU3Gfg1ICYwaYCeJDjqvhrCFVrD7HtNfdfXIbSyQL0hMX3UZdo4JILPdR1a2PQ70+k98p0gSSbMN+RgyQ8zJEx9LqSPKV2XTnvR/0Jp2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1730681121;
	bh=zO1esmAupzNUOUaqTwjgJKLNBCRcYBFb5OhFAaT6tgY=;
	h=Subject:From:To:Date:From;
	b=Z5WFIsfewY5I+gSeEVWNB+eRaAL4z4Rb6psfD0AIlmewUra0K8F1TBllq3zNkRQtw
	 5TCHfCK2ObcfcNSAxrAeABJqveKZMiGqDhQM+GhFNzoZd0Nz+jJ89NvnBjC7WyD4j1
	 2gAto79+bMbFGcIlLDiyY9PL+57SNh8+5e9WlhCo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5180C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  4 Nov 2024 00:45:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 751303809A8A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  4 Nov 2024 00:45:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 04 Nov 2024 00:45:27 +0000
Message-Id: <20241104004527.release-6.12-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc6/v6.11

Linux kernel version 6.12-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc6/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc6/v6.12-rc5

