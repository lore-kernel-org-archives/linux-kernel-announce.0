Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C92D217738
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426430; cv=none; b=I66aF/uX54tmwZ8hhjfSS5g+IVAaEKvhpRd8rGN3kXzpS4D84vg8BjvjCE1/nXrJTEpgaYEE77mxXCslFSOAxN5aLgjt9hXwZGF4ElhHE1fel6kXXGc7kpYDXgeWb4RsNylprUVr3+hWIVvCdkG5gvs7hPa9vHiNhnelo6IL78I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426430; c=relaxed/simple;
	bh=uZpSjtq68DF4BrLJCDQH0UM3hOKlnlMgm7HH/ByU3bU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GwCb1g7o5euyZUhU2+BAgY+YL8rdEQojcwf4OupKb6UG+wHQRMLFc9caPn1FZDfVVO5rwejaCvEXsucv8mdnrTZcYH36VihkabXmJ7uXXS2S1pPfcranvKXoUJvpQJhBiJ43D+kkLQoTKHl367KTuqhuzTvEDQH9gr9vd4tWnac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736426430;
	bh=uZpSjtq68DF4BrLJCDQH0UM3hOKlnlMgm7HH/ByU3bU=;
	h=Subject:From:To:Date:From;
	b=PSG5R+lDIuy+idwbeH8etwOWoBeBASt5VWKGFsj9xW74YDcsr6BM7t1X6DFoMkWdV
	 IsKhXNcfxGfYkO37QLsEmqs2sRxFQHiCmM/IW21X9BhCt9zO9BUjcPqWatPO3GAH8b
	 seI42xvO+AJ51JxNKY6gFpmr0IZ/0SOqNr/mNw2Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB5B5C4CED3
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C1B453805DB2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 12:40:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.176 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 09 Jan 2025 12:40:50 +0000
Message-Id: <20250109124050.release-5.15.176@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.176
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.176.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.176.xz

Linux kernel version 5.15.176 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.176.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.176.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.176.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.176/v5.15.175

