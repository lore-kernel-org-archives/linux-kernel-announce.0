Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E232288CC
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015210; cv=none; b=aoRWGPuJAKPCE9m5On0pqkPXhWBSGiidbarQ+u3B7jYWOFcK/gbpbvfpK3uT3d1w+kFqYDIblbbnWg/v+euLg9uvlJyKvCitLHcHsS+YxVU5HwzUz8BJq1ZldyvNAmRxjXnKnS1Z8+F6m3mQppQ8Yf5Na62oV+HTbgIrXRtZsAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015210; c=relaxed/simple;
	bh=fZ1VI0onxkvKt0WvzQL2gvsn8/p7bNjzv5WI2RQK3Fo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MqdD8VJA8RGg5a2ob3ZpHv7ODCvYyZCDpLvM9vmZHLYuVEYZJpw7QA5DDqGu890MBCgtYV+5yBHfuUVqB6SJpIXs2xkfjLdZ6l6MlmSwoTuNHspe/ukdeEEHIU9byNUg1qYp2tC4eJMWGOyp87GVYSU4s3N36MnAo86UOLDHuJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744015210;
	bh=fZ1VI0onxkvKt0WvzQL2gvsn8/p7bNjzv5WI2RQK3Fo=;
	h=Subject:From:To:Date:From;
	b=gLw/b0a8Aoa1UGfoPjZEOHMD1i6HeKzmCg0w8sacPNeo3uwIZv+EnxaOM4KBqOwGN
	 FkDmWjoB6/lzH4zcAVReTgf1HnWu6kqlQbgLfWTniAmwdw/glJ/HY40WPA19wqrDQL
	 LSThJFnfINyj/xKjXC3JbV5GKW8/y3PbYGckFrvk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF84C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70B0A3804CAE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:40:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Apr 2025 08:40:47 +0000
Message-Id: <20250407084047.release-6.13.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.10.xz

Linux kernel version 6.13.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.10/v6.13.9

