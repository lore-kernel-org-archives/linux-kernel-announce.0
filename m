Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2197748F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Feb 2025 22:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739745991; cv=none; b=qvEUTmQQJ5MQgNElYSjDE+P/ztQHWy2ES7qqzXi2s1KC4emHJocaQXh2/Qw5u4KK/4idiTX2q2++WxnULF/cwS/oiFfG6AsKmIn8f0Z7W9IkbzYrEEhgYnY75lL20FDitLvzea/8bev562+62n1PtSdkVyty3M/DqST/Ak4hAss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739745991; c=relaxed/simple;
	bh=LKvz8acg5MOEdD+gGzXg5TcVK/dnscFTR44aVfngfcA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JyUh5BUGw5xu5ZHftCHTuSeMq0TcojX3YPrgos3gibb1LAOXwhbYY/e9QJo25MGkgWZcJZZowdzAkc0dVy+mbmhPQJn3pxB/mCyKioLXPP/Y6OysbYYnu1wfIY9l7PP6tlD4yJidEP+iXh7OKO/IEna7MYpT75u43LSXz6Fdt6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739745991;
	bh=LKvz8acg5MOEdD+gGzXg5TcVK/dnscFTR44aVfngfcA=;
	h=Subject:From:To:Date:From;
	b=j7LLrEEeOj75nTnc2PFjSg6oZs0Rj+hKo6MRFQhtxCbPrGG2VIc0H8QTDj57B+mom
	 RETd8GIekuas5+wPxSAoJAon8X10Ou6q1wfaMykzh2HWWn2ZaSBn9QzeM/NDwdrZh7
	 OpOaVlzxXpcfTwl/LWwJz826mBheYWrxT5OxB9ms=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39A4EC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Feb 2025 22:46:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 39A8F380AA7F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Feb 2025 22:47:02 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Feb 2025 22:47:00 +0000
Message-Id: <20250216224700.release-6.14-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc3/v6.13

Linux kernel version 6.14-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc3/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc3/v6.14-rc2

