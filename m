Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3493318734F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718539843; cv=none; b=mxbNuKiiLlwDt0Y6y8WcIv575VQ7lo2bMl3BNqilPZlhZaqg4sBipr4CEypBe1nV94QOgFr3RxKE6KEHUVz7H598GkNlcAy5XiqDWBFYpEzmEWG57nffR6BTtHbp4SVXGgRw1Xc1vv9jboBWZIrPUPVm5x8X52ykV29QpAqXZwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718539843; c=relaxed/simple;
	bh=tOuqS14HOZPkq9zN84MBJD/cvQEqG3qxfvXj65+aVSM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DuolfCv3bd0fmo+JDrNFKVLefYb/asU2vlwDd/WdnJygodXsyStsHndbmjeR9C1geJo5oY+1QEUqbmabxjrxSVr2shRcH7LD7kULHILgKcABi+CVjB70RIk/Vk/E2mO+JWx2zRRMhcOnOHuDKhKSvdLBN9wn9zQm2X7HAMNOZZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718539843;
	bh=tOuqS14HOZPkq9zN84MBJD/cvQEqG3qxfvXj65+aVSM=;
	h=Subject:From:To:Date:From;
	b=ERN+434c+MGshDNx+8so+OGkvzu3+5LRZksF/yz+P2KQ8VzWqBQU4Ob2DMY7PzZ83
	 bk0xGLZw/SIXIYR5B0tcOL9/yUoG7SKQxmq+yxFTce10Wgt7sk9XvqbhOU7u2mL2q+
	 JxREoETC+4ErFgXovc5UcImjW8bD97tKgrE/LWTU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9517C4AF1D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BD8A5C43613
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:10:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 12:10:42 +0000
Message-Id: <20240616121042.release-6.9.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.5.xz

Linux kernel version 6.9.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.5/v6.9.4

