Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1DC15A8
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 15:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732288238; cv=none; b=HmYuFkr0SSEBU14XfxbPDznoR45ZFY3cdCh+hGv4hbfP7J8I6/KDEvrB0d2tOz7MlqWtcpFB7UKn+pj4J/eFhrEebKMNOpBn27/lHbK6fnfBSpNw/xxCq8s0oAVhIjLOgXiE5jcByX12h8tROpDyznBVFHkDAu1EZzuLMMRhP+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732288238; c=relaxed/simple;
	bh=GRurpexPzmX7JyA2o/PsxtubW1gBhJ2u8DsCK4ip54E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fT1yz4tSnS3p0zhkL5YmpKn/JJPxhP2v9bModP5CDOYabcXo1ake2a63ID+Qh+5+4aGayEnlaVWPtZKkSPGL6Zq9XIiGV18V6FbtaaVkaxjg9+urVF8MACt24qg/q27wf9dYD6ZQkMcVO7eiUPR1bergyiNog5sBFj9l9W9DiLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1732288238;
	bh=GRurpexPzmX7JyA2o/PsxtubW1gBhJ2u8DsCK4ip54E=;
	h=Subject:From:To:Date:From;
	b=LqeQGdSKLqSdIac7pjkdgbIgXV3dfSyVYF/OWkFErXvpSVW94A57QhMZwgd1GTvBd
	 SdfKDt9Fc/V97K9G9Zx+J/qtQ0xwz5cCKk7JgPivAqsioovPWHIh5iQusPAuQGz58S
	 3fjuz8oHSixfgIzCOhoEfQav6TRAkn/1T//z04Tk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B93C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 15:10:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1B353809A00
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 15:10:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 22 Nov 2024 15:10:49 +0000
Message-Id: <20241122151049.release-6.11.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.10.xz

Linux kernel version 6.11.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.10/v6.11.9

