Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B30C1FDE1B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 13:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119119; cv=none; b=WSzGkjHvDiLGCf/+hOIv1Q9b2+jBe9QhXabgbZqICjkN+R1KN1tQhgVJnyWlxW3SShdEuV1mATRbeTA1UxQBkpATzwNZHW15RJR1tyWtQirMenJmGkhFsiSFimdXTSkKcJAgWgdDRYPUKKcsvQAs849Pc/eiWFBfrBQZqmouf3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119119; c=relaxed/simple;
	bh=xbkAiH7sCgpShW5u16EMzFSvqjWQTGNtB45xkVWOyOk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=l4HpOaPWak3FRCkv3CdjwnqOCQ2roKg+FVCd5gYshRzVBKqGTPvu4KuiRAqOiSacHDggmqTi/7LiTQOfYsKcfUQ9kf53fecNfkfU9oqvJJ+PJUnpM17fzA4neOnX0/9YPcNldbiYj3UuuDxLPBxTn0M2prECKVGnKpExZJ+WNOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737119119;
	bh=xbkAiH7sCgpShW5u16EMzFSvqjWQTGNtB45xkVWOyOk=;
	h=Subject:From:To:Date:From;
	b=P89xIuzIl+vTLMkFpWNN33gRu6PRgYmL1MxHDfPvkUXA2pIMyEMj8h4cOB/qLDWQv
	 72JcsYMt2Tn4THkKLC5WvEvdlMmUBpskSp3QB+0kkIWem+JP8luwBKmWYe/7jTkPmK
	 TwYL7UOvzSZ1V1BKu81hqMEaxFeUoAperPtPQu6U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3104C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 13:05:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 383DF380AA69
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 13:05:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 Jan 2025 13:05:41 +0000
Message-Id: <20250117130541.release-6.12.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.10.xz

Linux kernel version 6.12.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.10/v6.12.9

