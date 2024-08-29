Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA7B1B3F28
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946653; cv=none; b=RwxAsqACz1raQ78H1AkLJacJmMasYRqsteuakLD1qT78COwT2YTRB8In1gunKKtJ9odzPfPOOnoFA3mPWewnIB+SQ3dCVvrBw/Oq1dPj/TBpcOnKUsot3aR+BYlBHMU8v/TYz2S37Gs2oiqWNRVhSWqFFW77jq9tg/F4eqgw85c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946653; c=relaxed/simple;
	bh=eaydwVA2d3SIZ4+KU6VVDgKwHtddGhCHNDSxv9tXgmA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BTtg6Xss1ldegfL/YXOelSM5UopK3+bqZ6I5cgrCJKmmLp3+hcmpwbeSFmBHbVTfnJS3tphcVmWwFYpMV5A1DeTQleTz7l7IO9X39kfhE3U4NXw4/MU2Fq7eYqfpDIv1l2VT4YI+KGe0zP6dE49DKOOxcad71uusubM62a0S/8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724946653;
	bh=eaydwVA2d3SIZ4+KU6VVDgKwHtddGhCHNDSxv9tXgmA=;
	h=Subject:From:To:Date:From;
	b=aDr8TcLqRXqtOK5qJYG6fT0tYVfpSZ1ZdJ8O/9/9OgFWmv1GONMEnEQJcPHo4osTd
	 cV1h6gPrOU7ZsFHpMD6Rc8nV/WO5Qj10P9z2Mt9P7bI2mlEJfb/cV6or8fb2RfVaAc
	 7lpCRtJq/E/E497KhGYWjj5Gjo0wY2Sg1TdR1plo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65442C4CEC5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:53 +0000 (UTC)
Received: from ip-10-30-226-235.us-west-2.compute.internal (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 040133822D6B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 29 Aug 2024 15:50:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.107 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 29 Aug 2024 15:50:55 +0000
Message-Id: <20240829155055.release-6.1.107@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.107
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.107.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.107.xz

Linux kernel version 6.1.107 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.107.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.107.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.107.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.107/v6.1.106

