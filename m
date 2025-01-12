Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3290D1BD017
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jan 2025 23:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736724023; cv=none; b=UFIP/Gehsj7DfeHEB+l/tGZrK0WrsT0xR9VkddcODcMTYMhdMkbYYBds6MCy4kFt+J8/4Dij7JRQenbvr1N8BWjIYCGrngehYkueBoG9Z3lvzz9O20itKFkGSo14DvniwFHvqSkgjKdp9cuHSvKtHwzpyeqCcfhTyemGYiLKSJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736724023; c=relaxed/simple;
	bh=qjDmUVsToF00rN3thnbtlv1gI1Aq8t680idi0rzpKeY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GnTC+eRzqM1t2AXgvgxMA3Mp5R96/HU/D1hxNv30JY4o8YlqD46sDli6gQtMp8fNHpp/w1lRXzEfZwPkmzA4DGlMXhSint91aq5YZQf93qG+WgIpgMgZjdbuOgeA5D7KdV36tEIwOwWRwdlSNAe4XIRD+F0IjdOQn3UP4Ivta44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736724023;
	bh=qjDmUVsToF00rN3thnbtlv1gI1Aq8t680idi0rzpKeY=;
	h=Subject:From:To:Date:From;
	b=bp6+Gb1ySrfMHKlJRurENa2Ypn5ACdEoLE6YgRLvt350YtszFV5FKPN3SvfiCtByV
	 yd8BIbTQSoXPqvRwZRVLt4u+TrPvuWnPFN0hAFuiqwUT++1eHZjxrG/RMqXTGkxFbn
	 8e51gXX6ihiVuP+AzVIObgeRLblDSDNbaSWYvONc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1549C4CEDF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jan 2025 23:20:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37AE2380AA60
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Jan 2025 23:20:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Jan 2025 23:20:44 +0000
Message-Id: <20250112232044.release-6.13-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc7/v6.12

Linux kernel version 6.13-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc7/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc7/v6.13-rc6

