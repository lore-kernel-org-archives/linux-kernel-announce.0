Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949063E6398
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777312566; cv=none; b=ZX5dq7lP6+/4VIe0Z3pBMuy3EhuuTb05OebujK2LO08EhiiRQrY6TEcBmsuu7tZ55D72NnSe+/a6qL7TntNtYVMK33y08RD2eDt9DqkoIOYyIJzlxwjNO0/GpvIdsHyzGXijvHzmiT9Dzrzh2M7YKqy4K1bd4TPRjXr5BNOEqAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777312566; c=relaxed/simple;
	bh=rKz6lG+N730ijGsWFXaH1jyBSikTrzSoR/jQbO9i13Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YVJitxS2NJnpCrcmxwLcHKU6OZ4e/lXq8gKmA+dMjhuP1NFD4s5H8PIA/DAl3EHAEj6YZfjqNNSroFHcAgfnjM0Z1/p79bezqPNuyYt1WFizuiH7B5JLBo0LqVC640O9RZr37BAU6MjscOWFpVT6KS+Yz7nSAV/ONlHROdCUHSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777312566;
	bh=rKz6lG+N730ijGsWFXaH1jyBSikTrzSoR/jQbO9i13Y=;
	h=Subject:From:To:Date:From;
	b=bClxYMm9WQHvCtb7FozcM1asdBezeUL72OVHlB+okNXkc3hBkDQflNNZS8mGlK5KB
	 MldAzxvLcavLpvS4tVTbnXL0WELFx1YgHhCY9SCDxDDLQZO4I3f7jssg9Je1w3wX0x
	 mWNVWIx93P6xNIySUW5RiCvl/RQlAiHyJQkMOstk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45BEEC19425
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:56:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05A703811A74
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 17:55:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 27 Apr 2026 17:55:23 +0000
Message-Id: <20260427175523.release-7.0.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.2.xz

Linux kernel version 7.0.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.2/v7.0.1

