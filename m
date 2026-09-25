Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53024B049D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 14:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790347904; cv=none; b=RSplOvEAO2S//WZoOUZbasfSKM9kpNk9a6zs0zN1eChAalNPOKGqW7RXCAw5nOEjnNhkVTKrntgYxMoXVk7GpysLi1giTYwhv+TYvZi/eIcPUIsrVjq13lXdVgAUf5WHbe3BbEbbn03ud8bDPu47KljEhIUtpt8DrirYkFli0t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790347904; c=relaxed/simple;
	bh=L5C0vx/pVTnR5QXx+U/kL3tBG/CEWL6ZzGKQ342U3E8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=s1rCQfKulC2Ek7aN4/XuhJgOGUQyAIIG2tMitA9826pJGMhFYY5g8eYlzQPhI1TjKOhTNEEQAh/9TdKtuJqYCPCU08P4ELfmbu7HNSGNi4XN8H6RPCKfS2xnSIl1sApwh7V+ikvQVjLQIjLslgLeVTRtj1vEfNMWIKqcDPjSAoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1790347904;
	bh=L5C0vx/pVTnR5QXx+U/kL3tBG/CEWL6ZzGKQ342U3E8=;
	h=Subject:From:To:Date:From;
	b=J31JePbmFBXX9QVFSX7VQzuqn28u2gyenYJMiICnXLZmv6xRTb2hxyO0AQ1vgvzCy
	 wwOWiJNaGLNn4MoO7Z4rhoKE1bVdm+39kLD2gcH0w7kWaM8sgh6EhY9qj2LtAkJGI+
	 OzBUAhkIX3pvIPgDj86Cthw4W/l3Hv4gv2pM+7Ek=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 038481F000FF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 14:51:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C5FE3AA7303
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 14:50:31 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.54 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Sep 2026 14:50:29 +0000
Message-Id: <20260925145029.release-6.18.54@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.54
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.54.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.54.xz

Linux kernel version 6.18.54 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.54.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.54.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.54.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.54/v6.18.53

