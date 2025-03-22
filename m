Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE7212F399
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742674509; cv=none; b=A2ZMRPVX3+7FapA1tRqj8CrU8Jg5SyfbTr3uwpGWTjqCH4ecF0zQ2otGWoDIpO6mSPUDMM5LlkPevi5zb8fjz4CTyt4fU+gQORO9UaVXOzO0+Ac0Ray6KTa7y9BRZQePZL50LmRglh+ZsTy1VYktIi0rXn0X5mqGx6UwOJbLnsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742674509; c=relaxed/simple;
	bh=KhXLO0jgMslqj5rn4t0cRFRcANUJZbuEzZCqVvaR4tc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cGa/ltP307Ry6h4xm+66+VXg0ez1zG+tF9p2U0lK480BoqQYougbC0n5Mb/xx5UyyRMIkHDNZJATn9SY9Ni7rRJoLpunLahgA98itGOEpIjiGbxeco59kxW549Gq+cncBCwzeZa8+C71fH1+NmMufXoGnuUJ8LRiFoL/KwSFRq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1742674509;
	bh=KhXLO0jgMslqj5rn4t0cRFRcANUJZbuEzZCqVvaR4tc=;
	h=Subject:From:To:Date:From;
	b=uSSYOBBqayRxowtV7ydgirsKDkF2kC/fhfEqwc3hxBcIzNBW/ctOPtWss6I57eJq0
	 NdO1ABQtugbdIo0u2NdFezdvhLoePz27kytnc/2QGIrmV75w9wAFVdGf5T+kot2imD
	 cCRENAz1IClMYcmfJI0ze/1Rh/ydiF+2xcihdVBg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF9EC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:15:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 76828380665A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 22 Mar 2025 20:15:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.20 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 22 Mar 2025 20:15:44 +0000
Message-Id: <20250322201544.release-6.12.20@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.20
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.20.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.20.xz

Linux kernel version 6.12.20 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.20.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.20.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.20.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.20/v6.12.19

