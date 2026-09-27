Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AAF356757
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Sep 2026 21:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790543611; cv=none; b=g54U3ax9pPNrLeY9eXNrqrmD5A0uoY/Vej/zf++lS2bAKuT/z4SaC1Hbur9cVuCY0k1SyMFayxfFO6baSIAledIpI7j4pVbQJPkwSwz/lLQKL4RQ7od2BD563K3G0dNsgEgXNpB3HXXiZY9EGSmnYTjR01NAElwASaBvcly7doQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790543611; c=relaxed/simple;
	bh=3ZDPQQL+OZmPczW572d5aU/i7TfdCv+qbS9RTktXTKY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZKLE9x2jDEJTi5m2z+sfJzfG1FiIkzgI8ddSXmu1HwXNFymdM6henLGF4QY5U7K0XE/Lbjj1GsX1f3JT9qh729RSYwtGx+ykkkPKgquxdlNiIoKQ7QuEKIfpLkk+m7x3ECw0cqdTOKBJwapnEEgE/eNqR8O9WLAG//UwRZgj6C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1790543611;
	bh=3ZDPQQL+OZmPczW572d5aU/i7TfdCv+qbS9RTktXTKY=;
	h=Subject:From:To:Date:From;
	b=FtURStxpcayxJCp7JctSJyAXvQ//IoJ60VJouV3P7P4Yrei+vTTy/16IBe2Byb+vw
	 GE4rQSD7M4FdSFs0oZQ5wxGuVALp/V6sajLfMXFW9/VvweRavB0N8ciMEnj0Uko88j
	 m3Uiyl19Zs/vlpp1u0VKUhPBob5g9ZY0/X3S3yhs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E18BC1F000FF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Sep 2026 21:13:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 96967380AA63
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Sep 2026 21:12:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 27 Sep 2026 21:12:15 +0000
Message-Id: <20260927211215.release-7.3-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc5/v7.2

Linux kernel version 7.3-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc5/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc5/v7.3-rc4

