Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C13BE47
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Dec 2023 21:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704059182;
	bh=FTTPeP6Sc+dUr1jm3NqSFupUNascddTP5axV/seOaaI=;
	h=Subject:From:To:Date:From;
	b=nivs4ugu+gVo/+L7xiPdfOF0E6DS5TGUo7m+LxwXN8T+QXBMu2BWT9ZUO8lBdmTtf
	 Zw93eD6wVIx7CUWBnudrMLS/8P9tI1NU7KeDIcH+uE8dl2oGFU+m8N9j7Hlrmc2E0R
	 b4qYyiPx4QsE4NK4aNPbUsFsyRcjgS7hwsKf2RfI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DA3C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Dec 2023 21:46:21 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 65D1DDCB6CC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Dec 2023 21:46:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7-rc8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 31 Dec 2023 21:46:21 +0000
Message-Id: <20231231214621.release-6.7-rc8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7-rc8
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.7-rc8.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.7-rc8/v6.6

Linux kernel version 6.7-rc8 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.7-rc8.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.7-rc8/v6.6

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.7-rc8/v6.7-rc7

