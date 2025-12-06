Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765932E1C7C
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765057420; cv=none; b=L3x6KVMcmvEFKun5yM9wdQg5RvSlRL4EgqyqhtqPpbYTnuAL4c0iQfGebiOqFx/ralRC7zVFAdaKo6YJ4xcJgST4FQFhvayjwwBMFYK/0om/ow15AnGQ1ZaMMyXMTGHP57XsZiO7gQilXPgkyxKnougQC1sWnwA0PHcZwi3jxHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765057420; c=relaxed/simple;
	bh=9/SKcsDgG+iGP5lvjX2cQwWDNx1ZmcVUBngnPbvD8g8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XYJdoyIGwq/809ClUNMkXZgcsMVCmLvHqmB3qr15FyMZFA7oJueonbSCoytrdmOugzKRwrZUmB8KhWNCir3ae4S8u7fc+XbZe7UdPSPW84BIiYTwad1tKfb6eU+Ry/XfS5Crvn1XHTHLtfRd+XXqSYgRo4v7NzxAr481Z03Z+wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765057420;
	bh=9/SKcsDgG+iGP5lvjX2cQwWDNx1ZmcVUBngnPbvD8g8=;
	h=Subject:From:To:Date:From;
	b=J1MHR94lgREtZiy2dg3tOvEZOhNLGPE4kM7p1BqoV3PkUCmyZNah0C3KtT3ijvTqv
	 iB+TKWJRYIk98djeJzfBP48Foxpc4jEMRDdPDxf7JSvmcpaiTl8qOSxodGdNassgAK
	 L+KVJPP1o7efPzoxA+/MosFWs3OPhyCpht0AZWYg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48AD3C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:43:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 401743808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:40:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.61 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:40:36 +0000
Message-Id: <20251206214036.release-6.12.61@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.61
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.61.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.61.xz

Linux kernel version 6.12.61 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.61.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.61.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.61.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.61/v6.12.60

