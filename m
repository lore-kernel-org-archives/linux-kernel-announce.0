Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0ED2D7DE7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771234227; cv=none; b=q9eRbsd1Q4pwEJAVF8gU5UJv8B/D1ra+Tp7bQBriwzVBPulS6Y6F6canqgLCDLeMfXK0sC9X5e9RqM3o7VQJawBhToJxH0TOl50PNgmPea47ezuVRhBfC1DRD/wqg43b5yAUaFbQvvtZxRDlVyIYS9ou72L6YSW3zJuexVFQuaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771234227; c=relaxed/simple;
	bh=iDT/hs6C1pLR9+K5ozfOj22xWooSDXpQtqy2pSKubNo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uLqgEr0JgpoWapydDmNm2yNVfPKUNX9MU+0SFiZ5dTUukx7F6JNzt63FxYYE+puzSrPleECefZ4YE6CadtyeGXJ1HwO6vJyaVIiIKUQ0qfO9E4OT41g3SeU2nlWkgXdzS9O2JoSTRszkpTDdLRKcUMEGLKycQo9Xrl1rvcB7bI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771234227;
	bh=iDT/hs6C1pLR9+K5ozfOj22xWooSDXpQtqy2pSKubNo=;
	h=Subject:From:To:Date:From;
	b=sJ8qGD5oH4gKqZ2mQT18kuU4dTPvG/7xLAdndhvw8EXgRiPvf+I7PTlRjA20IhM+d
	 Bb0oO8/Xuz17+bAx+NW3VMicOWKOD7r4i4yPD2liRnkUmrGzct1syuBIOr2BtV017E
	 L8fgpm7DDkfnxSqz/K10SY8pV74nvWlJ7NaCyNDk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AF22C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C20CC3930931
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:30:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.125 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 09:30:19 +0000
Message-Id: <20260216093019.release-6.6.125@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.125
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.125.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.125.xz

Linux kernel version 6.6.125 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.125.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.125.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.125.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.125/v6.6.124

