Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CD72D7A2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704464740;
	bh=Mg8DeQF114O0MuaBmpU6KB6pFxMpV0k3+pnfMMT/l/8=;
	h=Subject:From:To:Date:From;
	b=iczrxgX863lwV+X0gERdNfmphrNvpWnjkGUC6EuXt6ZEJOMgjlgMcBFmKrtVuTf9v
	 RhSFFSy975xbwKF70vEJwZUTVqdqPsR3BQqbM1JWFF2Cl+Lbd6WRQOkRBWWzT85nh2
	 kSAfaHD6wLWxSBfPULLUy5yxJNasKwu+shuV6KRw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E76C433C8
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:25:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4A36AC4167E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:25:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.146 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jan 2024 14:25:40 +0000
Message-Id: <20240105142540.release-5.15.146@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.146
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.146.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.146.xz

Linux kernel version 5.15.146 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.146.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.146.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.146.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.146/v5.15.145

