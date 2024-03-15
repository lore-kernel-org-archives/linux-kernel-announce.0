Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BDF1EB2C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530145; cv=none; b=SP+XGTsp3p2q6DqMAZBbnLOM6uKPvkkQdYnra05QZAsaVtJwJnoSnnN3eofaYgQ4+o+9fz+DO2v5Ob+ydFCp8nRf8uWGIfhnN6zc+3hnkzB1Itq3jDCnwQS38O4zB3EyYBEE+DVBMv2q5VEnkg+JWjlybZlyUlmFQMBJK0LgBtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530145; c=relaxed/simple;
	bh=cuHhHwmDjFCWQKRV25aE9cvdVxzOirV5fdFxZRiTgAg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Q6lvvbyBt+oBGeM2dmLmwLL3VvqYsAEM+jmh/lsJXEUWqL5qtVpaaEJUWKnu2UUlSjGWIgK6J20qlXj98xpQJh2SNz51SH86hWmuNak26YKwgtGyBdo9kZLOAOwXrkD44LfK61bHowG0OJ7lh+5axD5/Cr4Vwy8f8AC4gT/FoX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710530145;
	bh=cuHhHwmDjFCWQKRV25aE9cvdVxzOirV5fdFxZRiTgAg=;
	h=Subject:From:To:Date:From;
	b=Yh9EnhVEIgaiHllV5dLYPhceh4yLiyrdWUgsZmRXobTOIQr5QENsiA7vxRUcq2p2B
	 04BYR4fmXLqZCgedy1mB/7JxiPDVlS76igR5BaXfMudp1XewIVEoQcMgN5rDjt0yQu
	 0cRk7SlVl/ZsEBGuwg3nQrJdLHZ90EL6Ksg1AqqI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0985CC43390
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EC359D95053
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:15:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:15:44 +0000
Message-Id: <20240315191544.release-6.8.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.1.xz

Linux kernel version 6.8.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.1/v6.8

