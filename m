Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BFE8F42
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Dec 2023 23:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702249881;
	bh=EwLJBkUhDS9oW+RljfdToC17heddSNBuDY28iGCzHSU=;
	h=Subject:From:To:Date:From;
	b=liSvIXBhkUf85M6DVJZyxtrLm10VUxK/7Ghwnr3ZD3/npug0FUs5sCVjiyLNMdlhR
	 /XxbTxWd4zkQBp82TUu85OIWeF2xnEF2rSVpsvKh3RbBxoS7ZjOXIL1ZZvEWOnswCK
	 JYs+uJ7Z7hUDFgxBUT+hwVkbxvfjfLOj3c3ap/7Y=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16250C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Dec 2023 23:11:21 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EE00BDFC903
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Dec 2023 23:11:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 10 Dec 2023 23:11:20 +0000
Message-Id: <20231210231120.release-6.7-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.7-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.7-rc5/v6.6

Linux kernel version 6.7-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.7-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.7-rc5/v6.6

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.7-rc5/v6.7-rc4

