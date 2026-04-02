Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA91036BCE7
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 12:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775132137; cv=none; b=WnpbMiZKw16C7LejfzmE6/GdqdN7/nm8xEStQhLSM/XFzvdMJgr50xCAWgxij+9fr8SVZOrAGveqKJnLnap0qoqkJS/amwR4xJKgOUlqIlf1QoL0LUI3dYYkr2dGoXguy/2JpBVU/XHpihpzMnlEh/16P5IqpyDLqQPXY20mUsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775132137; c=relaxed/simple;
	bh=qFcpjLEsnfhRMC1cOdq2qQwZZ1UbkSZ54NT9xPkGwfA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Dfmz5CpCna6NLt/hvisw36jESNR2BwnQx7NbipW/JaNqogb3kxF9fK28k2ELxCkv0UtI99SE5WOKMRhv0uovBnr2z1eD3HzTDGjZAaXtUJcLECpX5p2hKPtvU/gH4d1S1Ho4h7y7tqMM92fksH2OvMnOgAOlrJmAKgoML13aPME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775132137;
	bh=qFcpjLEsnfhRMC1cOdq2qQwZZ1UbkSZ54NT9xPkGwfA=;
	h=Subject:From:To:Date:From;
	b=L8+E6a/kLGvu/RgV1w+x79ipHOAXRsEYE7hunzf7Mkic1qPcOl4Ptfq6ioTxDylOt
	 Po4IEwyqMey8GB8t0WCyH4lnoa29142QvxOhyzDNXg6dxzTihDqcwJUyDihpVMvM/v
	 PUdyZ53fvb6Bw3BqNtShp7b+OzxA/zgRlVMuB7TA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C214C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 12:15:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCCFA3808205
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 12:15:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.132 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Apr 2026 12:15:19 +0000
Message-Id: <20260402121519.release-6.6.132@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.132
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.132.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.132.xz

Linux kernel version 6.6.132 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.132.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.132.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.132.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.132/v6.6.131

