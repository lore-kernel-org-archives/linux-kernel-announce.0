Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73B036606C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933930; cv=none; b=Yxs1aFjqmvLCCXgmaBdvFsYM66UNTe0qZMh+/TYRw8U2wQnfDrfwvzlqMgTAzZNWP0SSDfTxyDAtH6Kt+RHgTmLfXkiLQItQAKOnlWt4Ine4eHDb01UPNX2O+CiHJLX+SEX2NUCkdOW6nJHwczsRSqAfsdyixPo2ZJQUgLpXq1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933930; c=relaxed/simple;
	bh=qVKzdk7DyA4qQkM3NpfYEnJWvextZyBIsO7vBqLtX0o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bLCt9oZWAw4BbRnn63SimMi1uY4A9k/xRi7SKHB2jgU2erSq1SzZnbaxjtlKQsp7FFuLTXTM6ynByX3lZnoGQ+21UYnKk67hukJntq1S8ec8DU4fHnDR8bBuSF441SFiJ3/oczWhyaSkIv1f4JWCL+BEqliG9QUaZxbhwwCh2fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773933929;
	bh=qVKzdk7DyA4qQkM3NpfYEnJWvextZyBIsO7vBqLtX0o=;
	h=Subject:From:To:Date:From;
	b=jXhBPJ9MDnKvswsranR6arAfZuvCtP7zXPUZ5P9VCLu/OZXXrOvs2QeNaftq2qseX
	 cKHiaFOdo05mpDSBL+M2EebYm67rpadZDefKT0jmLyAOTuNht0T4YE+m191cTJmm18
	 CMFhPJXiE6iEarbwf95YaKW6Kx51uzRv3wnuD0gQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBA6C19425
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:25:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCC74380692A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Mar 2026 15:25:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.19 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Mar 2026 15:25:20 +0000
Message-Id: <20260319152520.release-6.18.19@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.19
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.19.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.19.xz

Linux kernel version 6.18.19 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.19.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.19.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.19.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.19/v6.18.18

