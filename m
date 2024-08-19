Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9BF9DA
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041844; cv=none; b=dodGp8ZgAoKkEMobOyQhm7i9AhHBJDxlbzvPJQPgadOS7a3VBQdm+6A7n2iFZMHNolija+u7uedvgmmUVFKLACsQYzx9co3PMWRSkCKbpPrDovfOhOi01yMx6idxVWSefhiE8LBsYeQvk0wFEWuH4BMr6SMeSzPAL1eFMJ/d43I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041844; c=relaxed/simple;
	bh=DNQSXrGIAwCaIKn3d293zfg0KnkQ2VaqSvA1/kiw6PU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U2Pmy4zzMSnizdagtVu0OK+Ap87cP2f8heeobP+V4iJLQ+iWTnFP7WroKnEwHAHm5gjH6MFzoAkLoRQTBfma+WDKIqiYb2prR0pBgK+tXqHBQ5WOrSGEGmSYizLgNnpdBFRNF2Bc5T1KdmKOEQYP2F7JHux6rHPbN9k48BVtPkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041844;
	bh=DNQSXrGIAwCaIKn3d293zfg0KnkQ2VaqSvA1/kiw6PU=;
	h=Subject:From:To:Date:From;
	b=aYApxky2oPl3CalwVrFiJswXDofI5ynFSsLuHAAE95jzNA0pcHx1bMXwO3ekmabQ5
	 KJ9Tya7SnuIhINLo4qiq3xCCM+mSaSzLz7IS7jQNXdv2kH2L2GIrRSHcAW7QxW4GBH
	 ktK7pj+dZCZXRic8WKPdIEZHW/GbxP+6K7mpvijc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA9E3C32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:30:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 51EF53823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:30:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.47 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:30:43 +0000
Message-Id: <20240819043043.release-6.6.47@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.47
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.47.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.47.xz

Linux kernel version 6.6.47 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.47.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.47.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.47.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.47/v6.6.46

