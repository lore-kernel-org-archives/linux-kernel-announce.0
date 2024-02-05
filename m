Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F7C1DA3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707165343; cv=none; b=knpzFOTpHb4PtO9UM7p52IUueelBX458b42/nG1mXC30YFjTtYJ5BCD0/dVNGgRsHm3MhteFv4/yfYXILoxPb5+5pPcwVmsrhHvN/5pgmP5S09mr+3d+AaliiPF5YZmWg/X+A5QE3HMYy8aui+T5Gy8YGe8WVkFjQAxeqE2KW7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707165343; c=relaxed/simple;
	bh=MaDflI2ax+7uYKBTpUq7GCIrWM6IF1Nx6mYuKjiQbd0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=en4W20IrF4RMFcafc7HSRk1t+4adNIHRAqzeAk7LSG/Mq95Vu8RDjkju3yXXCA4CEQCPz7wKb1sgn/t4ZV5aIe6p1pFXi4aIzUS97CAjGH29S/CDlSFbunPMWFsCP1LqqjTgYpV3wO21y7JGwTwgSBEWlZQvzlVDFob8YhfGS4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1707165343;
	bh=MaDflI2ax+7uYKBTpUq7GCIrWM6IF1Nx6mYuKjiQbd0=;
	h=Subject:From:To:Date:From;
	b=N40vl4Mkz2TAOyRFw5VpuLza5I8gCXY75re48O8c9yc2gm/BWPqFO/R4O2LzKjusF
	 KNBjMBE9EmGRD/cnMIgu31Fks48VutEKxGYXolFREXzjflM5UscyqfrrHk4xQ9XbYu
	 cPFU3dsl4IO79uQnspLsu963SUMHOt2kiM0WW9Mw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3BCC433F1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4C0C4E2F2F0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:35:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 Feb 2024 20:35:43 +0000
Message-Id: <20240205203543.release-6.7.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.4.xz

Linux kernel version 6.7.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.4/v6.7.3

