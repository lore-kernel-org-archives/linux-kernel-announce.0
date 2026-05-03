Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514981EB5F8
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 May 2026 21:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777844511; cv=none; b=drdNgFziw+tN1S6jjmC95X0x/lx3fmHtW6KWzUTJaQPsa8NoYubmyjSOWlqpP73+liOqGJFdgh07sUw3Kr33mtXKLchG/xjMmSbm1gXAP5N/pw8jLFPeTTvcm8mFWTNd3qmPUgVxdEmWgq6sRdzFKwTsaVSOgJYumj9kZEkqupk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777844511; c=relaxed/simple;
	bh=gj9fH910dLk7SLuLN6e0T0OYOLhV00/En7FYHKmek44=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YXLfQwe5sidnDpqH0MiPgPzWAg4CWJnMyq2nD1ErXKWHbF69GBrjJodTKheLxBpYHgjvQDSRhvZNeARpBrRzAXQxp8Rrh0eE3T8ahEMLDCUD9Xil6+jQSGwBg7A5YIKPEAWfow7ihCVLB2XZkXcT2sRLezEsm+Ct67oJphIq8QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777844511;
	bh=gj9fH910dLk7SLuLN6e0T0OYOLhV00/En7FYHKmek44=;
	h=Subject:From:To:Date:From;
	b=PWR2ojlCbLtmXvKSKI9dN5zwNviqUVaTmwEJGhoJOYNrEyDlocybWONfTwN4qS/P6
	 cuPvox9LVgxPGB3Jt2ghB9LghwGjtUCPc/OE/1OYPbsqSk5gSX4nJIqblm68QKLzqX
	 nMgB77Kp0wDNE8BKWP5ioaW2xhOVpoy3Cp/IRumY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091A5C2BCB4
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 May 2026 21:41:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCD51380DBD2
	for <linux-kernel-announce@vger.kernel.org>; Sun,  3 May 2026 21:41:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 03 May 2026 21:41:02 +0000
Message-Id: <20260503214102.release-7.1-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc2/v7.0

Linux kernel version 7.1-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc2/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc2/v7.1-rc1

