Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAB626B0BE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 21:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763067672; cv=none; b=fYuI9HPG2aRv+yzjszfXRiVCBioqgudNayrcYoOA2JInNciNKy8NiNXdYxqvONX2vXUuw5EYipWQdUYhPBnFqDXU5aS7arQOq5A7SMafz9B5R6rGe1+h0mnrPa4tl7r6lqHHrtFT561FuQHOO/9OrGDUFdr7uyalN9oVajE1LMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763067672; c=relaxed/simple;
	bh=uCixHMcadelt42mA7h/qtavtIqMHEBzqNVePpw6OPq0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sHqZGpiNi6wtFaLaP25v/ULMwJ/wLe1TdH8NPe1xd6nHnC6ck/BBR1+jjHEI+QSAopdBND6CNoLoRb3EQ9fZuX6oRq3lVarGSWsjiLwjZjDs/AVsw5aPQjPXUyKl422a7+CJRkS7fyo0oOYcJyk+HPmSaYNycFh/N7n1ODMDDNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763067672;
	bh=uCixHMcadelt42mA7h/qtavtIqMHEBzqNVePpw6OPq0=;
	h=Subject:From:To:Date:From;
	b=ZVReiRfMWZO5jeeRpiCpmy30ip4LG+BIbyJAniiHRl37kq/VowPl/LT23uOe1R/qq
	 A5ILKNyQzvV2Xzpy3SCYi1I+Sqw19Sm1RtyntL8dLvBGfoB7sz2/WHm20rc0DZrNNB
	 D0wkPTJlgRa96RR5XK/2yqLJC1CJNTcKaZpDuKis=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C12C19422
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 21:01:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEAEC3A549BE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Nov 2025 21:00:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Nov 2025 21:00:40 +0000
Message-Id: <20251113210040.release-6.17.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.8.xz

Linux kernel version 6.17.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.8/v6.17.7

