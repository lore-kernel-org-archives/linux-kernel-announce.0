Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4320E030
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 07:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787900887; cv=none; b=QS1PvJfDhBWysAgTHQeLRaftjWAY1lHkHGHFPQd/ayhs/QcViJMsD6sAMVioFGm5RgKYx3zbR2Griog20GG6DKL1GvsWpWBmDUilJQahFZj2Kwy0X/Gk0OA1xJEc6PJz3NqcREiudHwg4CBaFtEju2iqVy5exAq0M/nf23DhFKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787900887; c=relaxed/simple;
	bh=6EYKoIdk8LR06rixoPLLtb+g/7RKk7G1SOwqg3/qFvs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jUoDS+KfXN6WFmErPvRhWAhQa1YQ+k6MBrIhIvJRJ0ZyLdgIgrcYuCrADPBJ752DAY6qIjUPKGUMXbbHpg12XFZ3WH+i2R+CaaafaK38OY6cj3CASy+Mv+DpyxkoMfC2fDk+mChS3jxfQnaHVFGrY5cCPJXh3LDzQk8FyA5mt2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787900887;
	bh=6EYKoIdk8LR06rixoPLLtb+g/7RKk7G1SOwqg3/qFvs=;
	h=Subject:From:To:Date:From;
	b=acofGF7PNywu+p/T8tODCOeggtaQ25g6ArJHXFu+hZCNNhw5TwQKejbrBlPgobAzL
	 sAXRA5tnQwFhyoMw+/ki7h+G6mriRkNhdq4j/+SQf4PY9NtKgm6jYyU0VTBAh0HqEw
	 UHWZctr9076FwrbLlQwXvZVTyhHd/KSNaCHP6CGk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F581F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 07:08:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C58F380A942
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 07:07:12 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 07:07:10 +0000
Message-Id: <20260828070710.release-7.2.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.2.xz

Linux kernel version 7.2.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.2/v7.2.1

