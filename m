Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF684153BE6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718975450; cv=none; b=cM40BAeUpNhWG68HJEM3AFeA7MgrN5IKKBs3yq/N5gEkaF+UDdWgqHPUpLR+7J0+ikHqQS46YJh5ROj8c/9ofW2Xe9+yd3dDeEUtSlucY2ZhyKRVVoMnqg3VnteVgw58eCZOoDjaPt3iuJ2S16dbQrSpTORdfrK3nIhnwUPqBNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718975450; c=relaxed/simple;
	bh=nDarEvUjGlS47RTVd4jfJKQpovvHB123bozLVfxRO84=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JeUmGKGO2NnJbIxtdjycdiwnr2wXqzkH+6rJvm4MKzAkozS67NS+ir9LUszKP9cVEwuzpB8ztnWvxBU6m1KryxIMUYZNbGc/5Ua+fF1X7j1c5jbZ+eSm6w8K+MzGkO/Z+LmX0jBiGkJJnCURJve/uDSUw3vn85CpLmQ/PfzPx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718975450;
	bh=nDarEvUjGlS47RTVd4jfJKQpovvHB123bozLVfxRO84=;
	h=Subject:From:To:Date:From;
	b=L4WqxWeXsCPxLb0IKGTt/0Pyx7krh/zx6dDMT9ydmKe8M1TwJP4h5uXLVwUoVILkt
	 QtyP7KMWoCEK66jYkUj7HIRIqmQFdFp8lpz0HBzuZvKuhFct+AuJP9zaP0G/Mhvo/B
	 q60LZ7Hg5lppEsWxRI804MSzF1fN4DseFQv+MppY=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0DEC2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:10:50 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6A177C43446
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 13:10:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.220 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Jun 2024 13:10:50 +0000
Message-Id: <20240621131050.release-5.10.220@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.220
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.220.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.220.xz

Linux kernel version 5.10.220 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.220.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.220.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.220.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.220/v5.10.219

