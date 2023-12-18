Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB6D1840
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Dec 2023 00:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702858372;
	bh=3Szrnra1gkpqVsZ9peDJAqmXQWXhot06Jr1dL6d5byQ=;
	h=Subject:From:To:Date:From;
	b=UPlWduh1PQGid2Axsdu2EF58g6fAdJK2BDuvk84mg7r5ApxjMB2fFkOHBzk7zI3zM
	 kAUMSMjlzQRWzfrZnhiCn9gK+Smnjgx7XiHyRql7malWix3opDre0Vh1Xqe1BomPwS
	 HEm5bYXXjTCOTHib0xhslKY+AEcYefO2SbYa/DK8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8D6C433C8
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Dec 2023 00:12:52 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 53606C41677
	for <linux-kernel-announce@vger.kernel.org>; Mon, 18 Dec 2023 00:12:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 18 Dec 2023 00:12:52 +0000
Message-Id: <20231218001252.release-6.7-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.7-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.7-rc6/v6.6

Linux kernel version 6.7-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.7-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.7-rc6/v6.6

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.7-rc6/v6.7-rc5

