Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76033A8736
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777542964; cv=none; b=lUqUyTG2+BqF1xaZVShX5YemXTA+ay8NR8Of/ZHcxetGNkx/aKZrnkBqt8yCz+kO4SVV9LOyl4Zc8TfoTphCqqw5+ftZA9PQzBtTeF4CSwmZd4dZLM9QpnAPunq5hb94vyk4Bt+GrJG5vT2XhQgvE5Q5ROovRxQpxWJaBuQeDS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777542964; c=relaxed/simple;
	bh=OcMpmDqROMpPaGV89Hi/FCNHp5c6cokp+XHjArq2eRM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=D/5d8XtAdaR8hlY27uPSs+wuL8/nZsrBg7nTn11j4app0lFp7G8Vr8LYf/KyV7Kvx4GcW+G8fL2rVfd/7Skdy8Jje0n6ALZy+9Y7wsQO3esPGBVqp6igUh1MIHeJ8DW/xMf0mQepG912pRFbfeTotXYYWCVHT4AtBcA1HjGvpe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777542964;
	bh=OcMpmDqROMpPaGV89Hi/FCNHp5c6cokp+XHjArq2eRM=;
	h=Subject:From:To:Date:From;
	b=j+zemCFRl9tlAqO4t/5BZR9ZdOQBQ9+mveeP9WGW/hBYUk2uanX68eXO8h1XvHuGv
	 FewXRsbNNsxiKHtek1G8V9fW+4srwLqP6cBnJG23kcADseIv9lFFZxgq3tdXJyisRX
	 wXCKNSypHgtAswKtp9p7xAggdIPld8kEVsP+Kv2U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8403DC2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:56:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FB3C380A965
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:55:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.254 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:55:19 +0000
Message-Id: <20260430095519.release-5.10.254@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.254
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.254.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.254.xz

Linux kernel version 5.10.254 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.254.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.254.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.254.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.254/v5.10.253

