Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C37D1FB0
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704904241;
	bh=AqasCRpGNcO/zjQ1arvFUsPKOOaGs4k1I3hdr6YEnLE=;
	h=Subject:From:To:Date:From;
	b=bfFAqobWr9DowAxONAyHackeCmeQvVrgCuVYbsYfBXjYQCq4lKcaJR3EFJdB9kUKz
	 eqncS+OAaFhnNCBytSpGKiMD6DVgTRtF0JyDyUFmBB3b7BuYoFtHn/AJhe4gfecoDo
	 x8+fsv9ye6sHon/yFSCSbWuzPdktjBNTLAjKcLdM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40518C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:30:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 24BC8D8C96F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:30:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Jan 2024 16:30:41 +0000
Message-Id: <20240110163041.release-6.6.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.11.xz

Linux kernel version 6.6.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.11/v6.6.10

