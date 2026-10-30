Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793363422;
	b=AYk3TZUZBdA7G5sTO9NQ6tpjmxpy/tnDy4NXlD10qWsVepGQYRVFGCd5f/IOgEEe+5sb
	 7DC//5T2wmcAlUwNwYJ1NiLGHha8X+k9J7UEpp2tvnLeCizp39E3eH9v0Ldd3f9EWSgc3
	 aRgf54B/rlYnE3Psan15L1um+Q+fQKrIyVQus58RqoF2bIjKdnxwxt1mjw7rmzeelyniq
	 KjSIHmwON0Hq4nkgqEKiNEKyRzYWqChngc1VCwpACyhGEeH8BLdGyCAi/lvE8xnBsbpCd
	 FsK6eQ6nmu8VWe1QhVaLVgbIJiwcXQlPr3PfQu4VSin8yyX6z3jvCDu7z8CvkQuilew==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793363422;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=rTpVNjCf5ryfCbdEE1h+qmKTVfLU6A5bIOVmT0ePYI8=;
	b=X+zUwvyFHUW5CzayATe2o4UKILDS+Xd366oE2wtV61lY1OHRs44SDERHGj2BpMJZWxlk
	 BRiG6btTQ2zyivGf8v87a0ZxGEXSwYSNHV4U6mc8z9v4BacPEgPHJ826Fjjq64PQ9kokD
	 kP3M3N3TdWJQHK17lAsWJS20pigsVfBzRMNH2FsIrEl2N36SK5Oj5AIB4NkCC7forQ1dy
	 2DybIIl7XHEud8yQvJHRV0dqllIyhgCMDLYSFxik7sZHJxFsyIsbeeA7/aN15ONcpePKx
	 6xsI6vw5QzLBGUBDJQN2pf3fGht54m3nocgI00Y/HhBelhI0XlrpvWwP2nlsx/A2T/Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D67606A31F
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793363422;
	bh=rTpVNjCf5ryfCbdEE1h+qmKTVfLU6A5bIOVmT0ePYI8=;
	h=Subject:From:To:Date;
	b=QxJDky8bLGQMZFJObbVUNhiLBP7BZ9qYVIZclMx0h1a5S/JxXYnkeCBJW7ZXnr4C/
	 WoiC2LjHmg3A6nNNtU7Ktpjs8FegMF3WSy376awMHsIOQ+cV86AlA8eyi91PzvGhqG
	 REYK4KnwtVy1b7d5TiwHOPoQ3VfChIJ+tLl9gzQ7pY0HiFLGlmTWsH9EtQfUBDiRde
	 aCThrtc9Ups9pk0eRpEN3Xpacvb74yNDaO1Yu2biCOmUqxKmxkKMgYMEYcYMnELUvQ
	 f621o5J9ylLudkdRK7Rue/AIgSOF7tGjli9vvCntIwRDzNjM0huRaeMPH4EfUedDWs
	 hAhi3GzxYfqVA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 939A31F0093A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7F864380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:21 +0000 (UTC)
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
Subject: Linux kernel 6.18.60 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:30:20 +0000
Message-Id: <20261030123020.release-6.18.60@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.60
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.60.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.60.xz

Linux kernel version 6.18.60 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.60.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.60.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.60.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.60/v6.18.59

