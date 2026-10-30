Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793363129;
	b=ij84pDVQoGfgBX9HeCWm6fkhGPgVuDiWf1+fwSWDR/gn299D4t0//hlPpbGj8E+HQ88s
	 c1A37x11EZ4MGXpdRzi42GZwkOgKp9B552Vq5Q484HTWm/8V6cMVYTyUh3AN65SHW2/dR
	 t5/SyrM/lyoMGx0sE4pZA99cQZcf3JgSY/UlhjRHvOAYwgUNnavf574mzsO+yz781jKo1
	 JMOWt49UYc/ycVCN7dGalddMnTjXzJ3zcZRqD2o0UsM/4i3eHLhuEllUfuAwWwV1DOevI
	 pL31LbT/Q86VAe0EIKd/qEF0PskyzSpJHAqGP72TAPgOKg+NsTA/ogIAVa+TVYRS+Tw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793363129;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=AW0gzGiyc99bYogZJwNdbp6hZjOuj5tBgwvxYxbMLoU=;
	b=AhG9F8cJmErNLafAvby1rSyHrZTtVBunbHPKwhnkjZ/DneCdXgYBSquBwEg2O4WgJOfI
	 carC04udTKJD4kljxQok69y+2S2O+xSU4titosyiGowkAHpHZ3QF053DAfbaqesv8D7am
	 ApSX3/cbEyQZ9/1VF9lZysaxMvPLqvCGWzMGKU0Mz05ijOUSE0dbwGZ2YB9f8AoWH5f0c
	 cCeqmyvRjdbXUuBqdA+zhE2K2oTrJKCV1Ut2YT2TAvWJrWrg9LGAw9KwW14G63EgdCvMM
	 7enZSIKTybLzumcR1Gh3en1p7a92JDwRvSdgk8fZwcN1pnRTQS1bDyvMy6vak5UJN5g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCE5606A31D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793363129;
	bh=AW0gzGiyc99bYogZJwNdbp6hZjOuj5tBgwvxYxbMLoU=;
	h=Subject:From:To:Date;
	b=ognodVak/wG72kGTORD1wi5/WtDLBzjbxw7riRFL8MUF1LDUqAIyxLuWIC7D/j2O/
	 bUwh6US6po0qQJw2Qbq68lwham1iImDcW+P5G1N98YqDR8AgzVbOd+sYJcOPpE38ib
	 7mJN6pB5x/B+tNhz2fIIvvxTdkFHxvLbSTaBW64JmXSqDqot2xlnZjl5cPtEZsVp8w
	 nS0DvqHHDX/pmCOi3i96rW2MACyySaCW1Ivx5S4tCtcXwy18IcqNEwax58jSg/Sh8K
	 kg09HyinB1xz29X68KHHtXj8D2rlklKSPv/AKs2xb5rRB4xle0ZL9vzN5yn8+U32rR
	 56PbJx6J8lTCg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3DB11F0093A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FC40380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:25:28 +0000 (UTC)
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
Subject: Linux kernel 6.6.161 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:25:26 +0000
Message-Id: <20261030122526.release-6.6.161@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.161
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.161.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.161.xz

Linux kernel version 6.6.161 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.161.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.161.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.161.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.161/v6.6.160

