Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB8D43C067
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784903458; cv=none; b=UzdgbZs+clSQfLw+wE6u/OOY9GdkT7FhGfYJA65TWcbeKvt+wFCjUfhdIa7Z9SSnGjSTxTlLzevWx6Ja6svYtUqUXJ1g73OY+TzqodmxNhbcFcBmMcJtKf2H604U4xURLUmn3cRQ+zYvqoFgkc7qscHeMw4+oowKtk6ixhOwXkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784903458; c=relaxed/simple;
	bh=xM/7b1OcHQRp989iQslZ2yTg5AEa12kt/PKarYTreyE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=vB7cLLQnh5E7Oum0wjOyvYzQ6fDgyu3ZlHutsyFk2a2b/uUXWKEdwYVo5fOUHWYGwUjnTe0wSbmFBl96LKdFfRyS7zNOXCU2Rcaf8J3KJGHwEXA/ovVJLPKWVO4I4yjZQHUj9oyvVQ3Kt82EVLDrxjYCGSbnBQb8NB4k0W2BdaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784903458;
	bh=xM/7b1OcHQRp989iQslZ2yTg5AEa12kt/PKarYTreyE=;
	h=Subject:From:To:Date:From;
	b=jF0+u0cFKkT/4S2+z07tJHB1zDpJD1U4M9ibke6slBrmMZpPyvfFu2V16gDVuoTUP
	 jcc53j+hZna35FFtmAxpXKIOkPKTwuFvWTmkEBASELsuarztased0P5IjOiFqre8Q8
	 BusEmUcBGaMvZQikZIZUtkdnNwBlTIqxgQll+2O0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ACF81F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19B283926383
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.97 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:30:24 +0000
Message-Id: <20260724143024.release-6.12.97@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.97
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.97.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.97.xz

Linux kernel version 6.12.97 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.97.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.97.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.97.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.97/v6.12.96

