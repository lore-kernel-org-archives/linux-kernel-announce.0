Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F3B4FDE71
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792059324; cv=none; b=SwUGYgL7cvRnaRHSAB34mkmFRHjhciKGxBgsdvm1NecwJMHbDXfI4xwLRTWgbWcOUO16p+kzYsKz9PHi2k6GMT3YibO8ZX62ocbpMmyBT5ChEUm6mFfe2LYogxwqPN9FWBnPPpg+mJHrAIGgDzIBs3J07FOzdR3nFop9qyjtM2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792059324; c=relaxed/simple;
	bh=GjOXY08y+LMnG/yxFDdHCWbOp3GOoF2XvqLoGaeDCNA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XeTXmLL69AMLmlcfCouI/NMgc8bJfEwOAgJ4U3yPzOiAdHn57RY+eUz7d47ss0icuuym1e8okXXXvltw9DIDKcFVRdH20/JiFTjmiVRPWwgTLZVgDLFQyRsum6vhbwgn3WID7bnsfKB/VfgLxPQzZc16aDWfXTvcypGZ4qYegaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792059324;
	bh=GjOXY08y+LMnG/yxFDdHCWbOp3GOoF2XvqLoGaeDCNA=;
	h=Subject:From:To:Date:From;
	b=oKOriAEnArfDRsC/5s7w79VP3bD008Mx66xErNN+Z4dZhAD9WajqR1pNPLgU+25cu
	 CXmo70Zh5vCICPSSU3vDp+ENT/XTpGlBU98hi7kV008S1FncF1pLQWKixYL2mr5Hjf
	 b8Dkq+ZMG3G57fLJXZM0vL8fw/zgFk2+tYPZTLH8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD13F1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B70CE392EA53
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 10:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.57 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 10:15:21 +0000
Message-Id: <20261015101521.release-6.18.57@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.57
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.57.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.57.xz

Linux kernel version 6.18.57 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.57.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.57.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.57.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.57/v6.18.56

