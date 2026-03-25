Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7353C3B8BBF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434931; cv=none; b=en52r8sCKamSHoB2gMj9GH2uBcsQCkHm7/1w/GN97kPpYsQi9DmbBc851ETkA0fLyyHMVjGwc+US3DKlgkxNCiQmJrpW7UaOYzA1Sp5srKlrevHfwLzZxhXAdVNgouaK2hfXfIXk/Gf5bOn0cU6o2oO7oGUkeegofdxIrfNqyfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434931; c=relaxed/simple;
	bh=LFoU1cDSiaKjsSEHWxrQiQZqj3SDapD8bGdKmpD2k+4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KMpvseGF8fFA+T82s4yDQIV4GXqqIN+tgBwkp58FgzAEWOZl8V0vnaOQ6hjRTh6TH3zY6tejS6adLU+ZdLJ4G3IjJ1hzepg9RTZYUEg/RuLhx39CfpiN5uaRdA5rMWN3qE3zLMML+7a54R/H2eOaCBfGxWBoT+WqqBqBFtq0oj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774434931;
	bh=LFoU1cDSiaKjsSEHWxrQiQZqj3SDapD8bGdKmpD2k+4=;
	h=Subject:From:To:Date:From;
	b=oX/W4Yw5QZEI7DMW3dqYfYHtptd3EQPbhmcFtGC0d1W8e6hrsOk3X6GXwzGzdIgUp
	 iku8XW9gLKN1PQJq25PKJcbb2co7/nRh7NvYFvVG5gEBPRDFsM14UMfLRHe7z+ABCA
	 L4+i5+x6+VGwkN5k3Fmdrwwugvj46kmv7/hvD95Y=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38A74C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:35:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCEB43808204
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:35:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 25 Mar 2026 10:35:18 +0000
Message-Id: <20260325103518.release-6.19.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.10.xz

Linux kernel version 6.19.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.10/v6.19.9

