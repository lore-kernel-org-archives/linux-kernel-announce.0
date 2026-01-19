Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA6A36CE09
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833798; cv=none; b=KbKgvbMa32AOreFrFh69iKOjbCDU42DCdAZNRCPPb3UMNNcr06+UWpaOCqqvOEzkO7zvm2KC3tKSZG4IMMX1bTrD9tnXkaTuL/p5i5qH48POhMmHMSCWJT2LwV8G/58BBp8GZ6abV4eRxRPw/e/YSyD4JG8s/HUiWF4W6RVz+pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833798; c=relaxed/simple;
	bh=sIkDk0Z1Ps+D5ZbskrbdPSGlAFZa1J66BQDFolcWZXo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lMpvlarky1XVoh1hhC89AlljyFSF9HOYqu/l4Yo9e/r60IHYLt9vJYM2YJEdXKEI9iz9zZKzUS4HtTQUm5JkcuFYG2xy0MLnN9oNaT70JG25S+p72X42Yhp6UcGPT4037IDvfmniy/0rhOWIfwjKoqmfo+HnhXokM6sKIZMvAtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833798;
	bh=sIkDk0Z1Ps+D5ZbskrbdPSGlAFZa1J66BQDFolcWZXo=;
	h=Subject:From:To:Date:From;
	b=wZ2oWQn89MBw4OGiuPtLiBFkMrCe7n9iSMIKB+Dur7ndjveKuAZdtFI6+dwh5Lneq
	 aqmaTUXpyoZ9q6ygL50wmZmwm9sp+z4xKrTO40ptKEL0OuuPWOb6M/Gz1W4jeLWTW/
	 J0g1OdP2DMvRUzjuvQ2meM471lpaZF4hT73OqpB8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78095C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 787D63A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:48 +0000
Message-Id: <20260119143948.release-6.18.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.6.xz

Linux kernel version 6.18.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.6/v6.18.5

