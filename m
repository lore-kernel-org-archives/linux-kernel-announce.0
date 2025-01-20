Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2A429408
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Jan 2025 05:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737352222; cv=none; b=RqDHb7dKagbqR23HGOzZY2i9MNnjJkRPmkdIUREKztoQzvrgA0hfPNFGIIjsCGWNsUSX2Lwt6UOVLbtXkmCEvJUWmtLcoJpRpR50jUVwIl9u6ctG7vzjHhJl/hFgfMVefrf7rufGB4fcclDHDpI4rwZXnqmSXjYNfgH8zdLxJhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737352222; c=relaxed/simple;
	bh=XxPiZ/g2hLSRqaTCbsi9OZG7nBIXymBwr9ksry/Ekro=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=d0dbkf/z6VddNbqkqXUolHvWAnTtUvqCfrGXgAO2coSYPs12bKHM9w65e8M+TRvhKZ0p5dBqqRPz9D/1QdYA+lmT0tjuLG2FYSqo30Ooy7gIT/wt8JOv7JYNXZ12yvfGBJ2fXRj8IfRg89wIWPYfH7q6MxpSJInmUjNfkAnCLF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737352222;
	bh=XxPiZ/g2hLSRqaTCbsi9OZG7nBIXymBwr9ksry/Ekro=;
	h=Subject:From:To:Date:From;
	b=DmFsO86W9CLxz590/J4sLmVdNAWIPHJhYFnBEoH3JI4jjfQ+RlKaCdIe5HRRT+ssC
	 m4njT3ehCYLF/34i0PYC9hkg2Vd7mCk+JQBSYc9HLIIedYKF/HeDGCw0MIQ6yiAC2q
	 qki8ltnbUlEmE1jhk76M3jyaTeIBUDy7Enq5D5qA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8942DC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Jan 2025 05:50:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 78436380AA62
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Jan 2025 05:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 20 Jan 2025 05:50:45 +0000
Message-Id: <20250120055045.release-6.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.xz

Linux kernel version 6.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13/v6.12

