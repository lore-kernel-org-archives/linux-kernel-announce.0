Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18E3456296
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787834785; cv=none; b=lix43MbE9WvFcIQUgnZB/X74LeLvNfZi7/n3m0b9X1VNvRGwihdpaFqqbeuCT6GP9DWs1lsaqGjT7xpCvUcGbJq/dhRvI0GyfRv7faoPu9CbAVwYOG44/Zjl43kDP/J1Vuf9CQVzQQSNVMvkjSCD6g4X8J1XN31OfCxY6PUzN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787834785; c=relaxed/simple;
	bh=RimOJxhrKnkegJUEVzQHF5/YOpgB/TwEadY/h0PDA4E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=H2Vb6MMRy2TduytTVJVXENprypEUuqNqXVA5tQUFHMukdzX7Y1X5HdhpAFtY8PrSlu6Ujb3ompzzXI8JSbyTSDrhXVPfvecRY5BpRR8b1ok/Fwr4Z7aEcw/guEgLgCPuHiHBSL8sPK6MZ8iLjz1ifSkR65yD2ghz6Lr2tGP69uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787834785;
	bh=RimOJxhrKnkegJUEVzQHF5/YOpgB/TwEadY/h0PDA4E=;
	h=Subject:From:To:Date:From;
	b=F3tvWVIpqwhYt1NaJ4H5ic5Iqvk7w/uwpAwHdgNqmjS2srffoDytc7AWiXR/DfkCs
	 Madort9s9nstBQ2Q87RM6TjIZjde2V4WR2ciHIpNfQHDFIuPhDD/3zbEn4Goi0+j9z
	 U8vzrqTw/YM+ei++u8sabREFEZ7J8tFCw0iVedXg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F5281F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:46:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C0823809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:45:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.185 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 12:45:22 +0000
Message-Id: <20260827124522.release-6.1.185@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.185
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.185.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.185.xz

Linux kernel version 6.1.185 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.185.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.185.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.185.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.185/v6.1.184

