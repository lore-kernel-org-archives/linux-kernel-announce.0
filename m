Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD56623D2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727707250; cv=none; b=l0LslGIMQ5kl/DcbS4Q6N410e3WunHXOJ+oG/BghCsV12EGltrCbS4V4OQKaYVfKfPsdeclvvNNQXdOKwU7BOA3cTgzKw/601tJ7uOPj2AgYs2wiVYT6opv1PgyqEd1PSquA29uIj+BNKRQ3BsVOJ37I4O3BcYmpWvY99xtj3a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727707250; c=relaxed/simple;
	bh=i9qM0k4Gia+GQkqZ9L5U7PjzdhVpmMwmW6+IO8HcLpo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QZe69hU0N4VwZ57GMbZ5oNEjmcdQrkC+A9xrUddBhVXJ+UTqW7gWjVcazJH2MenV6gWCCnRl0EmZGtC05OY71+OygSKFqd8WxIqrX0L/tDe+e8aZzVct5VXgqjOBiQDShMXkoiXZVwRYl027A5XxtWJIXTxWppe78Vy1aTXpna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1727707250;
	bh=i9qM0k4Gia+GQkqZ9L5U7PjzdhVpmMwmW6+IO8HcLpo=;
	h=Subject:From:To:Date:From;
	b=HQGo+M317M4Ps3nwum5BA53EzoczwNQU2jcwXPJ66lMiDgQF6nypRtzBJDBkeIZLG
	 6txhfDZDbrK4jw/irdfumQM+5xDlI4dCURlkHhdNmquGyKAlVp22qtPfTHvyDG9o79
	 hBQ/+HeI2ORbJnBBTmZsKeGLXz1tNAlNl6cWUcmk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68876C4CEC7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:40:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 765C73804CB9
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:40:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.112 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 30 Sep 2024 14:40:52 +0000
Message-Id: <20240930144052.release-6.1.112@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.112
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.112.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.112.xz

Linux kernel version 6.1.112 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.112.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.112.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.112.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.112/v6.1.111

