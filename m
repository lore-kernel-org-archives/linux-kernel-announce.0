Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114DC2F6591
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Dec 2025 11:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764763117; cv=none; b=q9fdibaorb6+U7Ip4mj+vLtpgAmIt8SKvW+sFMoreDCvGMppQpMKVfdxy9lbrKRKSlsO1+f8JvZ083YP2tTQ50tBjapQJjdQWs4Fajk6c0g4+4/iPi9j1rx7dou5mJRQ4MO3arfINBQNrRpiBvGxWy/OLQBCQpplKLhU4ZVTXH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764763117; c=relaxed/simple;
	bh=IMyc1emLnF7JsTc3lusW9Hq8tkg8uggV1vekkZTYrUI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=EN7bh2xLYAe5r1sE6ENxooZ/xnf6cTMKLj8KtkkfcJ1HD2xPqCmPJB9sEEVmQe9Dk5oquMonSPNH4Yd1YM+FPIJmdzw4XXz4/JcWZFwiG/FnZvcNcBztq+h3qF3B/DseyUVBwfWi3WHMV5vdVqEnCnBYveUSRD5UNWZcqzgCC0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1764763117;
	bh=IMyc1emLnF7JsTc3lusW9Hq8tkg8uggV1vekkZTYrUI=;
	h=Subject:From:To:Date:From;
	b=Ntkn+1uerDrx349SOiveoMObYyD3BXkl3wpdNjFdUFVTt8S7QtBLz1wcCFChH8apX
	 l44TD+ZrWOiMo3oZPDfrZ2HRAog8JExH/92bikOmiDQoQzN2y42fNgIUKATQq3viRg
	 N/JbEOk6hz+mjbyhVnPHeKH0PUEn9J/bb8jFV7+A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AF7FC4CEFB
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Dec 2025 11:58:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BBE1C3AA9414
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Dec 2025 11:55:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.302 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 03 Dec 2025 11:55:35 +0000
Message-Id: <20251203115535.release-5.4.302@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.302
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.302.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.302.xz

Linux kernel version 5.4.302 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.302.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.302.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.302.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.302/v5.4.301

