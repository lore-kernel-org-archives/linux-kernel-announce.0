Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3AF125A9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775911546; cv=none; b=pYOvh6bux1l+N3QhQO3YgfJ857tH3HbNfgdD795+MDlERphDAA/LFma4ZhdsW1gRzLijdJ4ncpcj4qsSgl7RJt0q5CzQH3GewrWzkGBqUA8z/XzpXbWurw1OM/Qfit2FrCMziZkWOi7YAJEY1gjd0Jvi/nWFaPaGYeI9fR2vLQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775911546; c=relaxed/simple;
	bh=vG5BYOFR9c2BST9Am/MDiHYMpPTcuvycun+h2a8ZggA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ls9+uHIiGhuLHl7Kt41UKSlBBN88JXEykJOv6A5U4dTg4OudUNhVVCZ80uIpzpf5jDUxYw8BWg35+Znw76iiq3OYWJiM4OieXtGqSXFXYFVmparehnLTNFtsfrTEmOzvU4A754TUnF3CDiUgqSCywnh8RnOXVDv14pM5S+RadXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775911545;
	bh=vG5BYOFR9c2BST9Am/MDiHYMpPTcuvycun+h2a8ZggA=;
	h=Subject:From:To:Date:From;
	b=HG50v6wHHQsf92wxIIBINT3lzNFy3Yzn06DvhbQk+jpEUghvAsMfKB0ElZBeDG2LK
	 4QaBRvPIqmiwC2TzNQQ5+6CaP7EfvBHEeDJnwxAAkSJLpjRURBiDo0tAIzI4P8/FFP
	 1LGU63qWngpfZhPA9jEwlF+hGftkc0mpyv0f/Uls=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0AA5C116C6
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:45:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 8127A3809A8A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.81 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 11 Apr 2026 12:45:19 +0000
Message-Id: <20260411124519.release-6.12.81@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.81
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.81.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.81.xz

Linux kernel version 6.12.81 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.81.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.81.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.81.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.81/v6.12.80

