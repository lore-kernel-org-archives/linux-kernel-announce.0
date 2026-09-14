Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FE53BB134
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386989; cv=none; b=eKQnHi2H1YQMy9lm2NGu+DdlfZzaDrSAFjhUNKYX/wvRQWAJbnQHE9tM0XefWPO00Rw+joqrLOnKytZJJ5SiNV6DMemZakQgr393aJrniMsULxa4ILNDPPGeah1QV5ff/RXp7y16kPNbZpQCH8dF0wuOFrHJu4Ix2GAyCEBKGUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386989; c=relaxed/simple;
	bh=W0sEhOUajMvP+oI3AfhVN9rnyhBSjwzWuaWVhxm4n7M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TCB0peLyAQPbXKvNzrXzMzXgq972U/4y3IyNo4WL0JvIFACcJx7N7xk8mGytcfw6UggzEGeO5CZL1bjaeKNJuTyRo68Q6hkPnySNFDYkH9EP0bjH21RaM2dzAvZv+8WYhyWAoOeJQS9jNSa2/5mQftkvEmbuOzTRGSXnZKZM9hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789386988;
	bh=W0sEhOUajMvP+oI3AfhVN9rnyhBSjwzWuaWVhxm4n7M=;
	h=Subject:From:To:Date:From;
	b=RKTcKOxYxIHiW2V8XQ9fRlyI2f2Xg8XirF2Sazh+BiF6b/7xokVTlqDBy/5ZA3/ts
	 fh4asQZgdYPFWwHBcbkcYHqqa0WulxMSEuanu8pWFNyMdivibZJ7ADw8fWcyHj0Nuf
	 4HQxdTkJosLnd/q3hDNvIci4qzJ8Y0/TcRUI5mRE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE1061F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:56:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C32C3924446
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:55:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.110 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 11:55:22 +0000
Message-Id: <20260914115522.release-6.12.110@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.110
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.110.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.110.xz

Linux kernel version 6.12.110 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.110.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.110.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.110.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.110/v6.12.109

