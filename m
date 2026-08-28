Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E232222AC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787899032; cv=none; b=KFtj8gs4PDAA38rNjl7b3hgNl6kix2uy73xeHVMIP9SqjPEaqG1NB5gQ4c975wDi/Ns4nlBPu8zq3xzUHZSkMvY8R8TC1F1krBpE5oosE0EdOfq/Jt6MPSwf751/+LbmH/1cDCPw+z+s4wQs8X96NuCqF06SWd2Lt2XMqG/kC5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787899032; c=relaxed/simple;
	bh=mrNLtWGqjAGbSfm1yOy1DEkAelmuO3Mox28FPeXVo/o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KxE/fKMn+5ZcZoGrVTNl9XggDvvJ19B3NUiPmf1GP3HF5tnj8ggC3Bz/n28V7xagFU8t/hjGFoonL2113GAXGUk33cY3o5F0yDm+Jrpp2LHMmYqP5DY0LkWqq6LkorUj+AuirVYF9mJcYfoMk8lupzgzAoQhf9iu8SRwfgTETsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787899032;
	bh=mrNLtWGqjAGbSfm1yOy1DEkAelmuO3Mox28FPeXVo/o=;
	h=Subject:From:To:Date:From;
	b=P/+RQefhgFSbrmuaL+bi6r5XFmNICkifdWuFQonEh13jEwtyoZCWSo9ZE+ADHlnJH
	 rQxWFTpDTY0WUKY3F5NotZwhHe5ScLo/uvyjQFsJIUocr5LF5JC1hJQGwEol5u8PGB
	 YjGsYQqd0QZ1hj5p1qz8sfhjxruHNUtVxCEmwBL4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5FA41F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:37:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C5A13809A90
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:36:17 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.186 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:36:15 +0000
Message-Id: <20260828063615.release-6.1.186@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.186
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.186.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.186.xz

Linux kernel version 6.1.186 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.186.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.186.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.186.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.186/v6.1.185

