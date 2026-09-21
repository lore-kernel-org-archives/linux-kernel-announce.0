Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81381F2B88
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789997509; cv=none; b=Y5drLsqLeMAY4Ne524QAxFwg/SlKwwRVB3Wks7Pcskwh54wmmzqif4qJQZ8irnZ9qSKR7gXNTdNYBqyHLw8/9mu56r/ZuV9Uhy2GCul6ls3M/QQVfmGJ9ey/kB445r/NlcZibOhkxjdSt80VZCjAusA3kanAIN6cky7iZnk9x7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789997509; c=relaxed/simple;
	bh=745Kuv9I9h0PTcm+ccQfIUw/HLR+6hYsz0UpDE7BuOg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FtfZH/I11el0yGjDCQbjI8M6brQTzAM827bT81Er96vj4kV9tZf0ufu72E85fkafvlhm/E6gwak6pk/UqdlXyf8DQExqnmYNeX+ArCEpHwMQb8xu00N5+GS3XlfCNzRCUm/pYFvAqe2YqvjYFXDzHNFaIeIKgpx4T44246XTbNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789997509;
	bh=745Kuv9I9h0PTcm+ccQfIUw/HLR+6hYsz0UpDE7BuOg=;
	h=Subject:From:To:Date:From;
	b=R2f2DoAxUDy0uZmyQ6CFVhlA5+QKKMN3ys3gIm2CckwEt7V6HlZPEGRUhePnJBj3E
	 wSSqxj7AY1q8JpYqX2LjYJjO3GQd1Wt55Rq7/kj3d7vyysQgfyD0UOWXzv4365fa73
	 ikabu1FN3Zs90n4DqVW4W4j++s8ujs8u9cBvWLS8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAD0D1F0089B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:31:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0C373926658
	for <linux-kernel-announce@vger.kernel.org>; Mon, 21 Sep 2026 13:30:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.53 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 21 Sep 2026 13:30:38 +0000
Message-Id: <20260921133038.release-6.18.53@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.53
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.53.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.53.xz

Linux kernel version 6.18.53 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.53.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.53.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.53.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.53/v6.18.52

