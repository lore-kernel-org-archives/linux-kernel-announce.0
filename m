Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA6F341ACA
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515930; cv=none; b=hBa0cgVrygXNBkmp9+JCSMB++S0b+VP4H+cJXtIRsRIL99XIuV7vi3shRl/yb+5S9QoIQDr7498s7y0M99cZom9qpc1Bykq9XE6GB6dVnBuLS9Rpqym5SxwgAaxm4UHqrrrcdCWBCQLvjjSQT60U4lxyAQA7YcxC1x4f8oclxpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515930; c=relaxed/simple;
	bh=UOMzbsPl1LMSb9cwe388S4H6wW8B6jBK4NYHzQedD2w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=p+pxwaReT31vLgTCFvwWUCC6ByDe8UiL8CqqzZHfqniNtCape3LiodHNCQbSWrBibcX5afj97atqJnrc0Soofq+C6x/j84m6bbeucYgUf5Q9pMY8M5EZ5r+Fo78TzpCKVkoNSuA9/yuCcbO6pZ41Jgwp80pqqHrfA2BgV21/poI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771515930;
	bh=UOMzbsPl1LMSb9cwe388S4H6wW8B6jBK4NYHzQedD2w=;
	h=Subject:From:To:Date:From;
	b=CEysiU0JXXyJpW1SYUZhlcX2qJ5C/4ERkK6aTogmkMBvpYkMEZYZuIKeT9luj6Mn6
	 58jH/0hz9wFP8uBuorhd3Ktq6Fii6ca8buZraE6RLwSAI1/w8TSvt8gi4MacD8paBd
	 k/P89qNeZ1jAIGHWaNFePriYa1pnpUhkblCRMBOk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB8DFC116D0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:45:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0D4B1380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:45:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.164 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:45:20 +0000
Message-Id: <20260219154520.release-6.1.164@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.164
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.164.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.164.xz

Linux kernel version 6.1.164 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.164.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.164.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.164.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.164/v6.1.163

