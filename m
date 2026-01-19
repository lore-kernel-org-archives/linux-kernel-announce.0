Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741D837F758
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833801; cv=none; b=sgVcgA6nLGXdfWPsgMjQ8Rt284VZxLEUT3kuB1A+2+5sirbFnk+6VAVgXHKHXmpJv+p5P6dpvFb1aHUC/1MopEvibran0v2nMT/929JN8aMulKPhuH25SF/z5f4I+KbS2r4jKZw2repwYB7jE/EWqL7SosoVqt6PlYQ7b/NaiSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833801; c=relaxed/simple;
	bh=FVAWoPQF6EG/BF6y8hUzuoY4bWk03TncIgkP3kTmthI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mdBwJM28H/GKRoyWDZxP2kMAOVSKiM09TVlTxK8UpXHXWI80+1Tj5QBBLvC60qtbfakFsFgtuA8AO0HlNWGeVglDUFpi1xxff7XQk3n5FHCWsBR7pfgdbIspatqCmb8c9oQbJbFY1SXMDMgkt/1uYIcqJWyIGNmuCcO6S6B1ahc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833801;
	bh=FVAWoPQF6EG/BF6y8hUzuoY4bWk03TncIgkP3kTmthI=;
	h=Subject:From:To:Date:From;
	b=Qc8Q3Ly4FSzCKZf1PWjvmZjotdPz+pqm1ELC2tKx1qaCx9iu+UgI7UpXiYoXGPvc2
	 /hCnOQ4apoxN/mzgDCnuf8lHqtSo2S3YPe+axbN3TVW0YPIPKkcEn7w+kYPN2c2L3I
	 v+dZIBSXMQB582CasrEtUx/XcmQawMKl2mFfPBzY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B59C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3B6B73A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.121 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:51 +0000
Message-Id: <20260119143951.release-6.6.121@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.121
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.121.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.121.xz

Linux kernel version 6.6.121 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.121.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.121.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.121.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.121/v6.6.120

