Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4673135CB7F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Feb 2026 22:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799394; cv=none; b=B8p/R7GtfxNND6nJb5yBQ8ngKy/zbJNFtjoe003kE+sKVtUNmkNguX0eRUQUiZ02gKcbWQ5BBpXFkW6sUOiT8FMrSvxDCFd7DtZRx0yc1hd1eJ8l3p7kKMI1fI6reJtPv8M1qgdw6FurweL3PS5MmXNwTYj9dlFInN3Mm89aVG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799394; c=relaxed/simple;
	bh=IjsOBG3+3ilP8v5SxRN1cxzifQyAB2R3tZ7X3GYWf2g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Zno9fZQihPMY0zuHrh+COj5PysFpALB7BB58YjR29M9QQF6XjjF8bSrJMcxL2ZUN7hTUTkQVbZORQf773Hv9D+5jp8r0lGFc0fn7jBZFLOJQjlnkO3X+JrLPUZlAJOrWRFcZxT+gveO8GTwlcI5vnbG/NrGXeVTPxPftzEiBZEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771799394;
	bh=IjsOBG3+3ilP8v5SxRN1cxzifQyAB2R3tZ7X3GYWf2g=;
	h=Subject:From:To:Date:From;
	b=gx3/vBqSbPm+VYxlbAsX3wyC1AwI043hKLC3kR25uW5pTiWn0Jgx+ZAy/oOAZUPEl
	 1s3uO/UeITLiu4mVtZv6ruq8MZG1pbOCzn1O9QcyMOn2jVtmq3kme+gQJlGyfBC1qw
	 m3If6+mpD3x1A5veupW5K3/g5VHoxVMo81NjOwFA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A29C116D0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Feb 2026 22:29:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id CDC3F3808200
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Feb 2026 22:30:01 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 22 Feb 2026 22:30:00 +0000
Message-Id: <20260222223000.release-7.0-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc1/vNone

Linux kernel version 7.0-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc1/vNone
