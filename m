Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F1E3E92BD
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002521; cv=none; b=t58dvvxI2k3j5ML5REYd46RLhPNZPSWE60S3UBwkF/dM7Q/rowkd99xAFvsXBNswQBl4LvX6Fh1GjXQqPy60MSd2LqWy7R+I4XjxKf/xpcVfY1f6+PejsocXW5bJkAS/liU7TRy2zNqqANq0PPrqxN/C7IKP90LNqrEXFcycm0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002521; c=relaxed/simple;
	bh=8VCeIU6IIV2m6cB9nYbcJ1YSsaMeZoNCt1hWo5R3fJw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hSizOc++VBgFXzdLuZtN+1KfUd4HoC7ZqDzM79Eroz1OiKKmGtqAUPrTI8h5/u9qcpxFHWoL0ZqkjWYWQiJiY2QB1ueajACoHxyLY4B0b+9hqoaloGQk08Cu60MotH3xZ18oewOqIrM/DHEim6ZQ3PuiBsPFvlPSz5NLB7nocQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781002521;
	bh=8VCeIU6IIV2m6cB9nYbcJ1YSsaMeZoNCt1hWo5R3fJw=;
	h=Subject:From:To:Date:From;
	b=Uk6lfxV/VlKrfhXj5COKPtfVnUxUZoZ4/jd24OGxZBnbqFtQB0xT+c6y07if1zNCB
	 bTHbL3EHD1Wff8mWrjZQppX37PcvpysruNHy1wlXXP4kZnOvlIGqGeECWs/7U3tZB0
	 pI0veee0KgItDxnflR03Orl512JKC2DqmbzRV1cc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B37BA1F00893
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:55:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56BF4393088F
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jun 2026 10:55:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Jun 2026 10:55:19 +0000
Message-Id: <20260609105519.release-7.0.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.12.xz

Linux kernel version 7.0.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.12/v7.0.11

