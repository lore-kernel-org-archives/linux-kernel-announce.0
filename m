Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303A81D2F73
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731853535; cv=none; b=j3VPt4luDl1azLZwaYa6+8/gq480w+QWKJlHbdX+7M0yC+JB6Ry85SbgJPpGcBwozFOWTIZzMqgzqaoOT1nUxOK9gi2iZN0+C08BdUY/gQNo0s8nXzYNn0seYI4FsWJRq0NCQtR75rtZ8fzbWv1UCNRq86PLvj1S0muRXK3FW5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731853535; c=relaxed/simple;
	bh=/FgDI1yEa5bW5PGYg5voYf7dNXiIc1xeUEWT+ThR5to=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=K19TgJGAY8jlV+lhyZc/4CNBCXM9M3/Zybgc3xgPuflrU4uRg/EItL55i/zU+z7q8LR8jZoPaM0F9FxfAjIGNFFxVOi6NcX2+ox6cl9RL3mPiT5aQta2tIcsAp/74xHNmhmh0J01FkJYJ5/bS2Ft7Yxue3EizZNQ1Jiyqu9gG8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731853535;
	bh=/FgDI1yEa5bW5PGYg5voYf7dNXiIc1xeUEWT+ThR5to=;
	h=Subject:From:To:Date:From;
	b=i681NtjiBSjMAe2xhwT0yS//mD67Y8++CsotSWiMC401RKlPJCmWEmwPuLVBeH3FK
	 dErKJKAI6ppHXfmfqNCuq1q/qON1QH7V/g8sKi4Z7a5FU5LzA+aGl+YB0QEkfjwueB
	 MsyD8Zm6IiYZUAFIgsO7y1Yzh64YwTfhJ2/lp67U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF36AC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE7C63809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.173 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:25:44 +0000
Message-Id: <20241117142544.release-5.15.173@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.173
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.173.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.173.xz

Linux kernel version 5.15.173 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.173.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.173.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.173.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.173/v5.15.172

