Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6514B5C5
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 16:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1703089239;
	bh=P4WxMDcPzLS2pLfC27U64Awak59wTosJzT3kr2YP6JI=;
	h=Subject:From:To:Date:From;
	b=rg/BzLp2Cv32rsnpbMWHQKtC0I70iyR6VEveURPgETeCLoP5zoXAryzeM6dWucZjl
	 hDGAOkm0nli0FvrGCXl+3lyAllHwj59pqPSOIRlxUtWHL90ox2XBd/yaZy0kQO/jEQ
	 M6YhGSsXgyFfu4Hg1okC7hLc16AQbPc+AHrDHuB8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762F3C433C9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 16:20:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6261CD8C983
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 16:20:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 20 Dec 2023 16:20:39 +0000
Message-Id: <20231220162039.release-6.6.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.8.xz

Linux kernel version 6.6.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.8/v6.6.7

