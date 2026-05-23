Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D71D38F950
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779537614; cv=none; b=A5J3LAMQWfQo7f6upkn1XcOQyvVhhIJDe3uK0m9EaVgf6J4F7OOUNgDLLMkgirrSGOz5aGncaDzGPVkyPfEIaenkFgj8HunEsS9eN6DuiImXrD8omVzYfZzPFKKbG9nBIIR/jjX7ZOX/TlrEK+5vGwZo738lJCTgjBdkxvlLjO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779537614; c=relaxed/simple;
	bh=g5LmraJsLqvkKXAO+EsEl/bq6zMLboJPnWikhU4A05U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SqQx54ySE8YmLMR1F0SY/KunKKnUxbNsmyyzHajJ1gJOx47fpnPlOjaF1JqszmhUniQnPYbSWb2u9i2XEDGodJHmtw7eoPJkO74BTfV+h9xcC/oXJhNKIJEP3YtwcAprXW6fmjKlmg/3w9Ao8Vt18zcyqsUXz4FzC4KkfD3ms78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779537614;
	bh=g5LmraJsLqvkKXAO+EsEl/bq6zMLboJPnWikhU4A05U=;
	h=Subject:From:To:Date:From;
	b=Tvpvh/kKr+XecbjEScfItQK46QpubyN2/a3vUXvr6mBQh2VyoFO6BfiNol8zG24yI
	 2xM9AaJd33p2SDCueIMasFTBKnmAOlzUfYrosOfIuQbqnsFJrHz2svh82vvXxkNS7p
	 Gk3sAYoFz/Ftydio947ivzNW6ZdS07vusHENblZc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3014A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D36753808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.174 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 12:00:21 +0000
Message-Id: <20260523120021.release-6.1.174@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.174
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.174.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.174.xz

Linux kernel version 6.1.174 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.174.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.174.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.174.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.174/v6.1.173

