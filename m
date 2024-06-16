Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5F014AB8
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718539244; cv=none; b=TKQnMw3sJfnz/ZRsT/dyCVo0GJ7IGEHl0qdiZ59MhIG/qu6Gx6cWI40vHj96+DdOtr+SXwYqI4Coxw2Pw61F51L583qx8fjH6E8RPgYqmvmbZT6Pz7v+pBWGFU5dQiB1eRyKQHeylwHC4iVlRltitjSsodrJKEGkCbyYb4DFtdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718539244; c=relaxed/simple;
	bh=/AjM8Ia45N0pJfK7/2CyCUWxLPvE4Md1dD8sAEerdiI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CpOLFH761P3CDqHRkiI6nchZbtxRqTugvBilPAONhMv7CUPHYFjqLFfH0t/gOoF1V9g0UQX7j4eliWwEEiJ+cvCNjrqcRddo4y0wUPZliLN6l6Iz32ZTZaN6x+6mJoQknJnhQ4gY9JcXTNzn3NDQCKvNkhvo3j73rLASlwfYmRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718539244;
	bh=/AjM8Ia45N0pJfK7/2CyCUWxLPvE4Md1dD8sAEerdiI=;
	h=Subject:From:To:Date:From;
	b=n8LC5z8R+xkL4ZLj1HdT0C2VW522FzMBHGUTLxp26BkQoyWrXyuGziseFq4bn+QuJ
	 V95AE7jkzXhV1YSZnJxzIB6kpKTACgtQ9YO2jRZsDUdibLe0BVk6cKb4aH9BC0i8+9
	 cZY/O65JoLxHSNt9y96oi9sH2du+Jg6A8x+BxDh4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CAEEC4AF1D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 0993FC43613
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.94 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 12:00:43 +0000
Message-Id: <20240616120043.release-6.1.94@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.94
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.94.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.94.xz

Linux kernel version 6.1.94 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.94.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.94.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.94.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.94/v6.1.93

