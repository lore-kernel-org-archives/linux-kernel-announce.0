Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1283174F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702490441;
	bh=jTxMGJeCtSJY9DcyMBlnetlXK/VR1NtJzQhXV8hiTKI=;
	h=Subject:From:To:Date:From;
	b=UTqXw9NfkRliSjb3S2xsh01BTHdV9iyLWEKQ8Bm/4YM5++qejQ1bl/bTUCalR0lT5
	 /UP/OW18HTPcpCypj3j9sHvSBXOolr2EVsOlmkZOcMgWXsLgJDjVS6L6smKZjp+Hjq
	 o+Jja2aRimbKsywMkYCzvAAT/0QnG38azmQf0vdU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E47C433CB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:00:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 93618DD4EFE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 18:00:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.68 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 18:00:40 +0000
Message-Id: <20231213180040.release-6.1.68@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.68
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.68.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.68.xz

Linux kernel version 6.1.68 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.68.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.68.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.68.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.68/v6.1.67

