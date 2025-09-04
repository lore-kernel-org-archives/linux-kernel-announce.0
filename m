Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C4F2D94AF
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988434; cv=none; b=NJuqYMZLBABjG+65LLmtpH841t49IGnQUGpeqgPH9o3Vd2dNyFt0/vkDYqa70rsSR9Jy4OVaPGDMID0f9ayJQriyGIJ8b8FnH6iLw7r+KBBT8wLWD1aApi4czVUO0z0psrh0ctw+acW/G0lFF4pPlcPvuUdAcgoRyp+NLnm9+18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988434; c=relaxed/simple;
	bh=43KPr8QZMka/2KNw8QHDti5+T0QhAdz2hZBQuym4X5U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NFHwfsgal5dSSyMXN+BT8R1Zp4nYixI5Nz5U/6JACAXrpG0bLS+vYs6mrWDwMa0BSp7gWcR0L9uRgfr3pv2lEXTV6uApOnFPnVX32/W0lWsxynUb/Dd/TenP8Q+gyacAdlBfZRv0/T2TLfHYyTbl3WojVsskqnzWdvs/3zW0T3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756988433;
	bh=43KPr8QZMka/2KNw8QHDti5+T0QhAdz2hZBQuym4X5U=;
	h=Subject:From:To:Date:From;
	b=tvVA/q4fcmNDKVHoHNg0BA9IQBPrgFSdw8qVe922kZOq/00cbdk3S2VNkC6LQg3z4
	 MtryDtxFpExQaD+z25anA8pVqX5T2qEaScS6zvc8dW8m206vA1L5hVTJ4uhCCh79Qk
	 Ln60/IDIUt7QUVzSrBxk/OLxnvAnqFtA0YultmGQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2C6C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:20:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75B66383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  4 Sep 2025 12:20:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.298 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 04 Sep 2025 12:20:38 +0000
Message-Id: <20250904122038.release-5.4.298@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.298
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.298.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.298.xz

Linux kernel version 5.4.298 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.298.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.298.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.298.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.298/v5.4.297

