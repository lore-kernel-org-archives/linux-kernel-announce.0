Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3923BCF1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341618; cv=none; b=temernnk3AsUac1lgq1LNaThddP10QE5yT+xzetWOAkOKPXlx1M6x+/QXF/riOKLQzivLIzBnR+eO+sD5xsJvBvTvjXKwTPJtRG6rPFml7gtvjC1FIrczEv5ita0w4he4KpeapmRlpFd2Y8MsdPuECMmQ7LFLkXa2NFJW79905M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341618; c=relaxed/simple;
	bh=Z0zygyNoK0cSCafEffo54GOEZZHm56vitOarT2Hd2GY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GuWhJTt/r0nN9sFUb9Jam7bdpeEV7CYdKwUFykCnIabiF+tXEkayJKXNnRijkIMl4jALjiBkNlwK7X5U1R5ns+UCTqBNsprE/nT0x0LI6PAH3RFzmX6ouz5d96gMxJrxcuj1Z+kSJwktYnYiQimeALrV6UBtpyusAJkJbAosUHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1750341618;
	bh=Z0zygyNoK0cSCafEffo54GOEZZHm56vitOarT2Hd2GY=;
	h=Subject:From:To:Date:From;
	b=UyoxvbUBS71p0uZoJ9vQAFJaNAbu/ecpZubDYp32axoTUt8QzlEKE9IJSNgv7EaJH
	 AeQqRf5w93VsJm3pZGAECb6P8DMyhpVgWN0e9lNAWJkMNflPyqM8fH9d/x1OtlfXpx
	 5oDORUeKIHftuYL5yCzzrhFa4ZwGJihSIIp/0UpU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69ECC4CEEA
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:00:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE9FB3806649
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:00:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.34 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Jun 2025 14:00:45 +0000
Message-Id: <20250619140045.release-6.12.34@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.34
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.34.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.34.xz

Linux kernel version 6.12.34 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.34.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.34.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.34.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.34/v6.12.33

