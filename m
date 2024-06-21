Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619AA15531B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974846; cv=none; b=FvwfT2DfgOYoRdDFLv1aiHq2rZagNjUmLlN+G6ckRtJuNKzfuhTUPKQ377Q2wDLcBaYMEyGnHGyi1lIdWlneltbv/YFA2tqqjZB3XB8icwhNw5wjoLKuW3cBQDG8rTK0lJoR/k2nEgkcnljodyW+ZYv75OjF3gr72O2xq3OZy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974846; c=relaxed/simple;
	bh=a5G56O2pjSH1Lii6wx+yS33nq4zMZnV3YHKwGN570Ik=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RWI0NV7OPMLdupl4Q9l1roU1rjIGXBjbyG8TM7qCCNfF8mRiTwYHwfLk/rjnJgDYJtdk6yRuD78euHmzPkEpq3XVvfYfu/UW8EOZhx3JB8p8YizkErlFPlJTImpwVCIOnmhGz94mBCtm8DM7x4w0SvS3sed2tgkFah92zYU99IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718974846;
	bh=a5G56O2pjSH1Lii6wx+yS33nq4zMZnV3YHKwGN570Ik=;
	h=Subject:From:To:Date:From;
	b=l8tKwa7Nu4/iyXarIKXX3Oj2IFJiQ0CsIwY8bbhMh6dybJKYta94nhwqdZsNRQn1a
	 edYvKOlbJiECtjxRMMopwXe98qFGIzJQrHcXq8fWRMc4KK0Wi3k0L0Jc4MTbwJh/Z2
	 /ofwQk7mq4upxhph0SYGW6NRF5U0jFMBcStfJZh0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00980C4AF0A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:00:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E32D0C43446
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:00:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Jun 2024 13:00:45 +0000
Message-Id: <20240621130045.release-6.9.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.6.xz

Linux kernel version 6.9.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.6/v6.9.5

