Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794912331;
	b=Pc4kTqQnEiijhbBiRI2Cf9Qt8mBQOa6OysvTIrgoY9IOjlTNdh284aFIoRJyDCcbGt3R
	 O81wqVHix6hBFVgfbzOXSSmzjZQ2U/jL6jRS4lEkrR/NuFz0e6RcPp93f2NCV5LNXPjJz
	 TgRiVcI1BnCEGLLzZHwRpJ4p+2dFRRgopG0bhEfGKkf7icD+M0e5ysfHUzqL2TyZyGrle
	 mxaomv+KZtJa/+xbxR0dN8Ngkn8rSlzutmM/O1TX7s7BNr79P2drFnDMrmHvTw/Rr2agE
	 3XDadMbKFc/YKv6oxULJFlBcfSDzZoTb8HJZI9td7JZOO2Nkpf/cwrvY4YmClcudMCA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794912331;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=065bJigkafHQ23uqYCqzw4pqmaxLWrhgrfE+rwsbASE=;
	b=Dn2Fgrrd5CLBQhcRgIXrK9TOYDLd1w4SMSWYmXxpnvqcEvrcrXJw53ZlC92fJY+b0RO2
	 L7fhWI8/G6ILa81+uZXBu24kifNbEutBWLzKrDAX3csJRq8ythZC5bByUIfrToEbogr5y
	 rd1WlCiY+O5tM+3PX6pAkSLp71Us4cr96tc7ot2Aj/Y6r/dHByy32fcw7SaQz8AcaCGnU
	 MXkNnSziVoTOM/SEuj4e/rQ/PVo11rnfH7w3nsY47+6Wrz6eeCnzU6NZk74gswskcs1IY
	 Sq9NuaQoOq73SAJ669/fnwhYQ3eO4AutzLDBNBIbLnicnDmh5a8tU1Cn40wxjU12Njw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C106B606A323
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794912331;
	bh=065bJigkafHQ23uqYCqzw4pqmaxLWrhgrfE+rwsbASE=;
	h=Subject:From:To:Date;
	b=Jzr+OHOFHK8UDEdaeRj/aTTDGCfeExaWutqXKy4A+QjHzyoqnGvBDnpP47MTTxJog
	 Kv4MLl6XvTR7mhi8gJE6nqlhzj3PqjWYG0MNercFWQIdWxw39kctN9J7TuRXXuY+Qs
	 nRG0ARWrq3b3vwPELU77MfXutftozsOhGSr92ABqrKNyFm1j1lZ+V8YC3UeRe9YN9b
	 SODTfXjgd6hgsh4fgCNtG2emHfc03zyOUZgeesbFqLo+S/M7PzEFaoenOATDpI9HnA
	 RCT7kMZWWjoYvC1v5I2kr+JagdUAbBIY/F4E/djp9y3grPNwKVKG0A1EEJIYge+Bxt
	 WJLkXKNJ+7DVQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 615681F000C4
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:45:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3CAA73926647
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:45:31 +0000 (UTC)
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
Subject: Linux kernel 7.3.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 17 Nov 2026 10:45:29 +0000
Message-Id: <20261117104529.release-7.3.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.5.xz

Linux kernel version 7.3.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.3.5/v7.3.4

