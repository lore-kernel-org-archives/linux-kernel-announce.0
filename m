Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FAD36C0CD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329319; cv=none; b=cZkWc5JL1Yyrh+rgr8Sjk1M59KcPO73e04ZJLtfbuyPbo32C9BkYNasLSZbccSD/ntgm5KJy1Pc/HzVR7o/DbbbbyiOFi9VBXGl8sx7OwBBFPlUGFG+U1u/MOmPm+IFI2fVy8Z93FcNJveZ9O6duO8CZB3gU6p9deMVyvCUPiuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329319; c=relaxed/simple;
	bh=cdai/iRBqQWFZExxZa4P5aK3mKrXs9JNst23NlV1IRo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sUqSdWdtN2SnxMwzR4B4g4/zgeF+pYw9CtfeUrPTdMWmQx+4bzO0H4B/HNY8holqdtdgQYo1DB/ZwMkjEpavxPsM8cFGfJtCSuhCCF4upk53D7JZPXjOP8TWqSZWQ+nTYBnHRW0siG1GyoL1Felmu6hfON3cG4rpRDJK0hWbQf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780329319;
	bh=cdai/iRBqQWFZExxZa4P5aK3mKrXs9JNst23NlV1IRo=;
	h=Subject:From:To:Date:From;
	b=YH6NbFHEK1rX7vsZa/MRSrL+NtqHaMI2mdm/9ttbqb08AEAOo3kS+IRhQuzwomYV7
	 cX6xvKko5eYg0B4Qz9FUds+Zbv6AY5e1mGe/zpcV915JGqqFuls5dfxqfz9VHOF6wK
	 lu7ynzXw+5SK4+G4Jb+2BUf+m0lkRlqy712jHrA4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EFCF1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:55:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19BD938119E4
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:55:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.175 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 15:55:20 +0000
Message-Id: <20260601155520.release-6.1.175@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.175
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.175.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.175.xz

Linux kernel version 6.1.175 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.175.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.175.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.175.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.175/v6.1.174

