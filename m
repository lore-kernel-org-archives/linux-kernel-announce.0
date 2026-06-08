Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3A323394B
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jun 2026 00:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780878278; cv=none; b=Bf+vH92P9qiIZcyrY5yxkwdhzlL4Fgm9Yo+E05lYtLhMSDdIojKiAwVAIO/9newLHWPeSM3P8/S4BgRzhwTLuDlsxexWhUp37zTpHnzSZKrTRWv4Bww5b231jSG6i+vIwygu98g3Lv2hDH4ry618tnFyMTu7yDQe7tNCzshaTFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780878278; c=relaxed/simple;
	bh=JNI6wzI7TZO5oVax5Bsr6DEIuyU9xfAzz6VsZhOslKU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ooeJ/27HEcjbafTb58+2LydFp32N0yKneQgNwJyJtxvsyZUQyGvV+08dxrYWGRn01t85aobgIhMWQo8T3IOmZxW3Pu4qCbYrwiDX1u7h3s/LTnZLNjLQeidMDYXEv0oJC+Y0H1ucsTCNe+kDJxVzcqT5kxtO8tpY8y+6hed6ZEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780878278;
	bh=JNI6wzI7TZO5oVax5Bsr6DEIuyU9xfAzz6VsZhOslKU=;
	h=Subject:From:To:Date:From;
	b=rlYI1EFTpX6ePM5DkbMzpwVHrIMv84ovdEcIGFNviE/bD3NeahwbLn7KJxRVt9iTn
	 vvVXpd8e89y7g7Ficm/WiW5SG+gTi6triKZ8o+cE5k0VLiWzkuRAg8nRbnLCHIm0Kf
	 O0TgEgv2c+XBHBrP33gHAc5c3RXZ5LiYBGCpi26I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E57C1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jun 2026 00:24:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 965AB3930CA3
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jun 2026 00:24:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 08 Jun 2026 00:24:36 +0000
Message-Id: <20260608002436.release-7.1-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.1-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.1-rc7/v7.0

Linux kernel version 7.1-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.1-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.1-rc7/v7.0

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1-rc7/v7.1-rc6

