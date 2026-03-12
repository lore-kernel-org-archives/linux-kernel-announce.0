Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A302D7D3A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315923; cv=none; b=XW1OJyutiOUeksFMqLvMhjPMGMStaY2HJYoGJobq7iAuHGzLOxnLgKi7ScsIISGxGvfxsXseOfZ6Fd/sIaPuhJR6oe0JNAthFglDJCDx12qYxR3dtUdY1pz4Y4zDhXgnc7+Dfc4osFor/xO/ma41MrWhbMjPpdF3jHynT8hvfjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315923; c=relaxed/simple;
	bh=me6vMcxaDBgy1ULw6UZkI4xOr+kQYausJh9quPAwTEU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KoxCnWJKQ2oLh+Xl3AzjqoZPU66BIJ6o+jycso9XdZhu7Lf9IYpsRImpe757ossZrUOFgfK+/M6NaexuFvnJZyoUEQyl3DWziZATmSf490T9i8hYrgFklDTz/Cn5hl4WjK2Y+FxB2pAJXHf1ONUhX+qm1m29Jv/tZQhbXUmuN2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773315923;
	bh=me6vMcxaDBgy1ULw6UZkI4xOr+kQYausJh9quPAwTEU=;
	h=Subject:From:To:Date:From;
	b=YrgU9mqtGyFNiMYoULIhiU9uMQWhlfYRDVHeouog+y3/OUnvD60hoBXmHywcOPeR+
	 dVg34zQaS+jTh3E2z+gG/JS6rp3HI5E4odnJ5VoN5UW7zxrXvCyscWW52kmqLPB4AL
	 B2waCrjuPGZcK0kyz1J787hNkj3VpbQ4kjQYBwhc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 802ABC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:45:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42B9A3808200
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Mar 2026 11:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Mar 2026 11:45:18 +0000
Message-Id: <20260312114518.release-6.19.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.7.xz

Linux kernel version 6.19.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.7/v6.19.6

