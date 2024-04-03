Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AF1148FE0
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712152540; cv=none; b=gh8QmkatjUDU66mUdACVnuQg8X7jWRsqKB3Aybl2iiR80uglCtbFO7QcX2SuIkGFs9rU7B0Gl/I56yPiJP/Cs1aml+AggxtH6oxpEiK5Lshrz7mGoE1qHEcvTUmVJKmt9pa2nG+NinEwS2KHpp6BO1h4rPkKjbj7KOHXAAYrtwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712152540; c=relaxed/simple;
	bh=ZExbOWumM2Xj1xh+MOc8x1QWaja6cYCDWx07WqJzu1g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QNCOMm4r5sSpaBPnZjU9VMvcfCd9+QI5oiD+nOQDnXVJq9fgEz4LrsAP+OITu6rbtobowzXbmfp495XcBdBP8sQD2YvFMw/LDA8TgXD+SepJl6KVbfK8y5QrCv1ly/S+Jm/LY43gsWwlIjYv9GbhxcHcdwa3IpkVJkjMeKc3re0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712152540;
	bh=ZExbOWumM2Xj1xh+MOc8x1QWaja6cYCDWx07WqJzu1g=;
	h=Subject:From:To:Date:From;
	b=jHa4WMIt8yy+MTAlSGbwzUpkNgdICNAgqrFDDtMj3BHanRtkeQwcaz4F9LW8Su9RA
	 l28Lj/IqYHZo7Ep1GsV8ukAsYMdEdLzhYP2m4B+F52KoEE9QmE9NAarsYto2xvLZ9C
	 90nQRhfIGyA8TSjN7HkeAUDkZwAnas2BK3cD+IwI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F3CC43394
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:55:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D95A1D9A151
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:55:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 03 Apr 2024 13:55:39 +0000
Message-Id: <20240403135539.release-6.8.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.3.xz

Linux kernel version 6.8.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.3/v6.8.2

