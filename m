Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE2A381707
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864847; cv=none; b=T0tBBiEhvO9O9tjy6G1V5iLLld6qQPnKBlnB/oJXPfvWHTD2fiAYHAuLLBPk1KVF7o12IERkuvhwb08y0/W4Od/bZsFWKhgn8idfs+Abld57zgnHXapPMc+NdTMxFG1l2oJpELReRREmD1dhxeoRqIp8r5DmKtuHeQ0NoEAdWko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864847; c=relaxed/simple;
	bh=15isR0DTNHYmTd7l9oV5z1B2FDOBlYwncAogF57ombk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RQXfS2QGhWWXbfW0mjdJNXJOQgHAKZZ9p+8UBYCjW4bzHPNBWurDvcN8+a1B8HEedB7sWFbOzauE1XJLH1qMX0xhxz18rgiZOQoNV8dXJMvOYyF7CltjaYa248p8dWlBgvu4xg2yevqWFdybofluBYnelzzWuNRW90kFmFZTrrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1767864847;
	bh=15isR0DTNHYmTd7l9oV5z1B2FDOBlYwncAogF57ombk=;
	h=Subject:From:To:Date:From;
	b=kRbOyN51BO0IH45LRhvvyMnR2Y50xDmnITlvbY9apkpFT+Un6gcApzjszuVZKLpqA
	 vTh25roalaVEOtIso0ayE/jqiZ44N3fxts9CpZ38SkzSgoPp6i+CUd4GGwU33gxvTV
	 pJz4zofi6wY/A/o3Hoak+M59rYJ9KY/kuyBpg5zc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED866C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:34:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BAE173A78A5F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  8 Jan 2026 09:30:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 08 Jan 2026 09:30:42 +0000
Message-Id: <20260108093042.release-6.18.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.4.xz

Linux kernel version 6.18.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.4/v6.18.3

