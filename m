Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F1C1AA1FE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744014308; cv=none; b=TPbWzHMCL3fZpbA1Ck1mHkF0PGw9pke+8WBMP6JsApN1sxHGF1wNbFlTOGpK18d/CCfm2ydTGb87BI3xDe6anWZdP+2/4FyLx2TTrW+/zSkeNy66x/RllrnjQAhnczmqXNP1fwwaQBIHYLdwr+o5ZwxzOgNOcxRt17Zp2M93wYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744014308; c=relaxed/simple;
	bh=K68pl8QGNfs0OEaSZ846+sysX3iXCtXo0UlHoyHAl+Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SWY+aCw66acFe9iNdpymYjeddJE1HnqefflmZL2UTOL96OIspbL469AGGXVedF4Xn0T3FmdZDIAIj27aDFS4DPMJohyf9aPgmJoXSWfMNlBWerFiUiLkbDkpvsMOYhfU6u8MBwsp+4UsjbT5NHAuecMRJSchEuZvOE2FBTLbHfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744014308;
	bh=K68pl8QGNfs0OEaSZ846+sysX3iXCtXo0UlHoyHAl+Y=;
	h=Subject:From:To:Date:From;
	b=ryf0XR5+6yf+UBLp+UMYv1qvvE0HsrE1ICshRRvzn8jLQovs0Q85UD4vuSHHIE92g
	 tqHN/Q0RioP0lBR2LQj5I5DrNPnMLEF6d51c0h+UK6yV7mOnb3lkjdN/PLlDWPd8xx
	 mmIEDPM5gAxnGwciwABgZXZZeyaAO35iEkgM9oDI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5482BC4CEE9
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:25:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B24103804CAE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:25:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.133 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Apr 2025 08:25:45 +0000
Message-Id: <20250407082545.release-6.1.133@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.133
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.133.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.133.xz

Linux kernel version 6.1.133 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.133.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.133.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.133.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.133/v6.1.132

