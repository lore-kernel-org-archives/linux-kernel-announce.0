Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B81D68F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Apr 2024 10:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714387844; cv=none; b=CqviYFULG3ScdYQTsaFcHNC1vQZQPJJNWcf5/DDApomh6B8iUTwXczeD8Qy5iVDYe4mToDq4dy1LhAHX8/SUJta0rmBxxqC0FRwkKD1WrSIKAWNbKtza2zLT2FZyowq5j09VnYFiGrK5XgpxwZEF3QYSaNwxN8FTE0T8XzeAXYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714387844; c=relaxed/simple;
	bh=JYtuw5hmcjUkEHE0rPX6sE0Ct5LqkR9srFtoqaP3opg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=F7svKazxcKK8SF2SNqbrH9NvvPTaaPZnA49Nfv56efUN8F5Fu5ieDHRyPIX44ueX6w6zvOFyyQWp5DB9fSN/WEjdSqEMusmiICDvPOs6nUNuGKg8aqWRuD5UzhPm3ILnkpaREZubzZ5CLx/Jgyg1rpczKVkN45iXNMDQ9PfYxs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714387844;
	bh=JYtuw5hmcjUkEHE0rPX6sE0Ct5LqkR9srFtoqaP3opg=;
	h=Subject:From:To:Date:From;
	b=EDiojxsFz02/qzeBYeDAEAJ2lyW4oc9qrQ3tJS/ZzH/FwVhDB3G14gR8Lo22dGvTI
	 qhWs2UypwxzcxRsT/feVs43BRAB33a+81TJ4bamPDyozpf21p9xrCgqrqw46FodKa1
	 RFMogkws61EHunXr2vz4EuwLUG4HhY46TtyBIDL0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7F3C113CD
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Apr 2024 10:50:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id B0A19C43617
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Apr 2024 10:50:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.89 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 29 Apr 2024 10:50:43 +0000
Message-Id: <20240429105043.release-6.1.89@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.89
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.89.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.89.xz

Linux kernel version 6.1.89 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.89.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.89.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.89.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.89/v6.1.88

