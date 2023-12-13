Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5638534B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702483537;
	bh=sNAPTdV6+N7tsUGkyjOREyHzITPJFhUel58QsKFSNpA=;
	h=Subject:From:To:Date:From;
	b=k/c8Q8FhtuHTCDWz3CoUQ79IBFgkAeHx++LiCTja+3N6shmg1D9Cb3FsHyULIcSqV
	 FOj9v/+zu0v6YAh0HHt+q57PvKGCmp8AwqMdZMuc3qb7CGeFlRdz4ASvEhrOwK4G4h
	 sttrDfKg9QBY+xUItHNCO8ICEnzGzvWn/TTkpr8s=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98467C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:05:36 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 803AEC4314C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:05:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.14.333 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 16:05:36 +0000
Message-Id: <20231213160536.release-4.14.333@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.14.333
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.333.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.333.xz

Linux kernel version 4.14.333 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.333.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.333.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.333.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.14.333/v4.14.332

