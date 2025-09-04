Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F33C303C8A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993543; cv=none; b=Cn0mmv1AcxQqedJRQxlBp1zkOelQQuE6xOAZlGcwbNG7ghJKNxbF29LrfcM0E9+LYoHDvmMnHJoqbYXdakeeHrb/i7GF2LvBrLPPHe8Ij0oC9CUWcHoUg1Ca+CsZX9QYGEqyrA1WTdh1KIQaZflZBFcJVNj2dK+a5Wcr4DHuSxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993543; c=relaxed/simple;
	bh=zkZhfJ3OpLNGU1s/Zc0JUJr5ikX4Mnh0BI2V+qRRGYA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ds3d6yQGNbH08mgcfbJDSvGEXEL8CzDldjJkTfxGOhDHJShrjGYi2EhdiF2hY7uaWhGEtrgMXkjPAykIWQZGHktMtAdTfaF3yTNEab+eRr8QVvTpZe1G3KbQrvaifDoo5RCcwlkxH997bBALKFWGWkeGKarrHw2KBSru4Kss5QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756993543;
	bh=zkZhfJ3OpLNGU1s/Zc0JUJr5ikX4Mnh0BI2V+qRRGYA=;
	h=Subject:From:To:Date:From;
	b=BfAp7p/RxghVlqEGTLr5Z/N5yZ3LHu8T3Y6WFOAIHJE2B+Vod9McJ0WBzCe0jLDnG
	 xWvBJohRBTeoSt201blt4JKqZut5foLxm1Ps182cdNH/CgWSNvVGzSGQtYS8K7ld5D
	 L8k9i1wAgEzDrPrkGycFXO/7PlbYyrd37nuH+60k=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E272BC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAFBE383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 13:45:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.150 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 13:45:47 +0000
Message-Id: <20250904134547.release-6.1.150@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.150
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.150.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.150.xz

Linux kernel version 6.1.150 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.150.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.150.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.150.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.150/v6.1.149

