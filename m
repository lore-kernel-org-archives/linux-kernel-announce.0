Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F6E405F1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 15:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1703084450;
	bh=n6i1Zq3czucQDGX17mvdW5m7clUw1zF0nNGPznUYNdw=;
	h=Subject:From:To:Date:From;
	b=HTOSeu2L+qQQo7mzR5+RKv6XGGKM8TjPk511MqsBvpblal3rJverB+ZOMM+KjhCGY
	 8O7bCeZ/NKBldYCQ9jkXkQoke/WKWbdAfzhzJyClKZzp0zKC4APi5MicosNorQKWLH
	 pdQvtsGH/WM5xU6UwuhNWln2en8O1MxIeok4Liqc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72114C433C8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 15:00:50 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5D20BD8C983
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Dec 2023 15:00:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.265 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 20 Dec 2023 15:00:50 +0000
Message-Id: <20231220150050.release-5.4.265@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.265
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.265.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.265.xz

Linux kernel version 5.4.265 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.265.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.265.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.265.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.265/v5.4.264

