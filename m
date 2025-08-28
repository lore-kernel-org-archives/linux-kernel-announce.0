Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7733148C0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756392035; cv=none; b=Xhl5KNSPgPQ0Hljxwrc21GRrUdRc/K3SX3lKs7AagEgVmtqETPcpPIgemUtTDemEFtyJ2fMTZ8yU8NG2Q0shVILrFiQaWREEvosT6snahYNtVOhehA019K7LW/tBVaAtAufqQm5M1M0+J60ai2uNsZ7NP72L+6ccSvNYwP7D2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756392035; c=relaxed/simple;
	bh=8D2HANsK5FQw8+jZwi8ziFnImTptopWKtrXSqvO1psE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ej7cZfC9ZQ3iUolbOfJ4jjhhi/M7lJcf89HORx880vZnMbOIryPB26ysUrpdWPVigxGUaBXoPe69zl2JLLTIU5SIkj5dGglL47rdFyP4XUU9VJV/9hMkTnUwFG2UdAosfuXjdNeY3JBCAW/dvmbweNgJHoY7VomOmu7C/yRd7dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756392034;
	bh=8D2HANsK5FQw8+jZwi8ziFnImTptopWKtrXSqvO1psE=;
	h=Subject:From:To:Date:From;
	b=CdLSLPx414WjqQ2WyQBqfOpUDZlKG5B7yWCUhQuI0/ERfpQotYhA4P9dUoOXoqhb4
	 wCz87aPNUQvm6UEcOZ0/efDBhnmAhCCNYKC0rVlUrAbbmZU5XqZv/nrBUINIM6Kvnl
	 3AHG5FsCbN3T9W53wb3T7cfVwvJNi+VB0svs5bBU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B05C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:40:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D46383BF63
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:40:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.190 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 14:40:41 +0000
Message-Id: <20250828144041.release-5.15.190@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.190
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.190.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.190.xz

Linux kernel version 5.15.190 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.190.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.190.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.190.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.190/v5.15.189

