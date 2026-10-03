Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1C739EF12
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791024024; cv=none; b=ePS1BUwc/wSEwrjSb/G+rMmq1Nm68Eg+mU6sE+E7SXXygRLfcbNKADKC1a1ttjp4zEYc6iNWV0hunMNBy4uShgRiD7bPSTmG/PYYxRCQJg3gA4YAf9GgaZmD95eLGAT1q/3RgMVda4DVumV+TchEn6pDY6L+BtlYXGDy8uNCM3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791024024; c=relaxed/simple;
	bh=JGXncbcTkSoZliPTpV8Sbmve1mVaN54+8G7FPp4mWSA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hfOQQU02boH7CGKIUR1yQOk8+QqE2LT3Ujwf//rZKelt3thLTYh83jj6ua9YFNxh7pPdm96K2kT6pxm2afbtfU6L98g9/ZlKyxoXfTIr6eCkfQy1kebvm0oqj6JFK8pmnuSbFogbbUm2jIDpgYLLINtJowZgWSx/TgAOU/m39zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791024024;
	bh=JGXncbcTkSoZliPTpV8Sbmve1mVaN54+8G7FPp4mWSA=;
	h=Subject:From:To:Date:From;
	b=inKjkjHTy/2dMcWIZtBHfTjhsHHYdhigHnKMKUhUV8bn9M6ZYovk1fpeLt80sL2nh
	 oOb7hyM/PhLlW0klR2LjNDjRF+g+NAv/JHcNTYquhOhOR1wgnHX51IB+6R1MardZTj
	 NNA09Xfj+K32C0wRafsna+BtGzci/CjGR/U8Xizs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 810381F0089C
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7733F3924460
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:40:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.271 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 10:40:22 +0000
Message-Id: <20261003104022.release-5.10.271@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.271
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.271.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.271.xz

Linux kernel version 5.10.271 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.271.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.271.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.271.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.271/v5.10.270

