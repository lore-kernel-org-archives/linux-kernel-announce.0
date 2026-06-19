Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F9D3806C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781869528; cv=none; b=EB4X5W1NQSz2EWB43FpMzcwXd7txB35zRAWWWLewAGHo7Mym3wBKHh7IBVRmkyq3EbiGdi3F1Z8nVj7YHSas7fSUdWdXZm5fqdaH/Ajpt9PRCKJtUNNvczYqhWiEwWTS/N/aBn24Hnk+sP6DruDkP5Lg0SsSPIGpEi3iyHcVOqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781869528; c=relaxed/simple;
	bh=toZyfp0C7aFaz3PvBDnO9ayr7lG+nxhqw/Mk7ljhcuA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qgbTkBierQUCGJjHbMFLGq09fJ1LYJAgJWqO7zIF3qLke7Fxp/8duDlg0dXp+7d/u5TAGx+ch5YEXZTH64zMHPejy2OjeAGqqF21E4IOhqLyKdZbrW9bF/85nMCTJBicAVRZqw1EKOWkIa7qHnMUlpYFh0LnKOTQVH84tHKQUA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781869528;
	bh=toZyfp0C7aFaz3PvBDnO9ayr7lG+nxhqw/Mk7ljhcuA=;
	h=Subject:From:To:Date:From;
	b=jkXANQYdi3eM/B7H2lBdAkJLHdkG8BVKzht2EqRaRCktiWZcFTYJy4Hn0M0X2OEzO
	 +/qP/UaV5A+x6Hg6Ev07d6+7S4hDahxpj/HUDsdeFkqZEG0PMEInfXjUPBe1+Azfr6
	 8OhP24KGh3Y9q2VlfzEeS33ChrSWnC5zRHT3CfSM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88DDD1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D097E3AA6A54
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:45:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.259 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 11:45:20 +0000
Message-Id: <20260619114520.release-5.10.259@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.259
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.259.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.259.xz

Linux kernel version 5.10.259 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.259.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.259.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.259.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.259/v5.10.258

