Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DB93E274F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778766675; cv=none; b=FdUYOOofQtV1SbzB9vM/q8XU8KdGCkMOud44yakpJ8C4o9gMvgGmiDWcHxjaxPmj39B11DuGk7tsoI3K59VOII292JSB3b1NEPYEeFMlgKFeaXBdB0jssDnhMS9EgW+BSHBMSnR1g1iRr3qnPl89pOg6rqfYf/esdt7jrwpv2A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778766675; c=relaxed/simple;
	bh=MBRnA1q5osD8u6NkhA4TFg+cQ16quihE6pyIEM9rxas=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iQR25ZgN4kTtttipEAOAz0eBkar/JggFgImY86su/D1/5VPinJsa6BGbblew9DKDOvANklzc4F9oJyFIpgkrbHCOz46pvRkYVcwvUxgqb8Hz0wmAbWMHmArf1DRVSJV/veHYTZmuPn1VFw5RhXk0Uq43Qq2cUvaD3l4AZcRTpRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778766675;
	bh=MBRnA1q5osD8u6NkhA4TFg+cQ16quihE6pyIEM9rxas=;
	h=Subject:From:To:Date:From;
	b=WS2OS47bVjrXq+3VbN017diDuPvL6fIWUmO0F5zkRzoz9rjGFsT5YzT1Q/oWHm5R8
	 tdQ7p2szeNhJW4NEdi3XsXG/MGDj6WqSv5OXEtjTDRuPs1I3W1QmDmTt7MrtbVQGIX
	 WTu4OfAFMDylhdFJ4juZeUnZ2V0hLku+Gvl+Lg7U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1670C2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:51:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC97B39310BF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.88 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 May 2026 13:50:19 +0000
Message-Id: <20260514135019.release-6.12.88@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.88
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.88.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.88.xz

Linux kernel version 6.12.88 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.88.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.88.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.88.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.88/v6.12.87

