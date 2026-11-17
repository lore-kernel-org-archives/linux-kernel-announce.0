Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794911426;
	b=W69/dGA5LmHb2bhPrYoyM67nAqtrzxGHhKbJO3ONLeiDGCcWIpV0AFCQmBVqEhOoHxzb
	 SgQvXBWPGffv0vPg65SYJYnx5ARdANasFQshnfOmLiAEyAkoBS0SIVhoxpx4iRLR4jXY0
	 lXYxu9D1RYcswNjWyis6OSziIbhNKOA1Pcjp6q/QSu10N1PbAgvu5plTLlvE2zsmiJUUo
	 QB3nXnKNw8yZZmolr7Xy3jOBnoF7Jo4RwFzxxtPVr+QITE6RqLLEezZ0zich1vvtLs94+
	 ed2vHgEx4StyQDgfWtTOWjFSGYYIB9WFXeIoLAddu+3tLnq8eXYx9YRU+oWvunAvy1Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794911426;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=aUirY6F6LPQJTmsKP0J9hIRRgifc4ntWdJd8ROxB+dY=;
	b=MXrD2Q9mSdiTdLX5yCS2ue2YQOGDCNKiO7h/A9FG0DzovXhjhUTP5HzIRhdmxxhwz0rX
	 6a9lLRMzBVzPmq8rjL2eON8AnZiGDGjbdH5nzTV1vyFT8d6TyNZoTTPAuzL4IQUWz2Uqb
	 orRobfDXpmE61BY5Rehr+0Dxm0xDcP770BrKjRz2rtNBrjvjWyi3DqOtbLGNGGnku6ISn
	 +VIQFhVyxjo7BFmNoiEjU9MVQ+If0doPtJa4MTe+kuOZjGj0BPlV83vLMq0gC1GspZaiz
	 KhmIP2FOIfT/0a4onJUg/+mW7taXPBWuMn6VMKryJ1DhhJ8v111ttPtpOJ2e0uQAERw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DECA606A323
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794911426;
	bh=aUirY6F6LPQJTmsKP0J9hIRRgifc4ntWdJd8ROxB+dY=;
	h=Subject:From:To:Date;
	b=yqhiDVGo30zXaAklAScQvknTwOvGaP8xoUBNKfo/WuHHgjBK25jMkM5sDZyN7kuDl
	 BrnxPMekyew+jvIexKECtgBP3g2tPLgOQgTGzegX5qmANorSP1m+k83LIj1z0rFksW
	 RZd9U53pKIIlAIDc8nUPYKVUfgNSDNTtghZ7hTwf8uAdark8qnUFi6oXAhLQJe1Vn4
	 Zq7Zn0dTKHhOGbIHk8CkFTkAB3aj3gcK/G9Wmqlm0D1QLnSdswq9VapUm7Bphfveau
	 mb11lF15VYLv/j0PbltMi+MmiDZ934dH8j3TbuF6wnpNZkjs56Br+Am9xZqevmOqUl
	 Qzbi+xD3Nt+NQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02FE1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B46FB392664A
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:25 +0000 (UTC)
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
Subject: Linux kernel 6.18.64 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 17 Nov 2026 10:30:24 +0000
Message-Id: <20261117103024.release-6.18.64@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.64
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.64.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.64.xz

Linux kernel version 6.18.64 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.64.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.64.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.64.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.64/v6.18.63

