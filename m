Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB151C8FBA
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751793314; cv=none; b=CHny+0M1STKotmYQwj3h2PUok/17f6EFFAsZzyDZ3rG+DlX5KcDFqxUQbhePFkOqm4ohnajUYps7y7xvk2uvXiEnzgcG0rfNFF7dltX+gRVjDH2eEucZlgoJFG7LxkPdEaDO72ib+hTeL2lTlnuL429ZS3js0f4dPcXtaKAPNLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751793314; c=relaxed/simple;
	bh=44gM1N9f7ER4BcXr1SxPKIgRi1AqX/uXkPrV43G0wBw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hnT1OLYbuHswI0teCS2Z4ZDMW+fLnl8r/fDwNV/HJnyVI0dBTfZeRXuj5O+SqNByN4aJmV45AEKAukoc9wOKYPL8GEvW7b8PiJYS671RVQ8Z6PuD6d+gOHZa7vLiLLjW9BzhGKI0A+L2VpnnsfhVyXKX1Ky+BusE03ipP33JVcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751793314;
	bh=44gM1N9f7ER4BcXr1SxPKIgRi1AqX/uXkPrV43G0wBw=;
	h=Subject:From:To:Date:From;
	b=sytH/zXASd3gZAbR35tSCHS6sEAVPW3SNQpG0TiyuF5oXQC3+MK7Y9PAk/JVngMtH
	 I7PIaZrn+tHbYjAYaVp0I+oGW7jYEILGTLkb3VirfLD4evmqutTOOlreLjjniseZL5
	 mal/Lqp4d9kDSCBz/ggVFwlIx5JY6Juvj8prW4TQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 490DDC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:15:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEB5C38111DD
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:15:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.143 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Jul 2025 09:15:37 +0000
Message-Id: <20250706091537.release-6.1.143@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.143
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.143.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.143.xz

Linux kernel version 6.1.143 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.143.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.143.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.143.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.143/v6.1.142

