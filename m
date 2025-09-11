Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8804D322A3B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605839; cv=none; b=POUgrh9zi6Mdm33CfsXmScAdDaBr+UDuJ4R2vf9YaFiT4ixIXVkBQe8GHdLF6ExsusxXWgboKLVtDuxA4adx2qrL3a9+whQe1q6HZTb86loVV2pn6gN2ZZC140kWgIQsJ+cJ0Z+ANT8s+GSI3xHO6x3KBAxnbLYXD0UAEypQA1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605839; c=relaxed/simple;
	bh=ApRXEzT+ZAjI3U+xiWkExxrg15RY/XmU6KUuZNtQfgE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eRp47c6qXwWdb2G7eXuoqVas0yYnNbXbjWYDtQ747xeRGQegy05jfUhc1JItIVX7lPmHmgV60Ms9Mr6YGoo1UuMeCHOXh50Vz1HGiysSevkcoOfGJpLZ+wZklIyxoR1sq8ITVR4nDj1cn1K1uJjBRThz5S38Z3IjOayxm42aIAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757605839;
	bh=ApRXEzT+ZAjI3U+xiWkExxrg15RY/XmU6KUuZNtQfgE=;
	h=Subject:From:To:Date:From;
	b=cxc6PIjfgOGpyZUVViCBFIh3tck/5ZpYzdUNmSkDzuUHlJ66oHBg6bWyLKugxM+Fx
	 kam7b5XMGi/4CF8oTqC99+qxLNCd06WMnpppobhU79bf2lnHwyqwp6BSkOVHQfKNyJ
	 xNNeI+L1y43dxC5KD+9RozQm5h98tr6Gm0ubm+0w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34ECBC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F01C1383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:50:41 +0000
Message-Id: <20250911155041.release-6.16.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.7.xz

Linux kernel version 6.16.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.7/v6.16.6

