Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14213BE146
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787898803; cv=none; b=TBVknLfoABgZ+Mnzxq0F+O53A47Gn/26igQhkQB+SNIaePlRBClOLdNmH25wmpwvEAQBfVquEi9bg3ZKCPjcrDJb8R+vUDrENWITfMQoL3OBF7FMK2/tYBPF/IbyHgkUwzH/i2BejxFMei9yXzMExLQKLNFDAlY6YXXl/kMXc/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787898803; c=relaxed/simple;
	bh=5U7ZUNDHrTLJpHsFPuiUYHDwyNv3Gr0ZYuOnNclOJzc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M/FapsTkbdZPhhN2k7MKfGnj2Ocwgon+hUtfdlWLYjOfFaKn9ryxg9e65eXq0oUjB9JMCL0OsmfbuqUgLUv+/nhBAAjrBd7LTqP0SMwnDdtniHsUYXcpJdNmypx8TZMT53tAK1B7a1MzSD/l92wNbM34JjyD409RTSizqTLm5MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787898803;
	bh=5U7ZUNDHrTLJpHsFPuiUYHDwyNv3Gr0ZYuOnNclOJzc=;
	h=Subject:From:To:Date:From;
	b=TzNc91ploh4n1ggNmEniNsEFbKveGtcMCfbtroSGQC+sl0eQysu0GQwRzDSVswIuG
	 e0t25bYIXVEJTVz8mU/GIBhtalBTwflBVIPnbG9eRKg4YN+aN7r63Ouf/Rj8ZGkMiZ
	 gro5S0GCbgmEWMgY54Jpz54WTBb7q1OK/nRPRzFA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 809B01F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:33:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D34AA3809A90
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:32:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.219 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:32:27 +0000
Message-Id: <20260828063227.release-5.15.219@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.219
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.219.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.219.xz

Linux kernel version 5.15.219 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.219.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.219.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.219.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.219/v5.15.218

