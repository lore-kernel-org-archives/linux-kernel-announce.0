Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793362523;
	b=W7b0++u7mh/b+34daBk4z0ygMMqiO0hYsI9aTOunI9xwfytxC5gNNNuR3gmpfNu4gTpe
	 CivmC+86LySzlBxi3MML+oWVm71P/5D8dGgrPPDEfC+mkGnBwpEPvi/4646c66M0J6Tem
	 W81I0WuCn27Yu3HOKP0lzWGQgbASDJ2W7XLov8PhcAhQf+SwsKpHvaJ5X9CpqxW2HoNHG
	 MzJXHIHyiqytlVdPj5IVr4jr6Xf3Kqk/fpVyHQ0a6GxKR6vgo9sBQj38TPVYoE6EQBNhv
	 jP3YTO2+0zE2fcnRNWiWwnNLICJCwxe+v6XPuQ52epyGNwKROoquDO9Rfyvh5Si569A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793362523;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=em+m2Kwv8d9yYtSb6so/Aza2aXqbn15mHYIT9d4l7d8=;
	b=1ngzIcsCAYiPt1JokF7rRKnXhCxiJ9iROn3iKYfet8n5Zov5+lTQ7+AViVIdDwf82N7+
	 IKNwKDBei73XPk7BzHDE4Xc4qrHRtUjpnd97PXcT82JNnJJslHPkW6clSfmW70x3dMuFS
	 wK2oVnSMJPmljTLwi4j/dVFi8RRmEQEwY+Lv4/N1vxwGG/JfzteSrm8i7HS2BvrMRItTq
	 q0j5v3hGCpxDJG59sC/hcmh9f/PvE+ggiAsj6OjasExBtDfoYq2uCNoR+IDkvmxO49yMq
	 k7ZXUV3yphtljPqPxGBqzHThZpXnSK2m3mmRGQcdzuD2BrZYYpszPv53Rz+lwlksvqg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357C2606A322
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793362523;
	bh=em+m2Kwv8d9yYtSb6so/Aza2aXqbn15mHYIT9d4l7d8=;
	h=Subject:From:To:Date;
	b=BGSRTNkmDsV+swNrrJDPwuBxMyOL6UiSyKwrHbm62KhA9s1rQEMCDGuqJmHC9WYFK
	 0cpg2VVFHr0TOk0aGTKPV2mfI4ksVoSbhIo74gRNt79LCUidTn1nb9futiqv6Kidy8
	 V0l4cVYzAnUtwdZ9QKGXvLB1Ng15oUPoL+GEpNZ/DGZOaDChS5bCVZ2RZf067bW5Jv
	 W6Ba8lDIEMs3xn92USJ+UD9C+jgw0clImo4HBIVaoW14ED0LYXRQ+OjuMYRV4q7px7
	 ZK4yVBNJZpY2+HbbjOcj0W/QtxhxwYtJf7aHshNHH1tVu8IlkWYEhExZmiduO4WgJM
	 /3WVmvJ9kQ/9Q==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8B111F000C1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:15:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BD6E8380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:15:22 +0000 (UTC)
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
Subject: Linux kernel 5.15.224 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:15:21 +0000
Message-Id: <20261030121521.release-5.15.224@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.224
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.224.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.224.xz

Linux kernel version 5.15.224 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.224.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.224.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.224.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.224/v5.15.223

