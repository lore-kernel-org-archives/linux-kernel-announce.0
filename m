Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489F9345CBE
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Sep 2026 22:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788733568; cv=none; b=NKU3sqD3C6G5tcMOWnjSB2PDswrCej5wLC09LGKEhiKCWow6XtIoJ4IYJmOmcbH69fg39O5zAf/MuAkxHuoY3PIfrTxmh2fh2jewBqwQIb70qAPlk7bTBps43c03XJ99ZjfXywNcsOeytGd3wU/NOzLTnsCAXj7ISBdkWTbXkxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788733568; c=relaxed/simple;
	bh=qfcfIqY+Cp7EVGtPrtedGlyi6PnXxEwYeBiMu4GpCS0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HPn+aH36x5/GwLjlXz/czgGRmBxva2dW4NaNar4ZFwhmdLaYZ//T2TC+iLBLqPfh5lKBcEasmIxhTTACYd93zutVItdflm7YO5sZ3dp8pH2yjkndThZSQ/sW/+WFclpxk1nzvnL21Sn0RaSP4F2mtSZX8bGJCvDvFnJ2HpAH3Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788733568;
	bh=qfcfIqY+Cp7EVGtPrtedGlyi6PnXxEwYeBiMu4GpCS0=;
	h=Subject:From:To:Date:From;
	b=K9g/Ap4+NcppJ9+puE5BLtP0dJ5R6gwSlz83KdbqMbmwE7zGrZYn8k5yI3VE+lFxP
	 Q5RQO3vgRynkQN47V/LRfv58Gh+JTdZIiEtK73tvfeHJ3haHthdYGq7O873UAZI8Td
	 AyK0TOOA3/VpxoEdklsGPryrNh1/IbYx+/fZqV+M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D86AB1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Sep 2026 22:26:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 963AF3927204
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Sep 2026 22:25:07 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Sep 2026 22:25:06 +0000
Message-Id: <20260906222506.release-7.3-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc2/v7.2

Linux kernel version 7.3-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc2/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc2/v7.3-rc1

