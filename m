Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4864E20DD51
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329619; cv=none; b=CYBnSXmh41LhXPJVgQUMg/O+mdrDxPHOyqLHvpEG+dTA21BfG+u6dJ4zHWYfICjMj0VKjJohuR8AmNKIdM3AwEs9dmT60H+GtiRlSGrugXsLEJPoB1WWpZDq0CG7/sVGs6R+dsgfiZ/Ugj8beScYzZWyduCw+rbbiPAu/IAeSfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329619; c=relaxed/simple;
	bh=JanZa1eiRHABxfGW5wUgmcHGKEq+3BntAUSjfYtg3C4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tZ9TxnIvPIrz2pkjPaKQ79DAKFdx3lY4C3AmHofc7o0bpRX7hjtcouIGbWTJ1Vl0GyBVEbsYz/CM11K6LvnvN+BW+03dASU36wnZTqyKrkO2MM4wng/5F5X+MakcmlnL86jvLiqKHJLbLdKwcJeMHnf25zbWtW8qRqCqyT4GmuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780329619;
	bh=JanZa1eiRHABxfGW5wUgmcHGKEq+3BntAUSjfYtg3C4=;
	h=Subject:From:To:Date:From;
	b=Asoh6VVynVLTbC9Uii7qVoIkacC1CjknxXfhd3HrjJQ4tdtAmgbbG1ycBxheZrn/u
	 ECByuvFDPiCWHQBBUOQLypHr67rXseod4FYtvKRqlU0CQmclXTVPQ/7dbJjfZDNcgw
	 StAXwQjdsrjYbibqFzrlpTxhEyLRwBDc9PCRT7Dc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1F2D1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:00:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 93B6138119E1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:00:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.142 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 16:00:20 +0000
Message-Id: <20260601160020.release-6.6.142@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.142
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.142.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.142.xz

Linux kernel version 6.6.142 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.142.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.142.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.142.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.142/v6.6.141

