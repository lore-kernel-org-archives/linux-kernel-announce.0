Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBC213A3F3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721303143; cv=none; b=mRpsjoL941rzlCaq6Uvgo5fLcJkMmgSKDarG40MBjGSIBX3vY2YXXzusyrYOi32aKdn+RNxS1kSiWndZVFIG8ZbjIMXOnpHuMAyj2f9MSdITqyIApwU4bT5gBbzptoxGWEjvpWCMcaTBloksh4bGzgQsg8A18/9fCwS6wWkQdQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721303143; c=relaxed/simple;
	bh=6IcWlCMxPSr/I24uakxAtpN10Ka9g3zmHtX71Rsj/d8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jYq8B7DLBpo3NiOZxvJ9ZyXP7i43zSJvqqS3+1lnbpKvJN390miL9LbROSylWmNczTSjqv2MmCgq6nx/beiiHlkETHsvNqhEiH8egyIayBtyWy3wThmsyit3qXKwMBN2UonzzXS347jlFllES/Fpq1kXE8kkNcS0AM6BiM0QSQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721303143;
	bh=6IcWlCMxPSr/I24uakxAtpN10Ka9g3zmHtX71Rsj/d8=;
	h=Subject:From:To:Date:From;
	b=i8Kvwq39+EAE1uM2ACa5K1KKuHBY/AjpdTQNHMnynGxrY89KxAXpN8xOgil08FF3K
	 XBC/GRBQgkiBVrDPjuicvUKPrZYJPJ8LmwWMtTtNGNzrrcFvHGRTqTRaJXoV4RHlVU
	 jXHTZAZjuWK6AH+L9/6OCB9MYIUdCSnc2OklSgOA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 667CAC4AF0B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 51405C43619
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:45:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.41 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 11:45:43 +0000
Message-Id: <20240718114543.release-6.6.41@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.41
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.41.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.41.xz

Linux kernel version 6.6.41 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.41.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.41.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.41.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.41/v6.6.40

