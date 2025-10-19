Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D247C2E2F15
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760884861; cv=none; b=hlno64Pr5lmNpwwM5+qcEaqkupChs0Ta661Zzow+U0lyWPsUWoDVKjuGjt1opbjnFadtOXdyruJdIPYrjFvkUYF7YdHKxhamsemUQP8q74JYARGLn2MPZC+jnRg0bnlcxmv4z7R7oCTNJhAJfJYmETWE7PFc958XAFMHZMvDe6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760884861; c=relaxed/simple;
	bh=q5zdpN40dM9aBmEFVh9EqYUrQToteIQ8jooGvsqaL18=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jOxg1MSxRSAX3hY0/+At2GqhevA8udSrNWJL1+hdyiRWsetDxqVJrbbthxFrf3RJ5PCoswpt2aolxt4HHd5PeIZ0/un9dkifeblr5e9pHs6mvUpQ9ZGrxXUddrhhR5CPWgXQHzLYaooEGzpgAcFFdSZ5bVOE4Wgsg6RouN5EOG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760884861;
	bh=q5zdpN40dM9aBmEFVh9EqYUrQToteIQ8jooGvsqaL18=;
	h=Subject:From:To:Date:From;
	b=K3xmPG8CXuZIvminHlOjXN5QI3uWv5YAavDlWvc5WN1nAtXlsVZQ6VKAufguUBsEK
	 LRvTokR+AgEDHpofGnzOwmz2ca76e9LFgp/TzBRws0oyWB/46jL9JN0qETkE8Mm00+
	 9f1Xbjcf1VkNxyMlG4ilPHbN3FiRYRtWvmHc2MHk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BF9FC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:41:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37ADF39FEB71
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:40:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.157 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Oct 2025 14:40:42 +0000
Message-Id: <20251019144042.release-6.1.157@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.157
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.157.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.157.xz

Linux kernel version 6.1.157 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.157.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.157.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.157.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.157/v6.1.156

