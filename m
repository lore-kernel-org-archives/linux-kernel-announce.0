Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBF034BA53
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Sep 2025 05:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759124450; cv=none; b=Y5R66dqdnCfjpx9JE1WYvh0tTbFWLdKt+5WX3zgkPBCKRi5cI4xCpQ5Yetjnow5GCukYM769Saw8Gv8QJmTCMo9dE4VadBrZpq2r/kHnScfJpEXkQ5JKUKIgV6uF5MIz8fpC0aFuWeUcm154KBmf/+Z6uaB0H+dm4qfFkG+QQTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759124450; c=relaxed/simple;
	bh=lsjM2KUdxABZL2Y8GUkYBbU1DXWYRCkfqr2rWCLdcok=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TZHMACXQrBwmfJmYzi5qF42DBQRty6FLtS6Wp1jBScb8sr9sJiEBnaLxljqvxQP60T+8jBJaFLTTTvc9GTqG+IuIYBELUzIEIcviK/QVoT+umSpcFiD5m+nd2mklWc0guw0XbRm9qjX/jh5zzsEoanr7wNphijTjIymTJLDxTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759124450;
	bh=lsjM2KUdxABZL2Y8GUkYBbU1DXWYRCkfqr2rWCLdcok=;
	h=Subject:From:To:Date:From;
	b=s9/lSvs0A7tMCKlbcB9QseO1NoiNwozlCZHM/5yTOlG+IBRqIXv33FncGIBWxb6BE
	 zmRyEdFcbtWius59BPiMSOQ8lggNBXbv7xA23oZEugXJrfqts6iYcTyIKqKBXKwUiC
	 lq21auwQjolxnGzBnPXIVD/TV7YfFRfWvySOJHjs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35785C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Sep 2025 05:40:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3824F39D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Sep 2025 05:40:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 29 Sep 2025 05:40:43 +0000
Message-Id: <20250929054043.release-6.17@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.xz

Linux kernel version 6.17 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17/v6.16

