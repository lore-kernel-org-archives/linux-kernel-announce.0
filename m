Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9544241114
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766063929; cv=none; b=p2a4JVYsTkEBXIJRxbzo13tNaIhVlS9+DBNvnYuKKCyzjAwqm8Z89+470RkY3CGBxN8B+SBNpmzSczTHOmvdI0soXscYRwVx7gzabvBKgIycjSi7OnekqDGsQ44x/OnpEkYvGed1nrcIhPs3tcTkzH91xpKV5WRVjftZduIiQbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766063929; c=relaxed/simple;
	bh=rVddRAZpYHwID5B6Hu2vDfQeir2iGHTxO+S3Re0hexc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dHfPohBPhXlpdYus2mdQq1Ia9uggAtYlVBAVN4lfnFH0yORnmeCeMChO55ibsNjRyXuBNA2cj+7JBcBOJKC8UdfPn6gl67oYL1KmBs90ZfcPvU3oPQiriicZXAFG+i+y1KBxaMNMEnjnwMNNWQyS6Sym9+O/dmPZFidK6M4EBnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1766063929;
	bh=rVddRAZpYHwID5B6Hu2vDfQeir2iGHTxO+S3Re0hexc=;
	h=Subject:From:To:Date:From;
	b=SJPZ+blIL4jB8xkH3118NrMSiUrAM2CugyjMTaOf11V3HCiKrvob7o3F7fviasr6c
	 NX2VljJexmS1qUGBMVUMigl8kTdgej05m7G7rapzz+HEmB7m1EZFF1E9MAAGgc0WuH
	 pEWFvy5mAaBUmWU9W3jkcc2+EzIVz12kkqWpurp8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB52C4CEFB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:18:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 03536380A955
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Dec 2025 13:15:37 +0000
Message-Id: <20251218131537.release-6.17.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.13.xz

Linux kernel version 6.17.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.13/v6.17.12

