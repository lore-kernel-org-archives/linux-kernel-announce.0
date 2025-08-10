Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E360A253F3C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Aug 2025 17:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754846863; cv=none; b=aaVH9xUSMy1hE3SyODNgEkP2iB3Vw3aoXImTKAGIw0Q/zzV2r/UQR8EU3z2fI2XiG2oU7jd/S2f0NFvTf/EQvDW/21FwZtBJXcfWgK7zNeAyiMQkWtuUO2kyuHgKvfkN6wYXSihrV9mlxgm1ptzPWg4+vHlBfK/1gcygX2l90n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754846863; c=relaxed/simple;
	bh=DonTE88Z7QsQImHQzPDnHp4TMsDzkOkJ7JGlKBfu82U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eLTWIiZpXH3vG4u1M0W1qcYCZDS3C0Eu23uQrnMFF4q3knVTRKtKDL8c6PD4DbygTDCq/8nX+AKO5egx5hmHJxQhy5kKrzDOSZ3EMPtSLsuGHqZH0y0/VuFCXwYmciEIjd6R0lc4MO8bHPFvCvbu5fWFX8OrowrpVMqOybji2yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1754846862;
	bh=DonTE88Z7QsQImHQzPDnHp4TMsDzkOkJ7JGlKBfu82U=;
	h=Subject:From:To:Date:From;
	b=JgeyN0o0kNop+7ESMBfP2+zPevVNas76y3c8zQEXMv1voZOp5FDAZfLG5SAbTv1xe
	 EWuKR8rQeWxLc4ce4YjPDJmrZwT9FXiHyzEgl97G78Clmt1zuE6kqHQZ8oBtpDKU4k
	 Ls+k8Ct90dJlnbNJZkeXiihHSWdPiArmCoIis6jY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62236C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Aug 2025 17:27:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 376DA39D0C2B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Aug 2025 17:27:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 10 Aug 2025 17:27:54 +0000
Message-Id: <20250810172754.release-6.17-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc1/v6.16

Linux kernel version 6.17-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc1/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc1/v6.16

