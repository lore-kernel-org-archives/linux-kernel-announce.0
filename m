Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB288060A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721296546; cv=none; b=O4bw+0kR4+sS4RrKQ32o2izDRMGzcb5edVKpl9NWJGQFk/4gtyH2b4bbRP/IuWMgFhAPF+M90c/sO0QeB0j/qJSW3ifqlRcvo20IQsDOFGSUwlI7KFyBeFI8nh9lhdWQhc1s2UGVPXiUv+YaY4dgDaU8MLGz14nS5KK51o1uCQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721296546; c=relaxed/simple;
	bh=w+LkQO1eHgORK4La5as6Rooov9ptZHlg/aYxdWQoHfU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LXnIiD1jmJnl2rf4Ifq/UhIqT8EwmGXvCtFBjcjzVCJ9PArOTC69nSpv0OxOwD0hX0/sYBSUilFOHFOjeDc64XLCrSfne5bbCR/wG0kGOR1BWGnfe+OFaD9pZuXYsKZbDymVp6RAODGiyv2AAjITqKIDx0BwPJEAmFTe6V11btI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721296546;
	bh=w+LkQO1eHgORK4La5as6Rooov9ptZHlg/aYxdWQoHfU=;
	h=Subject:From:To:Date:From;
	b=jnUkNg+he8xZhiC5E2+MKI8ZdZz10u3zHryrYLqFJ1NvPvlgzBIXqkbRC7b/yFEpG
	 z2uxOvb5hDiN71surfib5r7gDzNvFurW4bnkca76v+XZjjqdyVpWf6ezKD96vhHveI
	 Zy5+2YoEX8u8ZAuTXYdu8N4Q80I/J+HhuCfMOLTo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36A57C4AF09
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 23A6AC4332C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 09:55:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.280 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 09:55:46 +0000
Message-Id: <20240718095546.release-5.4.280@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.280
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.280.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.280.xz

Linux kernel version 5.4.280 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.280.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.280.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.280.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.280/v5.4.279

