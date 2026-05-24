Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFB533ADB1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 May 2026 21:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779656834; cv=none; b=EZf9wnZGqh+lkto4ZQO53zZxM0xFgdmyievUsbrZv+Cg288bbca+f93eGMBiyM4OspJ4H1nJxRbv10JRq0Cd4zqOpzrkBe7XXI1J6soYF51mtnlxqc9x6xXmawPA8jl/6YZR6LTz7K52j2DbnA3L6YAyYFF66HZDNor9kKpC7VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779656834; c=relaxed/simple;
	bh=08ED0jimYn4nKBTxUCJg/580wImPQLBZqXTFsqO66YU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NgF6vZopvkco8lCImqiSFpZkCF5xWVL+vNW/pUjNebrQ8BYQFXLXQOJq6oCkGUub3FafK7eXL9y04vzahaxTv40upU9VKw6RGrg+uKYK+5xSRxOqIrz20lFL+PazOdrqUkPVeJZSIQS4Z5pD1iY5VPu7eBIXA7eA2Bn+6Qs6UFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779656834;
	bh=08ED0jimYn4nKBTxUCJg/580wImPQLBZqXTFsqO66YU=;
	h=Subject:From:To:Date:From;
	b=Nl7BsJCR/Zcjzxvc8tBWc0j8pZV7FdawwvQwt1dgR5tiZ6RkpGKjpHAwwAJXFNDpc
	 Liir2XqbzeUW+pO8yEX3KbWGcdPVYHknzYJFLIFVR0+ENZUjfhMPxy6UxUY6skfNzP
	 3AD8ciOfpK2CpyYzo92CtaDxhTYFql3fDKZvnSrk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D5851F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 May 2026 21:07:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 96B723809A83
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 May 2026 21:07:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 24 May 2026 21:07:19 +0000
Message-Id: <20260524210719.release-7.1-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc5/v7.0

Linux kernel version 7.1-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc5/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc5/v7.1-rc4

