Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B94418EB7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704465642;
	bh=UZRqsivW/23Te0H2/x+OqzUap9wMq683TMEqRY3Zh5g=;
	h=Subject:From:To:Date:From;
	b=HJqK9rA0bezSLR764apGJMQZ6PlR+UB9TauFTQSDu0KNKjOcw9XivUVjyoZCjM6Jl
	 h+/q2EpwXJ+BM8FjH1RpL1rkaue2RJYZzEaeH+uAmLsDlPBkUDM6gtg1ix/9UU/8Z7
	 ZAF45c2n8O+av1Z42mwncVHdd/jYKm+mQZEKZHyA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7570C433CD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:40:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9B38DDCB6D8
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:40:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.71 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jan 2024 14:40:41 +0000
Message-Id: <20240105144041.release-6.1.71@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.71
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.71.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.71.xz

Linux kernel version 6.1.71 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.71.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.71.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.71.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.71/v6.1.70

