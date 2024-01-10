Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4354CDE2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704903938;
	bh=NAHllV5aGQ/6/1hjOc52ONYPqzIi6DZf6Qb9tIlxAbY=;
	h=Subject:From:To:Date:From;
	b=qP5nNeioG2Q1d7NEfx0Sk0vqOvadisPY4Z1ef1HBac8iL1XlVMHEaHRRwSh36KiLK
	 7mh+HKrRlu+Aqw4GIVwMrmFs8mqD6Ym/qBAg6pMomMo++NUQhv3NLWs8oHUEdO52vE
	 jYLqnxu/cX61oNS8D37vt+44aokNpYR8uzs+oWaE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10484C43390
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:25:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EB741DFC686
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Jan 2024 16:25:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.72 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Jan 2024 16:25:37 +0000
Message-Id: <20240110162537.release-6.1.72@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.72
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.72.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.72.xz

Linux kernel version 6.1.72 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.72.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.72.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.72.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.72/v6.1.71

