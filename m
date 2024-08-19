Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95548801
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041247; cv=none; b=ZDuBKBwPDYZRtYTFRgHHPWWm2NJoRCh/JUiZrWlZlI0HocxH5vDTPD9pVzKwzW9OEfqc2nGLwnnVs8sQBY8w5VIqTISaZHMC9BuCjh9MqecXbd3GOQvnmelqP4zmEcOxMwFzEhNSQofWdaxCEJuhzV8E/73LFfhRN+U4cprmq+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041247; c=relaxed/simple;
	bh=3kLDlDX77/m2A1LYLsjGCWHgu8Ucwm0qXAhUleSJLO8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=WuJO47bz8TWK3QRRzNISM6BS/avznE2p+YHDhqwPelyDbvQbU3dv7P3ZUElaHBb2qeZWEO1Eh5uwcIItzoq7ZXJC3qPENExAQi7a3NvZHr4eZuo4Ic1AJdKrg2VUgWovdR30E8QYcOa18/m9mJ7nGmuYtFgLt9IFU1u5bIjT8nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041247;
	bh=3kLDlDX77/m2A1LYLsjGCWHgu8Ucwm0qXAhUleSJLO8=;
	h=Subject:From:To:Date:From;
	b=n2+6Abl/7L+Z6vJ3nV6IoCwEKR5GKn3qDoZCQJHP7c9eCvYkXkYxBmh0kxtqVawQY
	 GcShhEIzJb7sAcdnwd8LZ5+uuh6647QH24YSpjygRbluhTwIeb+8eIXE+3rizk1su1
	 O4zyUxwn+E26CYVOiMHUtGJk1mz1HzefVERaI6VI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3707CC32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B238E3823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.106 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:20:46 +0000
Message-Id: <20240819042046.release-6.1.106@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.106
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.106.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.106.xz

Linux kernel version 6.1.106 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.106.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.106.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.106.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.106/v6.1.105

