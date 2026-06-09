Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2573F8235
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002221; cv=none; b=W1ir5igF5eM2coQBVEC3qbWL+evUXJcffuB4pY9c9thdYUfZikQYjiOlEgue5yXZTInc15QgnDmSuugPVEtjmk4ONPzXd1n6zdwrHI73Oqu/xZrPuBPdEqzFev9VNkhVc8N04V+oYtzSw44mTs+wMejMRhBR/zYhgsXt0p34tSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002221; c=relaxed/simple;
	bh=YZhxl/864DPkiBEYdYEw6/IxSEvCnYYqCfTS5+bZ750=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U7gkkqh7kZexvHPP/g33Wuw1sdHWE3KO9BkQPVMOwJJvY4Zwj6RmSBravTgyS9A7mN8I9uRU1H22CfMb55oyGMAjJdCHBoQ1D5D1wfj6MRCRT9U2V6zseCuWC1CeYb3OYZ1hKNWWEoD+v6ZkzfujjD0Zd2xQ+d1o0cGZHlNhXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781002221;
	bh=YZhxl/864DPkiBEYdYEw6/IxSEvCnYYqCfTS5+bZ750=;
	h=Subject:From:To:Date:From;
	b=bPfxgkRQCMEMWX5K/Wm1nwsMETKPyegmUlpSOw8SWks9qp9W11wt+bFEb/pOnyXNI
	 pxQR/iKSyDT+cjd7YzO8niFYO0lQ+pyYJaSTDBWcUaxJHfirVHhNssA+uF7jSNZePN
	 cyHT1yLWM/pGlHSXidtGGMuyvWN0J/TMZqqEtMRo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 658911F00893
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:50:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19AA03930886
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.35 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Jun 2026 10:50:18 +0000
Message-Id: <20260609105018.release-6.18.35@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.35
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.35.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.35.xz

Linux kernel version 6.18.35 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.35.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.35.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.35.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.35/v6.18.34

