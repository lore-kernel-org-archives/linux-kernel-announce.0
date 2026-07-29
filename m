Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1253EC83A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785341157; cv=none; b=k+C0PGo8rxLS1cgyAQbHsHzFYbdSnZcNEQ35oA87BwI9N17JvvdZM7FtiDZt5mFBCj84omSw0EhUiwScfM4J1XI9yF6JqQe44iWAXzUv5rz3mV8GDmyMlw46iPFXD7L194+ZeDsuTNr4pEJY+S0lxfiGeQh4lBIP9/JC71SvYCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785341157; c=relaxed/simple;
	bh=uTrDWHaCKrnkjSDyJ4lfAp+zfQgO9ixgnT7R4NcuNqA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cetW8/CYrq9U14JVjDajrDyzNJXaXXXCkiaBXH1ZOP4iae5ZtqU3ZwUEX1/yPNvQ2jZPtFfQy+VnZs2xWdEn2q6Fa1kHasGCh82g7tsd2akyBJ8G0vK91qI/h9hVSfPBEbPwkRf/E4Ycv708OAIFf4lvLKELGf+tLeRQh9p53w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785341157;
	bh=uTrDWHaCKrnkjSDyJ4lfAp+zfQgO9ixgnT7R4NcuNqA=;
	h=Subject:From:To:Date:From;
	b=ia6sXYmNq+O3pdZoHus+j/2qbbQxBxnMRmJIZjNh+Pn+o1nBdbd7tbMqLRA3pshcf
	 3TBy81Bh+5HgVp3p47Dod3dv6cD0F4un+3v9t/Xdf9sambO+YaTRt4pTXDuXr11V9q
	 Uh2Vad8IAp1bwQNr8nGxIygpy6cBXGfS5lgT4tkg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 122E41F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:05:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5996939253CF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:05:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.99 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Jul 2026 16:05:19 +0000
Message-Id: <20260729160519.release-6.12.99@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.99
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.99.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.99.xz

Linux kernel version 6.12.99 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.99.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.99.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.99.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.99/v6.12.98

