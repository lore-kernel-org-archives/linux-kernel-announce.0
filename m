Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD6D3C1966
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787153480; cv=none; b=f7g1ZdRzHFXvjNN8lbLygH510Osyo2ueOyY4Qsl3yVV8XraLHICfqddTvHASulGua2NQFyZhjgFAcQBC8JknWfOFmTx5hcDMqiSqI11GiiOw9RwvYC5j20W520apEUWLQ+IddaqdEw0FCXSgaY1KQUSwrzjwWZucg3lKBa4kDj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787153480; c=relaxed/simple;
	bh=/b8u/bjCmazLQ80Ifhjx5tBfjXuZerPKCEFEypp7eEg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CHdusbodkQWzEytNl3TGX0I+HHgTht/2H9/Db7KacjQiTG26ig46EhvTzPxMDI9rGS/KrxTANgbtt58+Y8VVQM/YvZaHyOk/T623S6SD+q/7XnL7SDz8hf/Qjo93UjnZhZ7pZkgEcKG3Rb6oSxd+Nynw8USkl8/KSZVFMAHPyIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787153480;
	bh=/b8u/bjCmazLQ80Ifhjx5tBfjXuZerPKCEFEypp7eEg=;
	h=Subject:From:To:Date:From;
	b=tIuiQiG2por9GxoxAoTsstP88sbmqM7Kb3OAZSbRLWPz54lDGcOi+1hlRZlUklCeF
	 BDVgFfmpKls01QKQGlymgwJAfkaCL+TB6JBUaUybv8axTKfGpRjyj9Kphf11dCiHCf
	 X3vL9uENeedQgwyFwYb4f7B1kLCKuoHk8JT7kBwI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA5461F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:31:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D352938119DB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:30:30 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.216 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 15:30:29 +0000
Message-Id: <20260819153029.release-5.15.216@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.216
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.216.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.216.xz

Linux kernel version 5.15.216 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.216.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.216.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.216.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.216/v5.15.215

