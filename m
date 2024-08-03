Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9A01F171
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722669076; cv=none; b=fnoZ9wrge2wVFCTY2xvyyUO/NjmQdfryIu+MX59/1YFisk07hb28mWHmWaT2hRl5YE1foV6BnAfF5dh0OAFb5GJtW5vHp0h9s6tyFliOIanHDJ/cHI1lZk+6ZEyUUZzT/hMfn7AxUMlnom90vlNrVVSriu/mU8Iwma6nMLFIGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722669076; c=relaxed/simple;
	bh=KZtsTDGCQFklDmHQjSuhjTMIgvv5WMWZBi7UIIFBOPA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UbRH9vvy7wC6ccCvoXO3b5y3luURBA+5Qs+uymK0CX4c5PLF0znfmcYrmwstgrMENXw5RIAxLWP2FwidXLc/RcxyMK7W0lGj6SHnLPShrlJfyAiORTr0T47Cdliv/9f0vU9PVabi9sN5RAuv0iWBIvkbYnipQZKr9EjI5LqUF4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722669076;
	bh=KZtsTDGCQFklDmHQjSuhjTMIgvv5WMWZBi7UIIFBOPA=;
	h=Subject:From:To:Date:From;
	b=a/uCzFtRoKblyjvYHoCJkIkpkkSOybRfMfsccm2o2nqKuNLgzfLnnOHFn1ZPkcXmv
	 SVsRwLQda9+gKY00Fr312UYcQqPBEXEOylWQLQqJ1fceT2W6iXSx74Yy5xWzt0m6de
	 +jTX+04s3wU39lcqMQv9VXXOgrSL2cmWUZmYxylE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B35CC116B1
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:11:16 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 53BD3C433F2
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Aug 2024 07:11:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.44 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Aug 2024 07:11:16 +0000
Message-Id: <20240803071116.release-6.6.44@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.44
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.44.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.44.xz

Linux kernel version 6.6.44 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.44.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.44.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.44.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.44/v6.6.43

