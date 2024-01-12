Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEE11640F
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Jan 2024 20:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705090247;
	bh=MxwM4WrAE8jzrlAmo46IQooRAltRqmvF1wINB8Kc7D8=;
	h=Subject:From:To:Date:From;
	b=ZaVrlr0JfNHdCnu7KvUUZqwThmFmvxc5yeORvyNnGs3MgcMAI5KGQQC4SehqWKM4r
	 IfG9ilhxmQ+HRUV5Hucx/grkg2TX4k1Ydgh9vqCgJ/tshx8Xj/lzfYJlit+bWSkW9o
	 fNpS7MI0ML7c3okGBa3sMX03zxyuM2c2K8ZsrpZw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B09C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Jan 2024 20:10:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C6AC3DFC697
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Jan 2024 20:10:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.207 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 12 Jan 2024 20:10:46 +0000
Message-Id: <20240112201046.release-5.10.207@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.207
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.207.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.207.xz

Linux kernel version 5.10.207 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.207.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.207.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.207.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.207/v5.10.206

