Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AD83783B4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Jul 2026 22:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785103613; cv=none; b=MzhmrBOm5hrILueOaiDmrL+OkT6+5gnJPti4kagUJTXk3VGKfxpx6vuf1A0ISJ1N4+f3LwUC88br8+svpEWWMpAV0E96OWsjvEApUOx5R7rzqSKlNuITjLq2qOImy4S1KwdpvsNvyJtnuiE7IVyrPJhDqYbAHhU0s9r6qfeMPTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785103613; c=relaxed/simple;
	bh=1QFNGBOfCNsqSxXejtgvSsYrqNrRU9Xu9Ltj654OWQ0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Thlk3f8D3HTbzIPGGf79U77cNNT82CHxR/F5XNmA6nd0YzicqyD7myQK0rKGZF0zUd/bkCE0xHz21LAU1LaaODBaMS9t0qkdsMfv+IO/UOhJgJYm+izaz3hVUdFsCVwrJY/fOZBbvPFHuJKIzKFWujJzFUsQhd/UJQ4dfz/B9BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785103613;
	bh=1QFNGBOfCNsqSxXejtgvSsYrqNrRU9Xu9Ltj654OWQ0=;
	h=Subject:From:To:Date:From;
	b=sRraeVxN0ZEsIVjCMUv62qsyqbn70TVQ/Pz3RDIJjXnf2rTj+5oLaTyk6RPxW54Ly
	 MeOaHQrkq92PSS9BVEx4GHreSEej0S91LNZMdRRU6zwetM+S3Xu4/7G8Eu1niG1X5n
	 bfISlT5J4T/P+IxdV6fBYUq/DHiBajQ9/Q3MpX30=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4EC01F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Jul 2026 22:06:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D359438119FB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Jul 2026 22:06:18 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 26 Jul 2026 22:06:17 +0000
Message-Id: <20260726220617.release-7.2-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc5/v7.1

Linux kernel version 7.2-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc5/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc5/v7.2-rc4

