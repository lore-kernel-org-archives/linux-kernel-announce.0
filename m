Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794335126;
	b=TuuYN5gU2KWP62xvEdVEbvmePoxVeapfO/jO9IjoxT6IRWtH90M3mYrc8SkyldYM+7fi
	 WwgIw1x1W8kIrEGdKzxggoGhPUmDFQ2mQCJNtHet3Hk3C98+aaaqaQKQRTuULHv7QOE33
	 y2eb4LAxcxHNwqKO83ap44cfmisG7mPjcXqQg0IgCMghbyLZZGCQ1Qm52N8pJEjy0vr7U
	 74fomUzsSZBcWxlrpGgEs4sskfalyoIVxUcDMwU4BVJZh9uz+ZmhWbcEKg4uraIPnMDcJ
	 fNGOAXisDUIfiy47vZq+3knEo6gpvzafv8Prp2n21knHRFezve8bKf+6xkqs8M5xjHA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794335126;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=8hLbsyaPS/XtFPwUOMwUE4XIFBd4LLejbMpAqsHyW8k=;
	b=PTlXs7aGtxiP1vdOMEiv5TbjJsU5f+IL3SilhOOiqPUcLwGR7PTlw6/hjtKhuHq2q9QL
	 Qf2RFfk5UuLsKVWamCgRZtYE3+zrfOAkV7KZNewyidkRdY29qKqVACsVFTCC6qVbLJtHl
	 P48jvb539xUbmnBLcWj2O3DjKAZ5PScyIIlGj4c7386Zqo+MQWx3tJMeejKdEyRlb2Xye
	 y6dmCmi+P0j8IxCCSKr2kx4SpOqGsPKnqBValGNjI0OCbp+PxeYl7f9W3IYu0f0iVWLuO
	 nJAZVLvdUGaByRoZwyFAIrqy7GstcY4m5ma6GSHAOwDKxN2OueBeqFfZIKHUkAe35OQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14337606A33B
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794335126;
	bh=8hLbsyaPS/XtFPwUOMwUE4XIFBd4LLejbMpAqsHyW8k=;
	h=Subject:From:To:Date;
	b=tnhTYBKOFBKc5WGWxMLyg7zZBcfFy/xHLACLGinLgnovZCd1WrQmuyLx14ZVEsAYv
	 RwNLbo+AQS58C93T5kGLsadSCYaQeUhvtfDUeZu0OxkDGbTAcOQz601tXZBJBErzqf
	 0iLW3FVU5q0Oyu/+SKWHqaHlkdU/YhEpu7E6yk72TVzkkrTd0nPrcUXqBGOvLjPNrC
	 6WRQaLIaeRhgPP+0Y6UFvlE3kmhavo/gJw8IsxpGkMBeu+SCwCSQ7ZrEVJpAzkHIAG
	 sSC7dsAkiLiCWni/X35i1aSdWRiyWw/po9iN6y2vD78wXVax77LqyKr5OoCvrfNq2z
	 ShMYHHYRRxC7g==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0C191F0089F
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id E7D1239D6091
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:25 +0000 (UTC)
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
Subject: Linux kernel 6.12.117 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Nov 2026 18:25:24 +0000
Message-Id: <20261110182524.release-6.12.117@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.117
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.117.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.117.xz

Linux kernel version 6.12.117 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.117.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.117.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.117.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.117/v6.12.116

