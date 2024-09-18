Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3771C7B83
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726681252; cv=none; b=Mh0/Tj+ZI1KkhV1Jehuw62KXCAhL6vcU7Py/5jEBVdvJURzIgFTR2bBJBwJlYjTT1eofsDpIIhy/c5l9ar1vqRUmlO7F38ZZyIthPaNNFS5n+vahv+JHMxZ2MsHtESSOkNJsiZhkRoaf29S4q8mRvoml31PhlkjTOPK8JlAkzec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726681252; c=relaxed/simple;
	bh=D0/ualOP1jEJkvrK/+m5XPCokQB0eDr9A2o/As6dlaM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uTrphDj6NHneO2U8V06MAGR0ZxSGqsdVIjwdikCSPKsfUxsqYWZKtVWbEx+bBiXJT5oXYSHBHXBLLzyTdTuGb7/PJUPcZHDKf00LZwheCY5OCq2732WJyGGOd8NjhXkyzAH3Llu/p9WeZr8p9sIXzEDHL2sjs4+QFlHA1gXvp5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726681252;
	bh=D0/ualOP1jEJkvrK/+m5XPCokQB0eDr9A2o/As6dlaM=;
	h=Subject:From:To:Date:From;
	b=LUNdj3r2L6RvUDYb5uQtJ37R8ZBq6qquWVCIdYeT3Po50hXg203FR8jUJHFn+Nu34
	 VS6KsVTO+E1D8batd7xdTL4MePDOc7aoV5QTPZJ/KepLOOfXloNn6qiWT2zH6+GaxP
	 4IY2HYQAMpa4mC9+N7/UPFjCPXll5U8fhI1QQ46Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFA06C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:40:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B843A3806655
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:40:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.111 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 18 Sep 2024 17:40:53 +0000
Message-Id: <20240918174053.release-6.1.111@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.111
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.111.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.111.xz

Linux kernel version 6.1.111 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.111.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.111.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.111.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.111/v6.1.110

