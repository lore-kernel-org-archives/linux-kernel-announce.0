Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38FD3AC25
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715942137; cv=none; b=hj+5oNbkJIFv2MthMDwVQvgOvE11MoY8EHxX26qdka5jjNKmsh/vkCU4lsKHqz/zqWYd7x6RfU1V2LvjAvguM2961Vgg6sI5gmhhzNnz7uX4PUI/Ugh72Gp+IAR6cB6nKvyoT1MGVaeW3Vk6qwQKZETzJRE6ny4svcmErGUC2o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715942137; c=relaxed/simple;
	bh=S5f0mozlG59Mc24aBDwEW0n4FqpyaAQ7haKa/w6z4pI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=n06cgIYz9n/Xoxa4fmcwmUXzPKEwaFvxa1M7zTTDrGcEatSGjJEJmQ/QRgLOB+bHxFuTKq7xsWyjITMwN4j4H456IurFFV5LE0FoB08QLnNvSIcmZA0+Vpo0RnKLsP1X2+ALSmz/a5X30jdBqBklTA6fiBWthYqNMs5kK6ro+Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715942137;
	bh=S5f0mozlG59Mc24aBDwEW0n4FqpyaAQ7haKa/w6z4pI=;
	h=Subject:From:To:Date:From;
	b=DKuACTidrfukeeTu4TtR1W8QMUPR77Z+yomtHlZ1QYP4hQ5EBFAGmxW2tiNJgPeVe
	 70nDmaiov5p2XPRNnJFcYcMMn+WayMHZq4Lq6NVO5P7fuCeDER4L3PeR2K+h8iIvrG
	 Ao2G8zzKP/Sg2HdhJ3wtNl8Vv4YRx4mavApd2Gas=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801ABC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6E23FC433F2
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 10:35:37 +0000
Message-Id: <20240517103537.release-6.9.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.1.xz

Linux kernel version 6.9.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.1/v6.9

