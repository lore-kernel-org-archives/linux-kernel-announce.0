Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D219D5FBA4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709295342; cv=none; b=IILCgiwX/H6UXUKo3QsflakTbmg+e3LB8cITowU8FN4K0IHRxObDndk6t9Nn6gxFD4pReBtPYZtdUKx1a4gftcMm1XcssS6cEk8NWy2QmhZ8uV60bYUB/xPN9FP++Vlb0zb66pabJGA8OPH410sjFvg0Yhzv5PoLbFAmXJ9ljJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709295342; c=relaxed/simple;
	bh=gTsyuQR2bdevb4fHzORjulEkvvxEEZkAtp/U5uT3PiE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eD8rhvqq1C2y/y0yVYVnRIyOWQKK5Nn7iTvd6mA2gFE0pdvL6J+2Ace+x9fnBtPBYSmb+iXGtFX5Gfve7oOi4gzW59w8I2psQYOo3/+fDAveOeC+CkN7kDMB/77d99G8KMcEDt3w2ANgf5O6LntM7yx87CSVj1lhYe4mL71GJAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709295342;
	bh=gTsyuQR2bdevb4fHzORjulEkvvxEEZkAtp/U5uT3PiE=;
	h=Subject:From:To:Date:From;
	b=TNMR/ipo7dhuquHzKWrNH4rUctP09qjXfnyLjWEQuP2wdBo7aLMPQokU3NAoR8lx0
	 FpjN88ecpEoJLEZRUOkzN87LVJVvWcTAd7qn+DOrgsMWxZQK+5FfXyRjYFLYFp7kYl
	 v4oIjX4hKMJCk+i7MIuamE1+ksh1CEvsq4Q4rWtc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B388C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:15:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 01956C595C4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:15:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.308 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:15:41 +0000
Message-Id: <20240301121541.release-4.19.308@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.308
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.308.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.308.xz

Linux kernel version 4.19.308 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.308.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.308.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.308.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.308/v4.19.307

