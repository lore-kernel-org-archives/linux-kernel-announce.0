Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15E1146006
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 May 2024 05:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715578243; cv=none; b=QLJXFvtpzoQdC5uYCOPnTOpommaCtV9x6nQNVgS6WlFBCIHRkR+/+WEaVFpGIMcbg8Op8lUPgcAP1gDl/kc1AdSfIGwgHyeGtrPV8Ec1xq+aw3r81FSb7wyvE0CRqkPgdQOKo1PR/fS7a3JnJByMiOhMHsJfLOVWnqY4yPb8XkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715578243; c=relaxed/simple;
	bh=ayR7FqfBGur1/85spSl1//eOhyGZAzla5VIo2l1GLYo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RkbIf2LR95gA0LdMxEc0oiUGRHCAhkXJmcfbcXNfmit1zzsNfDEbP5klfoUkJEy8rm6HavYvJNoljE0o3CwGP5yl42/Gjh6eJumj4S9k5+4X92rpmkRXAs0Z31xVfA70eiVxAVHyd5zvN/mHjeyeDv7s6wGe+uDqg87xk7I4tS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715578243;
	bh=ayR7FqfBGur1/85spSl1//eOhyGZAzla5VIo2l1GLYo=;
	h=Subject:From:To:Date:From;
	b=hmwTn1tmQ2wZmg1Uw0Bw2FdG9MR4bGGAZwt4XdvqZGxvTsald0eapaZHOi7n+yaj8
	 2zWJKypcdQNKki7GACDCGe7UgIRkikcxDRTSmCs0G1HQl3lwaihsf8ZndnEIwv1MIg
	 pVWYVG0Npwcf63vXkDRecUaHITr2C8xmuvWU9/OQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A03C113CC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 May 2024 05:30:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6714EC4339F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 13 May 2024 05:30:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 13 May 2024 05:30:43 +0000
Message-Id: <20240513053043.release-6.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.xz

Linux kernel version 6.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9/v6.8

