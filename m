Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793990778;
	b=jQCQxRCEDzTbgALlhjISabA3DMd7fqExt1I51nMiV7D3GPy7bmeBkaFw0hku6vnbGdak
	 +kKAlG+jP6nzaVoAMW4+eWiKAl9dC8JZ4+iRJIwZDIzISofBir4XKUbkMdnaZwBnfbaYP
	 s6L2kJaPX0Mni+IZEw/5TsPlekiVuAzruGxxPXAkRiKMBJLxnhFD8nRRw/kqr4dms+610
	 vuRL6pgRCXnvLZytSesf2ijaEKBZ2OIJFWHRGm2/1/jX1s5vNFnDKX9x4djrGqNMjMU7L
	 wkEtn0BBCm8oebvKHvDLEttBCEKIc7YdnONkFpDIz7zl4t9tMeoGJ/65PcNVSziHF7Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793990778;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=6RnATtjIDDr5GVunpCdJo4dieTVdoWN0129b0Zotafk=;
	b=PxteGbrMW47nwSVaVUpqotT19exL5mLQRwH0e518M+zvlcDv0xKgKYQCnOPXwtRZtdXy
	 qmHt5/MHAwqju0gE8r6bQjvgwkaeOpXcnKZRlS1pDih4m9aVilOcJ15oyL8fRgv1yTWkE
	 QlSHsKf/M+Qm824ru2ZsmTiC+eMnyOpEDV4DvRGqOpiRfyjTzMOoMrXBgLqr+u40j/frv
	 lIRRDMVoejababM+F5qQjZmIUSjVD1+P1P3b+3QcrlYuRnk9jHFa3uY3ezKU2VgF7Lvhd
	 0GjIPudOn04Shrx5PMvz3uqm6pYa2PRGmJ100Z0A8zsY1ptrPsFd8/7353UPQWbqQYA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A9C606D803
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793990778;
	bh=6RnATtjIDDr5GVunpCdJo4dieTVdoWN0129b0Zotafk=;
	h=Subject:From:To:Date;
	b=dtjQqYsx74ixo2KSHWy/3Nk9AxSD1vl7BY6rythtw2oyVt54cfvAkTU7VNSx6I3Cn
	 GDBEGvV4WBbmAj3QlMQgDtHZnuQFAx1FnKKxx2TFteYT5sdzQijJ1o3Mivv4Q+DIDN
	 YlZpFniqBcio4eJqgh+vYvfJCq160ulCkEihoaYh+qLqIMyjpeSHOVNFtdL9G27hz1
	 T60BsY8DlKltitrezxyOvJ8JUjNCI65lp4bIIphaoSBy709UWky/c4X5xa/CTtz1hB
	 XQoLrG3+yY3KZwlg0mrFFBljKQWGPJEWP1TO5GDesbcN+pno4tdqROHLCHYHVRH2wv
	 FD/Bpe+6PjT5Q==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 666AA1F008A7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5E10F3A41018
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:18 +0000 (UTC)
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
Subject: Linux kernel 6.1.192 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:46:16 +0000
Message-Id: <20261106184616.release-6.1.192@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.192
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.192.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.192.xz

Linux kernel version 6.1.192 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.192.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.192.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.192.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.192/v6.1.191

