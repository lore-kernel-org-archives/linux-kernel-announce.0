Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A821916DED7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718538942; cv=none; b=o0t/vJpkAr7MB/y7499i0gabw40zdt0eVMfe0DkJpWF7F95rw1WTWQunnx+LclwY2IU9wPNIi7g7QzLSluWFR/Vtztm9amrHd0HMcpQqFKBiA9IOlJCi9j/xMe07YLEiZKtfK/u8wNk+QFIpBzmhHA89pwKVMW09rD46ByunEso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718538942; c=relaxed/simple;
	bh=Ny55lsQXD3YudYoltSKwBSsg5NCqN7Q9uCqyQ6UrsUc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c+BlCEFrO1fgNH7kAYhuITOGipG/k196K1S0P3WB8lqnde/0VY+kifLoZpMcqF8bhPIXs65KdOYCI2mTWXsPdnZwFT9ZylKf4CA5v0M+E6FFpk9PS+dN9jJZJddnM+mO6GM4BSpe7XrafNT/QcvXajtNLTvy+r1RBXwfhk9JaXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718538942;
	bh=Ny55lsQXD3YudYoltSKwBSsg5NCqN7Q9uCqyQ6UrsUc=;
	h=Subject:From:To:Date:From;
	b=V/mQqeDFkaYrKvdJvU/dGd5E9oPEY63iEgmwZZhCRcIbnuxcIyTZHQ6JpHpLLSXrx
	 UY2gCZobWyts6YXtn0C9J2wXEvQATqGjuabpivNg4QN1u/ks9NgBBfFflVbjOcMr12
	 MJLDApvQLts33QzfOQhNKqlCS/pF//sNy1xBIPHg=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46140C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:55:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 30F20C4361A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 11:55:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.219 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 11:55:42 +0000
Message-Id: <20240616115542.release-5.10.219@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.219
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.219.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.219.xz

Linux kernel version 5.10.219 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.219.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.219.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.219.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.219/v5.10.218

