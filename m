Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4974117D2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Apr 2024 21:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714341162; cv=none; b=nFzbrw31RoLxOACjpXZQt1sdV7unMzjRqabJpzmCQPmBrjg9ZlV3UgShuT9z3udI3sXlakjveXn7pObc1vPWipfZ/aShV/NgvYJ55Ol6kagJMrLlV2u2xHvk1tbSRFg4PEtYfQ0bnprRFwwFO7QYp4xZIahxND25TPS3jKJiZoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714341162; c=relaxed/simple;
	bh=WRB4+xDu8eiNg5DF06i09iM1D3mFX2SPZajRozQRzew=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hv/HUVR6psRNtxiDsEl7bjCwfeijhfYdu+aSjz1aOxcB1TzoRXABIxD9GADnDsHyql0i0s4PGFKqUTGCPDFqrddYqpX1DmvXiONR7Z6Z+IlaMXigKCFT4EXyOGS+HZQGZB9QQG3WbR2If5Yi5VNQiC/b4dQRkwF9B7cccNWU0BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714341162;
	bh=WRB4+xDu8eiNg5DF06i09iM1D3mFX2SPZajRozQRzew=;
	h=Subject:From:To:Date:From;
	b=cueU+yi1MgqcP19Em3B9rPQS71++X9PnwzR45kvIijPsbeQW1Xrt9Owp6MWq3cLvA
	 61+Y+xsuandGyLpQEZvo3U2WbzCEnDN+e5YDPwY4gmHdlozUrBd7hTfVOFEbnaUd8x
	 1gHLe/cOZftkWrGXL7q7ZeECqZJy5p10KDkU3K10=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4055C113CC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Apr 2024 21:52:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D5057C4361B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Apr 2024 21:52:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 28 Apr 2024 21:52:41 +0000
Message-Id: <20240428215241.release-6.9-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc6/v6.8

Linux kernel version 6.9-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc6/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc6/v6.9-rc5

