Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF7815351F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 15:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714662343; cv=none; b=rOkalNgzNUs8q1vCh+brHPECjM2eC0T/NyKpXA81JfTs73ybEt+J/w0ulhZj0Pmyb+qFZVAh13AHfG7Q7ozNdGmkDaDvYtFMPvZUK6AbdVDRcXuKoKIWOUjlGR9QLyYlr09JRl03H1EB+H3ymAB4pEiEwqMnajC6E81qjnoFtq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714662343; c=relaxed/simple;
	bh=6MnTAQZ2KvE2YP1ba/njgqJdii0pA4k8DSlb9s+ENok=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=po0yK/g1DD1EvJZlePjAz8/2iMwmWDae1P1HWt0fwYXafmidP9xuKNnexed7/tRZtc7a6wq/Q4qvJcPGFHKdzTrWypNqjlnkq5cVznL8056EKo87i120l0PgXLi4IBrSs6NwLAnb39hTssPzxLvmuZUEDJcdzig0399jIFny69A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714662343;
	bh=6MnTAQZ2KvE2YP1ba/njgqJdii0pA4k8DSlb9s+ENok=;
	h=Subject:From:To:Date:From;
	b=OsLuyexGFrZ2LpLDpnuLqSSlDHTCxubAcyMxxk08uXfJ/AtkwQC59iLm0tmhbvlBq
	 jo478zZv3NSde2gYWhJaJgyINjBgDruM4Jzw+ZWcVv46x9qZA6Zd0gHVNeYRMfGF9E
	 qLGBJly9YPHmxM5LOI82Jk+FgJxCi5qHvGmpfs3I=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4304C113CC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 15:05:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D49C0C43443
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 15:05:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 15:05:42 +0000
Message-Id: <20240502150542.release-6.8.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.9.xz

Linux kernel version 6.8.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.9/v6.8.8

