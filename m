Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813E51448E6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041252; cv=none; b=X4A5QGOcHsogQf7z3KUZ2suIedV4/Ue3d9JGgVXbuhXW4Mt3iCzF3uIuP0buzryAaLFpjibexzyugT20NpWWx4MZhCmOYFP6qP9wzhIInlmSCQ7ORrygqTgTjif5YfBbwv+pSZ3fqpLlz2em/hi5GPwRQHp+/dCPwsEyZ7slNJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041252; c=relaxed/simple;
	bh=5vXWojJgdIJo3v2xrqbYVaqWCSV0HS0enJL99hh/mek=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=W98lGwj+z9Uys/PN3fqwmF80T0gjeCxPyC4xzotOlr5Prid/s8eENpo+YV+77GWVe67ZVH+0bMGJKpVHmWI+bZfbvuP5H1PCf33Pvx/oTukitKQV6xpdEX9iIjubatEFBP1mCHGbvhILNqSNzUig4fzFdgS9M1j2KKw6w4xgblk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041252;
	bh=5vXWojJgdIJo3v2xrqbYVaqWCSV0HS0enJL99hh/mek=;
	h=Subject:From:To:Date:From;
	b=hlUtWsB4GEKR/J9feDsPznIes7fCbIfLzd9Kt48yRWWhGjeSKfwGDkIUawumzy33v
	 wNhuw6w4rc6ggQiWlvr84hPrPhkZoJ0Qdr/3tuAuA5zApaK378KOMRoRuzmlaHhHC6
	 ii0anfSW1+hHSdIQyCOY+D/PbF/YzvjdUdHsAOho=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 512C2C32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAD873823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.320 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:20:51 +0000
Message-Id: <20240819042051.release-4.19.320@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.320
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.320.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.320.xz

Linux kernel version 4.19.320 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.320.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.320.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.320.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.320/v4.19.319

