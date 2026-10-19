Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3DD45FFA8
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Oct 2026 06:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792389626; cv=none; b=Ls+UmE3PKpRAnzXRuBENC14E5NuPCsGhwcOeYoEcMHHEvIgvoj8CDOObitYoSVsfbQMzrm0PWx2ovXkMTlzJqXUF5cuKMhT+Rm4tUpjwk7pZ5KWhCdNW36Mb636gwZ9ON1u02OwdVWE0D/Xgxpit2Y3OOJUBQgqXw72HZalY0lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792389626; c=relaxed/simple;
	bh=AIoLPg9Levx5pGxeSK6Kw6RISlbPLQCEdM8ARp3sjEo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fu+O7pe2zTBEL2CvOypQvsgHMl06ZvifvR69z5SjMK4oTUZB0I9zkJyc/sZYYKiJ3qa2n9d9Y6GaKB82FRuDeJD8eQN+DxMsusOwWR1OUMnYTA1uTzy3BCqofk/MEUhwtcKZPIonTpJjsL41OKykKs8xbnqma4ycaR8xwVlexP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792389626;
	bh=AIoLPg9Levx5pGxeSK6Kw6RISlbPLQCEdM8ARp3sjEo=;
	h=Subject:From:To:Date:From;
	b=PJHkhJyeBA3QV3vusypCed9tDXDHC+7S+jkeEGAX/WLoLcioCtFaieh8UUWcAVn5U
	 KddTo372Fd5GCsOzxMYPtgjGpF1hvPZbnLst2+T6OH/sT/pEwtRi5Tp2H0YFoSa/wU
	 YR+gjdF9RHlQIZ/7gHcqndPAaCqbX6uF0ZajgXCc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AACA1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Oct 2026 06:00:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3CE59381196A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Oct 2026 06:00:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Oct 2026 06:00:22 +0000
Message-Id: <20261019060022.release-7.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.xz

Linux kernel version 7.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3/v7.2

