Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13A114A098
	for <linux-kernel-announce@vger.kernel.org>; Mon, 10 Mar 2025 00:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741566820; cv=none; b=n02lqXfZ7KMTwfzrx6Iby9MiFDHx6CSYyE8BxHdblnacae7bcGC791iExEngI7nWrP+y681mEMHbtEr0EqnTm+qzMEpv+yUHIxN49680Q5ADxY/ARFaxCjpgx/BK1F0gO/gzbf3Py2jRBfnTDa46r+ZcYp4C3uAbBoS1kTCbWsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741566820; c=relaxed/simple;
	bh=IuQj5zqVOR2bASldnYclW4kav3najsnFqWEM1ID6Yak=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=s1gTTL8Of0yWzJRK5nXpv7VHupGWO5E0GYydLuB4K1kpWnZLzAelLTdflkboWxBt0G9XEYarC5L3nP2uQvl2l8rYpqA9eVRoA65tf1zt5y61FtyqTl2htyIvSXfpBxoimh+0SFLCDcdxrjSRtW/F5eP1HrA0OoJELaQEx4kFNp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741566819;
	bh=IuQj5zqVOR2bASldnYclW4kav3najsnFqWEM1ID6Yak=;
	h=Subject:From:To:Date:From;
	b=EOTt2KhtJ9UN5Nurh9qtCynn3jcC/uOKTbHqB+4TcdWknndkgl6hWffkBJJrzo5l1
	 BGlqDqTu09Xs3i7rI8PJXmt+jaPwqBZSi7nzx2jTx8djVLGeNi1s1YvA0GklUym8qU
	 7DMB7OsLAJzc38ck7eP6dC8HlxGjyfzFtVEnOxWE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFCEC4CEEC
	for <linux-kernel-announce@vger.kernel.org>; Mon, 10 Mar 2025 00:33:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D70380AC1C
	for <linux-kernel-announce@vger.kernel.org>; Mon, 10 Mar 2025 00:34:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 10 Mar 2025 00:34:13 +0000
Message-Id: <20250310003413.release-6.14-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc6/v6.13

Linux kernel version 6.14-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc6/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc6/v6.14-rc5

