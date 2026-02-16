Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22E031197B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259429; cv=none; b=qRFb8pgce2mZzIxZF8AV+xnQuL2r0XF5qkGpX4GvWeilSvu4h03afTL+95gLeXDmBycJIv/C6Ro8M7OHblcVR5Yeaz0bBfBTKc1qceNANxhT5qvIo0fnFXj0cKatZgXKbPPEewXRf2LjHtRtj23KkD+E6l5SU6DHAZfJETqxbgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259429; c=relaxed/simple;
	bh=2FRFBDJvUw8l3P1KPBP5XhzlqVd54Ly7Gc1ExlZAu08=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HYfpxUDDUr3oUpYpBL4ZXe8sVvK0NYOnD8j6vd0xx2hasdD6uj544ZtPFIz4Na3Cv0GnrCl60+l7EEQTZoEo+ZAyFaxhoxRlXI3OQ/mXwSRe3SLMFYbCx2QA5te3WzAGtW27jJZTSDLyi/ijVR516MOl8MB8atuzL+gpzmbIKT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771259429;
	bh=2FRFBDJvUw8l3P1KPBP5XhzlqVd54Ly7Gc1ExlZAu08=;
	h=Subject:From:To:Date:From;
	b=Qrn+m+OaIhapDYy5zMljJRGLf3M5NWQQ16mTRh6FAJfmEIeOSODQyAgElCieePnff
	 HjQ4JC1sdI4uaoAitbJMplz7g82yi8mBdmhjNsAjFo6MgXnhDHOw7M3luPM5D8dmuG
	 15X4xYIKzV9JtmwA0mkYZbsCqUS+1vDghqul+zcU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3801C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 482FF39308C1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 16:30:22 +0000
Message-Id: <20260216163022.release-6.18.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.12.xz

Linux kernel version 6.18.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.12/v6.18.11

