Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D670934BA22
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743659; cv=none; b=exv0xhIVIOfKN3ZkVc7t3RvjjjNFM46NOf7J1bIIgLUdXKjFTNM0lzXye58XNj1ffXju6S3CMkiXwJCfZxBYsa0lQNc/IfktfPESBDkzmYR3H2ztO+ZI18OThW42mvZlpDXM+P1H3kK4V9LoOCjW973C2ws0MCIshuJM6vs/PMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743659; c=relaxed/simple;
	bh=oL2y9OavZ3hD95Op7hLM3OzyEJyO8rVc6DtEeTHkpv8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hyTj+HVdpxuSF8yXWxjxbG3z8xfxa48dSzvkkFOd/+6WyPX6TfKD/qzCWlJSkfn8LO92stvoftVxqhLjafLZBjnEaVHC0GRrdxvHyVC5zV1i/s/ZJRNY2OFnUxPAYIJOfAWgBvWOUNeEhUJbas8+hK7a9vv/HD2Toyyvota9xfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759743659;
	bh=oL2y9OavZ3hD95Op7hLM3OzyEJyO8rVc6DtEeTHkpv8=;
	h=Subject:From:To:Date:From;
	b=QhfaTPGAMwwnPglO/ZHr2mEy2q8HpBtQYQ1b1nw3oXd09nvfSqQXXzM3fLxAhplz1
	 rEBC8xThz/iQOyAlIzV0ExCb8ORAiQcEX7cz2519hxUaJgSXE1CGa2P7MSBPhaq1BD
	 SMQKCZSrHnADzFy1udrw9vB/O9ZiOHP1PO/6c8tM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D3BC4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:40:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 762FE39D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:40:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Oct 2025 09:40:49 +0000
Message-Id: <20251006094049.release-6.17.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.1.xz

Linux kernel version 6.17.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.1/v6.17

