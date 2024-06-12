Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CAF16D9C2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184648; cv=none; b=Y4lMt/IKYUBy5iSvSyeJD19Jl/CjefmrtXpUnqPFzWH9FINVUOjtsDYGHKmi2uJD1O67uXHUGS8MHfzbO3Jg/Wx30UeVNEk3SfvSCLVxBZGsGxKi81E59VP3Lz+bF50Q5GlLuK4XSeCS0Px51OicFNjyOMmHwYHyFvzKlyRUtTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184648; c=relaxed/simple;
	bh=/DF6tEgIcOA8Y2AO59UADX7ZUOwJSxvu6lQUZzHZ5IU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ACzfiGj+RfdxKXCR6WUwDlDKGWi+gzJzz2PyvzSCXjvTxBgRn5RVEPbM44UPdYGfPqesemcmM4LViIsCL7ZhWGbIYQ1ci6W+1WKSNqkjQLgBYDYEC4+/NZP1uxUYQenukEwHbQl60s0p1h64yg5i8iEtyU70bg6BxO+XggltD94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718184648;
	bh=/DF6tEgIcOA8Y2AO59UADX7ZUOwJSxvu6lQUZzHZ5IU=;
	h=Subject:From:To:Date:From;
	b=Q4Q7gfR0N23GsHNK6niUtxR1CqS7g/xvHdnQnoDSZomL5O5bjldPw8buQXa/yfMZW
	 LJ/zZYl75aUOyBIcjR/hO4Y73yoLWAwndMpzvwZErg+Z5jKpZhjAXDUviEwW1CUMGK
	 QUIfTcMhw7cfxkqA6w00F4eeP6UfWKeWI9Aqtlx8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4598C3277B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:30:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 97ACAC43612
	for <linux-kernel-announce@vger.kernel.org>; Wed, 12 Jun 2024 09:30:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.33 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 12 Jun 2024 09:30:47 +0000
Message-Id: <20240612093047.release-6.6.33@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.33
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.33.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.33.xz

Linux kernel version 6.6.33 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.33.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.33.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.33.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.33/v6.6.32

