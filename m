Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CB533291D
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771258854; cv=none; b=tUuMcpUVMA/4kdL5eMCTl7XRtPHOmLP+cpYs37nyc3TvmUCh6sty4Z4Mh2/qrPHa6biZk9VpsuTRqUneHQaSX/7SK5SmELYdI0s9WRaR0L7vdAd5+bY5OlYktxe5ejaSuKYCE9fFG2QYInTNXta1NsYE03a8zcZ+/l9qkuK2RY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771258854; c=relaxed/simple;
	bh=586eA2QEDvxGorSWSi8T1YEB8Ei5LyyZdGIt3OAJUdQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f3zX+djwmZXPuB1nrXxUt++vuEWRw1JAcUcB1wIttlkA1PwsjOt8UyeLFkAXY+BFmKiPywryLNB+EqSSpbDF8oAzj7iUhiAAPhlkdeLM4saSKtTVlDZl2NiemZUr/SbApN5gRTR9E+i9RQXDT1WbnfZ3AoyxYblizU4CFH2IE9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771258854;
	bh=586eA2QEDvxGorSWSi8T1YEB8Ei5LyyZdGIt3OAJUdQ=;
	h=Subject:From:To:Date:From;
	b=XvZMfy5sGFgX/+nMNA7bDxCsF3Z+OcJLq212Nm7UCzybsM2Ga/ByminqgSz2CQk7+
	 moJw5Zuq81fJ9GOmQBlNFqXh4d6DtvrMyebQg3cv5dwOucEZytbUNm85mSl9q2oqGm
	 LH0I/5gIhZjTSn37jlsO0aHeUIRSJcYZI9xQM9JA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20DA9C19424
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C21A139308C1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.126 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 16:20:46 +0000
Message-Id: <20260216162046.release-6.6.126@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.126
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.126.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.126.xz

Linux kernel version 6.6.126 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.126.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.126.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.126.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.126/v6.6.125

