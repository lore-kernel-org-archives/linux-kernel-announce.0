Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB22230E83C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 Jan 2026 12:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767355737; cv=none; b=GsZJmDWwWRtu1Bg1UxzlnWpZy6SNvsF8WM9Oj+rJJuGPdIv9UW/SOXZrsWi3e0rItGp0XDSFxFpohHWWLdvXcfjqqeoOkxpGxan3q7+A89KYM2K5728d9GvTIoyGrgw4KaOS3nLfbAKGfBqHvcLFSdoZjGGli/O+GXzDNphtGcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767355737; c=relaxed/simple;
	bh=6Okc9BWWhS6w7mqvYmO14GP8MjkDUbtiD+w9xCnBIY0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=q/NVbO40bfAOXey7Jgr7QmZp2OXZlaKIXCL4nXKDKw/8iHg6H9ed2hfMqa9ormWLBLlPEx4tFumwKAKBxJh/7nqI2Tns3y623rpTyJkp24NjjpE+9cVbS76KoHGBZ2fJqrNDRh3DoxvWIA14xr6YxRUuxvbS1lRKbevIeDDqHy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1767355737;
	bh=6Okc9BWWhS6w7mqvYmO14GP8MjkDUbtiD+w9xCnBIY0=;
	h=Subject:From:To:Date:From;
	b=L7XH21u8JpQeM6j6ySv6nhre3Pr/1aX3VLcKa/zUbIBn2p0kClNToijY1baB7TNQA
	 OQ6Z80ATa2ehvu9YZZ2P1bZQ4aNH8Ik9gB3TeHDPkeYgFoVoS8skM9e/9yVT99NSGZ
	 y9/YDIpe/Mp8VF5C/f7ulYJFDylzuRlz4Gm2ZrV4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D013C116B1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 Jan 2026 12:08:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 033C4380A95F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 Jan 2026 12:05:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 Jan 2026 12:05:36 +0000
Message-Id: <20260102120536.release-6.18.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.3.xz

Linux kernel version 6.18.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.3/v6.18.2

