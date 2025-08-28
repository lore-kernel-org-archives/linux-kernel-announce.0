Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73ED214210
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756393533; cv=none; b=Jraevsblfj/epgNCPzDlr2V/oYiRMmqaOwaIQWjzQmTHdpo073BzFEyeVQnarpwrShyaT3YADlVQ1mvxslEuwjJKc1UEA8XZ88mm2N8MwagxF2/fpOtsOU2L+Y7/W7B1THNsXBy+r7eFn5WysxtWpaOB4613ZoxRZSvKc5CxKfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756393533; c=relaxed/simple;
	bh=0ictK9y13v5SORr3il3hRPfjiwThE/GWYNuQvjAN3q0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j7VuMkhdg8K9eH1kItjKx+41ZBhcOiELTixArSGieVMu8COnlvxYsAmJCl8biKmjaNZ6KXbZBs0I5+jlAMS6ulxKr3b1ZK1RtJMImx7zbLEAZCM4O8WTMC+Ev1xKNfNwf+QugkTLf9RdcNyFzrz50E8ZpXncpjP9wmMxlmuZsXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756393533;
	bh=0ictK9y13v5SORr3il3hRPfjiwThE/GWYNuQvjAN3q0=;
	h=Subject:From:To:Date:From;
	b=PwYZrBZuMGZ7iKaFsTfKBtuAuOBpsEQk3nyyaLHwwWx8X1y7ASsy+LJokLRlF3526
	 iLlRe/bCQQVFWBgtn19Gjmjh1R+2d1Ug9j5XgDODHb0R+szrHihCmFWTOr8LpWquS5
	 aPeMHQj+sDw645Jm3xH+l/4szlCVA5rv4Tb/bR1g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D706C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:05:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74E20383BF63
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 15:05:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 15:05:39 +0000
Message-Id: <20250828150539.release-6.16.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.4.xz

Linux kernel version 6.16.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.4/v6.16.3

