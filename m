Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7CD302CD1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 11:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764587018; cv=none; b=XGTg040SiZ2oBcIaa1FNgwbjv6f1dztV3oJMnE0V30SapVprzAgTR2WbjBG8bP8yr7vd4Bzd4kaLiF4UvGHujsU7Fo7h6XF3xDVndmrO1mmOfFEWu3rNb/Czh7eNG0g1yLgA9wZ+dlqqaf3T1rST9y+ToDi/CjXcTZExHs6iAtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764587018; c=relaxed/simple;
	bh=jfyZGRtW22BlznB3XuHSFOcl9u8LSLhWdvUeD50bMjo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i5mkvFMR4sQMxV4kLZiF7VTS2f6Yb1uEYuodlJ/MjBPLvuYvMTZ5wUEv5miIHrqRGMg90bApRnvG7B8DaRn4FIxlHvMaDXIOItyeNyGYsMtMXnEDK/GaZ/8j+9RdZJfuF6v/ioRYmOHshbScCoBiMTv6uqnbmFDGhZZN6YhoALk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1764587018;
	bh=jfyZGRtW22BlznB3XuHSFOcl9u8LSLhWdvUeD50bMjo=;
	h=Subject:From:To:Date:From;
	b=NiBJItrrDVwnoIcFGOj92OvRPjlWMtUJuA7vtS9ljva8chR3o401fKkzj2UDFlceG
	 3IHZ875ZWdTsoHiyQx3MAFtB9+Dw28lZ6I12dGYkyToO42v12e+MLro5NdtYv+JMHt
	 HFEv13Gz6jVwRZWQFhHN+r4KssglYYXVx4FMEhhU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B70DC113D0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 11:03:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BAA9A380CED1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 11:00:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Dec 2025 11:00:38 +0000
Message-Id: <20251201110038.release-6.17.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.10.xz

Linux kernel version 6.17.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.10/v6.17.9

