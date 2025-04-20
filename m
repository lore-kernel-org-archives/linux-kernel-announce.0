Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EA4184F
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 21:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745184823; cv=none; b=PXTO4gRPaLB43IMUUGilVvuLUpXXtrg49xrPSfc1Mk8h9pGCTAv/9f0xSHu/lFEyz33YmuMgycisKoIZS6/6QoMZDWmqbs2Kx9x2ApqSYsVL7uuHbSqBijk0J/WQrs9uG3LEXehGfsr4q3Ggh7LDNfaJ9PAuEhQnFMpwgqZ5Ktw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745184823; c=relaxed/simple;
	bh=d89I5JTlmlZQ9AWzb2sB7A+mTQAyXsXV1qA4qYuF4aI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FnYCidud1LsawlQwTzQBOFHld38gqtcT3S2iufkIe1NRpqWS3lmvD/YE7GAP8UpMnBsi7XagEshGaQi4xvzgbVV4ecBb0vCBwDR3NYyQBR5ok4qt9U2oyjZYZWvOQ3X5tAV03I0ySzuCt6GoA7Mc/RnOLD9l06JsNTz9BOI7cmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745184823;
	bh=d89I5JTlmlZQ9AWzb2sB7A+mTQAyXsXV1qA4qYuF4aI=;
	h=Subject:From:To:Date:From;
	b=Ob5mW7vL3iQsTyzaxpjihv4yFj/1hXBYZlOI2u1O9/1fPk+g3f3Nb4Jx/YC3wWmZN
	 H9X2uRT+Mnjvbg5wAzjRc4MQY/vqg6ZlQCYNutmPRPj7Dg9TvbjSBCDgFs7849O/L4
	 kr7xICOgWzmM60fdog9DueebFLxSQZtVZdDSZQAM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BB14C4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 21:33:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE8B038111D4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 21:34:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Apr 2025 21:34:20 +0000
Message-Id: <20250420213420.release-6.15-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc3/v6.14

Linux kernel version 6.15-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc3/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc3/v6.15-rc2

