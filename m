Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793362226;
	b=PUrCWru9dDO5bUi3r+OwbL+E672Dp1rq+VWH/jMULt/3tuMptNuX7EEGuZqceDCRpXRb
	 Nvxk7ZTS2ud+7pF+IuE2D3141IMuJN/alzEaKBrV4ljfb6VwtDxD6HIhF9ATAaT7xyvbf
	 DvrZGrk/VprZowArVxgkNeiVmDoXBRSeyIkAKdK2tw7YFEsa2OlPqR7Om75gyY9szWSSR
	 3Vq8OhykqOikmQMUpEmSKrt+YLTKTnHtCVxKRMNnyJ6Age/obPUX6GPAZbVqoWQ8UmHlQ
	 j3yhamIC+EAj4wcxeinLsoDuF1sKuLNPAlDD+yHtY8HGbkAY4zpgSHjh7zcspc5fCMQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793362226;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=jh3ku0f3HSginNNpaU3pdX5aaNBt8cUlPO1t+USD8pA=;
	b=wzPRXy6UpUUJrtO4LloyRpTVlPrG9w6jtNpvwt+dG/mAPpliput8hrLBNTKMrAfXIzbw
	 3Aqxqg1RIwkk2sJoiC67zvVkkZAMgeK7u+HhbcoRvkUqTdrDG5/f5F1tII8FB4Mkph+1G
	 IcSx3f7pQeHBlwNA9jV7BOrDfq4AX4Zyb4CWgd4rOSJwzdeKelWjZRUzxJ+vyz2T+Y6+x
	 J1GtjoQBVlyPQLyaAYmW74svNE1XwVfNMCrA/3tPfSuof0E/Uvsc7RutpdZHYZ33cKdTD
	 n+fvsmU5XvWl4U7VaKUONpOPq5WSL5dwHqzDuwzbpsgdb+FNxVjPpNlf0dnoHp4+74w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C5606A31D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793362226;
	bh=jh3ku0f3HSginNNpaU3pdX5aaNBt8cUlPO1t+USD8pA=;
	h=Subject:From:To:Date;
	b=damWEtlyr2ttZym8msiKSjQEj2iuZViqbVsw/hGc2Nj8c30Qtf5tSTdVpvl52e+xU
	 OgxllBF/bwl281q7dGWAesuDWFi5/qxU4+/aURl9B/CM+wllh/YlY+P/j29f/Oh6rs
	 eFpxPj53lqKcuDCCT96hM0qQWQ9dx+/t1MOboYB7QAU3W47+2cjdEEzEqgrE7KnqqJ
	 uw9OCocERaXDz3Hx9NXQpA5F718qNJf2ma27C+18KYNuP4lTC6NQqKCKHca+DLIVjF
	 wcjHN3ql5tkQf3UYMqGzwXKgYFcOgbiipzWJ2IwzQmy2Rr9Cv+yiS9nqiVOxTCmYb0
	 4wC+CiIo2pc4g==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1D271F000C1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:10:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC9AB380045B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:10:25 +0000 (UTC)
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
Subject: Linux kernel 5.10.273 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:10:24 +0000
Message-Id: <20261030121024.release-5.10.273@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.273
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.273.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.273.xz

Linux kernel version 5.10.273 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.273.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.273.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.273.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.273/v5.10.272

