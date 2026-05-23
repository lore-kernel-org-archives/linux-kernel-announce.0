Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84121233931
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779537313; cv=none; b=PUx0iOajz0UFjJoCagC5ebKGvNIvfK/av2SoYCUD2ft1yqtF8mkJfoz6nfF2/xYn46ABJ5kbOs2mNH5cILC0SMKXTMjwA1IabrFYGMaDQqx/h7+wyJs3EX+Ofc5oFMPa/NU7MmDUvxg13yoRvr/YlurpLnWCYhm7CawNub0/aNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779537313; c=relaxed/simple;
	bh=uX9ukH2HSJFWrByriFIVmqLCnWBsFT3tvKKMxk0DIgQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=r0s7amjUWUhKabB93p/ahxNpSGxV4lv673N0uHaB8O6y9S+5u4gBL7SF0PRI18Hb6MIs69bmGKfi1SzGJfoAyLN3Hd9/yhjr9RXW2siuFoQQDOGKav2KS/tOTqrhejVckiYc5dAghh7aBq2gKpaH/WSAAASmtwIJ+fY1vTbh+a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779537313;
	bh=uX9ukH2HSJFWrByriFIVmqLCnWBsFT3tvKKMxk0DIgQ=;
	h=Subject:From:To:Date:From;
	b=m6L5cSPMoDGx/ISJ/auQQ0pN1N8GHJN9g8x1VHwM7s+TnqGN++pvNFWi3HJdjzd+j
	 Z04P5Rc72ahS531HNUIdqb5JwDQFRCy+CZpKbzHX+wsgaH0CceW35ee2foeUm221fg
	 lXsrGyPh5Xjopcz/XMkI52izbPsD0GvUJNTscuzI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 447101F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:55:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D36983808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.257 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 11:55:20 +0000
Message-Id: <20260523115520.release-5.10.257@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.257
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.257.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.257.xz

Linux kernel version 5.10.257 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.257.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.257.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.257.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.257/v5.10.256

