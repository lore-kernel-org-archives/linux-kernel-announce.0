Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD1A30E828
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789121485; cv=none; b=p5wLaxxsGFvqRYiU5xBvSH8kR38+sspJB8FQT2Nl9rFdv2xaKJb2jNN7jREXZlAd9O2EwZFi5AgIpZyT4uQd67PAr60gqTBdUyrpUFUJEw8UWEcsVFLgFvpWCYvJ9k9Cn5Doi3l1/tXfm/XnuG7YNyFlWQagN3+V1mjA+GEx65M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789121485; c=relaxed/simple;
	bh=HoCIfTv5vbARSBpj3OtAscf51WBmH74h7M18CeDqxfY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=L0l7G4MFtVGSdlW6eoMlVEAhycDd3RPEiqPf2wcXqoFDWCbMXZ1PF8YHA79pgFo/AhrgEfLqcL2S5Z1mtZAQnp2t0wMcqJrNu/ESoSwz2s8yiWXyPZxwCCICbMMyVxZW090kfZ89/tPyi3bCHDeGtDP9ZafNJro7fvG+M8ciLus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789121485;
	bh=HoCIfTv5vbARSBpj3OtAscf51WBmH74h7M18CeDqxfY=;
	h=Subject:From:To:Date:From;
	b=KbCxNBiJaYFo2rRBpg3J3LhHhDnUiF+0s3Jjfvd1VYxsAnHzwLAdwYG7FZs8VhHsH
	 xiUVGc2ZjTV9kkDfW9cs/hmHOJ+e9TNRDQNaLs6+aRcQ7vugiQ/TeIq13bYdCNTwGS
	 Iwl115PzOMnhvvT/SucYLOUo6dKPBBYE66CQWKD0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25A501F00893
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:11:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56950381196C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 11 Sep 2026 10:10:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.51 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 11 Sep 2026 10:10:21 +0000
Message-Id: <20260911101021.release-6.18.51@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.51
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.51.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.51.xz

Linux kernel version 6.18.51 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.51.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.51.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.51.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.51/v6.18.50

