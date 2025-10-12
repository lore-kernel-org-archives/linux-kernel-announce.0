Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B22723F40D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760268053; cv=none; b=hsQH8XYNpMeLDuY8s00X8SuCCIfe3qljsXg3qIATJ7h2cONmLNj441e/PyyB4qJhmFfTe52jFsAW+mgVcRQFCNlW1rN5pzpZBO5zi1c4ke77d8UQY2GmNkmLMY8gaXaBlovvsDRXFiYu1E6nLYqk6jzK2n5fJmEaqiTNgkijxVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760268053; c=relaxed/simple;
	bh=WtvfgL82S9/+e2sg471/JI5WvS0aktDGEOY2TubNYZM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ufEjdrx5/4ldLfAMrxtwqKlEAGXZXUtD2VtSABfbzst+62E+sWIR8i4BuzTo1C3qW/h13lflzyA84JVKoDqyRoyJ9+EobRBWVwOOaEXL5QSXZK08RXjWfYwXsZOMnMBAX56qIMeafOtMXZdRQxqpqituKFkAIcZP/DCgm63QHDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760268053;
	bh=WtvfgL82S9/+e2sg471/JI5WvS0aktDGEOY2TubNYZM=;
	h=Subject:From:To:Date:From;
	b=AznOOPnLJncqDZXtZ/DnxhyGK/iDFRY2Hh9D3+nMTNYGmCWM10HWvm3SzF2n7Ve5D
	 lx1dpSRMXTk3uXHikbGTxYd45qVAyTUnsamuhd5PtMRyC7XpJmZkCd+Kf3q5xZc1+G
	 0ghnvesPmsVcYN8TljVJPRe8XdGV6e3EWVM8TeVA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13A5EC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:20:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1EC83809A1A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 11:20:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Oct 2025 11:20:39 +0000
Message-Id: <20251012112039.release-6.16.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.12.xz

Linux kernel version 6.16.12 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.12/v6.16.11

