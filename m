Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784F3171CC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jul 2024 21:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722202058; cv=none; b=QP5tfpRc8d+tzUmQGCZ8ummxDdRueHzpOLQ1kiVnC6amCOfkeKqRJ0yz8OgU9vWB1+voE0sw8rTtT9VTOR3rNcCa1CU+MppybVzsROdNbhe/xz7hMb39xxa696wNuwMyxVJh2lq3WMosel42TYXCR+u+bnwER/+akiMoEH8Llf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722202058; c=relaxed/simple;
	bh=BWOtrvZgEsqe4+ju4KXoL+/+WoYijLFYrWcn6f+Zutk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VXBlbDSHANid4flxnoCOczjYCflc7YAkkijW3IxvhtY1CMlwhGQpuP3SMtgico+BkubrHjRTrouw5LJyjfEzDTc3VvD+b3Z+hI4cyDveQlcpuAUSbmNTyuDE570teqyG7Db4+NjN7ESWv7E2dWpd0GedceTknFl0fes0vw3t//s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722202058;
	bh=BWOtrvZgEsqe4+ju4KXoL+/+WoYijLFYrWcn6f+Zutk=;
	h=Subject:From:To:Date:From;
	b=R/DigtL7yLQS2nxoj6dOPh24DFOm2DTgPtrvRqihHF6dL5RWbc/eyA07TcaxKWXMk
	 uaLb5o0KNCJO8ynNLkDrjD+gqMbvHnA+mYK70LEzgKwrREiie9HOrtJa5V4sbgDufR
	 6jsZcgZ7IrXH2IzNpC5pfq6Z2flV1PqaCPI7fpdE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13F35C116B1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jul 2024 21:27:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 03F08C43619
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jul 2024 21:27:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 28 Jul 2024 21:27:37 +0000
Message-Id: <20240728212737.release-6.11-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc1/v6.10

Linux kernel version 6.11-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc1/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc1/v6.10

