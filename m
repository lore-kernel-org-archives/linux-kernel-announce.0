Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499E63806AA
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775130337; cv=none; b=cCNwMUnJfO9FGVgn+K06N+KdRsecwDklM4FlaQKHG1B1kTATjxzFhgubz1H52Ok4un4XpYLqgMFgxmsVarnoDcFcmLSX0AAhwmD8RG94ZLN7/wIsTF1gs7i2iiOzADSfyttdMQVnXjxKEUb8YJguJoTWRqrE93xGyt0yZCblWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775130337; c=relaxed/simple;
	bh=47+LcPnA2L+0EnP2OXLHBXe345Iq1umFxzpILxg59Yo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=I7xUSvFXTCam9bAcpTfQVh389bhbhfOIVpK/1pV9QFw4YmPtqr0j/alInKUZSZ5FX3ls7f99N9pDLTOFd/EVn0lvl2o64/U4FSm+V1lSY88o57+FwFzBSjNOkdu5tadfKxccS8lhyzd9jTfJlb033WMtCpvFf2MEfGnTWC8eR48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775130337;
	bh=47+LcPnA2L+0EnP2OXLHBXe345Iq1umFxzpILxg59Yo=;
	h=Subject:From:To:Date:From;
	b=MCrTA17DXP/WgBqoRy4nC5W3FznQ40wHOLnh61Ygg93WDHlKKVV+1Z9tO+jTA9jEG
	 WyEEDxcU8CNvHy5wtiDm+TZMIsvgTFyM7h4vGog8DEoH/PnCzueo9vuCX3b/ohlvXw
	 Kl03t+qgo42UrcFPHAk+QBENjoKesvUvRl1rzY40=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 874B3C2BC9E
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:45:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05A69380820D
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Apr 2026 11:45:18 +0000
Message-Id: <20260402114518.release-6.19.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.11.xz

Linux kernel version 6.19.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.11/v6.19.10

