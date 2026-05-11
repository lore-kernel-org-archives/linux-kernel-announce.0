Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553062EC57C
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778481373; cv=none; b=scE2dY72298EzuY0enthbE9l4H+4G480H6Z2YZLuHTp9iDfs5oUPrC+ZTsiEuJ9V4mLYuqARMecjAyh5idpWlm5ZYVDUvkb6Y2v3WgVy0y0/sa+8devbAaV4EPlFaZZ2VS13bS81+Y5Z7uZWKEVx2M0vNOujqkGq9Jwp0VX66hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778481373; c=relaxed/simple;
	bh=S5VdaP/25zIh3Sw5TkdJOtoRI0KZTpOTWYRcEqn6vb0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bzaCRQC/94Wzvv7Mbl8jvhyr9GJAwezyeI+uW5Cb+Yelyv57VdMTUpAREPbMzcimqulXF0gu9sYMoL+N8i5p4HDqX7FAlfBDHXd3QmhOCbvPaNtKcXDkve9Cmt3ro25KGJksrGvbX2uYeDRpgF1eZdUns8PXfY7yatWUIK1j+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778481373;
	bh=S5VdaP/25zIh3Sw5TkdJOtoRI0KZTpOTWYRcEqn6vb0=;
	h=Subject:From:To:Date:From;
	b=N/wuoxKuM5sx4io0cDTdsaDOYp0ZY/khlGTQBTAMCDssHNSoHzw7w1ntAGdb3BfP6
	 m15744f3QGUhAwyY0LMjSH2Y1Y4jCL0Mn3mVZGbW7JSJdaCrOfKzHOBcj3/p8yf16D
	 cQZwM02DXEMQkDwrno5necDkGNNgSPVq3Er/m15o=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E204C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:36:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3FCCF39301B5
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.29 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 11 May 2026 06:35:19 +0000
Message-Id: <20260511063519.release-6.18.29@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.29
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.29.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.29.xz

Linux kernel version 6.18.29 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.29.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.29.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.29.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.29/v6.18.28

