Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509223D4119
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787900194; cv=none; b=rycLfqQheAQ0yUZa0t/JKH6v64/N6cgz36iovQYpUke5HMOngbMCiVpDiva/deE3tS3i9Ssl+YS7kecY00V5bFu8SvQULHb5UJw4Yw/itu7c1ZbgfCi/10cQ0Bb7LJtcvoNGEVfg3XNYpgyJJyqbf6rpXB7FyAuPfYftxuWBqg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787900194; c=relaxed/simple;
	bh=lrTWR/vLGEG2/Pp0pSREOM8IOuv4v6Osg365Aurvxis=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=S3jVrvJ3dbGx6UqlnfvAlt1MSIePV3PUm7KQPIziB0k6L0iHtX/2IdGpb9MkrVrUNq6gIESNB+ELFgeczqQxovngyc58ob479AGs3ladWSwrcdlaMG4vLNqj894DB8Gu6R2/2tGp+dsmSicYE0VczlkWkub58mSjyllccvJ3pGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787900194;
	bh=lrTWR/vLGEG2/Pp0pSREOM8IOuv4v6Osg365Aurvxis=;
	h=Subject:From:To:Date:From;
	b=mrXzaCL04KqMrFr7zZLt0Svd9bPqlLtBtpvW+rIen2ZWYCtYwKrZ5rpfll3JFeO2L
	 K9AuV38FozZHWgEiQdAs/S7kqQ/jf5P244Im9whMRSINOQk2seU/iAZDS5JK5h5ivh
	 hCTL9YIXGHUuG9Wm4LIvtq+kZJbkDeqqh0yRIiGE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ED3F1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:56:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9383B380A942
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:55:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.48 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:55:38 +0000
Message-Id: <20260828065538.release-6.18.48@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.48
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.48.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.48.xz

Linux kernel version 6.18.48 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.48.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.48.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.48.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.48/v6.18.47

