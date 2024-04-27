Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1396623DE
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714232145; cv=none; b=rtxMYRIFwd8Yv0zL2Aqzbc67oPM2CpLSGgFVOguzUO+4AZsi2XD6WKfD7MhNvIBIfDBvbzYrPYnIDB8vLBdnab27N2iMPp3yvYeMC9lanLXdjB1Uas6QbzFjsXglbSS4VCBMnkZCplXr71sJvTlw6oP6qHw249slqor/nDuVzew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714232145; c=relaxed/simple;
	bh=HVQyIyAfwcj+jlAd92JOmYyx/WvoD9x5NLsLtXyeahI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AUpr3vKVjOwpmRqr1Gddlidxv3jSpnWe4n8swu8aI7AVAkkUAQAn32ZbDifxBvn6CemuB4/D1wTIEOQyTOhscEX1XWSSoYp+IPXGSl/Lxy7yszcwUYOuLxim9ifOebiij8pX8vYTberdj2BHrlyPswEsZWSKkWMy+9piGLjBXsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714232145;
	bh=HVQyIyAfwcj+jlAd92JOmYyx/WvoD9x5NLsLtXyeahI=;
	h=Subject:From:To:Date:From;
	b=Nn09DppGG/Z//ZRi+I+OcdZnObnxb3BM3ceLer5JTZQkU+ppehh5mVLPfNSKyHWlY
	 xC5/JEyJHyiP8mDSmFNtjOz6CL/U/xfNETreVAn/XXWeSi69d7nPZCW+EgkiWTS4Rj
	 nawT7HLX20H4OV+IgP8aUAEfM74mqKZRX9x9/RvE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE55EC113CE
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A6014DF3C9F
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Apr 2024 15:35:44 +0000
Message-Id: <20240427153544.release-6.8.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.8.xz

Linux kernel version 6.8.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.8/v6.8.7

