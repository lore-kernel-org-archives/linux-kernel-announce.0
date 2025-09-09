Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEB535E4FF
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757436940; cv=none; b=sZhJXUaaa8WIjqsMqbm8cu1EhNH6vvbjQW9/+8EDBC0qBejNt2BwUOs46u02uZ7joP0VCz822HF6RlCTv/3LAetK1EHt9s61jzPWsRhVUX0KVokY4GFvw5LY271iuLM5HdVhY3XX693i5GAOJEOUaChxzkP8qAN5Up1AZlrsBYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757436940; c=relaxed/simple;
	bh=ccfIdHSyJZp1MzLeIaN8EbSkgDmE4leBX/hmzR9rwVA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QK5p/bKBs9GFQulDysfNWmZXwMHxxDNUp4EVT6ksleaj0AUT2vJYNJfvfSPxPb9hRrfIi1Vvw2xpSl0TpeIbZ9DdE6fQL1D2+lxVL8K+cUw/ViRSs9vAqsBSeOXqjCCEMGsuBB5ZKtAgw64GDD6C0yW9BxnRFDBO7axbYiFZcug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757436940;
	bh=ccfIdHSyJZp1MzLeIaN8EbSkgDmE4leBX/hmzR9rwVA=;
	h=Subject:From:To:Date:From;
	b=nW2wdYjvcetas6CJtlHQf63IItDMmMpWDL2lrvrk5MmnyJsn7VQwxI6BDcKxL4ZhA
	 pSLm7zL+z82ySvkPAfxLRk+0f8eyKxLjugXx2jsX528aiHBoEYD2oaAJ+ds/LuecT4
	 D+oOuFonSpJ6c42yRJIO2myZ3SLzl2KUR4uMJO1E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 769EBC4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAFC1383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.299 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 16:55:43 +0000
Message-Id: <20250909165543.release-5.4.299@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.299
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.299.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.299.xz

Linux kernel version 5.4.299 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.299.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.299.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.299.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.299/v5.4.298

