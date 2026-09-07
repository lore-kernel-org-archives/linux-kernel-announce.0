Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C5E3CC338
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788796034; cv=none; b=rZZ7UA74v1jHmeUcMv0dUTHVIRjL7HSxz2hEJpMbgbEbxDosJwzg2W113pMj8r6lJUkgmbGyhh0dmoehTbX+pnhBc3zWT/5ZI/JIVfbsr1oXNuGojrady+kWZvFIjrwknuzOUiYVzpxCQLMoy7smkj+naP3Yurfb+SNNpZlO/cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788796034; c=relaxed/simple;
	bh=qKLiUHxf54yqABFL4Jq+dRLpsIJEhVHVz/5ohSwqpZ8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rf+7MXZXs10RTHX+/jD3XnvumYKUCWEtJ6bX1Wje24j16qUmUDrInOm8DQ8srJ7sA0ZEvYJGyuaEsuYupsGz6zw9CiPrk+6sM9B2bgY9+HXjgTqpLkyOL1tzFuTXfpiBOP1lkdPVdsnL7YOxFso2kj7Yli/iG2r6TBFBpjZtpDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788796034;
	bh=qKLiUHxf54yqABFL4Jq+dRLpsIJEhVHVz/5ohSwqpZ8=;
	h=Subject:From:To:Date:From;
	b=vsGv4MUnMsjbtY1YPGh2MrXjoDlnbAiwkRtPOzyZjUvfeRRCHqVNCBYCXZJgsWrei
	 22tMe8wvSEFW9++CBkjROvUy3bPVyIA9W3VHklwQh5svc+5LlFdHe1Vy8rs66YXA4k
	 Vld+/GubZjpypf/H2sPVWN3BhfX+hC63w5bReXic=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC3141F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:47:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C51D39E4DB3
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:46:13 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.50 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Sep 2026 15:46:11 +0000
Message-Id: <20260907154611.release-6.18.50@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.50
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.50.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.50.xz

Linux kernel version 6.18.50 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.50.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.50.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.50.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.50/v6.18.49

