Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E053A287504
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752772518; cv=none; b=lS3jPQiAciTlaopjhBdo9X55Itg2d1tpLtFzTbzAQo2DVO/GNTiLmXNJpSCBRBNWIk4ad2v3d+HqchdRb15Ylz8pZ9HNXrMgYHe0ylAW66aYRvYLBEF5IUYJMFUIXBzb+MGFRdAud3zqV+XX54R6jS+Kv77jfKyPhf/lN+LP/h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752772518; c=relaxed/simple;
	bh=jP3IRLBwbd8JF6IjHKYmjBhIvMVM65UBShOAGAp281I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QHm6polEd2DmfV0ESpKn4968TAdUQB40IhEN5ofiw/TL86kKyM9fs7ukbkfcGDpDvm43K+jF9F0YVvYiZnnKVCFdZw0yOjdBgLSHXhClNP4axBMKBtO35YPEbiiXPz8UjlIAQ491aQGQqAoVkp50ldNfBGKpe6YzU8AW/hvlFQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752772518;
	bh=jP3IRLBwbd8JF6IjHKYmjBhIvMVM65UBShOAGAp281I=;
	h=Subject:From:To:Date:From;
	b=mo81T9nON/ZVBtVNUUfjlU4B/VdZc5QuTT6Negmwj/OWmEST4qfADPZSGoatlJ8KK
	 rWpCReGSMu+nkYjUMMry6ndwhGOcX8MlvDkIVIydIadBGv3+jVonD5uIGpJJILdWEM
	 3MXadXIK3zwcGaoEPI4TSLOFBYsYICLcLYMFmkYY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AAF3C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:15:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B196D383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 17:15:38 +0000
Message-Id: <20250717171538.release-6.15.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.7.xz

Linux kernel version 6.15.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.7/v6.15.6

