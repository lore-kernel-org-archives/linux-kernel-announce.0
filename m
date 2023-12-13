Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE3135F0F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1702486537;
	bh=Q7hXUE1Q61UKabjrh0tz1apspRaJcs9XCueL3XJLwEs=;
	h=Subject:From:To:Date:From;
	b=sTM5SC4ONCIwLiArrqD8IEpT8r4TbUCmaEEDGcWLiSkvjaXGyUtdJN0k6gtG8Z/61
	 Gjqtq5i7QptA03JwwA8B7pCCxIntN4zPd721KFxmfnrnUvlE/5JoVlnBw8mZFIdhmh
	 3PSLqPrEK/JbYRP83NgP6+5ef3HAkEFVU1KesXzU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3ECFBC433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:55:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2CCB2DD4EF0
	for <linux-kernel-announce@vger.kernel.org>; Wed, 13 Dec 2023 16:55:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.302 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 13 Dec 2023 16:55:37 +0000
Message-Id: <20231213165537.release-4.19.302@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.302
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.302.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.302.xz

Linux kernel version 4.19.302 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.302.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.302.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.302.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.302/v4.19.301

