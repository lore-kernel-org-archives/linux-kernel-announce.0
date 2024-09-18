Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724DA1537B5
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726681851; cv=none; b=Mc3bmfuR68Str6WkH0pOjoyrzB58+6h0gmfnWvROMNWbqBTd8OrDMSOeqOXrRXg5JAJSHu0mqjPT60qa+daJSE7RQ8950YaDO0b2bHGEAdi4142K3+9Ww1dPenmK6VrYfiKhvmX0AxTXhyDB5uPTzgIjnBxDSly8pGwUqxHVHog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726681851; c=relaxed/simple;
	bh=o96EIATGVEpsJedDLRNYpPvJFuXh7I73yd+BprrD9y0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P4JNG3CclfJl6t9EhXZjSFhLx0n/7DFTo3+FbudLQPh7aRvb9dmazeWrGxdP1ND3rcb4tWCjktFZXmd72wQZMjmG1s5x4DMuvjtcK9DVMv6M1c7mA6/q3Lc+k+tqTfHDOU7wAh3OoS3xuy9dWP4Fl1Ukuw5yWvaFk6A0tkDmFW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726681851;
	bh=o96EIATGVEpsJedDLRNYpPvJFuXh7I73yd+BprrD9y0=;
	h=Subject:From:To:Date:From;
	b=h0vrlE6JbJqgTcX/ThbvuDaIDXV22mggOqHC9f4NgppvAC/Fu/Y6vwp5OppkmO73V
	 1t2VQlc/qu4QfdZPYaW0ypRLkInlofk9zpwrEpzJfguvSjQ9g5Fxifh2innusOYzfj
	 n2bruIiujzu9EOCrb0PWQKNAP+xl0yNsI8ftm420=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 194D9C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:50:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEC073806655
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:50:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 18 Sep 2024 17:50:52 +0000
Message-Id: <20240918175052.release-6.10.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.11.xz

Linux kernel version 6.10.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.11/v6.10.10

