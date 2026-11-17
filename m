Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794911427;
	b=PSfxYyU51YFCziH+kIozeFIIKlEFBImJxG4TW8OvzXlOHGKbXSQYzmvjppi/lGXcu8aP
	 Y26cgEgbs4Av3k8Ph1SQ8zlYiUovkv2LOukA+SGEvWOTT7HKLoBMQYzUhyv+PlRCETqre
	 MCKGlj7dcNC/Np0dIh8RdVkQRopLb54we+BOXFulr5DkMeQZvnmPpIekNzd1k3wAe99SU
	 GpI24lFp9WxrzdslIs4DeOOetS8x9Xe7PgL6rHIshJrkD4PfoxjS9OnrJFWgZBfEaJJQD
	 i0O6gBXnzDw4HVmtBoVnmDHTMxCC98++XPcWy+9RhnaBYMnjFxIC+1c4iPPrjG2RxpA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794911427;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=SJUZwigSqGytMn4uamZ2nAyoRH56aLuxswWLrQswR5s=;
	b=QN3RzCXe8r/eB0FQQQGtZ5Y3Qfa1d6YrsByokhYLlicMm2mRe8XR12PPwSe8hVFsRVRN
	 HCU7HtLG9EG3s8mYDTwi8+7+nOQ9Z05mn98LUmPjaaLO2UwHs64KwDWpOeNbIq9Tc05FU
	 kYECMVr9wYkAAkTF2sC53Ghkc0c7XrCy3CT/C0xFF60mf0ocxVWHeTWzcUxdg18Nx04KJ
	 biIqsRAVAgjcYtitinVRnR92srCc3/KVizN8mz/7awJD5xbXh+Qi+5k9YMImlvPgotnCl
	 /gogOoqzwkNs44SKpZoRGfLSzHwWEKdmKgQyr9THy/U/I+D7h2yhxBS7YbM2Kaktp/A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF80606A334
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794911427;
	bh=SJUZwigSqGytMn4uamZ2nAyoRH56aLuxswWLrQswR5s=;
	h=Subject:From:To:Date;
	b=J5WVjeHD1jCP/yPHdAGgyV23C/oVTn9Db0g+Ja6bQpnxwCCwTjbMvzV7QZ/PhSSpJ
	 2VuPgx2goVdlKsqJwjnyhzrGMx7z3V8zjr371X4uTZR0SR9Q6VoqOMtsMQWMl3cUvO
	 8U+RJ8BuMIz+vJJRy+l9Rj9tuTpZ7yVKpdZWhOKF6Qhowy/VjD1uznEsGKzHA2Plzc
	 lHqYo/boZ1HI5w3WFVE5y+Hlj9922pTKHg6cYxmBse7AOKGabGqRzB3EH2TYJ0yj5k
	 LOEFh8v22DuyTcupeCm0l/EogrLBu5HBBnwi6fwUMbPND6me00F6LYv8qqpbiEqvDh
	 odWtLzs3hUJqw==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 455071F000C4
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A31B392664A
	for <linux-kernel-announce@vger.kernel.org>; Tue, 17 Nov 2026 10:30:27 +0000 (UTC)
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
Subject: Linux kernel 6.12.118 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 17 Nov 2026 10:30:25 +0000
Message-Id: <20261117103025.release-6.12.118@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.118
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.118.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.118.xz

Linux kernel version 6.12.118 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.118.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.118.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.118.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.118/v6.12.117

