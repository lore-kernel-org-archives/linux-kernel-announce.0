Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA2E1B78F3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760267751; cv=none; b=S8HMiWnMnjAHNng8NZ/tSPM0CBIcKwdiW26BMgSRUr6HJmAE2fOuMzT3Ao1Vp1IuXG0KkqBwDuH9AzeNEcdvl6REkndt62NbSw9kdS1ttcQI8FUY+HqAiyGPzzEu3mqnciDhf30q4n1RseFeZwHUC3wCS/tnaGaHzL1qinOl35k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760267751; c=relaxed/simple;
	bh=WPJCQjAw2dYueKA2itVp3E7Eutt2y9IigmdzSe8f7YY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=srj6Nzsuw/ahlS8j+J7GA4q5VmJ7AEmjboMp9Ef4z9t13y9dllTrvrT8m40AQgJwqTGOq+R2OeqZIxuCuIyeZgsyLa5Xgj23IvTT6XSd6qx53iqS8AEQZLL+6NuTvnf0HVk7IkAEmyDWmlaZT/Ccr6TR5wyRDrMgdkHCvtQg0TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760267751;
	bh=WPJCQjAw2dYueKA2itVp3E7Eutt2y9IigmdzSe8f7YY=;
	h=Subject:From:To:Date:From;
	b=oQV8vSVS/UbiUfPdRRyr7PIGTb1WNgBkJbQ1yq0my9TGFv1IEjwdiuVxJ9ohYrfKZ
	 hDKd5quhXfC6Dx5QFSBadv8KGfjEiT3PMOCDSbY5MISyd+d/0dcwG7Hk8kIIGLYy50
	 XFiL3Bx4IjppPFxTfxQ35TkyhDu5Ti91elaiFivc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E2CDC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:15:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1DBE3809A1A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:15:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.52 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Oct 2025 11:15:37 +0000
Message-Id: <20251012111537.release-6.12.52@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.52
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.52.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.52.xz

Linux kernel version 6.12.52 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.52.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.52.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.52.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.52/v6.12.51

