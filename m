Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F5820DD71
	for <linux-kernel-announce@vger.kernel.org>; Fri, 10 Jan 2025 13:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517031; cv=none; b=nULskuj1tJS1kjqJ1LI98T3UKl7rriTSrsjbuUmRd2s1FEzEhJ4NSvTz1utULwt+ifwstkbJf+bWVkAumUu9P3CYAG6RQfw4qQZFfcVCHkeTQNvy3sleAvVHWHU5QbQNTaBY59km+dg5DDN3T6gAbwiyj6G/R0ez2Sw6HyNZXlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517031; c=relaxed/simple;
	bh=8ZwwE5gd5bQPX9/pM8s0x69rNjpNHReQv8QYIzksIUY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Yj9C4xEnec3oJOup9caIMIFGbC16a0MKWmiYJdAd2ttcMQdchxNXivTuyk4grCfLzwKgXYLB4dCNgNloAIYKPtI7/G4ULvHlFmMyp1G8RQopUBk8RDAB7W/fwm7t7V7A20vmP16V/pBDcg1D4YsYfYUia4HmPAEpl3t0v/YRjHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736517030;
	bh=8ZwwE5gd5bQPX9/pM8s0x69rNjpNHReQv8QYIzksIUY=;
	h=Subject:From:To:Date:From;
	b=f359rpK1jm1TvwLy27t/V2fU86vzDIlnopWZsBLuCLmB9qkq2jMXPAfzesgOCLxtI
	 U7xu4Lf2cK5EwuJ+RmIIsVpWPodfEnp6C1fB9YDB2Tv8UhUL/QjFDYaumFayZ4zSft
	 /5yAbUm+hq8/f3ANiUI7OAnkULvat6ymY3k9H9jo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 428C1C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 10 Jan 2025 13:50:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3F498380AA4C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 10 Jan 2025 13:50:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.71 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 10 Jan 2025 13:50:52 +0000
Message-Id: <20250110135052.release-6.6.71@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.71
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.71.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.71.xz

Linux kernel version 6.6.71 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.71.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.71.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.71.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.71/v6.6.70

