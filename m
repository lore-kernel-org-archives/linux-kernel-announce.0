Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAE6E56A
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765055918; cv=none; b=RbJjY7nse93m2cUAdM+ei7mU8Ts4wFkGDOh04ESMi/LpZq2PdaiPAqLuuOJ5OSuHYwm1OTvla+rKTWPbJkXc++/plnrMtDouWLgd1vgfp/BKn7m3sZd3+U601yHqh4elBACqY27xr5a5m/NT99xqDNlh42O8NbVVlYJ8bFErrmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765055918; c=relaxed/simple;
	bh=GO/gu3Zms1sl7KvBTTyuCA/0s9jt8oEIqENoK0B5/Rg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kUlvhnSxvkZ9rjdKyP7HIEY2hnEewPOhLvwrXqnr0HVOGy2Rg8lts5ixH5/AQj1YJAXyR6YNK62GBVZVaqGjkfQ/B4es7l6RLB/wnHp53Ps5c5iQ7zUx2sQPfOEuD4WHK9tSa2nE1qduX9PqgrgKRKyFUYIGK0m9n8GZF4I4Lpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765055918;
	bh=GO/gu3Zms1sl7KvBTTyuCA/0s9jt8oEIqENoK0B5/Rg=;
	h=Subject:From:To:Date:From;
	b=wSJSJg+b+1rAnyNPWkPBqNr5VlNESlzrF/cJCiKbhfUFUhyIF4YFPsL8mxYcD9KHu
	 QbASjNQsn2lzMLh4J0daRZ8M+4UOodP5ZpP9anqKpDLi9NvEa6PEoLCJY5HEou3jYN
	 LA6vJQqcKVbgZQdHixxumxGT4R0CaV6CHMO8PWTA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76C15C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:18:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7CF7F3808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:15:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.247 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:15:35 +0000
Message-Id: <20251206211535.release-5.10.247@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.247
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.247.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.247.xz

Linux kernel version 5.10.247 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.247.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.247.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.247.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.247/v5.10.246

