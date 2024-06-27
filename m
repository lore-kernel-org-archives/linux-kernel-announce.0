Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3812A13E403
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719490543; cv=none; b=QwuGuOHViQEiU1lW6XAi7ujCfp/Z0/rirptFv3jP/TSA9x8IzB+Yf1v+QDZGT58fHPk4c5ai0xr5LObIx6JqfRjDZr4EM5EyW7IRqTxJor+mrDJwzXYUO/uS5VsEqZJxUZ7jPjfFVwdDvusw8cOWx3Hc94PWOJ2EbcrpMjsDwjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719490543; c=relaxed/simple;
	bh=99g5OVli5pRILOvDilpuqxY1atFYCDd+Pa2FklpCiNE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NV/PvoSRAKkprub05NxWGLmrBE57pN6tLlMraybQk4Fec4wR09mcJLSA22W6OVEQVAxJOFLghtXvZo1J0LyGLTXqY+z4u1o1gLoqEvFApWrQaX8J1NdY3kUqHlzAJBxU0/C4SpMKUCEaIi5SwqUecCRM2vP3FfMhc3ZjRwknyY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1719490543;
	bh=99g5OVli5pRILOvDilpuqxY1atFYCDd+Pa2FklpCiNE=;
	h=Subject:From:To:Date:From;
	b=X5bEvikS529nGCTFDSt1PMemzTsj0h3nJPzE6t0yLk9TS+++DGL1VsJEkzBItCF7N
	 0qKsofMMf44GOI8xOrR9liZwR1Cgap5z5jD/o2+IzeX1nCWVKxJyVbmYIxTizTz28c
	 cWpbpeFDfENP0pU5vf/9zgXNedwwSmJlgyYKQE5g=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0926C32789
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A6BA2C433E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Jun 2024 12:15:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Jun 2024 12:15:42 +0000
Message-Id: <20240627121542.release-6.9.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.7.xz

Linux kernel version 6.9.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.7/v6.9.6

