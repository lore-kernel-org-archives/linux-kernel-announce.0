Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B73655ED
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778851275; cv=none; b=FFjFM54gxV0jrr+czy2YXco2RvNABz3upFVN0CeN6u8C8pBpHy2Rx9j080GWsBnYbDx6UhaHMR3iQZjPUTKriDw6N1pcpWGTFhbnaPGucKDSEWMVwaltlPHJZCDNUOQggYSxijBKAxvW2XjkZjl+2MVpv+FBo64TRBDvryKszeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778851275; c=relaxed/simple;
	bh=I4Qr1jOwCYA59iKO26XpNyfHQ3qYlCgDT4ibHmyxT7Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RnGqg3cs0+3OSnKRvB3dnwUv/bhiM+OANGkrNpTCt7J9J7ixHvLSJOyNH7k5FEW6ZH9vzdziUHGXsuezMbyQ29dqeDDhHaeqvddQIi07Xsjk8KTU28YKvDTfFQGRA4lDqpVJtcJ40M2foO5FC4Q9BzQP73NTEs9w/6pTsaLkyp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778851275;
	bh=I4Qr1jOwCYA59iKO26XpNyfHQ3qYlCgDT4ibHmyxT7Q=;
	h=Subject:From:To:Date:From;
	b=A1NKSJr0/tlnNFeP5LmfcHSuaQa2laYRmn0Jtc1oSQNusnMmQNwi0s7e6XuZwahr6
	 tRhqd6zBEWJ3R9Fjk74oF1rzeotAlK0WPIWy3QN1AhRPWYo1/SKpVtG6dBKw5Buls5
	 E49RBriRndcSxXaHbZDaKVHW460lFst/rBu7+OlA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B6A1C2BCB7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:21:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F3F03383BF57
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:20:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.31 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:20:18 +0000
Message-Id: <20260515132018.release-6.18.31@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.31
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.31.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.31.xz

Linux kernel version 6.18.31 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.31.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.31.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.31.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.31/v6.18.30

