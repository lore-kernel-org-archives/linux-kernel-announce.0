Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403753E470
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 14:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1703084138;
	bh=UK63Xp19Jz2oVac4vERN+3sF7hp408DL/8fFzDD42Fk=;
	h=Subject:From:To:Date:From;
	b=oTo8F8Um1m6d7Wmk3ffAIBdpjVS4lzhhf6s5IYuBrjzrFvk2Db54Slnjjr6sL97q9
	 uZk7Wowm3wJzlMVQp1uFjHvmfMPrBA5dCgdxIFs3Q1g/fQSzLzyFTaieRNNzwFznx7
	 hAKRwkfP20Kqkv9sVIc7M/Fgp83/lIjmII74p6SI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65ECC433C8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 14:55:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id B456DD8C985
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 14:55:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.303 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 20 Dec 2023 14:55:37 +0000
Message-Id: <20231220145537.release-4.19.303@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.303
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.303.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.303.xz

Linux kernel version 4.19.303 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.303.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.303.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.303.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.303/v4.19.302

