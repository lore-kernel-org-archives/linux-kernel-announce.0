Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86A721254C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391737; cv=none; b=b8Dfb5Qun4rVCJPa3F45S8OcDeFrfr6VjhwxV3oKZ9RkNmknq8vIDTlCK4uugOhiw1rKmCrFMc+n67BYK2iGdJ8oDcW6lunvZhEatRfaVDmPoSpMPYFXsMP3DOq8OrM2jBp3iCyRUKJGki5F3b4EK+lWRhoYJQamJ1erzMMThZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391737; c=relaxed/simple;
	bh=9fPgVSx5Q2UbfjmGSNSuLp8bZRFZ3Qsva8Ax+AqnstI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mFB6TJ4JwQzXxBVvhrzslgS1XYV0m88I/KvIU0/MJXWSNAz6co7CPSflR/jqg8k9/ybuI0PT0rmA/fk8UrOhkTBK2iGwkjEiCt535CC+vmrdk3MKcU5yjcwmwZZOT3yVpnZ8XSNu8HoyfAmc5mZTMpK73pmAtlxnKgNz+k3eQH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756391737;
	bh=9fPgVSx5Q2UbfjmGSNSuLp8bZRFZ3Qsva8Ax+AqnstI=;
	h=Subject:From:To:Date:From;
	b=uCAfkU3Q/rz3Kba1HBM5cwuW5+Ki3y/vkpuuXQowl6RHiWWTUZOTeigdoCGG6u80y
	 PlkhTo+KjJvpcRKlDareztzclU+gr4bXn80crdEVWlH0lhVHUVQ4puI6HzGJvMQXwD
	 jXwUxZ9oEXzLRckGO1FkekGaSkKzpEA0dsuX2sY8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48881C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:35:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74E9D383BF63
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:35:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.241 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 14:35:44 +0000
Message-Id: <20250828143544.release-5.10.241@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.241
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.241.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.241.xz

Linux kernel version 5.10.241 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.241.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.241.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.241.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.241/v5.10.240

