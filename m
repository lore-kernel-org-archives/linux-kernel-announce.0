Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685CD1D04AA
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725450352; cv=none; b=bVYSR7IvIqLl6Tspsh2QKpg9Mr857OEpNRKTiA9y3KfrHPSIwjOGeJSRUVu6WzB9ABOhk4EQ3Qg1xJbTvMxndDZ+m2qNuN7PWnhXX6aNFcN7s1f8l6xr6xRpPga2ZpCxdYccu0392F1L2L2Dim4KlxugtghC81aVZZ1DRnborBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725450352; c=relaxed/simple;
	bh=TP8xuAKvjY935kyHZtPZS9lDfRG9tJmmtuPOpnflbUs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=H0FcrIB7n85trlwskMbNbrXNnLSgk/1u/b+cQVNt8R8EYsgUBGqOz5bqbFfoplEaDXmJf+LcnR4Zpjc418pyrg55tuvM65iwfW7Yy1F7SCNMv8qSIKuQ4/r6m0Dq1a9DqYffCRvuUrcr8sCDlk9lH7/Ipi0K0VJrMeXgG5X67y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725450352;
	bh=TP8xuAKvjY935kyHZtPZS9lDfRG9tJmmtuPOpnflbUs=;
	h=Subject:From:To:Date:From;
	b=hxq1FzTxUWTIAdCntd6kiMOmZJjMnT94EHIOp2apgrDx4HxyvNoBRGN8MzOXKre0+
	 oUlKLERK3/DpW4McVRgNjBQz/WnQWEGP9+aSc0/KnPx8A7ss0/B5iyetlzTeQFx9tL
	 vKa4pBdaRDcsYtdHodwZCStRE9wnQUTioTfz/ZkI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04412C4CEEA
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB22F3806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.166 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:45:52 +0000
Message-Id: <20240904114552.release-5.15.166@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.166
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.166.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.166.xz

Linux kernel version 5.15.166 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.166.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.166.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.166.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.166/v5.15.165

