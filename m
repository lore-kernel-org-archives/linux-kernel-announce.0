Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEB317C98
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705340441;
	bh=0SQDsw79WFvog8yD+/kF5rQq867VTkg+cappy2dIyBo=;
	h=Subject:From:To:Date:From;
	b=tQAYDQE/x5HJhs5Xj3GtBjPdDqcyJK019ielTgkFdOGG14YhX7TE71dvcA5FCPwdt
	 x3nT5PbWQ9qYzCr/icpM51wRaSmCO8QJkULH/0jV11o17Gzjlt4MGX6H90uYsR1bHT
	 Z7X7yYps84DSC2oHkuSrGhvoY9HoSKUK6dYkQmF4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30983C433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:40:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 15D41DFC697
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:40:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.267 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jan 2024 17:40:41 +0000
Message-Id: <20240115174041.release-5.4.267@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.267
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.267.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.267.xz

Linux kernel version 5.4.267 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.267.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.267.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.267.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.267/v5.4.266

