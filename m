Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCF11426E
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704711041;
	bh=HufWJEkc8Pnvwwhrgmf/2F068JTRXgUsSmaYPhs8yYs=;
	h=Subject:From:To:Date:From;
	b=CKWeYuUI+b9vsUjJ7YFrs7KhufjDrJ6a0w8tcxXR6+vAxvyM0K+HRL4hoUsJ1EpKs
	 J8SUO5roSTPHoAqxXsZSwXSwyvryyjH/Kz53o2aIZ1kzBFsUX+lrDZol9K4EMBuNea
	 XzjCnm2z1busRcDacCNEWM508iw6WlVELiedE9dU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743EFC433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:50:40 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5B212D8C978
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:50:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.266 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 08 Jan 2024 10:50:40 +0000
Message-Id: <20240108105040.release-5.4.266@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.266
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.266.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.266.xz

Linux kernel version 5.4.266 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.266.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.266.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.266.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.266/v5.4.265

