Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42156BA3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jan 2024 13:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704114041;
	bh=uW9zy30sOp6BEpllWyc8MNIVHSSSH+Npuc0RXIqmFI8=;
	h=Subject:From:To:Date:From;
	b=uysbgfFNWKmqNj3/N0T2PrDGAenZy8MbcUZphnSMybsFkhltvATX+YaL97rZEziGk
	 oTtmsXcdncuRFmwd/82TcLnEm5YS1SKg9QjLZrQBakgzsjNN0LjP/Jf9ec5h2VZK0s
	 9E5u1wr3wwy2GultOKprTBkwVk4slD/pU0zvgWRo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9157C433CA
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jan 2024 13:00:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C46DBC4314C
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jan 2024 13:00:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jan 2024 13:00:40 +0000
Message-Id: <20240101130040.release-6.6.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.9.xz

Linux kernel version 6.6.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.9/v6.6.8

