Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFED2F2F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746165298; cv=none; b=eZCizjUDYZCZ/cMxoLLW7k1H9XmNrhKmRnpDE3nWnCMCfRBJI0X+IUe6VNEEKXCjuowKY/uI2DLuwtpeMPmYEpnCSSn2z1VD5365999aoDgxIfNTtjlp0042s3Jdi1LHrh2xevy0F2TT/jda/PQm3UeioiESPXE8Wc/xknKjc1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746165298; c=relaxed/simple;
	bh=iho5Z0/eStxT1PJ5NrW3qefVDrFrWCsj39cKknkogQM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nOIQJsP5aEUJ60C1t+S76EzJ6wdWu05w/DjYeQoNQ54m+EWYHIAoJLPmvVpq69NqpsQ0yuHZt+SN+geycUiFzaPFvcrtHHhCXOP8S167tDzGW405PksoJQVg/AYHmKC2AGnrHsr3mlj2uqghHCBZJIqhnerOsb/uTRG9RGM7I8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746165298;
	bh=iho5Z0/eStxT1PJ5NrW3qefVDrFrWCsj39cKknkogQM=;
	h=Subject:From:To:Date:From;
	b=J7mHMLAQm+8LSuBOEOBlO7n8d7I0/A2w8eZ75xNnc68VTZPh2Xe0XN/ACCDhxxrOx
	 gHx6fh55kXoT/kTh20Z7Fv1Zb+2v05nUpj/ezZDna2CoIvIfkHMTPciNegSvdpZ9bD
	 92NJCEQefU9Oo70YSL5vyI28VtE6r4YI3S/4bGWU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57E2AC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:54:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE0833822D59
	for <linux-kernel-announce@vger.kernel.org>; Fri,  2 May 2025 05:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.237 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 02 May 2025 05:55:37 +0000
Message-Id: <20250502055537.release-5.10.237@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.237
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.237.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.237.xz

Linux kernel version 5.10.237 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.237.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.237.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.237.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.237/v5.10.236

