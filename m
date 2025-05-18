Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C874C8F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747551008; cv=none; b=lzbSnS+ag8uSdlRc7xv9f6yoRd6BJOR6ilc/Kvy9j4Ped70uBgHnL9zKScOQz6aF8LwqHQGQ3N2gvln8xmGfOm4WocIKii3qjVIP+WCFOZmnn8z2yVO65Fr+c2dHew8/Ut8N8aIMPqNSHzgqIFPCwb9Z90iaVCYG3pYqfl6nGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747551008; c=relaxed/simple;
	bh=b87Kvw9hefiY7fjHDYn3sz4hiJs54NYYsab9sW+qbCg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TRQ1DURFeHDKG6J6MDrzhoncRaLCVJPJlNBa5AEl+9zGEki0I9G9wAYXb9hKuUaUL93UhZJbVm64nkWgChn+vUv4vNNFYzYXq6oAE25tqsHLM4KVDWQMpdIWMZEECZ/Wjn3aXCXZI+PQI9X43IBtKSJpjkaiV+mHfxC+to1aAaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747551008;
	bh=b87Kvw9hefiY7fjHDYn3sz4hiJs54NYYsab9sW+qbCg=;
	h=Subject:From:To:Date:From;
	b=DBAsZV/4cRxvYnNS5Y8vJFEEu1fZ4zTinBt/XMGFZATk2gugEfKMK/m23LSgDsW1H
	 dJenfvHDJXESEdoTFxtEB9Gd1348ZcxqdFhunCf3htm1ZA3LWvqz6fqqNma5PILF0p
	 QvgtjJK4YMgixGDZ5nKYi+fkD98qnIEuyEusxt+s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD018C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:50:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74DF5380AAFB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:50:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.91 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 06:50:44 +0000
Message-Id: <20250518065044.release-6.6.91@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.91
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.91.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.91.xz

Linux kernel version 6.6.91 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.91.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.91.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.91.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.91/v6.6.90

