Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2E6172777
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Oct 2024 23:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728256159; cv=none; b=XGr4GddBbwPR4QwdApoJI0SO0Cp6Z6mF39FqECC9gpHLpxAheMWumGgdty8j3rzTXHmeiGArbRIY7TyQjIvn7/xNBE0Ktwe/rSkzMaNZwD6Zcj9RBcsHrQWg2imW0e4DGm5cWv3IkywRCSeiN4Lw7O/2R+tkmOQRC/qoheZb2JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728256159; c=relaxed/simple;
	bh=RkluxOXMEiGrzfNXjggqOBx7vs47jyGJJL9ByEJjfzA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=e0PP6kKrJsYoNhkl1C9bdzhZsitD32FZcZ6qIwQtFFdmE24hj0CPI8ny+1UWtVFKKl5VzhFCaXVYiNiRU4iUR4hH2o3aVx0NtxIqBdiTn2+UhLUjGZkS9cMZrJyYXEYDqZWL8A9kT8nLfqIDeBG3e9wYupyPFlIBbHb8viK/ZLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728256159;
	bh=RkluxOXMEiGrzfNXjggqOBx7vs47jyGJJL9ByEJjfzA=;
	h=Subject:From:To:Date:From;
	b=U0giErnWVzKlftCfcT/p+2daAktqPVHcuJ3VWzCjObKjqdHH0//PTbV0OQkHePGEB
	 j9HIIKbHO1dHmhxZJZkeTLbeJAtH30EIQrkN4HauQNIlf9svIdi7f9eGWqC/zhMgPB
	 MVmxRy9d6s/93kEb6K8SrhnUfJ/+Lr2/4oacczuU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBD91C4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Oct 2024 23:09:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFF573809A8A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Oct 2024 23:09:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Oct 2024 23:09:22 +0000
Message-Id: <20241006230922.release-6.12-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc2/v6.11

Linux kernel version 6.12-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc2/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc2/v6.12-rc1

