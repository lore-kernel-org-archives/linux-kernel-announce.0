Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DD2AD4B
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 20:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762115167; cv=none; b=K7/aaqmiEcIGDRoYX7TXlgaQ0Zcfu+YYM4iVPxyBW+bpZUr3dA7dmWiAC7m0O4CSDXtgba04NizlxEJIWyhOJqAy9sPK6/OskhEu9QA3QQHR+oTarj3cLLK4An/xnxVaBgh96Cwevk9Jb60oR/Exp8FXx8Y1YmYhwsZIzCNiwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762115167; c=relaxed/simple;
	bh=9oc3E/GNJnh0/Lda3WQSk1wu7lMdXHToDqISvLEfR/Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fZ8swezJt56PMLcRrcPwmnIM/vPkYvUCFQTWVhaoVa1CvH5lwpIbLEyS9wzqjt3HnRcm61fbFelbRDjPX3WGalaWTeNeYJ3+rqmOeDTN/O2EwtaEpNvbBZHNgWjfzHDeu+jrftiACWAhwkMZCf+rFiKfVHoJ2/gBiZTJJp5+6q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1762115167;
	bh=9oc3E/GNJnh0/Lda3WQSk1wu7lMdXHToDqISvLEfR/Q=;
	h=Subject:From:To:Date:From;
	b=GwzhD59AcoZS3+hlC6b0AxwvSQDWeGwXU6U3lg3Hxi2Ydrr4OK0TFtJGCvU2zo1CB
	 eqM3FjbKJlzYxU9RP6/ixDF3yykaXU+nbKN/fdR9tCpMq8R7OY+Fu8x7dTx6Dzuzsk
	 XA9lpsTfQqd1bP1f+fZYPT0MtBjRMnbLzPmBoXqA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 243B0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 20:26:07 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 379DD3809A1C
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Nov 2025 20:25:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Nov 2025 20:25:41 +0000
Message-Id: <20251102202541.release-6.18-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc4/v6.17

Linux kernel version 6.18-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc4/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc4/v6.18-rc3

