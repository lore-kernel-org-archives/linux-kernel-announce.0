Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A041C28FFE1
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043817; cv=none; b=JQR31XzHgT+RPKQl/rO1BDPG2Ad/64A+VV9N0vt51KE4o8tiSxfxLOwVfgvXHXa3iM41kSl2Hx/HH17t+objV5GDpibwv18CCFCZknS7/B8gA407eFttuewm8OWBAhqASByrdrQtVgSfhFJtmG1dulbMgwNOcIBKjGIyOsxtaeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043817; c=relaxed/simple;
	bh=hMdTjosQUKD+BbTvL4wFlbbBuOIN7vsgRKVZGheoDp4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=D+6WpMXzG0I7pVIlCZfgr9kvrY625sa/5SvuSN4b1Z9eKFpTrUjPomm3iNat1cj+1Qnn9wZzNI4IT+FDCo+otZnlnacenFRcn2YmCGJAFYXn67RlDqSrCignZvd+dbXIObjZp/+qyQf9tDADnFgMXbcL5NxcC9aiUpY18tWrXdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749043817;
	bh=hMdTjosQUKD+BbTvL4wFlbbBuOIN7vsgRKVZGheoDp4=;
	h=Subject:From:To:Date:From;
	b=OJPJQHkiPTTp9X1g5vXdIzcJdFGXjGzVHzVWU96ZIzoJOflayIJlWndN0lWCHsKBS
	 k4ReXs3p4g9jBoA/9M2BKL5RN5pV2MZnkr5fZElvsyZG4oT1vTjWQGokWEmfHbFjZL
	 DY34gt4PRrmI1KcvmUwjVdFjRTHDPD4w4X2ponAE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F07C4CEF2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:30:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 748CD38111E5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:30:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:30:46 +0000
Message-Id: <20250604133046.release-6.15.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.1.xz

Linux kernel version 6.15.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.1/v6.15

