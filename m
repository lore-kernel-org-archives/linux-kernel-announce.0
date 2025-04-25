Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF3121D5B7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572199; cv=none; b=pMQJsPL9Fy6etzud2gp3dK+NYrUfQdYZwdtbPT6DnRpcEvNGaHxS5df4ExTib3a8DVMKRT3pUJToNLA3pVFGUqcnF70v3bj3+JHmfwkltM4/rlvvsIQfEgn/rbl7RGpW/vk8U2KUKYfSRRAdSGSjY5CoO+FVcqOmJdo4fGS37Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572199; c=relaxed/simple;
	bh=x+gEai7P2ooDrFRUl4Kh32te2uvdqc1FxshfgSQ8M6c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DTa1bLNt6OEak1lW9dfSLnfmrYMUVaYxctgi3ZfN5T2lIgRU+ZmnFdTV5TCpDYWUuucFVlzI+amCx9qScaIL1on6QOa674e4W+1O23a04VSf9tATGFhXivKArQVBKVUIgXzodzHsAg80GGD96WoyabB//mMjY1xV/sgrYA8xaKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745572199;
	bh=x+gEai7P2ooDrFRUl4Kh32te2uvdqc1FxshfgSQ8M6c=;
	h=Subject:From:To:Date:From;
	b=rQrg3sid7emKh2D5z/75K8lFo/mT/27OQkYXyujlvaoaxNfbBN4WFGnphzjnzaOwG
	 HMTlpyVzql0IBwDdV+0i8iKfDqiZuZijoDuZk2umTrG/l5guaj0Aj3DuLxJPiUA4kp
	 BaG34vueyzoazhA1wPpUxO7e6jm72MwHf0RTRTyM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BD2EC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:09:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3795A380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Apr 2025 09:10:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.88 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Apr 2025 09:10:37 +0000
Message-Id: <20250425091037.release-6.6.88@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.88
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.88.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.88.xz

Linux kernel version 6.6.88 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.88.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.88.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.88.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.88/v6.6.87

