Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A802F18625
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705342537;
	bh=TBHgA4eCbzcs6HS4kDULz1eOYrmsyLucZJOjixoS5fA=;
	h=Subject:From:To:Date:From;
	b=jy4pbsHxTtIiJvhUq5VfvMeEAmtkLvZ+B931EyreJw3OoTNsu00NB2+921jKoOPDW
	 hF5AgSoMSXMJdSxS8gg3GmqLHb1JVugkGm3uZbVOXdmtqoA2OlWWKVVKEfneiYS83k
	 2Hu9kiOztgVPUx/n7i3sqehDhsQwGSZ4e3rVNigs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4677DC433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:15:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2A382D8C984
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jan 2024 18:15:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jan 2024 18:15:37 +0000
Message-Id: <20240115181537.release-6.6.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.12.xz

Linux kernel version 6.6.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.12/v6.6.11

