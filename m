Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EA01E5705
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 15:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755270046; cv=none; b=Y5AXeA4fQ0o3/ecdYpJRrygFXpBPz7tVrUG+5GpQbedy4cjCM/EQSGEa3C8OBflWhzKKCyrTssXi64EfhrHuydRY/Nfjxw3QTScRNMa5+Lafavm78CQ1wdKNJCm5hIbmUdYZtjelolCZ9dJ1FCF2KdKrqnQTUWZR4YNqazaqXFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755270046; c=relaxed/simple;
	bh=3ARx8/FZSawe5G/qnlxaNsjC0QBHayuIrQPUFgWfQ9w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tCWvKfkCwJ8aR8nVxMRB4wPXRlkcNl1+Ye23babNrstAYcCW58F4HaDDT87u7isk4YjZmuzf7OYZGZQi929YO3IsSMOB/0BA0JunUuGn7nnDva/9X2osOCJ2mLDceG/NdxIvmEIFeNyr9eCoIcCMG/2SLHx/G9A7FwDjV/Um+P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755270046;
	bh=3ARx8/FZSawe5G/qnlxaNsjC0QBHayuIrQPUFgWfQ9w=;
	h=Subject:From:To:Date:From;
	b=S2d4IAJSiCTH/zGltJ+neGIR70Sdd5rPTbw7Sxb7xqCscjfXaJ72bGfmyro9sdXwZ
	 E9a2qbmWtAZlpl8dHbn42MshiRYc3hccsyRTMrA/KZeue/wStt4f92h+9L6VVsyn3u
	 enFIDvTd63AqSYV09h63PZhkomNBjOsyLRSsyGQg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19644C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 15:00:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3825839D0C3D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 15:00:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Aug 2025 15:00:56 +0000
Message-Id: <20250815150056.release-6.16.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.1.xz

Linux kernel version 6.16.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.1/v6.16

