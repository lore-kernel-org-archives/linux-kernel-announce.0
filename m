Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53541D27BB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731852639; cv=none; b=d8v0Lc/jrr0bqVUoNtjwIo2vXjUCXbXvb/qZo/0gRZ2P8ge4yBGotlXazY86PMzkfpozoOSNi5ix/CeZSwNcvRC0YL9u6nu2ty2EQITxTAMMQHNF/Gl8H6ILJheqHQQpSSsyHcfBH0mIo7xMAiAH9nzDj+qa8Gz/XD1G+lFLIvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731852639; c=relaxed/simple;
	bh=z1Q13b/8OdaG2V7obC3K+l+ELsIlxv48zjVNZH5P+S0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SDHGvLPp5RmavcoDXajU82MLKSEqyqH+BoTsDPc3rrUzMj63s0lQtc33oxcNLNev4du6xJbIt+/zYsa3uoHWGJaMtN6NPUmxCHBaT85H6Ko2n8fCyWQIhNbmLPEOttL2TRneRwYniA6i7eVHsa/J+F4/fMmJRB6jig/KBtb/OI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731852638;
	bh=z1Q13b/8OdaG2V7obC3K+l+ELsIlxv48zjVNZH5P+S0=;
	h=Subject:From:To:Date:From;
	b=FlVMnWGhW1yw3XKV56YJUUb3OuwW1LRWs/oEkiqhkYFVRpXPx3rr/dCJhgk1XkOt6
	 dfJIB7dJQmeL9kN1Zn4WV2t7it6Qx5c2SmW+DN7Yx3Dq2gXoumQtHh8Wo+BzHDf/vn
	 G3KKkOn3dL87K2D+AD/C5vTE3S39mfHwzN2b/9bw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F91FC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:10:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1A753809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:10:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.324 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:10:49 +0000
Message-Id: <20241117141049.release-4.19.324@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.324
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.324.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.324.xz

Linux kernel version 4.19.324 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.324.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.324.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.324.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.324/v4.19.323

