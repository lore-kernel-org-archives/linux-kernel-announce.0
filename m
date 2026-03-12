Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB0D3A0EA6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315624; cv=none; b=SNJZ+ToVSForjpTcXC0axoUdi+Yaq9iRWoa+NU8sOx91OplxjzVVP4IyrHFuhyQqhjTgi8GDhKyl4pIF/+jypRjYj+s00q7IXz3zRmWr3+YczCdyVZKWyh+Ayq1nvrLPz5Kvld7SdWz8TBUhryCNB8WZ/EfhtsI4qXHWLe6SrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315624; c=relaxed/simple;
	bh=ZHQmOmiITsyYq2uj/rGzl5IOvVmrNrsDmE+gw5KHLyY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=G1zRWDHOYCQeA79P3wVaPTBCAAaxXDe8gME5njym9/Vm6sVQKiVe/XQBhwHvcALQ7rXCpFR/wMtMB+q0UKshAF5TbnFjmiJ5KRnZh2WB/E/rsE1Bjyoe6GXFf08DAwz062LpJ3HYc/B1u+W6WGrv9hLrNP/LV7DCGC6Sph9G0HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773315624;
	bh=ZHQmOmiITsyYq2uj/rGzl5IOvVmrNrsDmE+gw5KHLyY=;
	h=Subject:From:To:Date:From;
	b=ArL7W8CXPaVOSPWSKob1lgSwKnIFPHsiWGfCxAdCZ1FrzX9zG6WTtUpjlp3KEKXCN
	 ZD/0tr0wgBofL9z44/pe54RplePXQI7rpdvjeFMnEMjDaS9gX8zxegogJixnGcxnjI
	 ClUVV7Sj9v67OXumHHY+TmGiPRm0aDFJEmOIYioo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FA73C2BC87
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:40:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4001A3808200
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:40:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.17 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Mar 2026 11:40:19 +0000
Message-Id: <20260312114019.release-6.18.17@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.17
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.17.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.17.xz

Linux kernel version 6.18.17 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.17.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.17.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.17.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.17/v6.18.16

