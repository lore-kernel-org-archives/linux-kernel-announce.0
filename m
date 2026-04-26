Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20622750FB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Apr 2026 21:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777239327; cv=none; b=aCjjdEdExPXQUewm8biQ9xLEae34QdeP1kE99581RJaANdCn6g2LQUDhZoydu6oEAQkpGr6lOiP9S9OoRSkxCBzbqXuMurfYl1yPy+6yVIlBlzYReuDkSvxTu0AxxYVLqnUZ5+BkIpJuAqkx9fNnBFQXMpI7eM6rdakrtOnzcfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777239327; c=relaxed/simple;
	bh=AVeIHRn+a2Bh34RG4Gk8YuGx2dBgRtXiCjvGJHeF2dg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BVU8Th97ANfQmiVJoiAww0Wbf8dL+KmWjQBi24bwtFvE99jynro7j2HL97rB59FVNpL5WFQirNikPr0lK3kt6/2RbDwHasaYmabPI6iWwOxuM6j97dbNB5/KkcYmDhEQFjl+QNkCBrv1lMrxrpyIk6hTGzWuUuwoEMd6EEeKVjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777239327;
	bh=AVeIHRn+a2Bh34RG4Gk8YuGx2dBgRtXiCjvGJHeF2dg=;
	h=Subject:From:To:Date:From;
	b=X8r877kzog52+JAfleM0AJZY4v34g2ZaTsWOIF++65is6XFPWjKJgEeWFUyZZKzrB
	 6eZamxe6+YKUCIXufsoC5Nc860TWhYYXJSwZOPebFSVy0A8OZv0U3QWs649McVjSsI
	 f5ydB79jmfNi/mLcylqZKNWcAPAdpt4AeEjoUB14=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA52C2BCAF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Apr 2026 21:35:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 059AA38119E7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Apr 2026 21:34:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 26 Apr 2026 21:34:44 +0000
Message-Id: <20260426213444.release-7.1-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc1/v7.0

Linux kernel version 7.1-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc1/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc1/v7.0

