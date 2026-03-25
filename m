Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F573B3BED
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434631; cv=none; b=I0HqFOmfyP9HEzFrP+FS6sESZxKxIvJUk6/+4EOtWu5ch2DyXhskkiLPlC+zrj19Nsz9cqxCHAnW5C+nwK/neBRnkzah4yT07oL8bpLeYGJXrRHQnoxmyOe0+0eyd3DwBRwXI9QRgU4/IFdaAxy4ylFSr5IIic/60CAJH3WCKcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434631; c=relaxed/simple;
	bh=38UZj+a2KrMOyfVJJzmHdPKOk1THcuJ7W02y2BaJIHk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QbnqFGTzaeDZYTtmugSalqA2SkEbo35ezZ5V3+WpRyHcLh2uTZHHtQ6xeSAj+ZdH4dfoP0rSuBK0Tt1QTpTLz24FqvHhWa4EP7mdMNsNQF10qrjbhQtySXjVGsBFSqlWtfd4+Nb2ySBWRVBJM3mLRVW5VOnUSZB5PrG8VNI+ffg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774434631;
	bh=38UZj+a2KrMOyfVJJzmHdPKOk1THcuJ7W02y2BaJIHk=;
	h=Subject:From:To:Date:From;
	b=vA99DH2qVvHX5iqSFuNjvKzs3HT30+EFJy0fvboB0SiiJlbX7oZ9HYXzg1DF8nBsY
	 SUud5XVsgEWHCTBKNyq6M8OLLaM4ptZxkY98G0KRUnGzZigO1mVExPmcVdkdS5gjEB
	 VgvuXn+lDP3LEfdDOTrc7cNsrnZbCnugYgkrjCAk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78265C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05D0A3808204
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:30:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.20 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 25 Mar 2026 10:30:18 +0000
Message-Id: <20260325103018.release-6.18.20@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.20
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.20.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.20.xz

Linux kernel version 6.18.20 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.20.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.20.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.20.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.20/v6.18.19

