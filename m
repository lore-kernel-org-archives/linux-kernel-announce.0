Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDBB2AD0D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230758; cv=none; b=uchaTZZ0bbF14dR7efmcBMpl1jACIlVjahILds6L2O3WLNRWsH5vS2iajsbRY5fvprtUpfBy9H9T2Y9o9e/BPxRPBqh0IuAfvO2LivCv8l8GD9zF/eIKpNU4BSaNoxSCaXmHZRjEsEh6LtkkPVfVgWg1ogdUXze8IAghuquY1q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230758; c=relaxed/simple;
	bh=mtz3z+3Qp1Ow6d5LuMmnjaCnQ0FlW1NFWx+RR5JhHDA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RkrwFXS12k5ocDCov0nNwUjSz52HhyWV2ZLdnL7WPJrYeTBK3KXsJXM/qsXtPB5D82XO0Vp1eLhZ7pxzwKwA0WVv2BSM4kiS6TztCxKbLpFFQx79jnDFhnt3fdGGOX+gh4xRD7FlR4egm2/PegiCcBMhNisLes8tjfFamwlDB04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761230758;
	bh=mtz3z+3Qp1Ow6d5LuMmnjaCnQ0FlW1NFWx+RR5JhHDA=;
	h=Subject:From:To:Date:From;
	b=gWkDVGTUhxWIIzXywjKuUU9xF+DaVoW2Hn2paBv+4R7aPtKb7JP88bE4qBMPj3B7j
	 w7qZQlGz5RV99rIGLFQ+1E5G/pyoplKTxm1HQIGVvf4JoXja12qrp/Aplp6TUoQRya
	 tqe81xxcxXAEFxQ3oKNu08HwP0ys6L3cDGsc8ZJI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9C5FC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:45:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D793809A97
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:45:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Oct 2025 14:45:38 +0000
Message-Id: <20251023144538.release-6.17.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.5.xz

Linux kernel version 6.17.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.5/v6.17.4

