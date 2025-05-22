Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DD828B4FA
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747917902; cv=none; b=Xgak8cvB9UknLLxEELshiZop2Ag9CDCTXRwG6D6PUvZ+5YN0O2YWdAqDWVvliHQf2L2Nvt9FQkOamGK56D6uZB00E/w/vfT9Vy2QnGVGw6s/hu31SQR3NJZlPdEO69tJ8uBUUDiQq3rjPyYa1UYpD9HT6Kb4w2Colu+3mDC2cTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747917902; c=relaxed/simple;
	bh=u7CuDN2q6KTjD43O4/Y2KjNCIEx963cE2bLTe5zBI+o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cRQ74FzjID+8xMJUtfgx65zTbpX90IOjeaErT1gWaL6/CFvzpx/OxSiQpxdavFvubBjrDOtr1dUCqZTVdykj92mBuKRMmnvQqMPkDUuCzlOhPyWb14Ae75gCLLmYr+miFZ1l0dAuutbljp1NTbPS3yxyzIuhCDUxnKi2Fg4C3zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747917902;
	bh=u7CuDN2q6KTjD43O4/Y2KjNCIEx963cE2bLTe5zBI+o=;
	h=Subject:From:To:Date:From;
	b=HDS1PzmZ2R5nbur+9A3HMy04nhaaQ0wFfzpGvKWLdO3UBgdQ0jGchccR+cSCG+ojK
	 akWV6P8srSk7BcRmBBs2aEIbdKV8pLJsxfrQthEUluyV6eGAyKADjz/iftUr5bKyiG
	 SYaL5kPdmGzXuacDnyJiwncIT+89Th9Xuj+OG6YI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AF53C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:45:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37BB13805D89
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:45:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.92 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 22 May 2025 12:45:36 +0000
Message-Id: <20250522124536.release-6.6.92@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.92
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.92.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.92.xz

Linux kernel version 6.6.92 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.92.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.92.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.92.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.92/v6.6.91

