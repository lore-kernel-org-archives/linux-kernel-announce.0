Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DD62ECD3A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781871026; cv=none; b=sUVOi0aB45t4j717rrfrwals4BJkbAH8JgPcuq/HaQK7qyhz+Mku3MHHIE0pN+I/6V+Xx+7mzT0qrKzapke3WzCDD86DzM/xzcPrshT+1UW9TJNSx7Mnt2Nf0ienr45U877RqhT9iP8o4JP5wmCY6i9Vxa79Ux0T8q9p4Qx7sd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781871026; c=relaxed/simple;
	bh=oC6PhsndP0DV3x+AbqfR9ec7d1/YLpsAZmlnScp3JWs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JvXJQSepZ51lHJ1Fk9wEfrTln5wk9jv9oG5iGyGXXGny8PLNDQfENJw/7s1ErY74ryS7jzRb1Eo3WgW+yv2/1fd/N0rl8MEPfljh+Id4ZFudG4IstIvEL4p5MdFjIeRfCTEhcJvvB4FunNMn4QeTbwjCWZaFCPlEKhYcgohfIFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781871026;
	bh=oC6PhsndP0DV3x+AbqfR9ec7d1/YLpsAZmlnScp3JWs=;
	h=Subject:From:To:Date:From;
	b=gaqU1eCKFuZnHcAhA81IFxcKd5QNqdW4//HRgBbTAPikN3WND+QaHP3niMrNubrSm
	 FOGNjhWFkcpD4kjc9EVlmDBJb736zDlF9YZrpEUjBsDETw9tJ2/PWs1EkvopRKNHNA
	 /rPmfHA+NEs+eG/yyd7LMaFFlEELK6A+ZwfRLHRs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BA541F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:10:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 593123AA6A58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:10:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.36 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 12:10:17 +0000
Message-Id: <20260619121017.release-6.18.36@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.36
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.36.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.36.xz

Linux kernel version 6.18.36 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.36.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.36.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.36.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.36/v6.18.35

