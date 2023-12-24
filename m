Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B19EBB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Dec 2023 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1703379899;
	bh=wIZtFp94aE2IcAZVWidS9eVGvNZXNci83XyJfsgKPpk=;
	h=Subject:From:To:Date:From;
	b=TKSY7/q8s46KXF8Zv7dI7UWufYi9luHyFiUSdVBEP//hpAzG1JDBjuSBAtS+pxX0G
	 OcgWsw8E1RVLp0zEu02O+sc2MZn6wtwktWIukq7e1+bNP9gSof9MzwOPX7pJx58AGS
	 +DK1ofd/whbBY3kFjXgrm3Y1hLmTdndcaGZv525Q=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46887C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Dec 2023 01:04:59 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2B410C4314C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Dec 2023 01:04:59 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 24 Dec 2023 01:04:59 +0000
Message-Id: <20231224010459.release-6.7-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.7-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.7-rc7/v6.6

Linux kernel version 6.7-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.7-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.7-rc7/v6.6

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.7-rc7/v6.7-rc6

