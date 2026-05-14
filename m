Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B08E3F23A2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778766974; cv=none; b=n9prj+I9pup/mwyyVlYeFhgNhl3bN0FZXdmGqDZRU+0jPRoq5g3zFZgSnlGHBelkLY9uTRBrtZDgyTcjLHKyKTUHBIaxhuFm8UwSW9n6mK/Y6NZVsDQJHEt224sLNdA3fb1ZUDW6vh2U8/TvcTHd3UiH4is2OzE1Z6ILL8F5UOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778766974; c=relaxed/simple;
	bh=yxYev0u9Q8SORWhPVu/uHIyW5VG7k0r6nwweslFO6kw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c7qvxz4ecYhN6ha2dikyGTwTRVw0Xc1/40BNDgrv/HmqaReq4pE+3LeB0uC6rJjR+F4BD2bLWHXAj1NvyBVeeRJb0wSKFz+oUoYn7Ex1iLaiy/7W+HPDwgW3qc4+Sm1hxlhVReFIJw5CkGgC/w00+sc1ZKmr6Yx4jTWeLIUAMWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778766974;
	bh=yxYev0u9Q8SORWhPVu/uHIyW5VG7k0r6nwweslFO6kw=;
	h=Subject:From:To:Date:From;
	b=MGPj5+Oha+dtji6yodCxy8Sg0DTN64Nurg03fiN9vWRNTZdEPuLBVjdn3ZaC6OxwE
	 cIh2K0cUhFnp5HtEVx1KGBmcPq1/nfOTx3/YIn2JnWDRlxOkkwYnD7dLl2UJRooe2j
	 2R34qZEM6lWFpCrjKakXik7kUPbRQQK6CtjRNDZY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0BB9C2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:56:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id DA36D39310BF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 May 2026 13:55:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.30 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 May 2026 13:55:18 +0000
Message-Id: <20260514135518.release-6.18.30@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.30
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.30.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.30.xz

Linux kernel version 6.18.30 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.30.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.30.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.30.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.30/v6.18.29

