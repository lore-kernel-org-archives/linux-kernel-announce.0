Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E9172BB9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721895648; cv=none; b=ThFFLMBKXR/Yao3pwPjGvunEkYfnraLf0oMSidGAmKIVDaRVBf/crEbw8HGKegbxx2fj0PUOwquxpqOUphXVtXo96BU3Zx4A7M63ZtgAdzJlghZcCM8xvNTkEXvHqFdBeoK+Av8WfS3EDnVK5LZV+fHWpuMb0iASmVsK2F4Y51E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721895648; c=relaxed/simple;
	bh=+n4ZnGONW09wHNYEvSC8kwO7ZylOu86hU2xDmUOCHR8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kia0WUIXyxbvaqE8l2/nV+b5ac/zCUaeRkWqfWjm+bFpDo0OukiJeOiPoeVRAP1d4pChDXogXdgoEp9mEYgAU5P1LfmsDNm8+prdL+yxMcZKNjtiW3mnx8ip0dCHzte/QBGFZv/sQHJ0Cf7Za0E+X+F/jzIu+k0oOxnWp4Ea2u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721895648;
	bh=+n4ZnGONW09wHNYEvSC8kwO7ZylOu86hU2xDmUOCHR8=;
	h=Subject:From:To:Date:From;
	b=dGH0aOZqtw/apH8zmxdfuuhIF3qs7cWwhcGJgLvTki3yFxVAWNTzG6nu1lUVhSv0T
	 s2zWyXm5zNJj800XgmkgpFGdOXIxEObNQOp2zrCjWd5E/S52EQhXPUAnvyDwWS8/2L
	 jjEo7822ix3fqzeMLyktl+JE7SM9J2S6bpc6xqn0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1033FC116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:20:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 0002CC433E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jul 2024 08:20:47 +0000
Message-Id: <20240725082047.release-6.9.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.11.xz

Linux kernel version 6.9.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.11/v6.9.10

