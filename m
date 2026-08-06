Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CE048662F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038099; cv=none; b=QXu6tH8kYYyBpGKp/IfN9RomxItM0wAVNh1Y8wB8GQFQ0AkjgxJWvcURzwrw6p3FjfpaV1ZG8vqKEcyr+UZ2iB5lk5+yDR6oNyUjgQA0zvGG+WJkBSeG4BPYsQFeAGkVInan1XjOmeynNCc1PLb5zizablesQOBYg0jwsKlnBGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038099; c=relaxed/simple;
	bh=B0DoA1BqfyRvnnle8aun4fI1Ikj2vIroFHgkvIB/qmU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hRgjRKOUR1GJgWS8c2r5qAi+MrNuzpHNRge+zlypAEhAY+zk9vkv6HlzfklxcLSFulHivmX70oAGfwmVgtgPH2FNtZaL+RF/oPowvMegQSqsKJKIwUY2Ef3J1QAtXcCtMuHrxdg4YMUvuH3eVT3zAwy7QrWzyzOwtRD7On1v4SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786038099;
	bh=B0DoA1BqfyRvnnle8aun4fI1Ikj2vIroFHgkvIB/qmU=;
	h=Subject:From:To:Date:From;
	b=v4Z6Y+qVRuyzfs4MhGMvAngVheGS/mmsBiYKVjn3+79/uFS8zCEXEhV0nr4+RWWJJ
	 LKrDlGTQ5xFnJA2plVWdU0Dw8vr7sWHs8r2dtLiVwPeOfVsafRBhJpRtZmwONArjSn
	 elRWD3UObqPRu8qBebdadYrNIUhERSo9nBZJhekI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 288DE1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:41:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 966A43809A12
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:40:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.181 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:40:54 +0000
Message-Id: <20260806174054.release-6.1.181@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.181
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.181.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.181.xz

Linux kernel version 6.1.181 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.181.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.181.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.181.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.181/v6.1.180

