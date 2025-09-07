Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B94B2B9B9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Sep 2025 22:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757284597; cv=none; b=OhX1d0DFGrqC9OXbj220UacB4RJaiMHNZP3PsgVl1lRyD1oW0X5GbvUZmtFmt2PZETNeRyLQPvXqWA30QlR9tOUwMk87xn8C+4V2WNbKO1mJv8TxH2M6OqqL2akJHSBHJ7WvkxdYvHIRmifC85hqgTdqglp27BjXuw8iEE0pYoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757284597; c=relaxed/simple;
	bh=vxh++l9hPKOM3Xs5ogHKLfqkghw9rZ1QZzpiwDJE8wQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tLAyOPyFc7V0EwVD85s4pwn3pX0MjrFrgqd7P414v06oyOth/t4Z84HGkxNC2BUTokEx4T/0RV/PFn/skryOmSiNi810zeJUP0FLpgGAq6wVEqOA3OHoGqDkUVN/6TrbadJFJdE22Q1wC/OjKzTY+NkhQaIBXZ0uZ308pj7Z3os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757284597;
	bh=vxh++l9hPKOM3Xs5ogHKLfqkghw9rZ1QZzpiwDJE8wQ=;
	h=Subject:From:To:Date:From;
	b=BdzMxHo+4VelEDulRhBH7JqqPWm+D/ukqrVrp4BbQqiGrYC0xjybkwCr15YS+h+lx
	 RRrVVLG2sIJ4LhRpCefczA2vRjCNT/VzJbxLBQWcglTW/5XBw5P77zYXYWl7TniC2S
	 j3EK+esiBx+GkHSfLrSmR2ijxcivNM2ifs3oa7FU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14691C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Sep 2025 22:36:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE6F2383BF69
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Sep 2025 22:36:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 07 Sep 2025 22:36:40 +0000
Message-Id: <20250907223640.release-6.17-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc5/v6.16

Linux kernel version 6.17-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc5/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc5/v6.17-rc4

