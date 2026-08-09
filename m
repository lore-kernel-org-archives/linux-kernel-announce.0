Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D393749E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786300581; cv=none; b=Fgq1XhtgBGP9B5QdYlCKCBnXLGMt9Jy/PW0LF4DFSZiolKPCwF/64cDqwW7kJE9jzF3KuP9ylSrQf+oGGAnwgNifkcPbyrbY/Hg2+Kg/lUDvcFLJ3foG2644xbfvHDD0a/T8j5neOB5FRoHvetzI2Va6sN2ckXZXEbZD7ABxeUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786300581; c=relaxed/simple;
	bh=tIs/z5p39e/UWu7zaP7txeEaEKSavNxHveXZV/mictc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KLNdX/mFHoQG5Joj35nCq7aF59tEr5U7CTtaozdRGmLlaspmTMu66+XWfPDFo6neAFlTFZboMDt5x04k6Q8ypNIAu0+hfTuEa89Kbz4i+pl9Tw+BYYRdgHSzJQx6+i+t+na9wLkAs8kRP9WkheeiUiGFGWO/CrMzn0pL4xt3+mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786300581;
	bh=tIs/z5p39e/UWu7zaP7txeEaEKSavNxHveXZV/mictc=;
	h=Subject:From:To:Date:From;
	b=S1CRt+GxTUhV/Rg0pybLpO8+n5gqHfxDHFImCWyEnk95t4JKIy3C4/zcrqcAZ47a4
	 U4xoUDy1wOo2Ph4fwMdCdLjnczKYwk3K2mpzonr0F9Y52YHbv1Xe7uHK1Q2X8AL7O9
	 4QVk48ebD/AhVGkF6xK3sJs3XPGRdXmkqOCeN75E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5CC21F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:36:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5960D392446D
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:35:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.151 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Aug 2026 18:35:36 +0000
Message-Id: <20260809183536.release-6.6.151@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.151
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.151.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.151.xz

Linux kernel version 6.6.151 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.151.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.151.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.151.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.151/v6.6.150

