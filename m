Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724BE3DA7FF
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780328718; cv=none; b=gKx4NPKceysWYI9htLkcg1w5I/5H0MP+Nruxe32eIZmcaY+n8advbSPgm5+qHzlruspnfvTSFTp0kBID02pr8HbU9xPAQ5PbMdPNNdQErHV06BnfCysM413mTEKuIpQufuN53gG6hz90EgeyRKOIT1co9c3iDjNKm/f5o3mvULE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780328718; c=relaxed/simple;
	bh=KHzSMjJuqRe7zl7x56rzeEBaqe0DZ69eZxOUDcqPacQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bo59pEsH5fIZoZq9GWeln5IYSvT2Jpmc9FXDMwdFE61M878XSe88X5299qme4iKJPNA03arpL1TDzgonnDdYCFQCQ04B/hDpSComzzw1nY1bA9WIrShDNHQ+vXw0SPpockCBlS7AAbJuGbEERyfjBC5NW4izlU9ivqUcLUUu4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780328718;
	bh=KHzSMjJuqRe7zl7x56rzeEBaqe0DZ69eZxOUDcqPacQ=;
	h=Subject:From:To:Date:From;
	b=M7SFrRTlj+x2WVzlv6zvJhYexPspsh6yfvS5aFjIIoWS3HmLQ4DIbSJ6WVaYl8Dbn
	 HZTEtjP8sDhR8peI6aLTrX6NkGFBkjkPWq6gkEUjuYkj21yaqVjz/M7o8PVwL2YIOQ
	 43BPZkaVZInsQzRvmeIM+B35r/KhyIh8j8VZbzKA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 365551F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:45:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D346D38119E0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 15:45:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.258 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 15:45:19 +0000
Message-Id: <20260601154519.release-5.10.258@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.258
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.258.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.258.xz

Linux kernel version 5.10.258 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.258.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.258.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.258.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.258/v5.10.257

