Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AAA2BE05A
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195240; cv=none; b=AhZWyb5/AoDd2h+yIAyrj+rEkrOlvk3mGt9DeC0nD7sCzuywb4kuxDrPQjO9TzG6ufEYKXtjdCWJtFEdGpjliXvQ0nbO3ouO/+Ay9MPPuhcXT8b1yDG0stwhoYSHzEQIunHlka/5eOslvLG/HKyJZgMG7gG6ZRv7tgvT1I7dCWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195240; c=relaxed/simple;
	bh=lLtMoIEipSXUMoGvP4+axoJZBRgXQt4qB+qqjA6Yd64=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=WGhj9M0eojVapdluG1qZAhiiW3z4Q0GMqKtxD+JR2DK4viTzWZsu+nLskh49yVmPUrSC3o+xgPoBIDKaFly2Ul6/zzno5eAb0TQpm5cJRV83lnelotv5RgaSwHPSgsmUtFlK5Yex5tBbv3HHju0s5EU0mme6mFspMY+owLF5ucU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195240;
	bh=lLtMoIEipSXUMoGvP4+axoJZBRgXQt4qB+qqjA6Yd64=;
	h=Subject:From:To:Date:From;
	b=Sm4JyFY7SsAlVDI8ATq2uO06JKxg5cwXvpVCp/RXcyedqzQvxUeQaqtjcRgpoXGhz
	 pq7XS6SCoH+ztmudz/qvKdn7CAsAzhcFQxRt5bDHlm9sdSxJXm6Zwvmn6/x6AHctcp
	 oGPNXO4J4S0eSdlGA7ryLQmEaCqLoYAuUd8Ge/CM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81C991F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5693F393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.38 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:20 +0000
Message-Id: <20260704200020.release-6.18.38@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.38
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.38.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.38.xz

Linux kernel version 6.18.38 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.38.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.38.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.38.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.38/v6.18.37

