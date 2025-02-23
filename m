Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F5B224FA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Feb 2025 21:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740345644; cv=none; b=cTetB7hF7S1TVZbTW00iaklv+B5FE1t1apaoajTyBUXiq+PE8pTdONGxGsnimR19U0lm9xqx1CPYZVZSujcd/7ZN7iEEI/Skq0mX8+xW3UrFL/nPLmLGotZP0WaiHwcYW/jkGcKT6saLaCYHSJuxGvOYz49DiGNS5TnUFlIS+Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740345644; c=relaxed/simple;
	bh=TSPaRrgVe4J8xnUWSyMx/XmP8OBZFT5nezjxGecLoss=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rnXcZg3ZdesT2WH050SGc4ssLDFQVwkjuEE4YnYYsmK2w4/jfXJcKZ6ivAEFDtLEeH2XmisEj85T07y7N3x3wosYo/+90yUD05pGK16NtILkf4Veul2VfTCC0MQlD1ytqoLUJ9A1TY7FNPgOR4ehGJ8QMLcSxFSgIUdBlC3snsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740345644;
	bh=TSPaRrgVe4J8xnUWSyMx/XmP8OBZFT5nezjxGecLoss=;
	h=Subject:From:To:Date:From;
	b=DRbGKZh7V6j+ilhfYcCEavjajozL/1J/rMVYOKdnsa/ky+oSHQZF3ybgcv4rm35QZ
	 pz1wAO7ZbTV0KxZlz1sAMKTivLBgo/rCyVN40e0OMUeQxY3bHkWQULhXdukGwPvhDH
	 IpMxAVDTuFbrNsVxJkhlsoNWL+w8QWRY6v3Pq5t0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E868C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Feb 2025 21:20:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7613E380AAF9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Feb 2025 21:21:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Feb 2025 21:21:15 +0000
Message-Id: <20250223212115.release-6.14-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc4/v6.13

Linux kernel version 6.14-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc4/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc4/v6.14-rc3

