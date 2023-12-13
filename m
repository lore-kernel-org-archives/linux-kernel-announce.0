Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946E91D559
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702490737;
	bh=ZsDHyMP/IZh7kMglekWRo9Snjj2cdXZtY2HS23jRB30=;
	h=Subject:From:To:Date:From;
	b=VGsoSg4RgRgEM3wiCVNqDKRE6V9FqWCUuYS/io4CBMBFLxZYSnw5ELSgs46QX8U8T
	 atGOHp561a/wc73v9rNmtjIO9nVi6bfx3wMla/dK29+fQfxHaLiSMWxhJ/xRADkK16
	 m9ykhMkedOhMAEcHIEY42mBSNN50MD1LpIwIVgBU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E3A8C433CD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:05:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 05AC4DD4EF0
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:05:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 18:05:36 +0000
Message-Id: <20231213180536.release-6.6.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.7.xz

Linux kernel version 6.6.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.7/v6.6.6

