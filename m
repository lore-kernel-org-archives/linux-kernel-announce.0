Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3222253EC
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780329918; cv=none; b=pwpfGuLfpw05fbRjsAxgA8HO5J8NzTEML/SxOvC7JYcKrf5ftEWcsLObUlgW6El5XC9PamqLC4qPw+zS1XVVsydCFuR/mMbXl6j+FjfnFllV7EyeT3JSHmnaymaajnhz6wVHGy6qGFRwiFH8RbOmHKAChIRFexTgabl58Ne2Whs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780329918; c=relaxed/simple;
	bh=UFN2EeKhnQqGmqDKIM5OCC2KKNaHdeQKWHAbeJ/HUQM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FAYoOzSdTTAoFn1Ztvea/FT7xWJ0I0kQ3W/oa4oZm2HomsMPZ4gl2cp4gC+HH5nrAzaiL6lGuDz9FsS2O8l+M8a5d73VfxVf8lwftO6MYOn28HLU0ZhZRzjVBU2nJ5X+Pz8Hfi0IUoHX80Cnzp8oGhwHetJkje5pKosYd8KP4BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1780329918;
	bh=UFN2EeKhnQqGmqDKIM5OCC2KKNaHdeQKWHAbeJ/HUQM=;
	h=Subject:From:To:Date:From;
	b=MXZmWaV8BRnoqIHDG5iC5hBzhcdQYxEENWQGXFkB5iidJQSgsWgkh01A/H/Xwdt8p
	 5yOY5UzoGqU7D9Uk6atsN3uKiEXh93hOnuyL1UCWbsUy/UdaaT/6UjvQ5CY1Be+58Q
	 Ir8q6/ryC2CJWJDvDQJNA92+DWBFENI57LqVMQf8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BE291F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:05:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D33FE38119E1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Jun 2026 16:05:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.92 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Jun 2026 16:05:19 +0000
Message-Id: <20260601160519.release-6.12.92@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.92
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.92.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.92.xz

Linux kernel version 6.12.92 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.92.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.92.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.92.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.92/v6.12.91

