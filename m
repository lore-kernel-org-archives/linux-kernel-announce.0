Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1EE21B421
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728053457; cv=none; b=HGWp58RPI3Zi9/6j4psbPGi8jP2CMcGSSQhe0Idfb3L8EVby3YMx5m4vnHjog1C1GleKnmdQnRovLxAXGz2LQQ9V4xLyvLKK63OUGOtR4Wd/n0IwjTAJ/WV1RL7spmIi5xg+8RepKnn8ctIFsHBipM4LTqId5AqXQT6NTZGvYhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728053457; c=relaxed/simple;
	bh=598ZmNy/YKj6gFmj8NrWcOwheXXpcC8CfRhDrC+4I8c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h8SeMC/p2j1ngucW00WBLTVUOayaxvFB694YSEaVQegtZA1u5YTfJv6IsP0Ad0HD36Pe0k25gz0ZrVXHQJOMcrIrQaAhpJ+/S4GhPiWjbphQ7WRifjTGCrLIoBfm9N4drgkzovYcVyUkVkspwIgo5MxEwHJL5r5RabCvzMsEkto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728053457;
	bh=598ZmNy/YKj6gFmj8NrWcOwheXXpcC8CfRhDrC+4I8c=;
	h=Subject:From:To:Date:From;
	b=ClYBI2iX7Y7qJXO88VURW16SdW5Sq4Q9Tt/Ifz4Sy34KcImDuC4GfNsiMGUk9+PAV
	 Bf156i2zeOPcerB4s9+kXDIX/75XKD5v2Gukm/APO8HBt3bemxcCkRR2FUtNp+uYHl
	 PzVSePfJOTkjVIG+tGtwL8A90GtIttNR6HP4O300=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E2BDC4CEC6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:50:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B249739F76FF
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 14:51:01 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 04 Oct 2024 14:51:00 +0000
Message-Id: <20241004145100.release-6.10.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.13.xz

Linux kernel version 6.10.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.13/v6.10.12

