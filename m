Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34B9D53C
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734204637; cv=none; b=Zv/O0oKsZ9eJ3NzHyqIXzYWzlR68jQ2hDqh9nK/h1s4tk1pcmYiBPGAC9+GRhPYZmP+nsColfXIdNQEi2gykJSOyDnkI+l8OEnBC05WEji8IQxympoL9rP+GPo5XUh1EIyaKUMqnamQoYwh4rzP1JEjg0mwrrAB6y/7rwMkZzZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734204637; c=relaxed/simple;
	bh=w1WaA3h+wq3mII1gSAVSRuNC2uSPY4io92aJinUOmBM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KsZBFqtZ8cMVQNbfLIaC9rmxCOmbYdIsBcPtC+Gjtwi3I8SaR9UjXV3xc1d33RHxgjeyALdpLcZyT2wpON5lsZyaHCEEgIsLCGoB+JyOw00iDO8LWfTqRzvHHAhiixvpNQgPPDb2E6cptruZ6bQQU1jDkzS2qSdT84dkTPs8f+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734204637;
	bh=w1WaA3h+wq3mII1gSAVSRuNC2uSPY4io92aJinUOmBM=;
	h=Subject:From:To:Date:From;
	b=Ix72Qzx/lXcOvrxjend/nDVW+D4Ec13LckVtxvOx4sVpy5LOXpEjW8R6XgBMl6Gkb
	 PBPHDKoWoUapwDsso9xmdpjpwf6qs1Yk8AOraWRbVZfqvGogYX/SsmsPr/ov6PsLBC
	 dbIswy27npEj+Mzn8UnVh/wKKWxzYi87/Z8avFbk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 319DCC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:30:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F05FC380A959
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:30:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 14 Dec 2024 19:30:53 +0000
Message-Id: <20241214193053.release-6.12.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.5.xz

Linux kernel version 6.12.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.5/v6.12.4

