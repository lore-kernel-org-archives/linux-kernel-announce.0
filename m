Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B65320F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 May 2025 05:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748235902; cv=none; b=doBKdFLvXlum8CCv2oppZDxNpDIViiMkg7o562En4r8GLDwQ3O93QGUxiQa/pqQ6cFkiLmElLj4Tu9QPquGyyUZ9By9tSZvxhgJV3umSl0TdeIL0sFnRqaQEvkD4KUIjQ1Ucd2jYDje3uPBSmJpZqrOPKgcr1Zd4zQCDyvat8EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748235902; c=relaxed/simple;
	bh=+okQfoDnDCy0ojVRqzHCR9wpfc1Qqzllac01bZY4dmg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f39vDBrG7SeUdrtkAb1t5k+bR7HlnYy4eFs3GQo03w+TGipLM1gmEOnnLCOAgVkifyOD7N7gWSeZJa1J1bNfw1DoF4l45IKdbgg4OD8K4TxHKjhg6nWEDRcp2FcG9qpKSN27wVAC1+Rt3ZYjMpwOVFzORaF2EHWpli3a88n3hBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1748235902;
	bh=+okQfoDnDCy0ojVRqzHCR9wpfc1Qqzllac01bZY4dmg=;
	h=Subject:From:To:Date:From;
	b=uOSrGTi1dh09FMlIyeJvLw6N5AkVhuDoBWnHCarQq9ITZ0TL3BIC4ffCe+Vth8EkE
	 17pNe6m3HtzqfPQg3KETs4IDfeClpUkZRoYXdHDh13KxnzoCH8DTaEyt92u8C0YYFb
	 syXskl5t+6kqJ+vvvi5AV/GbrhO1YRH/Ghc0fNL4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43D2BC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 May 2025 05:05:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F098939F1DE1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 May 2025 05:05:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 26 May 2025 05:05:36 +0000
Message-Id: <20250526050536.release-6.15@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.xz

Linux kernel version 6.15 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15/v6.14

