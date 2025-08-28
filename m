Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB831E633C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391442; cv=none; b=C3LC2nskukJ73YJfpn7+DXbZCbyOzHPLkgn7iSUF4yrDhXmHYumUDVqCsUQydbYRytyGkOYmP/2a1sFliPm+7ZDaKsiW1Ina9lnwAMTjkvjc1OpNzsNxj9QAOVAxGGgL+ae9bfxUl4neI7LovVm1MfFVa9TPAxHZKsX1twUfhak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391442; c=relaxed/simple;
	bh=TvUjcql+PgZrampQ9trDr6a4i56Ujf13jabCxG/eBr0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KOZmFybdWFW2p4nS4bR64USz0b1x1TlNyI2i5r01sZ6JcLo44RkbtkUDhfkSH0BmgCQdiuMb6azt9AO2OGqmj1KF969EhtQGOCooz4e1YHr51VuKSTrjerwi8QfQp+ASHvIgnhOCWetup8ENZ2Q5H8jPjgMzX38zVz23w5a4b74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756391442;
	bh=TvUjcql+PgZrampQ9trDr6a4i56Ujf13jabCxG/eBr0=;
	h=Subject:From:To:Date:From;
	b=EkFMIweCpaDtD+Hk30gju599qyRRVicksowVan8IDAlSdprm5ivdOzEq3KYX8+7ar
	 mMSqLkAQHN4CjRZb88EDzXyKZEfJ9JO9yOnFuEUvFScT52SH18mv8jA1i37iqluKQ3
	 iUp3Rw5ZfkABmPIv1+SKCBIfCoyDAYAy97HLvf1w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AED9C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:30:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 38CFD383BF63
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:30:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.297 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 14:30:48 +0000
Message-Id: <20250828143048.release-5.4.297@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.297
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.297.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.297.xz

Linux kernel version 5.4.297 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.297.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.297.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.297.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.297/v5.4.296

