Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1840E1DEFE1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Apr 2025 19:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744572922; cv=none; b=qoPbbun/RAoQcm5E9UdcI+I6fO/wmuTHF4lewgYzSr/H/p7GRXR2dJBr4TPDL0btfIIv1x3wDdw1jg/VaoJa/Kc6+bF8gOa9CFS4VNfvjtRi3Bbvl7wZv1mprMTe7oCApyoNTfulbkbc+tqZkF0CG2GHICp78u66y8KAAlU0KJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744572922; c=relaxed/simple;
	bh=oROHQoSZFid5V+R/0RjBvKcbh6cuj/WzmGLWuLqL6EU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h6KMN8tc5p/J0WQgje+RYsUAC2CQ4yipUgQbzSqSxjVP6hdHzVT1UigHPy8b9BNjS1w/TGNQteHLiLRECekqysU/h5HLK70IVwnk1oRkSTlkqAOF5K36Le81EL02d7YjZFHqIOFU30RNE74IEdIvn/zQOFV+HZal0QnDysryWso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744572922;
	bh=oROHQoSZFid5V+R/0RjBvKcbh6cuj/WzmGLWuLqL6EU=;
	h=Subject:From:To:Date:From;
	b=WTinQAb5Cng9FDeMYrmM5grngfDII1DBIRgMrhg9rRzp6GbunMuwCgVnnofrVJNSK
	 0E66II+XLxVWWnKktjO31uyqWGWU1IS3uq9gMg5J45ON4ont5yfie77dU8mPFjud9G
	 Nkx5JBGYwdGOhB+/817sivUozrhuV+yJjuZVk8Ys=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A012C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Apr 2025 19:35:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74E8D3822D43
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Apr 2025 19:36:00 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 13 Apr 2025 19:35:58 +0000
Message-Id: <20250413193558.release-6.15-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc2/v6.14

Linux kernel version 6.15-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc2/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc2/v6.15-rc1

