Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CBE18035
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705340138;
	bh=8ojzHvBfPOHwuSmXBovLxrhf4HmeAawHIYV+ILjFEic=;
	h=Subject:From:To:Date:From;
	b=IYWADSAtM3/YgA535hqyKKdW/yzgfvhKT9VYsGSfaUriVU6mADBvxMVgCu8DP8JVd
	 pE3LwKANtJK8k0d/XPAZ6uaKdIcGbHas/ZgP6EVG3WtWdrgohki2fvm7ljiK9YU8x/
	 DWNISZmkSelSiFr0Luy969Nr+B+ZJPQ+g8naBXi0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 107E6C433F1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:35:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EB49AD8C9A0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 17:35:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.305 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jan 2024 17:35:37 +0000
Message-Id: <20240115173537.release-4.19.305@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.305
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.305.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.305.xz

Linux kernel version 4.19.305 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.305.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.305.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.305.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.305/v4.19.304

