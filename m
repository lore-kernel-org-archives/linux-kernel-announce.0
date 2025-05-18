Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9103586358
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 21:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747604710; cv=none; b=maWcZdGNxJQxG4OUbr68RdwDpLxpwZKgcofdNRA897JAtyqpYH9tuDR4Ph2yG8EWMUiSVPUnRK73icM8EdeCo8NsopZjLzfp2juN3UlpSkK2aP1cYxE1d3vj+viOwai7iC7xWAv+SdFXaIzMm9QmMdAsxlmUvIRFT5BnLfOn0lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747604710; c=relaxed/simple;
	bh=UUCcOWdRpoddJHOgaVK0ikVk/W5Ssv0swvl7tXCwH/k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UtRcjcVcTuqxiCGrVGnEaviz+CiAoctvtAmT7aCU6YG1Sn8hyKLOgjy+y9ErBXl/0DWdOXdyXzKyKtBkIEGYV3cTnNBQ4ZrodNRzgm9NpGtnDteOqdUZJXSebHFXpeEr2lehMxrDo1dOVlIFBIKY1MuOAA0J+z5QuutAPY57D2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747604710;
	bh=UUCcOWdRpoddJHOgaVK0ikVk/W5Ssv0swvl7tXCwH/k=;
	h=Subject:From:To:Date:From;
	b=kzp5yw8f+YsRrIDXAPrayAab7TXcQTgnZqjephq/hRe1YsW6EAQoA0rAl2pn5ypbj
	 XmjcVKCGiijoICrmQBRDlP0yHHfrC2I9nNvmBxntFZ90ZPGGooWNXy9QhWNeqxln9P
	 EUJYerUyaGwhS76yYaQoIyrxhJ7okj+V8+4YoD8g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A282C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 21:45:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74840380DBDE
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 21:45:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 21:45:45 +0000
Message-Id: <20250518214545.release-6.15-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc7/v6.14

Linux kernel version 6.15-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc7/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc7/v6.15-rc6

