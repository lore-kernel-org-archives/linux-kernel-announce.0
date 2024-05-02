Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509E13C66B
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714660850; cv=none; b=XS+5jWr6LUlIshyErEyNwKhvjc/6h+wv1GlDw7srpdG6WYRrOo0Q2B+sLQ8wMc1BIH6G5ZWuvNeP4W8Oc+2oJcFZKZqIubfIYiSuSdHp0r0KMx162ku1weGklXEuRx7iQITrUurm+cfqOEse4i7emn2FimqdEYd133aOCe6I9Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714660850; c=relaxed/simple;
	bh=KoAe49hsZwTM0aa7pRPcm/TCcobOYkjYzJeLFGdOAEg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Csrlv3goBJ5nB22WjoZKJSHoOd0LSRvrH9HT87wyt7nkHk0vkx+ZWxvFnEQMCbujfafDSCHUncl37ofxsWHCbdsbY247TRAVw9kGJVgdgYEjVePGTnMf0NSHgJa0mRmxkQpWnscjahJv0+AokkQTfYTZ57f80VNBk1/u4RAcgsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714660850;
	bh=KoAe49hsZwTM0aa7pRPcm/TCcobOYkjYzJeLFGdOAEg=;
	h=Subject:From:To:Date:From;
	b=FFd28Xx/3auC+Q9V/99MtxHs0wTpQ66I3TOh6QZUBCTCX7Imxbe0RNCnrQNAEF+Pk
	 xAUJbZ1vU4+piLkMb2CG9WM034K+Lh/+Ys84gD6l0DTCa+8ufaz7xGmu/2PIGCGdT9
	 V9zJU70NV1SK0tv0S08+aEr2Shn5b5znBwf5nAyM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE7C4AF14
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C503FC4333C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.275 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:40:49 +0000
Message-Id: <20240502144049.release-5.4.275@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.275
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.275.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.275.xz

Linux kernel version 5.4.275 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.275.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.275.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.275.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.275/v5.4.274

