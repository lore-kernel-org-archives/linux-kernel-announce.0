Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB8D749A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Mar 2024 21:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711317027; cv=none; b=oBg5oX56ugKLjZsaq4hSThb8Pp2qmDG1MtTW1QW+qRX7RAed3JouK7JaCyM8VJbHtV7+KElgW46WpvSwuKbYJFCbyqncSpXLHUljErW8Hzj89C7ltD6AYjGgvqcqD+Uul40mcNdb67vrcbOChWDlLhdlOucEcYRbDdOOCwwIt08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711317027; c=relaxed/simple;
	bh=m5gYzmxjpH57jWU8662a4Iy/QNRl1YN2G+paUMGGqfQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uVRdJOFud/T0LDg6awHxRCwdV1cQF2jzUNlOO6bM+53ZTSvGCfQGYRKbNiNN3U8LtnrRHLsrNljOcns+nrTz38h5G/NWjKXgsRGY52k0y7LkB6CkUCXNga2qiqJNyN3l82Ab3+F2HmuZxj86ZfDLIrj80RWItR0sTSa8s6TcdEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711317027;
	bh=m5gYzmxjpH57jWU8662a4Iy/QNRl1YN2G+paUMGGqfQ=;
	h=Subject:From:To:Date:From;
	b=CLMQRvaVMpSBRZ/iDQXAxoDoyj8j0O4Zo6flDz7nxOgAsEMMTnzfScVWUVEDisS9I
	 HSwc0xMKY2MkK/H+I1MEFLatzKsI4cLSHQTe+jA0jqcpa1x//+VwzAyc2eYhqSaxxE
	 ZieAdbhIJvmqomEUbsePMzyeQ6xE3B47vNCivcmc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39EFEC433F1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Mar 2024 21:50:27 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 27B31D9867D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Mar 2024 21:50:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 24 Mar 2024 21:50:27 +0000
Message-Id: <20240324215027.release-6.9-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc1/v6.8

Linux kernel version 6.9-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc1/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc1/v6.8

