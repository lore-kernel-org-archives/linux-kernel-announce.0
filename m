Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D1D3911B2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787156797; cv=none; b=acuhY2Q27Zl3eHyVhuutXG8q3BfPteFEQYW5bInuvARQy1hjs2TKrY1PohhREwxqS5DY1DCGmxglm5gVELtPd/ylatSkF99K7s/z2wfBihnIPD8xBVL/RIrBSrkyyVwqOHd1YpgvuyPDj6//TzCYegM/ddhJx/EScTg/XeDZHco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787156797; c=relaxed/simple;
	bh=lqRRpPg+xRO2nmC/pKxl0zfBeCHCNa8vqUITDz+3BkQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Hdh/bPN2SiS0PAkbrd4aMIJkqdFzKLGwanarnS20mDf/JCtr5yUmc71WSfcjJkADcjQgCpT8HsmtTmCErKqAIWWwlOi5djsucHD8oTbivGv3vmC34hHMailtzLUhsQGoUGVW6JxQnmNz5glOwixg7d/QK5J4oOmIADUThxVi/Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787156797;
	bh=lqRRpPg+xRO2nmC/pKxl0zfBeCHCNa8vqUITDz+3BkQ=;
	h=Subject:From:To:Date:From;
	b=ABnbSjtvmUqIY6jsCwNEd6+JmoWGOsk1x58aYawICVVdQaylDsNvGAavVei4NpT8O
	 O3fMhwfS0YqjTkxFb0qnczhnEhkbMq1DieByesqAOzeXi8K3O6vkXUGWTA5HdxPJl1
	 5uhBQc5Y1BEp1gN/lN9ohHV/8j7MDzyCOpLMlhjw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA67F1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:26:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C4AF38119E2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:25:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.152 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 16:25:46 +0000
Message-Id: <20260819162546.release-6.6.152@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.152
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.152.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.152.xz

Linux kernel version 6.6.152 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.152.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.152.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.152.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.152/v6.6.151

