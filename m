Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248E5131BD6
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713346847; cv=none; b=pi9d//z9c4YS9kmB7k1zj03uUw8lQagZihSrTvyVuqP8jp/hDjDZ014LVlnWd/dtd4kiMrTbonNmzrfKCSsVp/JCai5dr5ge96ki/JIHHUaHwa8bmjC3gmPzB2Xkp+Mo7qWE3M/uFGFwnvibT1hqoDYR2Zbz1hcxMhm/QFnR96A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713346847; c=relaxed/simple;
	bh=pUX+7dOIjEliBw8fAA129rUcDlD7/F5xeieO5H1wjdc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ghBHPH6YK67UJyYLBUBzOLwXljQm3/4gi3AQG39bLQ0PYH/9i+Afcbzec3yvCW+MJ9PjMi99puiDYUXqOw4lndDS8BwxSe5PwkGiX9ABAhXTwXBMbRguRUeCEOuU/FxgvMPnZYe2H0vfeUgI/afTGtvq7xAOa4CIyeom90pBUAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713346847;
	bh=pUX+7dOIjEliBw8fAA129rUcDlD7/F5xeieO5H1wjdc=;
	h=Subject:From:To:Date:From;
	b=Nb3i9qxVhE68c8MUYEEJgwyT9IFXZUpmnC8suDKVFHJb30mbCgFseFwpnwiR6Se0k
	 WMdmM9efrSJhT9WOcvsrIOf3L1W/qVZhedYaXR/V88wjrjGwhfhyIWEhwrpYQa2emd
	 qEkRKJFcpmDLxagHRKc/RBFVJsb/vrg9kNXgtolM=
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC58C072AA
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:40:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C1950D5B3FD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:40:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.87 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 17 Apr 2024 09:40:46 +0000
Message-Id: <20240417094046.release-6.1.87@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.87
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.87.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.87.xz

Linux kernel version 6.1.87 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.87.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.87.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.87.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.87/v6.1.86

