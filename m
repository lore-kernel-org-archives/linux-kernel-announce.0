Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9215B279336
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776870956; cv=none; b=YdyZCpn07QQ+oF89PPmu7FgEIvFK0v5aC878QcukTWki5n+VI7j1DPLwALqHvImGvem8130zRawmYWs1A5NGlL2Xs30CuH5R2dpoo9AlfcPvNtD/2hPYOXl6tLoDpo4rFwj9jlFLjDwM941Bp28Gpa+ZMSXcVHelcMzQkQd6mTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776870956; c=relaxed/simple;
	bh=tDbE+gJNYW3AWQG9uNzdoFYjjHwJxTGFCPXC7pZzvK0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gU5UPXH9Yn314HTdAbyXXVTMT12r7QDkjdFCxw+hvMlbtvRYZL97RTRZ/pVIpwPkJ1tt6IPjkAyJZjUE+2scuVY/l/pj9sTZBsNu/2gk2WTj+Sl3aHjQ6kjm5gFQ8aBB4OUqrLJbLU89Wx95mnxqVuVIPoGiCrAvoIXgMmkYgos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776870956;
	bh=tDbE+gJNYW3AWQG9uNzdoFYjjHwJxTGFCPXC7pZzvK0=;
	h=Subject:From:To:Date:From;
	b=CT6xDgZtaRQcEw6TXVTPELMbOkFKEPoeyE/MEpe1qN0RzXojK4evse8Kbs1XsqHWl
	 pTlbQcUVPhPRFgJ/2HPu49iX5WfN6IQ73BJnFk5R0V/CXJ82M9h303B/xBeZfGFlIx
	 dK+5o02x1dX+X1tPd2Xj2SJPR6Kx6GhvhTdyoJNs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E398C19425
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05B503930232
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 22 Apr 2026 15:15:18 +0000
Message-Id: <20260422151518.release-7.0.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.1.xz

Linux kernel version 7.0.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.1/v7.0

