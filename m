Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA85280CE5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747918501; cv=none; b=AU697JY5sA3UbSL9fFlQu+YZtWV9reOYrmMGek2IDEZBNgF/zYU+n4FXe78M6m1CkXbGEgzDAHGHvlPc1aDbziB4e4aZekNI1PjtL53dSSsyla6QlytmIVKKKUImqo7vF5/nW8bhxdCBypEv2neY4+NMmHoRUXb/nY4U1Bg1bbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747918501; c=relaxed/simple;
	bh=w6PUtqdUYsvQX98U60C8gvVKMhpv3cLgRH/FnQqIpEE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nTPaxUNrgDmDqzXbiZrC2bzAaCm0G353H+ehsU3Oq7Mge5heCRNdZmf/W2z6uwtyY5rauJRn4qNcUnC7EFNavDIUDqfGMmSxC7raJT23RcZudI0uWGQG2Z4GsFZgRkQh9bLxgBXH706VvFnWl2RDUYmn3U25e/o9Vn8q9/H8WaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747918501;
	bh=w6PUtqdUYsvQX98U60C8gvVKMhpv3cLgRH/FnQqIpEE=;
	h=Subject:From:To:Date:From;
	b=a1HauqJNlwXy2BTodzbrhymRHsztAOmoED+LSttRKYBosADGxmATJ2Sja86guGRtl
	 rDHtq+tgho0qAcZOKVwv3KTh3cPX4LZ96FCre77sQnP54bguTcDDwikGb1gUIzKy8/
	 mb4oiekac2QZ69kW4yDPvVAkVUR7Fy8itFeGStHg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABFADC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:55:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 710EF3805D89
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:55:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 22 May 2025 12:55:35 +0000
Message-Id: <20250522125535.release-6.14.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.8.xz

Linux kernel version 6.14.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.8/v6.14.7

