Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793989268;
	b=ERVeczqHTFm4lMe/UleKCQVtxWjtY+qFpsr909roZcMaZalv6/EhPpHSHQXbtgzmxNpf
	 5aLhS3/CsRoUR++J9L+Pefu+0csGKIgmlfqdf/+6A/x8SeEC0g/5ure8CE64cR641ohpx
	 ygEyC2Vf8gueRcSCrTj6zZirE9IpS3CzdUNOWCPuKz6bVOEVu5JsgjHf3QwRhOR6bKKbl
	 oTU8x53X2wVUl8+Rv4ZafodsXs23PSuR2bOqgpY5HMBLi2xBCjAd9NgjgYlz+0tfpEJjd
	 mPP+ZADn2Kn2dgKAHZFqgEU0BqzTiecaRyv8k+W+XUmvRJ1kc74Htnfu3Be5eERP4hQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793989268;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=JOcxYeeQ/vJyYbYhA/lhxUBGgL2O7MfdCUJp55WrE8Y=;
	b=ddodb8MIi1mHDxFhyFEOzHI6zUgp6xemm5XpxAlZ7U1mlCubuuNgCa/oPQNHcAG8a7N3
	 BoQubeuUvpIQZI6DXViO+MiIsBUpfvgO0rEzfgMJih9a3x0h9BIdw12TxVi8v/z4HrVM+
	 cTPbY1sh2lkYhaSawyN6x+dxpvvKgFnUFtapkF2FxTk+ScBKgCpYmFbtIlmzme9BPNeew
	 09iJYwg51IRk1zcAGwlQ4F0mlq2XBc5OCWWEkzBFKF59jbNVlmO3jzoWcYktHfguMrqbN
	 t3sGElTH6AE3FBuKkhVcTcGEF6nFUYAIGEs0a8KxYm2GJiMwg5JfBDEyhOrNF7QBd2g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF10606A326
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793989268;
	bh=JOcxYeeQ/vJyYbYhA/lhxUBGgL2O7MfdCUJp55WrE8Y=;
	h=Subject:From:To:Date;
	b=p1mgMieL0glwCnWKshETulMZ/uEtCB9ZekHnxMyryKotKuD2KR25Coc+WQOAmtOUd
	 ibL8GpX3r/VYFBlsmt4O7dCrk8aHgtAwK3rPVdAXfGlaHnYUKORntK2rQuszUAMAFZ
	 dSCG8YVTfKBBKcE6ZFDDrNVqXGkC8gWs+2mts/D3VoflBRSKYnwKGXOGqf7Cf9nGEC
	 whIOBlAeueMkiqAEAUDos74KUWXD5UI5OnhiEFc1Bj0BOv+TiIkOI31RiOKR3NAfri
	 Xwk0J33Av7RSZbphsvjgdCJH0x37y/7aPJT/KxkovKIRZ/6hG2rIpw2WlJHV6bXwa6
	 TIVhl7beHN/Fg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83F121F0089F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:21:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 60A893A41016
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:21:07 +0000 (UTC)
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
Subject: Linux kernel 5.10.274 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:21:05 +0000
Message-Id: <20261106182105.release-5.10.274@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.274
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.274.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.274.xz

Linux kernel version 5.10.274 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.274.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.274.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.274.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.274/v5.10.273

