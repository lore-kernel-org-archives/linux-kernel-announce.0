Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15833282F09
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195242; cv=none; b=L7e+RuD1Ijz0wuacP1muKTAwwX1DKyVUYg3M3vZpNaMhefvMBlMJ4AY0GO7pigxj++9vYoKgcjeESUW3VusVE3/vMham3oYsFh1+zS0/80+hD2tcJesWGhk+3nL1f39mCMCd28tviwF547dpff28TRCsQQTHl2tbjkH4n1rr8xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195242; c=relaxed/simple;
	bh=qMNoRAif2IZ9+B0ImQ3m6P27VxQM3oCGbEdvXYKzZvM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CuuO4UBgBbxbcaGsAN0CjLJaxXmBUiBJUkhSCEI6IunNxefyIWpGRQH6mCVz8iQ8H5Vu+GaCE3Uv58vLJb8wvQYVoQW/ZrcF9bHTQuopYBgge7dH2KReT5SovpsV3mHaU8nD5KwqDV1Kg0nUBqZXynbiU060mXN0LfkyxrfFkxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195242;
	bh=qMNoRAif2IZ9+B0ImQ3m6P27VxQM3oCGbEdvXYKzZvM=;
	h=Subject:From:To:Date:From;
	b=JGNESEZc9u/k1Tmgs6qDDBPKu8XjEvdTRvFVwLM/30ZO+Z0xSmvRuNHffOrymyISl
	 nEfOvtZmXwJXMoilaKdSY/mObqaRayRzErlpxWaJkgR+I+5Pqg9ibdAdR4juejh6c4
	 N5L0kNIbKM8Yrtx76fFT6LmF3oHLIpsNzWrSZcHU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 083321F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0952393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.95 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:22 +0000
Message-Id: <20260704200022.release-6.12.95@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.95
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.95.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.95.xz

Linux kernel version 6.12.95 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.95.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.95.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.95.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.95/v6.12.94

