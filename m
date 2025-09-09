Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468AC26E165
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757436939; cv=none; b=U/4wAByevdCueGCcBZTYcnqqLDPp6JVsrezs8OJLDfc/ZgZz/sGROoCsjav6dNP1nc0AoAgNn/48U/c0dYV5ziJUkVeGe4ZeriGO8FimsaCTFTV0iuymReUG+xd3drZwer6d0X7hIjS/4Glv+oLybY9KVBTDY0zBpxHL1IM0eyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757436939; c=relaxed/simple;
	bh=2KsqsNRQr0BAecYhslp7q83J/UKHdsIucngPV3MTV1k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=htP3AqaaNSSq98II+6WTW9TZYV/zayTjTnhCaDkKeX6aCH2J0i3wbiKzLkUlA22fLNfmkoIb0oXa5SOSka/UVtsPAd3Kw93k1tgRbYLOhn5c5ikv9G0dD7cgutbd3yitn+4SXjBX55NOVelrbbrhDdM8AiywT9pN2BZ61ZGEJd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757436939;
	bh=2KsqsNRQr0BAecYhslp7q83J/UKHdsIucngPV3MTV1k=;
	h=Subject:From:To:Date:From;
	b=Tz5LHgun5PToKLASy+XzhrtdwxcnZGcMed+jcchXo8ag2bxTiX41JEy08/56Rhh3L
	 UAFf8PvHa2EBCc1YHr8jOiUYOKZm2e5gGq7ssRi7cK8FMxMlInNLgaL/sSntGSwSgR
	 ZutQj/f05SD0VXBX+akUrLB2KhjjGBG1W/wSy0B4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE47EC4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 71C80383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 16:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.243 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 16:55:42 +0000
Message-Id: <20250909165542.release-5.10.243@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.243
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.243.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.243.xz

Linux kernel version 5.10.243 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.243.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.243.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.243.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.243/v5.10.242

