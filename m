Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF51C4A98A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 14:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704895244;
	bh=WY33VwV+eWTjZnLvFYlG0Ia0p/wps7CYlBoVAshUEzM=;
	h=Subject:From:To:Date:From;
	b=Ej+9UsTPV2hMzRGo6KZIu6YyX8SZMW0QvX3u5PezvhQV4LJwsqyNs5AQoP1U8Haye
	 Cms+821s2GMdM4onlZM+oewuzLF2TcoaPepdsQQdz5mLCvD0SLxQdZlC44mqgPCmwQ
	 /xrxASwKJ5qVnxxfvkfyTYd1IE77EBJSI5G3UD1A=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C4DCC433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 14:00:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 23E5BD8C968
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 14:00:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.14.336 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Jan 2024 14:00:44 +0000
Message-Id: <20240110140044.release-4.14.336@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.14.336
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.336.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.336.xz

Linux kernel version 4.14.336 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.336.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.336.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.336.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.14.336/v4.14.335

