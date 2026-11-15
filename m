Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794783445;
	b=nPE7sQsyA1KEP4DKGNbiPPNEX8EUEpGP9Om1GJkdtJyMFgb//wJ1gJdDWbHyMLgHkAzZ
	 YiSTkpKaGUSGorQ6CEuvqJ9j6JO9Zp7F5Jg405JHL4bfIGOrZKWMm6+GtkjPs70ryaqgq
	 YuL7UlDsIzC5VXidntCim+lbxzYYPYAc1rr6RtrIw6uqxFbFb6LtZcTuscp2DcGN2O9Zb
	 uaJm3+zdIvOjXZu+cikSu+0PbtYRjdliCGFsWt1cCB7JUh2oienbI98Q8XqS5cVl9lMWz
	 t6i8FIxT40ok8WfG7EtVHjj+JrWfm8OgegYsPbrxBGZn6YD1j3aDQ1RACR/dJ+tn7iQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794783445;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=ZISnuu+wAZSMgaj9r9/WIdiXD4R69ily/Yyp2GyIVik=;
	b=k3vcyUo9BwwHVYpK6P0fU3W833YrOvSfyiUUcWYuU+vUsuKWocdnfhmrUD+5hU2EACO+
	 sQyDebGxwTUzeuNI5fahnpsevPomYDQIb+Cyn3FLrUGy48TGGW1zt9BRXvxkB3X3CPNo3
	 91UrMfkaUgDewP3kejJW5anTywfX27PuhxurZEG79UFdPGB3yfxIZsleLIjjWuy/3Wror
	 92CF0Ukdzcd0Af3RvUoAfXAaVy3Kgt+IvhdiIIenD2M8ZtSg/Ac4l8bwNUnXYiF+Mnbau
	 LUlzOnY6O2u/nj8eTQ1nUuuEP0I7jcLw0VtCPDgKepOI6+cnMHC8qS7BkKHuKVm1ZxA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA9B606A31F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Nov 2026 22:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794783445;
	bh=ZISnuu+wAZSMgaj9r9/WIdiXD4R69ily/Yyp2GyIVik=;
	h=Subject:From:To:Date;
	b=aatdoa5TNdAb29cMde1TW+wF3cFJlRbfi2HqUndNCk3zFkPV8mrqtRgWhzPD/5fms
	 xAO+Z29KsJKPLflCK4N+6m3kgI4PrE2RNwDBI9sdkR352/lnzRpDJay+y6fAcqMpsi
	 5MWIReEkTmR107oLhDKuaZTblUBvglMs+B19oZPrBqe0UAtJU5q8AigRlJ0GRHP0Rw
	 NIEhlUaCek82M/3OlwYj91WRWu25gI8z0ycl2AtO4mpyC+8jkASx12BLcoSxwZIarZ
	 8Bfp5n2ZoKcvDfNwchT7yrAAyEZ5fOxHZSqos9fkHZB0Sy6/o6ecn4IpPLIWNKQMTR
	 H33SjCgisvFTQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C28DF1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Nov 2026 22:57:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5A8038068C3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Nov 2026 22:57:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.4-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 15 Nov 2026 22:57:23 +0000
Message-Id: <20261115225723.release-7.4-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.4-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.4-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.4-rc3/v7.3

Linux kernel version 7.4-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.4-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.4-rc3/v7.3

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.4-rc3/v7.4-rc2

