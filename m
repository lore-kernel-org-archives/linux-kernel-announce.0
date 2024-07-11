Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA62157A55
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720696540; cv=none; b=KqJ5MghoMGYtdTML4CdQD7JwPgQx/SeU3kzNwRID5BOjikRZrwQJnj6IgOIlwjDIuHnGiyB9FkjaLj6cY4sLi49iA2MNkCZj0vQeHP1kbD98HjN+YIYNOV+7NhVbwA7xHu6F7qU5StIwVBPG4DPce1bCaZtj2/2qqnG+cC2lqGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720696540; c=relaxed/simple;
	bh=WaZSvY8ZarRfKrficdmgOj9h8cpNnrcbKDPZih4QyXs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cBPka4S6qFMJO71L/3vjYuHwuf5SuZEDLllCmYqnYqoI/oqn5HfKyutMffw7D9EEhhAhrKDxjmuj+pbbL678jxUNFJE6xv58m9T4+jNBVwuHfXvT1OTZD8w285vpj1T01wAFBO4/wLBPoyzdhNslSQJReHrTNjYO21hGyQ9yGv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720696540;
	bh=WaZSvY8ZarRfKrficdmgOj9h8cpNnrcbKDPZih4QyXs=;
	h=Subject:From:To:Date:From;
	b=pttWrMzyXE7pc2B+iQ3Pzdc1+ymyUElNl3PHV8Y33kEHh1AwYzjX3co/mzKp9xd2/
	 8j8ObhsDFqxJX85ZEl4NFU0z8H8bDAGQOeA6AEzXrKzErTSPvmNeeDKIY5NEvecYkg
	 5XiJRcE+aqWAZ12xYtXOiAPPm4J/ovNstFm1KYbc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3ECC32786
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:15:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 60A47C43153
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:15:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.39 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Jul 2024 11:15:40 +0000
Message-Id: <20240711111540.release-6.6.39@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.39
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.39.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.39.xz

Linux kernel version 6.6.39 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.39.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.39.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.39.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.39/v6.6.38

