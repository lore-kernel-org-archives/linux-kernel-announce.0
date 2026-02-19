Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B922E29A1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515033; cv=none; b=VMAg+BCPNTa2EW1+0+RZpapUDrjeTBq2dl/bKsGjMQGBptNYSN8gis+PVnufQrUCiM3RGHc0XPUNH2vKHR3uQQ3JB48MDT78pEtMdWBV3xuEg3wu2Y7qBkTDqawDV0rIEgmBk4ragwPD1CZ1J7zj/wEmtN1Q8iv4K9eVI8IpoVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515033; c=relaxed/simple;
	bh=cCZc0za/fOTfJ9u9mmaVpbc9pZrpkd7p7HbrbOZpvkA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uPsOU23wCw+BYCBz71RxUDD9d2ClzU0sp7NfyXNHFkVg/9+VDTAFyW0IX5TzjpINMITBdAOnQ3SvQB+jn5SUSzyBJoQNdBaH0sRnrTsALJj9msTxY1xGmrFaCMqn5I8VTGpLMK48361ynQwGbT3K6NDyXM97AXG0hrNTXMokEII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771515033;
	bh=cCZc0za/fOTfJ9u9mmaVpbc9pZrpkd7p7HbrbOZpvkA=;
	h=Subject:From:To:Date:From;
	b=CDY9++8RS0iLaHFxedAPalrMNCCYicqQDZIyISvyWpOqesiFvTy9ao/DO+sy5vuHy
	 c0GpAxJMFI0OkaPz5VeRsufxQTemM20ZeqH+129l5v7Bb1As+NvPChZj4pGa2jiU1M
	 0TiAjd5JX4deDSYBixhN3I+XEal19QPwExIRybME=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 703C8C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:30:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 87A9C380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:30:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.251 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:30:24 +0000
Message-Id: <20260219153024.release-5.10.251@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.251
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.251.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.251.xz

Linux kernel version 5.10.251 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.251.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.251.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.251.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.251/v5.10.250

