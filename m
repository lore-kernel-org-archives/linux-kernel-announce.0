Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458D543AAE
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Oct 2024 23:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730072466; cv=none; b=hwwEMJiMEds8Y5/ncF5WD/6tRsMEaBI+MwZ4iKubiV6jSEibHKE4s9HSNQSJscJFG2rtWVazjGc66OGXc8MbsW9y08vJxuYLwXxAFeT+Enh8WHSMPVQ9zQ0KNp/zjofnH7HXatmUvzDE1Bjl+0ynBDxYay+etmYrPSlqRUviWzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730072466; c=relaxed/simple;
	bh=aHQndCYc/uxXdLZb9WmkgcF1GGbUwTe5ph4CX/aTFpI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qW/CbYn/Keg//va/Vb4XxpH1+vusgW8y2bher7eAy8fpRkFM3Gb4eHm1UK8+y9wuIhcgE+kXy3zw8E8OYhnidJAiXxCqHg1pvZzqwrF7ws5bla585K2R7Tmcdq0fgmjjZxxFrlDoeuiX6V14M3ZGyhQmzy9tIQ3pA+JgdAs9RbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1730072466;
	bh=aHQndCYc/uxXdLZb9WmkgcF1GGbUwTe5ph4CX/aTFpI=;
	h=Subject:From:To:Date:From;
	b=qL3+3cAjv5KAPV5olfdcmrmLa6snHP5F2xKu90oh9xhDPb1F82w+0JjXObdr2WrHI
	 1bKfrOTSOBe+GpIuQzTiPXTbDWwsCNczzlmQClxJXJ8vhtEMvBOvStAxh10hXogSIb
	 ehyfjlmMehoadRjXuQmHJTqhLAGumPUzHajedLM0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D18A4C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Oct 2024 23:41:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 385AB3805CC0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 27 Oct 2024 23:41:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 27 Oct 2024 23:41:12 +0000
Message-Id: <20241027234112.release-6.12-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc5/v6.11

Linux kernel version 6.12-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc5/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc5/v6.12-rc4

