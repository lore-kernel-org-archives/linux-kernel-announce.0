Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7FD3815E6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781869828; cv=none; b=ZWh/aIkLvXkqFZeZxserfrTwhXfwWszI1CdzrIKSREC5gYPLG+FNQVsCt0C6BERsgXFf7z3p5Z1kA7De/yJ9OJC+Fnxkj9zzc5k5uewvoXeGMSEKctUtwUaXSxl57bNBAk9vGS7Wy6S0uYr/kQsY51LHcWlBX2uV0q8QLvSkBHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781869828; c=relaxed/simple;
	bh=ELAHaaoc8imBmdb994SU79/YWj6rJuSSPGv02VASvS4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VXLkGtHwjiiqOvgVWqoSHX9PrL7d0tq64XxnzY0vzhYqGDo/MD+OhOF1PoveH8LwOjEkVEHQTsT7mSEKie8tdJRoSE6L0ExoCl9SMm1U9yTeCa2xkAuTUoUJASuAHzYpLDBzy7cMNDqjbrtsMYqKRaKCuh2fX5F9H/ZsnwpO6MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781869828;
	bh=ELAHaaoc8imBmdb994SU79/YWj6rJuSSPGv02VASvS4=;
	h=Subject:From:To:Date:From;
	b=YnoF7hSXZYGrEzYM9daC+CLyaercFN8798vvhf9nIkUEIrtVEI0WioT9CJ3B/e48y
	 wb87S8Jor3R6Yk9NPVMpxKibVj8U51lrAgnGD9dovbR9uaQJvudWRepnvcppWiFIAT
	 MsM9f3unvtZVuwfYyMFnieMe0840/30mJI/cuHBY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CB381F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:50:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 593CC3AA6A57
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 11:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.176 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 11:50:19 +0000
Message-Id: <20260619115019.release-6.1.176@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.176
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.176.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.176.xz

Linux kernel version 6.1.176 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.176.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.176.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.176.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.176/v6.1.175

