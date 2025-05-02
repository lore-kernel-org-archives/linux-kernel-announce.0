Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9FE7083A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746165899; cv=none; b=cPBJ6vIOcBlCwore8T4A6n9mG62QYbMN9BGmTUU3iyjKgfoU38a/TXiO87c/SjQabgIDgKDtt3syRbfF7V9V+3C9a5q/92bYg5YtRoH0yyAR6oaemUC+pU8hOlZyei7YC46dIJzjuEsmUosqyEPa3lWKwN659joiBQ766jeFEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746165899; c=relaxed/simple;
	bh=PfyUuZnNpFDBwRs6VWhGjIrD9wlxBudgbQL+ryueOJ4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=WxH1zrxBugZ4fshGVLFP4UwVqE+rYZlCtzf3+OB+AICqKe124pUPms9Me8DhNYA5FF1tGMhfXok4XsEWFC70BTxwe8URtNjrKS0oOjIhF6KCzKBwPbo0YitaRchJQggSwXEu2sDROXVnYp2dGwWoYo0KDaLaLd1unlRuSTunwHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746165899;
	bh=PfyUuZnNpFDBwRs6VWhGjIrD9wlxBudgbQL+ryueOJ4=;
	h=Subject:From:To:Date:From;
	b=F5kE8EfSL/FX5xXFyVOuzdd0qIWFDw2KG42NrHjSbUak/+K/BM8hXJ+QRXfC7GWuZ
	 S4SDR/3pw4kq8JcfpyXHF+zydxHjgtmBiCGfD74pwP2HDH5txqb/0LnEFdBe79EayZ
	 o8VG9MXyk6PQ9BsDawja0jT60yirH0CQ8/HwMfvQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5B3CC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:04:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE9733822D62
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 06:05:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.136 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 06:05:37 +0000
Message-Id: <20250502060537.release-6.1.136@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.136
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.136.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.136.xz

Linux kernel version 6.1.136 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.136.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.136.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.136.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.136/v6.1.135

