Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65329299A8C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751021111; cv=none; b=uaEBMoqvIxbHanhD854mi3PyzLfMeQU8zS6w2LgmQlqL+MhJGctRTym2/iKXGyTs1+R9DWoij2T8BXhP49SHvK0OIVzBZBebRr05XDTxaRbDgAWFkIkZDcPEa7EmJg3fH4kSF+JHc6cY5dx/00fn7AfLI2LVEon7r0lHLTj5+Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751021111; c=relaxed/simple;
	bh=jJMJJvc4a2dkbHy5ogXN2r3IalKSVcNoxmPztI20nbk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=alQYzJel8AI8ndqzKhCoMrNBTi5l2wJP5m34CxfF0qkL8V2S8WgetVzHG7jhMtfFZkiGYqQpdVkmOvDO6Qiaa/XBWL7R2YePJIjhFSu9scFMh5MwNbotZhh+gJhEiFrBmQPhNrwk80h1EklSeWswhRDGnZ8MyfynhMdPXW4VBus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751021111;
	bh=jJMJJvc4a2dkbHy5ogXN2r3IalKSVcNoxmPztI20nbk=;
	h=Subject:From:To:Date:From;
	b=Y6jy1WPnjkyEhZEdnaBwJKdJ9nLsqaIiIcy2f6Uw4+g1JJx98TS95vUaqbmTsquKR
	 7UhjSf1DlqPxRpDiETiKsSX9rD9RSsUuphCH6RgFL3KHasgPfUx3B5745QrlutGPX6
	 h+Xol0O6rI8gs/4WDsifB6FoI176qqp3Cty69agg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CE3C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:45:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 376AD380DBEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:45:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:45:36 +0000
Message-Id: <20250627104536.release-6.15.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.4.xz

Linux kernel version 6.15.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.4/v6.15.3

