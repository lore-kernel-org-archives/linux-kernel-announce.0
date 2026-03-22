Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5F9C8CE
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Mar 2026 22:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774217072; cv=none; b=VMOoehS2sIV6osxJFg+w1OdTpDLhwCYK1RcF0S1N54GG/GQiL2CUYzdNloJaNoUtE8jACkkaESPO6NE9DHHcPmcMU1wFGbxoOXK2s3hydIZQx1wPwolBbjaX1knBT+YeZQzTbebbMMcT/fE/ITh6KVo0ijokIcpSxMqZwlnlZiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774217072; c=relaxed/simple;
	bh=+51tVyQHIuOftEO17vNhSamxhdgPO5VxJrywHZYIT0Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k2S0MmKqU9prLjq7/l2IFJAw07R+hBJ5VYvyK6MOWcDVscutDf/B+x/M30a3uH1qX9fE7m2e0dTRDfoyuWYO6ozivSVaukQIRWg7kmX2huLX4pBbtSbspEsDt77X+qAL4z5Na6OlEBOGSzdRb0kqUQVA8JsFe1X4d2wdpWwEbyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774217072;
	bh=+51tVyQHIuOftEO17vNhSamxhdgPO5VxJrywHZYIT0Y=;
	h=Subject:From:To:Date:From;
	b=OGeVktzvsDcTIvAxg04NpEm9TI18qD9WaCctSjSyGccyKtS8H50S+6rnU+P/7kesq
	 ZMU6jmuCazy6S7Oo4uBdk1hnp/B1RpB4pEo0hVsYq+N8T6fZ5lpLrNbhzPRRDE5H5l
	 8J6Lb64ETi3e1oYWlIiSSDoZCKF0b6YQbwjeaMEU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DDADC19424
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Mar 2026 22:04:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42B993808200
	for <linux-kernel-announce@vger.kernel.org>; Sun, 22 Mar 2026 22:04:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 22 Mar 2026 22:04:20 +0000
Message-Id: <20260322220420.release-7.0-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc5/vNone

Linux kernel version 7.0-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc5/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc5/v7.0-rc4

