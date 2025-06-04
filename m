Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19DB28FA88
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043504; cv=none; b=dkXun5/Y9Jaf+XK9Z+TLmjFKMiLcma5FFwDbYC/3/IlVDbCIxEOYictWkiYPblgEYUvB/Lt4rRUHxurRbw98RSCwCGmWahoPP3+qIIut1fJXslYa9Hjmq/oWBweptD7bpIMQewfhf7k9Aya/wj7q4V7Ed/0taeMEGln1SX/DCqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043504; c=relaxed/simple;
	bh=szVomStv9NOXALge/ebnTmD2c1srjR48TXjPLMibb/0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KXebZMQz4p+/NlHAmw71iBSqJILC8UhtRJ3edSLCJ8+yg9GFku1M0IRq4jKjiZwWSNv+w81hUUPszEKEjMjzjp/54Rww1Kwtr/Wgw9oe9yjGa0+DhLjf2fZ02SCgdDucMoEImF6jFlc73Mqf3fDQQK083akkZLhIIiyJFV1YJgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749043504;
	bh=szVomStv9NOXALge/ebnTmD2c1srjR48TXjPLMibb/0=;
	h=Subject:From:To:Date:From;
	b=CccpS0n6cViU94jwRu61ShLuhwELqeMhpLnegP3vgzMyCX3cH4r/DlJVR/HwTX38C
	 1z60IPa03aW6REIqjPlW4H2ClHPlXVmAfD/bslbNll64nJE/ezLMIYUztMF9RUBOOY
	 Ma8Bqjzm+MX/4U7W2CGonp6qax81vwABH8IRkhNM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E842C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:25:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1CD338111E5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:25:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:25:36 +0000
Message-Id: <20250604132536.release-6.14.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.10.xz

Linux kernel version 6.14.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.10/v6.14.9

