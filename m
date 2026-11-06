Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793986221;
	b=rH9cGCtiTXdw7tfemoY3w1uaMdHmUzhjA9Sdyiwc6Y4eNQIDk5HYYiv4OYBZD/HPdXyv
	 BSZg6h7kDe3+/5iPCH4RHOU1UfpnhyHBV64WDN55miR0sO/aeG8k8CE19R4aUDaF3vdm5
	 H18CmHWicAH8H6TN5iRT8cl3Tv8EIObmRQp+Apnh7sifb4l+7RJ4l9L4081X+iejpWVzT
	 ZgwwcFFicik0ee5X7+hb7T9Xxbf4vPv9q6hftsseoSsg1h6CQ7Sgk3/uNbpFdZ9njl4ij
	 ORqjjCINp/uVOiqxUnu/TfbbjrKfjmDUNFowD3W6lOpaEOpZJR1ZJmrgmx+cOhf+NGQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793986221;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=cDAWsp34y8X154TJeH32fMnH7NLvi3lFwAuFMZ7pXG0=;
	b=sZ0tMjI8sh3PE4cn2ulskWTky4JjyflxgCiFCD5PwLdW+ybO/ThJUfiN9ytjOPsjckNA
	 fv/3enfmc43GHaFQbYCkkq/Na8o72TjMHo5Fe6FbaOYZyNxCBHixyVf8+YMqFGz46Qw9P
	 Kz7w8tmTvni3MWArYwzbtOVyPNdznnn8IppFj91DegzZIr2ipuaNenZyTUcwijjBWnypQ
	 kTJwDMxpKWsNNTnWS5T3lFGCY18N98Mps6sjT5IOJ4kTcDtonoVrW71NaZtn6LflSbali
	 BjpK+SOm6JcU1oSu9tyc171depeY2NZ0yybGKZ57efOZ4Cae8nnnJYoWwrK2cib4wPg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB99F606A32D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793986221;
	bh=cDAWsp34y8X154TJeH32fMnH7NLvi3lFwAuFMZ7pXG0=;
	h=Subject:From:To:Date;
	b=Lvbv7jeGKJCGlASQCgcftDxuoNdQvB6MLHcbyby5VpZvPDlYGqJ9P8sYT/AX+z74Y
	 FYsNCVJ3qm3XFswX8KwLWlPhJwOfW8amHPK42v1ImfHopfQK2s315QhL9Kx2pgRSPX
	 rvXrzBrFwZY0qbyEmhJlDDqdwIAgWNd0g9qKbpRmNIhr9RxwWE8ZDWs3Guq5AG35Rt
	 Fhq4vEZMOArZLk4V2nZ6Zrf78zaibtODoRtl64uBsgZJa7dQmpOAW8jqSlD6uh2G6T
	 AJ3ymViswKOIuW9SV9pjbDYyBu3PyFsEfntRJu8clEio7gA2pVzBDug+G05JO3Zwui
	 G1CRgp4H7q6fQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F451F0089F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:30:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 60C8C3A41006
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 17:30:20 +0000 (UTC)
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
Subject: Linux kernel 7.3.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 17:30:19 +0000
Message-Id: <20261106173019.release-7.3.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.2.xz

Linux kernel version 7.3.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.3.2/v7.3.1

