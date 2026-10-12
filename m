Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141763911AB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Oct 2026 03:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791775287; cv=none; b=pZ3ZfFM1GGoFN3OnP7TB94D9pKDzK2YrPnw2dqOa2ETKI0UG/EB0tJNiqjmWHlW3tbbLMlejryLx5Hf/QhHRgZX4qoxSoJl9dbTYMM0BfEV1cu2TjfGuYKcuIffq2oiB0U4QElpS8BaDnU8SUfheeGuxSSKg91BPOVFnJbdLeAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791775287; c=relaxed/simple;
	bh=9O6k/+AR6FsjATVCzJrGPbrtL9Syy9rRHgipEU0G3IE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DOPDGcYmgHRJnK0TspLZTSy8TnVgEkUmSeuTJfrymrbNAt2r9YXpjltfwce0pWrLbn9M9rbAXHQYq+S0t3y55aVAlmkS7ZNZQkFVYmvYTsmBhQN9qMdX9FXY+SCy5K5RopFw639rIOur6vYoXBbneuXoti98Hr0zpZe51CqWLB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791775287;
	bh=9O6k/+AR6FsjATVCzJrGPbrtL9Syy9rRHgipEU0G3IE=;
	h=Subject:From:To:Date:From;
	b=TwKqGpv7nxiHHxRJIyCAPL9EOKrb5H1fKlonz33RM3L3sVqJYgy4aECCtOzcKQybh
	 dGIjqy2wdtiKQF4rEf0GTircxVPF7l/rB4CVhAWl8kkGRi7xfwNRaLD8rg2clhPZe0
	 4d6Q8SioBRYDS6Yz298E/MillGhH/od9tfeIvqlM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F96B1F0089B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Oct 2026 03:21:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 79D2638119EC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Oct 2026 03:21:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Oct 2026 03:21:24 +0000
Message-Id: <20261012032124.release-7.3-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc7/v7.2

Linux kernel version 7.3-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc7/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc7/v7.3-rc6

