Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7800027056F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752158117; cv=none; b=QPjraMJEqz+AuLkIc8g+t/IEwPsFyFfUDsLIp7Z/dr0DgIo4rh12TtVseDWht0ntH5fjDaAtKR/kiC5ab4katvwF5NkBkJbKotOMcEZHClgi6COUyDhBGL9xY1wvpL1//xRlxLrSuxKYCDTkl/hHCoppMngrpipvcAhp7kr5z6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752158117; c=relaxed/simple;
	bh=yICbFB7g3IfbCrCxNO58dlHgkI2EwFezY8WAqddgqvM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=saugn8O6qMcKfYA9w1pT+pCtRbVd+shq94mEmmtsbPGGr0QSUfLtz8bg9g3fWuiBbi3N07cZ4ekztYxm0/rNlXoYsKh3OuRNqhpSqLu25wUgyKM29NOCd8f5DsDPh3Kh4CBEPXrfZaIHBggtRNcjQreCGYtDutDEBWm2pJVVQ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752158117;
	bh=yICbFB7g3IfbCrCxNO58dlHgkI2EwFezY8WAqddgqvM=;
	h=Subject:From:To:Date:From;
	b=b370rp6S0D5ykKY6SEfQwmsBTX9h/CBAxry601EASdnVQbcWDZocuOi+jHIYkhBDP
	 zic5MNSoyojh/GkIfOOD1i4yMJsdk210qxkGbFD5T1D3PsAEfB/d2ON6m/y0sCDWvL
	 Ab88iux2swEk6KoCMbHOKrS8t/8cN656Z+0of8hY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1314FC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:35:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 747BA383B261
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Jul 2025 14:35:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Jul 2025 14:35:37 +0000
Message-Id: <20250710143537.release-6.15.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.6.xz

Linux kernel version 6.15.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.6/v6.15.5

