Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0288C23772
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715939742; cv=none; b=c6mOth+JYL6vk8Js18ozQcK3clLah91FCFZIuNhXlM6YYiGZR4aGmXi2Zh+py6nf1c5Op5VtFD8uEejrmZc2Iz4zj2zocmkmIcw/Y6uiXFBDAuaK2nTNVu/oMGEd47f4gVlZunPdN9OHAoA2qpJNMl3BMZve7A9cDEL3jHPARUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715939742; c=relaxed/simple;
	bh=W2DuY02Ef7CyrgFysNNI82aVRdWnogLxbRU+1tSEZ5o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ougmdGy3krTM0dVwzFr1fokLKz/f2D7HSrqJV3sseyyq7Aj0aka3iytr0CmSdpmPAfPWDAzatA8gmDAusUfa1VMlRA0nerIb0oOMm+VLYkq1k33z51y8Yah3Em6hQ9H7auIqMzD76TA5HuTiXHmCXvn+5PEDkEOsCDGb9aejAeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715939742;
	bh=W2DuY02Ef7CyrgFysNNI82aVRdWnogLxbRU+1tSEZ5o=;
	h=Subject:From:To:Date:From;
	b=GPakQY1apfJnew/8VHQIlufJ6MmvJt6SgHdgU85d1+b5AQB2MPIoxRsj+Nv9QhQ5p
	 FU1fYLnILfbEzIC20p8wA71dzF1y1Kmw4B4grCNzbMZxT8pUB758msYQJ917U+yu+s
	 BVpaPKBM1iV2+OXFNLHMMLf1VjT9qadjNo35TFKU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92AABC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:55:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 87D68C43339
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 09:55:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.276 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 09:55:41 +0000
Message-Id: <20240517095541.release-5.4.276@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.276
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.276.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.276.xz

Linux kernel version 5.4.276 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.276.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.276.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.276.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.276/v5.4.275

