Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C98C217F41
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426430; cv=none; b=KGgsCFly8McKsSC1ZEtYQuhoIInL9Z6QTvorwkODuK1xuFqH8r4YAcLkeFs0QLIpC9FNv+hQ0tcslw5l7pEVv9hdjs9T8/7c/B56OfwjBWMcaWr8eVYMX7Rr7u/mSch6+9/f5p29szUQL+ZipI7H0beH4Dgmhs6l2ht+2K1ev6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426430; c=relaxed/simple;
	bh=fRTleYaji+8zW4iXtQ1JlOxTY8A0nBYxexKjspcOJ4Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VqEMd9mUKVcBcg+uXIkCr3C5eFPXXieCUqHvBK2jPPlkKLTZf/IWagjLmBrBzIlgMae1XdIAxbhr4s82xbcY1+LWoujlMftHS7/uvih/qmonqnqrQdiJngtISqTq8irAy9gflSpC/kOuNNIvIiISuKKjWg3tGKxxKHZCPxh0cE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736426430;
	bh=fRTleYaji+8zW4iXtQ1JlOxTY8A0nBYxexKjspcOJ4Q=;
	h=Subject:From:To:Date:From;
	b=MhAtPqo0JUoNxkqtRsnUcpSrzwpU2srKTUO/bmOvzb2C5BQ3iat+kUvFMsJTdvENv
	 U6S0IiKHMgPOmoglzwPPHyV83Ozt25SLi+YBJJEVPVq4vA9fwHC4QA/9ZUp/r3ZqTq
	 7/Q+6fG+mKpRbMR3M04+igFOQvq+7Kw3a/9OfV7Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1447AC4CED2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB0E33805DB2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.233 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 09 Jan 2025 12:40:51 +0000
Message-Id: <20250109124051.release-5.10.233@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.233
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.233.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.233.xz

Linux kernel version 5.10.233 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.233.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.233.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.233.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.233/v5.10.232

