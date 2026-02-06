Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E0242D76
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393023; cv=none; b=JbeMhgatpsSNHzPCDT4U/wOdC6e0yMFdrDdJ9D4YVt2BOvodyrxbP6uG8/0f4XdVuG7fZxO1K7cEZC8xVtr4mSI4hLXaxAA8QwOKJPly+p58EjJLxAho1m9vsURhNkaTH7csit8+dz6K0x+H4PoYKlmqoeUar/9PJodJBrYbHTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393023; c=relaxed/simple;
	bh=aFcUv+UCSxco2ph1JCbiq50Hjp/DFEk5TX6sNX74gSc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Fz789GbL17OUpvFyTrS31zz2tdZkFmZJITJhbhIZUJlm30kR4M8n0i4k0u1Qb6N/ia7F/s6SY9fAn0M/fQTy55UKDGn1rD3rPzwZ46Wo92c6KLGSR1KCCcn1gRoill5UZGq/KV2LdDCgsRw6pcvPnQNKaHAjgquc92GKkjh3FXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770393023;
	bh=aFcUv+UCSxco2ph1JCbiq50Hjp/DFEk5TX6sNX74gSc=;
	h=Subject:From:To:Date:From;
	b=DLGdBAmKTM5pLSS6Zl5M/xy+Rb/Lqlokg6thRJW8dOmLkTvA37NpCF75Fe5nEeBow
	 qgzpl18ILk+y5Ypw3+Q+yVmhrJTaQpA4We6bgqKxTm3uPc2Qq7H+VFs3khc3gWeKCK
	 YPiClti9Ni5gp/nLMoQR74kXVXrOtV8pj81K/cXA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA52C116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:50:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4A9813809A05
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.249 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 15:50:19 +0000
Message-Id: <20260206155019.release-5.10.249@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.249
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.249.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.249.xz

Linux kernel version 5.10.249 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.249.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.249.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.249.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.249/v5.10.248

