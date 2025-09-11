Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078AB33EB01
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604647; cv=none; b=qRD8QV4md/lS9/w95g2ZhJwORFPj9z7kcSSDdAYBlTpX4EgZmE7SARonuTUGAEkcbYAjAFLPZ/mDC+cI/yuM6x6gBvz31mdL3HzAAyEsSdP1K8IMsWEGJjHEjRN21D4KCTPswN94f5DknePpnS3KjuXUiYKgFdmGWuAYWvWM/Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604647; c=relaxed/simple;
	bh=QXJLgSNpkDCpo3FQDHTB39KRRD4uCB8IzW6ZKaqQ96o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cwWL0r39SmcWa5ZDvy1/dBIPfk+dbkfHltNKWCIkOg/BZ1Ep3uBJAdIW1PS3aN6ULkEN6No9XKOXo0xzYowWfddO5glYWsMd2/NHP1XqTQJIt4fi0TuMsAIzgT9aUch9Oz9Ptm0EYOLFKKFTVaDjZqiHagUuk5Sb/K/aGlbaHa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757604647;
	bh=QXJLgSNpkDCpo3FQDHTB39KRRD4uCB8IzW6ZKaqQ96o=;
	h=Subject:From:To:Date:From;
	b=A0A30VWvr1tS0DETGLv/YZT7MvSuo/wWUzfGVHFO+3emX1zNWrZ2+ZH5j6JUjWHsz
	 8rmMFs5DCGSkyRUUgf0/Mtf5xTVPso5Bej2mNQ3TLwmp9lkHGGFWzR8oA6ZQsf+023
	 2zR3DpIaspwNw9fFZnCmiH2AsejXaUcktFVb7BQY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 946D0C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:30:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 599B6383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:30:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.244 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:30:48 +0000
Message-Id: <20250911153048.release-5.10.244@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.244
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.244.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.244.xz

Linux kernel version 5.10.244 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.244.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.244.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.244.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.244/v5.10.243

