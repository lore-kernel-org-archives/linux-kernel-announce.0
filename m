Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCE26AFC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Mar 2025 15:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742829910; cv=none; b=nm7GqRTXDJTIoZV41/3w2NqP2n6Qqf+PGVSraVH8rHvW83Cr6+W0gCQxsa66V7UVrskzs/LCD5805SjxgpRn5gidvRKS+GHore9eIaTkcpN0PWuLk3sHWxu8HEVVuKYHf/nH6bsI5enVoS6U1IcWhBzEXQT6XdLORMQPQBdaOwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742829910; c=relaxed/simple;
	bh=ZwNINs/57oXtXOo7pr+Zzr3jCiYh61jThvl98mP3oA0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=s2QCdjpek87fS0jEXoDDkO9pEFODMVhkB8PqbUThxPUhtpbeUvQFg6PzYxcxi+DUYei47xaXBhnfik4H/+xhmuA9qy2JdE78NkooOlbLwjsCDmtH55mjOvMSgsBue5Oe8jqBSpLzhevnPsmANvBTfedT2/VmakdHU7okT/75h1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1742829910;
	bh=ZwNINs/57oXtXOo7pr+Zzr3jCiYh61jThvl98mP3oA0=;
	h=Subject:From:To:Date:From;
	b=vurmo8JkoAXgj8cB7AbNku+xb515+b1r8xAZmeGH1780Lm91NR2q5YepFjDbkvjii
	 k+MWeg+y9Mbj4eFLY/6fQocORgfimP0zQRtBoZBtNZqHpKCd6ZfMfC6Z0aj75LyRX6
	 c4CfetouMvlaO0bi1vt7sPFuSWz/2JaPijstrVIY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B06C7C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Mar 2025 15:25:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFA60380664D
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Mar 2025 15:25:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 24 Mar 2025 15:25:45 +0000
Message-Id: <20250324152545.release-6.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.xz

Linux kernel version 6.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14/v6.13

