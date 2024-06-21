Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89CF15C3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718974548; cv=none; b=JI7zBYMxx6oTdkUShTtYzod/mjSZSTV708ba+h0tcpGgWN6HkVS+no2XbT7Ci+6vfe7Hm2WWQNMLrLrA4Rh0CMfjWCTdvzsHUTzaIoaYvyjxLIi037SJIsNcODOObRgHYc7VE09o7L4ltwoBQMW8rpthskbXCS1l1OkBpIzfldM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718974548; c=relaxed/simple;
	bh=SFmj7RGtCbpTaWT8cZzSdcckkuzjCQOmC/6G0apY2gY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oRR/Eh93JvH2NJOPUpC1WVCtUhJ+TXHnSa4d8RjdAMvUAhcbCfoqXVfLuQSJPnYf+uPOOON9WItyvf04WR3ESl0p8iOW9Rm0OmKWBW8iDc25vH+8aZ4slhOY5rniK2QWJciw5OpPpddiRNWX2jcxJTibWinf4jZJuRNfRNCKCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718974548;
	bh=SFmj7RGtCbpTaWT8cZzSdcckkuzjCQOmC/6G0apY2gY=;
	h=Subject:From:To:Date:From;
	b=G4nZUNfFxlPbA4eqFOVjw6o1mApcufvEQPfp3HDZHdxlBejz4FSh0s6tkKQHrvHCG
	 tV/iKNhiE7kMMTp9Cnl1UI3x6B5liQ23UOL1Rzmc/gSr3pd9tROl6galmA+L1Yi+Nd
	 BkXwEqwTTTsooi7w5Zc9r/QckfS8PV7k75CHiomQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A379C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 8DCBAC4332D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Jun 2024 12:55:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.35 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Jun 2024 12:55:48 +0000
Message-Id: <20240621125548.release-6.6.35@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.35
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.35.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.35.xz

Linux kernel version 6.6.35 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.35.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.35.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.35.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.35/v6.6.34

