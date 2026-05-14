Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681D33E5564
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778766375; cv=none; b=YbDmIZ54z2b9BAMtBflIq5OVvE7w5YMUP3KQsqZ3bnsBlSmJ6iAgVfG8rab4VlLPAC/eO+Fn1tMTZ76AH8I2jr4zYJ2WEE9FHcCz+ax7idGCc0KgoaF/DUifoj982a1yLzx9ce+Gl3Wa8jZ27ll7/1cuTdfmxy4OZ2dgJht+16c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778766375; c=relaxed/simple;
	bh=R3n+buAf41rlI4HTU5pz48DGfA9B8Ii0/Bgcy0E1B/0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LoO90lVLBOiPtNxavyU8YQsInTlBeEg8DvoAtQro6zEeiI9hamJ26frf8bESAH0ntJ4SDMPp9t2eK+JMlZ9D5/12MD/mY2BerE01yNt1ZQmIZXDKIopos6F4OknTryLE4bm036XtYbYZnHwcr0HvFUArUKVUE301N3uHM/ilbqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778766375;
	bh=R3n+buAf41rlI4HTU5pz48DGfA9B8Ii0/Bgcy0E1B/0=;
	h=Subject:From:To:Date:From;
	b=Vg5VsAaqN4cBdM+8rcB+RQCkHnmHs88NOMObc4+VQpyoT14VWTPRxB4ti5x0/oruJ
	 +irKDbnXgEfRinM5pHGkfdnwD5KFJ3CMT6G+hp+R8qOYwjH3DabU3WcPImAByEcuwV
	 qb1oBCd5B5eaT96l9G83L/urHL28NdUZoMCh7hw0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58371C2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:46:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42B4439310B4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 May 2026 13:45:18 +0000
Message-Id: <20260514134518.release-7.0.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.7.xz

Linux kernel version 7.0.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.7/v7.0.6

