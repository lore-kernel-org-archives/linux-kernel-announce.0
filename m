Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A8C36B902
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 22:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786313652; cv=none; b=DaPJUNwXFJzDBP1K9ef+cUpPgngZi4tJN1nnRh/tlDp5SFIVaaeJxgFgVbHc5Dzxdpzb+DwKD8AoiTEAGchhT6HOtCgEbw7yI4x7BPmwOugq0FB0hkOAdXlG8mH85gf1oCgQv52PM/xNkkAu/WFm4lxM8slSOZe0SWnlzoWrUnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786313652; c=relaxed/simple;
	bh=HAFNuVt23hGSg8ySVTIAZDSV7GjM6+FK1yVYoF+JxXc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uS4TdyyHWGR8fi8LpJ5FF+oybEw1ezpPxFHKDu5ACuxSY1V/xftRl3NIGxBNr1XEEtfXhR4pDEg4NwI6GUIcf0H4xR7HRD0itZlrP1wMYlBkz4yCm8/TVIKtLXexRH2M9+hfoPozsKoJZydnY9FLSE5oYHmKNkukAr1eetLw648=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786313652;
	bh=HAFNuVt23hGSg8ySVTIAZDSV7GjM6+FK1yVYoF+JxXc=;
	h=Subject:From:To:Date:From;
	b=m8DzDClzYAto5uY/hbBBjE6y88xyFb6dtysD1pLqFlW+kBG0X6+zTRkGqCIuJ6ck1
	 PyM+/lRYUaF3Q3tE3ODDUM0lZ5p4azbsqw/g1iN5yejXu4bFLRthFg2Xb2mZKa6dll
	 BkW9a1XaeWm4ub677ZXFU9yr836T0zPqxfFRf/MU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4086B1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 22:14:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 966363924A55
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 22:13:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Aug 2026 22:13:28 +0000
Message-Id: <20260809221328.release-7.2-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc7/v7.1

Linux kernel version 7.2-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc7/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc7/v7.2-rc6

