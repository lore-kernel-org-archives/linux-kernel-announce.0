Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A08486B82
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787157986; cv=none; b=DNSfKK/FxQH3zLPHbnCbMxChdoqv/RrOYbAsWw5YjoiNga4nl0mbuQuzXePyrSaWL5iHpS82Z0GmkjmA2wtBWHE0VRPaqT6ISDeSFDV/n6soGTCOmUdQ5JZpaDSh3ZqehXGAYpfJnV8OabJ6Ntwdt/qzu/ekRTtsIskJdE8/NNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787157986; c=relaxed/simple;
	bh=OY20KUdKRum4R9t9/ZSGF4t4VAXXqAYAnFVAN3WMNdU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CqhoEZVPacpHMNVWR0iXHmyVpWYzqFYzn6WtGoUFWbBWRjXuSdXk0e8MhxEVSSvlIetSPaRHkuYTDeBwRzfubZ1i2s3uq1b3lNA/NUxsuwtbnOPYE68mO/7kxm5yX2sJuNVH/9a9dtKN6vvX2pxH8g4PpltEkoUSvKK3JxAjT3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787157986;
	bh=OY20KUdKRum4R9t9/ZSGF4t4VAXXqAYAnFVAN3WMNdU=;
	h=Subject:From:To:Date:From;
	b=c3iD+aMimSXM8ulKJp/qnQaF82vV3cIsafLrFBgP8uKysbgdTnYDTuClZzf+AuiAx
	 9YSGHGuaLaQxI0YrVCzNPAR2f6qCeYYFquhwNpxA61oCuSBd4Z1u0VdlSfUtFIuzIe
	 bUQyXK4cBjPZtFujP8sb1eeI0DDLaDf5suwijQm0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2567C1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:46:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 569F538119E6
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:45:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.45 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 16:45:36 +0000
Message-Id: <20260819164536.release-6.18.45@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.45
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.45.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.45.xz

Linux kernel version 6.18.45 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.45.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.45.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.45.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.45/v6.18.44

