Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F92EDE
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Aug 2024 07:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724571854; cv=none; b=oJzUO+llF/eIYIH2mCCOemsqI9fL+T0jl5nyN3XmXRCwyh7t/zXoYxmKoykJxTlVq7lb1EACVDDMSmQEBhOz6tIbD30E7dLknHQ8WrTnsoTYiw1VpLCB5MdpxxVrJz/DvdGEhsRR4LDFQbhwocGq6kPzI3Ck7o2HSantY9gp0Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724571854; c=relaxed/simple;
	bh=BZ+fm638c+FT9ET2Fd2KbV/Uzu1GQOghm3nxy2vXdPI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Nl9/tJzI16AAaLnUSR0FVePe1/PaU07R3P8YtPIdeNU7nffYwynQrh2utEKiRVV7u+yiWMryRSM7TNFxTkxA8EPsPp/0bxfeG4loUV3xAEIbHcOvtE2hG0+mtRxbBiqZugdJyJTom66cFmM4NQXzbFrqilJ03/TYgP6FOel40+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724571854;
	bh=BZ+fm638c+FT9ET2Fd2KbV/Uzu1GQOghm3nxy2vXdPI=;
	h=Subject:From:To:Date:From;
	b=YDEcVrhQPma3QqvAwg8202QnZ7VwUAq7u6Jc0Zi7mLkVm1FCAHTDQrJW6Fgm0aGnO
	 kVZMyB4PDUG8EaSbSWe2VE239x+AGJuw8XIxfzn5vFtGeLITFJL1b+0cgtKUSYXRuN
	 80OhauYFHGhuZs4w5TGF8SB65hIM+y1YnaHGV6FA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0984C32782
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Aug 2024 07:44:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F17AB3822C86
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Aug 2024 07:44:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 25 Aug 2024 07:44:13 +0000
Message-Id: <20240825074413.release-6.11-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc5/v6.10

Linux kernel version 6.11-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc5/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc5/v6.11-rc4

