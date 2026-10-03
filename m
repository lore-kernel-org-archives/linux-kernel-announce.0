Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543BC41C30F
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791026126; cv=none; b=jcqenZiv2G7i7RM+hCZ0ZJcbB0NPbeeFKfo0RckR1K+wHnNKINNB2kLRsTS0uZp2jvfvVoKlqDM2FKLaSBSSBQJq7HT9SpIGuHvXG4XkfWmLJQlML+Tro/xvOoiCEyg6RiG5s8Km2gl4qfYTbaBSWfMSpkwzc/Gqz3Ej+/YySiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791026126; c=relaxed/simple;
	bh=9PEz2krVhPBQTNQczOtWf9YBeFDNjWaGjP9iwvpsLVY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QcsWIGIsDvpGlJqlXRSMr1HNIXqBkByL87MFUYi6uqFGMHatULbAcJNu2jpFviGZdFvyZiafuBpuB2r4AelsI0fr1RVDeZIUDjT/gJCbJZi8YHIT311HkE831GLEXocRiPvPrQl/tqIiyoFHXn8jOSCUrMIzG2JTmHErTEM0WKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791026126;
	bh=9PEz2krVhPBQTNQczOtWf9YBeFDNjWaGjP9iwvpsLVY=;
	h=Subject:From:To:Date:From;
	b=xEzQ2+YOErH5aQuydllglii1sFT5ACvgq4hQubNGPOjoJHbh2wbzW4IfykB/J2ygn
	 fNAqh6H1/FkPvlnsLB1NmcSJd4pqlsEq3qzYzL/sfuDvzI2L8MKJETvKZwAjdV7A0h
	 ryd1mPrkdfwKEaJY1iCsMpQGNPDW1M40FuSyadOw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 250AC1F0089B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:15:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F3F163924469
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:15:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 11:15:23 +0000
Message-Id: <20261003111523.release-7.2.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.9.xz

Linux kernel version 7.2.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.9/v7.2.8

