Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6889E36B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711517742; cv=none; b=Xdyc15t4bHiV95C/tYfR2Mv78HYKLosJ5DOFtXDbM3F2MuByPPzFghyfer2EtphVudvT9Idkki7e5MmPziSsyfvBYgH5vAw+NWRUTyYJas+Dnb4G3Hr3XAepgPdUSGrCpYTA+oIlnaIJk37nb2yoEM2hCDXePwfFIf09S3fUS6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711517742; c=relaxed/simple;
	bh=SeZ0xgLQ61N8EhryY0vrBf2qFTOqAv7zgkNEcf5pnrY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hZc3IVySR3Pe5obOmuFZ0qOLl0mVYBR/AQxQ7KYuFegcJ6MupFmkMI/gmIoBDodymCKCa6Ij0k7iv6rlA5E9nKOn+lEEyn00yDnyWdU8L4CxmPq9AjaEA5I09WEYkfb/ZzYnCukiPKTNT/R8WOmFN62762lFFq6QQCMypNvaAYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711517742;
	bh=SeZ0xgLQ61N8EhryY0vrBf2qFTOqAv7zgkNEcf5pnrY=;
	h=Subject:From:To:Date:From;
	b=Apunri4MpVhQiOyX5d8/vj0kmIraw/e6katWtkWv/20qF8f+ATlCHWiDnsfsftt0F
	 /7b6aI4eKndA/J0Gp9gFe5KJ+6tozAb0dwd2Rr4GWGG7N/MP6X/b/1Ig3Cclf7MO2o
	 GyRGPkkbsdcwqKpdi4OXP0n5g+uv7vLwCq+gtJsQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08642C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:35:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F0B18D2D0EC
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:35:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:35:41 +0000
Message-Id: <20240327053541.release-6.8.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.2.xz

Linux kernel version 6.8.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.2/v6.8.1

