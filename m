Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD7A8F4E
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 Dec 2023 10:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1703325648;
	bh=0FR/Fe0lJle5T3SH9kdWxN8Yu4NEJAUDBfxGmn/EfR4=;
	h=Subject:From:To:Date:From;
	b=USUGZ43K0UyHztvRlQ7u+e0KN3Lwsy/eBrMKT6eisQGioh8EmSH0ir21JowezYZih
	 Yj3O5bZqLPWk7vwP/8tda1iTJsdBqqxEq/FjAyoC8r1ztbqOTnSxo7DRZa362qt1pP
	 oU8XTJ8xWbqmOvL4hGfXnUgA0ifNiq1eXApYvooE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC904C433C8
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 Dec 2023 10:00:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id CF217DD4EE0
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 Dec 2023 10:00:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.145 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 Dec 2023 10:00:47 +0000
Message-Id: <20231223100047.release-5.15.145@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.145
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.145.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.145.xz

Linux kernel version 5.15.145 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.145.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.145.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.145.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.145/v5.15.144

