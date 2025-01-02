Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F048198A32
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 10:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735812026; cv=none; b=u2MccgsrIVQZCC+5lozJJq/zyXM23GjFpPp8UZsF8xtOWsiPez83GdDm2K1AXLk/k3LKv/0DT+BmYZmreReqeH5RV8qkUHNYd3PlD7NB/DbcdFCNMYdvU17UW1/yI7vUMj5FTMFP5B8mlpYr3o+V2iPfu29ouG7x7glyycjc2cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735812026; c=relaxed/simple;
	bh=UOElvTyFubWxgJRNORZASK3+rafhu/Amgi8oaz0XP7M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JcB6IsBGi2kAFXAbc+Wq7fbe9WUFOT549GHs/ucRgfaMtMEOHA+abKPRepDdSv6CRH/eCXa98bYwhvREkMyEZV3YP9oYObwRnjQbwkoaCSOKfwsYWGaixdeab63Wzg+zb72Gfzr1zCFjbOWtGwuoi7TnG+NKzhnTYs/gqbUo68c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735812026;
	bh=UOElvTyFubWxgJRNORZASK3+rafhu/Amgi8oaz0XP7M=;
	h=Subject:From:To:Date:From;
	b=owwqIh/oEh5GXV7zOL1N0/VxyKdm9MQvCvUmdCppd9ejnbMh1OcI/lwMSjDaZNv/+
	 CUflTDPRv2Wh8Mx9wzedgSaqwAzoxSQdQk980cUg/WWDdTsT13Qt/nuG0FSE6tVQB1
	 hV7kVRMT4GK+BszKyksjYPoTB1n77cCHv/EQ54oE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB8C4C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 10:00:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37BD1380A965
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 10:00:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Jan 2025 10:00:45 +0000
Message-Id: <20250102100045.release-6.12.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.8.xz

Linux kernel version 6.12.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.8/v6.12.7

