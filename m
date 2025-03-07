Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898CE217718
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741369815; cv=none; b=NBTGrchZtSBZf2McswWfO8n4kcpgu3PvPa8MgK4DgKmYbZVAFvZSIraaKyWdRvGvjyS0iToJIcF6iRrKtGE9vcWbmzjLlBY5S1NjdBuGTYGNYjo+3oVcZ+u6O1nvmsbadFiud+zI2CgtqyMAm0k4qW02W06Zf64N48Nj/jyTwwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741369815; c=relaxed/simple;
	bh=ReFiAziRZhpEej4hZ6CAO9m8gFufR8zexXwfdY1IRUM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SQgW+KCrL4x1YxgiFqYSo0lrD2E4mMRQM8UjztSRN92pr+gtIqotePH/5PJypLYmxblJe5LwREnV3CJyMffO4lPDXxGrdtygQHlvkXuS069joVySrpZKstlezrOZPblO5F/YF5qctbPgXGGvGdmcJmIbD7UsfSX+4Ip1WbSaL2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741369815;
	bh=ReFiAziRZhpEej4hZ6CAO9m8gFufR8zexXwfdY1IRUM=;
	h=Subject:From:To:Date:From;
	b=h1h9Qq+tun3pTcHB8+33D2uSgHwr/YHWTNkckzw95dYflYuzOjc3g0a0+apVhE7OI
	 fcjpUQCWekxHdxMDCuV+Gn8PsHex8NSpGkGP9Ohh7iHjVN37TwUQ7s2EUfbV9tXA87
	 MhCp/07AL3CsgwrAuhkYPVE74QoXI3ND7lJMAoAQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D0BDC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F1276380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 17:50:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Mar 2025 17:50:48 +0000
Message-Id: <20250307175048.release-6.13.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.6.xz

Linux kernel version 6.13.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.6/v6.13.5

