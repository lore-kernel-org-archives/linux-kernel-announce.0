Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794335125;
	b=E2j5jEyEu2rd/eVfe+lKeCGEEfFsuvJwZ+ufk6u/IcTUSIsTg06CWv08pTUVtRTvvzxw
	 o5PFHUV54i21CYx5bAhoDX7miPnvQETd+HrM5wvm++iqA/nfPzMDJgTBPPWXMCk7Os/Vr
	 HjZD+eZQIRcFjKki7Zlm/OVIxYGrEX41zwGgKOOCRImZapY9ZMYmZXsmO1DTDABomA3dp
	 zdgq0kQicC/Coe7UwMqI/lYUJcf55186trRbm7cSN+zeqy3e4FfHMdV4gyubvTS8Yqh+2
	 GxllAGrhET/d9SwlgOp8B+aWLqbniyP3O594jxht8joD1wuA8iOZyEU+6PCurH4BN7A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794335125;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=HR/gr8myBqwWwoqR/m3vjSVrj4/k3kMkjnbb15drwxY=;
	b=lHIaoaixGa3NHjgkNX6EYSNtyP7cGco4iTZHUr3eSAzX00qkLrHKecSuUGmS9l/yB0xa
	 AzFK0ZjFZqMfkvvv88w4w3CLGaH7I8VjL1mMjm3F8mL/jBRMiufvRaL1zrruF7oc26KNW
	 HMi4kL4Ftl1opfXRsmsDYeOVAyXrhuW3+3B5KYKHMNa282riW4ha0O3vH+mpbePmOJ65N
	 PTQRfbToRpYr4XmvLD5vTujmjXO6RXsUVUUzpZqPuvvCbpzYL9dZ6vN5VzUYZceBXRcD+
	 y2T7bJcClTrkmXiK0IlpPLSUj9pj/rU8V9ub+SqEWj6HBBlLj8YzYxb4nD6P79MWhdA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F381F606A326
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794335125;
	bh=HR/gr8myBqwWwoqR/m3vjSVrj4/k3kMkjnbb15drwxY=;
	h=Subject:From:To:Date;
	b=kTV9miSWQ2MThC0rT7zUd3AnHm4n0diRrYV87+qFJ6qgtfoyrdkyst0UfpTLPV09t
	 vlaPqTcsHfKd/GwDqdTHb/nxGBCddNoiqprl97HtnbWKrYIenvU0vZv/ADKGbSQAYy
	 mX7xsQ2btx+XRJ7yKharrpXUD9Kch/y52cj/mUPtgNe8GMJgsxx3odkar2/P/kbxm0
	 tjEwXOTtiW/qkbxorqPhpLMTJjuBLpOb2vMVy4afRg5WMs8LaAUNud/6rDBf99qdMS
	 aVZ7cLbC3xmG1Ba9h6l4QmxQh1l5xtHyTuTO/Fw1c8wZC71qAgxRUE00KLCOowmMm3
	 KS0pGC3VEytsA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A97FA1F008A7
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9DA4339D6091
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:25:24 +0000 (UTC)
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
Subject: Linux kernel 6.18.63 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Nov 2026 18:25:23 +0000
Message-Id: <20261110182523.release-6.18.63@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.63
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.63.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.63.xz

Linux kernel version 6.18.63 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.63.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.63.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.63.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.63/v6.18.62

