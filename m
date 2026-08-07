Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735DA4B04B2
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786083363; cv=none; b=cjzT8CIdeqgFC5ysPD1/Ea29g8CHF2/U40MqkLmnCtBhNNlgA0wFOJOzT+KUJxsWbUTqL0poXxc47xwn9D5ghL74XYqFj1gigbTc1/pwSNCDtVP4nRsnLO2PaRO3He1/VW+8N8/Smp+5ZKuP5qtkxBpHTRu4fwkS3Vk0Juw1SFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786083363; c=relaxed/simple;
	bh=SAsWCKSiFHZTZKyx9oCm165whvRGs5e9TkGTPAuf19c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Do4nVonKb2CNm2qiZPb8LKeG8kqX3wyUQoizsozgmSJjfQIutcI+mop9Iu2Hwmx78QrteUUbkg8kbTJaugmfU1OMiEX1CCBgyM/186WIrTnKxOiFtBtzh3m3BOQlyRWVARsjcg8ZU4dRWo6gPi0m8wu43k6FY+BXAhIPNPJbNqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786083363;
	bh=SAsWCKSiFHZTZKyx9oCm165whvRGs5e9TkGTPAuf19c=;
	h=Subject:From:To:Date:From;
	b=G69xsXKRSu68+1QVu0cgTDlzOo+zn1g8NmPmIY0V5vyqluamJMyonlS6bgwv7qo1W
	 IDNsNLskQfoAPng7d6V9NnZVgSUPiYNRM1A7Y/bUYr77se2Nkn8AzNMXEz0DqXK7RF
	 F5LGPM67hRZg5QWYM7Snm92/i7CSBZBx4+6TUc4s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 161DB1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:16:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C4A3380A961
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.264 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Aug 2026 06:15:20 +0000
Message-Id: <20260807061520.release-5.10.264@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.264
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.264.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.264.xz

Linux kernel version 5.10.264 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.264.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.264.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.264.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.264/v5.10.263

