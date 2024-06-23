Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E196065C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Jun 2024 22:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719180147; cv=none; b=E71L+qUl1kIx2frlaM4cDyRCC5dpUQouOPsg/MMypUKo0CRtYduWFWvKdbd4pGthHLhAHjPaKNmQjfG4zn0uU1XdAHZjjGPwv9EVbRfsiR+66BbGkG9ySW+j6ycXZv5t5oUNm4LkLwp1Rgr8M1WbDiUwgjlI/AaB/OYgl7/s1Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719180147; c=relaxed/simple;
	bh=kNn6nHSSF2giTTbYc6x/ZF3LIPaP/iaIQMMC00VC7nI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AnEkESz/Qm/A610bB/wxdEY26MDmHKc2A4um2k1oQ+6Y+RePf56+1L8nxuByiN9N6q5m901pLO9X8/AQrLL0/uONcdAErAyfYC3bt7IQsLqs16sw7hvtypz55DpQoA8SBxWl4pF/r7isWS3n6FjALGOzJ+44fG4idjRaV6qCY7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1719180146;
	bh=kNn6nHSSF2giTTbYc6x/ZF3LIPaP/iaIQMMC00VC7nI=;
	h=Subject:From:To:Date:From;
	b=tW0V5mpEuyKwFHz3n6ICCGC6mEZDnX9IEDKRmv1mgGw3HEkV14Uic3TSnr3kUgXMA
	 WqFnWuybwva6bIV68sRsZMqloam2mVbgI09yy7wI9Jo19G8SncHtpal9hwXvWjToen
	 Rs9F9OIO366wgglOIWZhQaLxr3Yw+Co9wYvglsd8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E40AC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Jun 2024 22:02:26 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 8D4C3C43613
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Jun 2024 22:02:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Jun 2024 22:02:26 +0000
Message-Id: <20240623220226.release-6.10-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc5/v6.9

Linux kernel version 6.10-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc5/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc5/v6.10-rc4

