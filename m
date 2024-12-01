Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CDA10A3E
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Dec 2024 23:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733094497; cv=none; b=DVJHgbDhleZXVi1cToVn09r08ZQuBS1BXVI3S1M2+6JuIRAPoKuXFAZZCU1Y1LITqN2Tu62AH/WLGBaDO/hZv+4QfmeLzbqcWFjGgv9b1TVD6w3JJp9jUgWml7mxI1AaG2g+ylo4MC7fLSFIVowDDuXZ35fBJeqwivh4N0ngzBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733094497; c=relaxed/simple;
	bh=WGXw996GjMfbIJniSDupISeU5w9YSSGPSW+ZuzMtYws=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VmgbtXU+Mz0MBflWCvs9PXgzgOqIFp+GkSgxKU4AZmaZ/THNQ9iQnKBUt0gU1jmnJza4dcOl5HS4Tm8lo0k55Yx7wcc85sqeSIJPxqGXZlYpxuBsTnkddmp70tbrCTBCiC6b+hNUa0iu26wfpdsvCjAt1981GO72642f2MR4Djc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733094497;
	bh=WGXw996GjMfbIJniSDupISeU5w9YSSGPSW+ZuzMtYws=;
	h=Subject:From:To:Date:From;
	b=glpGoVsnXzYORULdZSyqxIajQmoAfmR3QkDXB7BJB0Cois6yedjAYFVyPXZESSnae
	 1Z8XTtJO2UnntBBYSk7D3bG9yuKCxpFrFBqFxhtH+aP5Zs1EvgnewYev3YHwetPPAn
	 LD5/dCNBYkmQZjH0L/FzmsU8sRWBml8gTFxLbIco=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75192C4CECF
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Dec 2024 23:08:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7851E3806656
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Dec 2024 23:08:32 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 01 Dec 2024 23:08:30 +0000
Message-Id: <20241201230830.release-6.13-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc1/v6.12

Linux kernel version 6.13-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc1/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc1/v6.12

