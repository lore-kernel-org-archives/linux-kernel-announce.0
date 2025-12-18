Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F20E33A032
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766064231; cv=none; b=SvFMVIoHkxq3lRfcd3sC8ZFffGc6+r/8IEgtQVKuT8eCQCXrcJWhLgmZRQT0FzaKdOK6FZPQkr1yl8o0a/mIrOM8AAbW1sq1XZ1PWg0CNV0GwrR7GHBxQmT6Ok8U4umskYw1NcJLYhhW3txNOw1WGGAg2I3H1JyaGKyognI7Bi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766064231; c=relaxed/simple;
	bh=5i7RHSHe3nostB7+0O0xQEeU3Dxlxw6juLXvTuJK0io=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=W1O0mJQwHL+4rL+bi6c//gHs+O/qpjW1rcGYP2ml61esGT9eptH5ag8qhP2JqYkAjP4YapJEp2rDcz6ojddOY4AknbQFlc6diFTS8BmhxthGmtfNpsJcFNqrOvjXx75Lwr0yo3+/vrE9vg4EEEcboEdex6IG5Cfe3fjcfMay2a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1766064231;
	bh=5i7RHSHe3nostB7+0O0xQEeU3Dxlxw6juLXvTuJK0io=;
	h=Subject:From:To:Date:From;
	b=vn09ees0g175mq4YR1p2q6Xz3WQUzJHCJfYp813Pfune2wBaycl5b9VqPxrrVGTp1
	 Qe89OegCFIql8YDOzHMH72YueNysxjTh83aWxlCS4vUFtjWCBf0OmdrpXoqwVMt3Z4
	 +TEPO+00d3pPBP45TPbFDoGtWMvCegzR/yP5Yzog=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C94C4CEFB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:23:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 41E19380A955
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Dec 2025 13:20:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Dec 2025 13:20:37 +0000
Message-Id: <20251218132037.release-6.18.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.2.xz

Linux kernel version 6.18.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.2/v6.18.1

