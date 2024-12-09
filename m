Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72555216619
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733738437; cv=none; b=mxUC/f807AbqLhyGJ2rYJWVkOIAw1RgFxuBOvVXSRLNvQwaWrJT4jLWSIcpDlRiW7rYKMu6zv2zHnQv2iztTrDGcVBe5+ci9R2AxjHcSB7OpPyZJhZdrqmOpfT99KwO48qgmABRiWr2hN8ROp9LGCQENkqBC2S++K0ZEHjeEqKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733738437; c=relaxed/simple;
	bh=88z0pIDf+KMB2fpFn6IClFvIs1gcB5sHPSOfj0oX2ZE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XcpSx1shOoXRJqrj7LTxh5mistqp19RSGu/oZWhKPFarECMSM8KcdOVaKlMcnQCOPYEcIj1sqFcTZCBfBuVXshn1gIAI5VKO622Aesw+41kSQkctX0+a7MUeLGN6AfowhWNRT4oqzvf3MHft1HbcV5vpLeMlanjf7QQbJiZd2rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733738437;
	bh=88z0pIDf+KMB2fpFn6IClFvIs1gcB5sHPSOfj0oX2ZE=;
	h=Subject:From:To:Date:From;
	b=FavLmAUw17JGEQPMu4daJ1lQ9UH2cEZc8yNXj8s6g6hZCes7dYO15HO6WVdEISDr0
	 fsv9zg135KG1M6BmFpjnU08t5ytSgUEZaNOonBouXhVBVhe5O2+DGbWbXBWIzplCTV
	 N/WZnm6PceiuTqAvZ5dW7gGGEKGPNqnIbjnKqLCo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00D44C4CEE1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE715380A95D
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.64 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 09 Dec 2024 10:00:52 +0000
Message-Id: <20241209100052.release-6.6.64@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.64
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.64.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.64.xz

Linux kernel version 6.6.64 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.64.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.64.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.64.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.64/v6.6.63

