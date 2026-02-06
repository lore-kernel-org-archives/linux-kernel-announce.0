Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E31246BC6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770394549; cv=none; b=t0WfcqFrgbf0ccTNJEQm0sRMN6FseqrI+i8bLEUG5qnQOeiz77CFCU+mfsEgzE2E35exVTNnRBYQdBs8l9M/SY5uBGp5rUvpAwjIjKzlVk1NJY/MeJt6xo1XouN1wr1jtSHvwyVdna0lRVSK4lgPWiFwya+Poa+1WNDQ4uWzE24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770394549; c=relaxed/simple;
	bh=dNkDhira25BHzpyFxYxmVUzARNIEP1AZXm00qE1SFHg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DOcBiRC8PF+dhJ/3RTOi7a1tCu990Sm61BD0wAWdQolxwkXNz04QMIstQbBo/O6PFPnLGYyOrld7+q//DcTzQJX5I1W1w0b7BPQC/SsRMiT4yue1ei2EJMEcL7rnsWMx77sQ0lpIEX9uNKzuEU29Fm/z+MOnQlQlUZRzuHDL1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770394549;
	bh=dNkDhira25BHzpyFxYxmVUzARNIEP1AZXm00qE1SFHg=;
	h=Subject:From:To:Date:From;
	b=QhDK/y6rVwCq/9DsjnsoiaHr2zrNIlNfElu0UiDiUbzkyIqHl4FfaV2SAEigyQT6s
	 F0UCnIMBP1WhaXoXBjC+jBNdOSU0H4RN9HaVqArx2AQ17O004RLlSMxPOUsXH/gM2I
	 5VgbWwAdCLZN3TxVpoenhbBFVGUILpLyd2Z8ZM90=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1188C116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0DF443809A04
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:15:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 16:15:45 +0000
Message-Id: <20260206161545.release-6.18.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.9.xz

Linux kernel version 6.18.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.9/v6.18.8

