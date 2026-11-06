Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793989825;
	b=5ZKnnJF787mB48P97ZMF3Nj1eDSrs/GG9Xs1NYLuDWjHmrob2eVnmZcZTZUS2MHCrfUa
	 wlz0BX6EliW/keJw5KiEaoKwA50LfKLV5wjbqhVW2fFHJe9NgFCpZn/iw/jcwck0KNQMQ
	 kGBdCoeIpjjTS9z0XxE/TFPZP5Lf3fRxbCVwNMKLA7j7tJknTSlZL16YwuizbUdQ9vFfa
	 3HADZ4blPRWJhoY85f5K1gFUrEsPVvJ1NETTVg1veeYftDY/GdCGBt5pc6ENBpKIYt5/a
	 4W2tbBLYIzcOy1GkZNtePKpuxbPxNPSh1EaIAy5j+1Dnht2PeBMHkUsXYfqQ7awKj2w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793989825;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=80dMnWTxoKZsplEv2rSmWTBhmijIYsXpsUJL5RAmspg=;
	b=he2FxiLUYFCYqdS+ziAkQFii29tMztQ1qx6vsQpTvjWgRQk01yCePvEVdXsRHlHZ4/5n
	 S3zfcEc1FgJqI7+ZVSkkUUUsOdJO02CvYJFn5O+oH10C1ZoyUfsqURginwlvrdBFWW1SW
	 TJntQvxLet8MHTzst9n+sS+R3FICDet1SFhHxrwq/8QGVt7p3s2Ba9MeXlRZHabsuMSOM
	 uiLSKdJsiVIVoRhj6R6X8maR402/GBPJmjYOePjrwZARyFYGxvQlyLyZYuqAYjxdzsdLs
	 K2bYTOQtYmTQ3tDctAt1ThVew29WNFqHi6JvO/nM4HRNxcoBQlBggB3Mb2O2LQ5+7eg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A99606A329
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793989825;
	bh=80dMnWTxoKZsplEv2rSmWTBhmijIYsXpsUJL5RAmspg=;
	h=Subject:From:To:Date;
	b=ZDGwPxwiPYHQsSZnWmvsVPfCWPzw9q0GvkeQ5FtnvHN2GCCWS+wCH/XsEzLZ8m2co
	 uH2H/9zM+10KlERXCQP6qfMYzcrxUnHAi5cGXxg1gfLoT6moa/G3TI4Y1k3Kmv+V06
	 oIsZUzmcTAll4HGsTYOTxND+tC8oA1Xn+/0ffwCK+Y9CNxWRlVcRJaENLJU743DRd/
	 TFZbXIrLNVsMoZwIJblzk8WJwlzwOoC0iEvBoKtxcVJvMKM/oczNXkc/sa4D4CBMrN
	 70yKqCcI//lNxgMzuaoHSPwiLKtkxSaLVOipWrqZWM/O0wc4930bckNoLQ1T+ofYSy
	 3g2QmItGZRz0A==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 194D11F0089F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:30:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id DBCF93A41014
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:30:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.225 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:30:23 +0000
Message-Id: <20261106183023.release-5.15.225@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.225
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.225.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.225.xz

Linux kernel version 5.15.225 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.225.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.225.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.225.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.225/v5.15.224

