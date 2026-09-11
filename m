Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED08388390
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789121484; cv=none; b=VTzjCMLXvpZbSEP184qvuDKb1tsOASxsMQki9leU4jI63TUa4cjSIBw4f1cRso/urCvRRCTjh1MNE4wJEGM8ajly4lUEZgVf8DCPG/yu6tBI193ChQ1kaPGXNAKNfEF5bQjWeiYMphzO4HDwmJgnfhdVmjP3LDFNPtia9W7Wrqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789121484; c=relaxed/simple;
	bh=/lWLXADW23Ca9+txdm9VDxukMawgC5g2xNb5h+GA/84=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=m6XtvfaZQ51MITKdo3Jz0E617zDY14iabRIE0iYIkSZFW7MpmWYbPJB7cO3GV/wkjCXUmEn2s/wDXC3Oyn6sFLit3ImkWoJxtEeeMB93PegTG2GWPslRNdXSaRq+udpGXZ27qvtnUWh+CvXTy9lAEaitVFozzq38pmm9YXmzRok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789121484;
	bh=/lWLXADW23Ca9+txdm9VDxukMawgC5g2xNb5h+GA/84=;
	h=Subject:From:To:Date:From;
	b=pZptfsFktHp1khH4F5+XCgxT4CvxlXyGOI8/pmJCnGEO4B0rcG+V96NvoZndd/yAs
	 clxMYI+UH8BPgAiIoTqMJs+u6sH8njAOtoYPSlcAoM0FOnkpfEgiBdXSYHnXUlM7cL
	 jE6lVMxaXPuROHn/+WISThfkenwKywQoIZyM0IVg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00D6F1F000FF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:11:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C5BF381196C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:10:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 11 Sep 2026 10:10:19 +0000
Message-Id: <20260911101019.release-7.2.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.5.xz

Linux kernel version 7.2.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.5/v7.2.4

