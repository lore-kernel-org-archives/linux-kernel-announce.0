Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9175E10A39
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706226337; cv=none; b=ZjDT9i/RxaN+YOYarDOVg4vdgLfjOIQOi/Gix0lfZBKcxB63vyOGVqEKtJTNejLTfcG0RDeHvgMSb8Gzjs4fnv/Ql9FQq7jJAcbRhzJ6XO3mbu/vkuVB4E6K/flh7XVlvxRVandSmdnNBcgRL/VPm/LnpUGLwc2VuFq9c8cuPHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706226337; c=relaxed/simple;
	bh=7GpbfHbbSx0cQPUgEhU74O2S4Y3/WVRCUwdF1vk28k0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hU4WaTVih63omTDcBZRtW4WB+PNerKPAFW7Y3FXYksWM0k8TyjZ+8OrwRZhKGLOCxCINUC7E8MKC/Euxa+WCvu88FiSKKPKpzCyoUmjgcWksF3xb2lR3A4cbOYySAd6OhBjrZCmLtXzzsQ/dew77wMTPfcnZSLS/jUVYGZlmecI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706226337;
	bh=7GpbfHbbSx0cQPUgEhU74O2S4Y3/WVRCUwdF1vk28k0=;
	h=Subject:From:To:Date:From;
	b=UNEs1fcjel4V4WEjE3pQ1QHlHK+y+0D1Q1mLRV9Z17577aM73jJqha7A3dUnmHIsW
	 mShv7AJOZ59OMFJVWMp53AqdDgkvCWWfIYPjZCKdtvxWawO3/RRXLhUvcajvxF9ymE
	 Yswh3c66QCwJjPhJpogK581RAwfUT6uueA9Rhe+4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3310BC433C7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:45:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 140FCDFF765
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:45:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.75 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 23:45:37 +0000
Message-Id: <20240125234537.release-6.1.75@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.75
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.75.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.75.xz

Linux kernel version 6.1.75 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.75.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.75.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.75.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.75/v6.1.74

