Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD7244682F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789385312; cv=none; b=uakpRsQ5TY9jgT5WraUVlMcUvfGnNgGqmZpwTPVHrnpk82mVw/u/eLL0fvyo2X7BNbvUh87UcrJSzyrbZEcw3rhbBsN4HjeA7d9+ctHWdu5jHc7284VDI+3U5aFgUL1vDz7jtUkknstrwLhvfBy8JrVixmi7Ge450RjcLxJ7y1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789385312; c=relaxed/simple;
	bh=GZ2eupiOyA9P38jv4YPCWqqaV6u4nImo/25VmubMfZg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=l7pWwKcLQNakCc0E/Seyukm1LSyd2KCYMjSClfEeqmatgBL6DrJBPahEe9aPGosyqlrtjy3QGsqXsjeiW9fsmcefGy89+YQwDezEcRfiuqMG68zK5a5VPE/5kPTV+iWjXEViJFyynqfjc9O4GspNqfMywH3KFHIUCSLTLMpicEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789385312;
	bh=GZ2eupiOyA9P38jv4YPCWqqaV6u4nImo/25VmubMfZg=;
	h=Subject:From:To:Date:From;
	b=aizNvVahrl1v8xSz7ZmbxRvMz7bsl7XzgUp9Sea8tc8p7OUpTo7TYh/VjBV3qGdsl
	 QRV8+JmNhyXQYTyyys7PTa1xk6+imOOTCrKn4HQXDY3+PJTdAT4fgWh1JP3RFEO+es
	 jWdfuxcCW6VDNu+s+6kvn3ax5Q6kx5+DS3fJFU8o=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 942EA1F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:28:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F3FBF380CEFB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 11:27:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.270 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 11:27:26 +0000
Message-Id: <20260914112726.release-5.10.270@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.270
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.270.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.270.xz

Linux kernel version 5.10.270 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.270.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.270.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.270.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.270/v5.10.269

