Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2858283CAF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744291217; cv=none; b=OlW5ZH1ZMzo6gQPD/E1S8ahhKtdzpt4tPIXg+OnFi+SuQnaoiddr+rxurgHYYGH4u2wCRu4ndHry+TSBARegqtvB/oH3M3JooUechNptMbKFsB43NLSzc1oOLST+EBsAtlDYG8j/mr/x+dcAs6Uulu8TW2y4XxeSkwjpmapN2k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744291217; c=relaxed/simple;
	bh=sKBheteamc0UCqSO2gthjHMBHBfjFQWk49V8rM3/u3o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h+m2C8JKw5oBboHqhoIFdTqdWPPrS73G5V/CbXPeEffdQq8SoWb1j+DtVAKV2CZB2xArMFChdyoouV9T9zU1pHczZgQ6TWDpmN/ZN0jJot3DrEWl32/Hnv+HREafklYvmTnI778ZUzMRGEqIvvxhtBtuRj7pEbJmCMSgJD5fDzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744291217;
	bh=sKBheteamc0UCqSO2gthjHMBHBfjFQWk49V8rM3/u3o=;
	h=Subject:From:To:Date:From;
	b=S+PBBjCNwiNfdnw532bfFqhorMa6hpJXDha904mqlXZ/VnSR58VLU++89yTd/0Uhu
	 Fmj9x0o5688FAqkeJLGSWBeyoXCIy+dBdXHysinPLcuvKz1gLIXvL84V54Y/N08w9E
	 YsqFVouIUf0gjViqSiErj905tbUAfqXyM7aCJh6g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C49EC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:20:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 38B68380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:20:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 13:20:53 +0000
Message-Id: <20250410132053.release-6.13.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.11.xz

Linux kernel version 6.13.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.11/v6.13.10

