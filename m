Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB31FCC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706747742; cv=none; b=BreKEzBhCVSEdPPrMLH07CO7Shz63KBsa6oRbjmb64nflSuIMeZjfT9Se1EnouKoLhw9Kf5w9I9KaBq0WQKrBbB3l+XD6TwXLJTH4bY81Gm4AwV7Ld5LXuJ/LQUiRwrSQPrAYJVwswHKEYqtyJeTD59ZlcfyG4foDGRaeaT2xFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706747742; c=relaxed/simple;
	bh=mvAEWIkiIY24xyxCI/vO4MjQD+L+NGSSx3hnsvKOhK4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i95AvdKzi8B0am+esxdIMWF1dPO8RrQvVaU5tjlx4W3v2vD8tKHi84QGrfgP2ORv7Pd9ZH5elptH2kj4RpmjXuBBq4CEuCpgdvPPjJiLwcPIraYCh6slVg/uD4TKWp1aqA9/Hgnei4LqcA3SjzPnrnbU0+PzdVdb46zSUCHK/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706747742;
	bh=mvAEWIkiIY24xyxCI/vO4MjQD+L+NGSSx3hnsvKOhK4=;
	h=Subject:From:To:Date:From;
	b=TY73NehFBTPIpIRoXQT3H0wVpwV1+QBLiRBidU4VGQH+NlmeC+l6o8o4lA0UKLP0K
	 rm4/mHw0uXu3ugLGyhx4+MLNTrcg0mEdU2B1qQOw0T8K+MHdF+VsYPkpRvkLaUcmx2
	 D8sromUnn6ua2QYSNSwCVmVGZ4fub3Lqc3oygNJM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDFAC43390
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5BACFDC99E8
	for <linux-kernel-announce@vger.kernel.org>; Thu,  1 Feb 2024 00:35:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.76 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 01 Feb 2024 00:35:42 +0000
Message-Id: <20240201003542.release-6.1.76@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.76
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.76.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.76.xz

Linux kernel version 6.1.76 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.76.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.76.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.76.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.76/v6.1.75

