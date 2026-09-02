Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798CC49B203
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788354081; cv=none; b=DSGdL8mfKu5Kh3iN60qm0EDHBrMJgOpEsACEgpTMlRgBCrbBG4zGmkUg83gVxC4Q2ce7yIR4oKODapKa1aYzR+2meEFH/kJc8d4gGxw5jtgOviEKtrL5b3Iy//CGhdOOdtiF9j/Yue9Qn440xFZt10GK66j7zd86UxI1wuTTtL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788354081; c=relaxed/simple;
	bh=gVPy8C5W2lePf6gMsPWkJ9DmfgldGJqJS93knHfS6jA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ek+wXVAncBryVYTOAGhwihvekQFgCNN9HIrrsjZK+2dA8vQd4ftdfMQp9+9jXflbIAmtVjO4ZcKTaW1A3Vq+ugd3Kmf9Nnr1aDBIcUYvwMo546rglOlKnypsJR7qFyHt0lqi5vsCb/E7uSl6jOxtj6wyhgS4Z5Co7K/ihQp2YdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788354081;
	bh=gVPy8C5W2lePf6gMsPWkJ9DmfgldGJqJS93knHfS6jA=;
	h=Subject:From:To:Date:From;
	b=UHebZd278xwsBbOzh++D0nfPIJ0i5UA2brZKutA4fuJTdeAwUNThdAG4pY4RKSx9s
	 mW3ROJrFygBZJ+D7oEuvyfGOIR+ZppLqTdhjqnbxNpNh8IMTqlthUMICYqowZ/Sc6G
	 QbZscv4vLM9tVA4T5qKIFwMCSG1PZjnKRYJ2E5fg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B1FF1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:01:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56AFD39263BA
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:00:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.49 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 13:00:22 +0000
Message-Id: <20260902130022.release-6.18.49@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.49
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.49.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.49.xz

Linux kernel version 6.18.49 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.49.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.49.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.49.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.49/v6.18.48

