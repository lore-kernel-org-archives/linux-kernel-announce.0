Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104CC175A5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042018; cv=none; b=UIVxjDiAqWB3UCcqKrosPtGjN3ydZXoPfr35uFEd3v6itRAkRebdnu4dWm1GdjYOE8ypGy2tag7DcnsKGPg9VnbNtgfkU6y8LMBI9u3tCUYOb8JIGE7/MvU2xnDKHa+m0Vu4MXOB17eeGPtnde9qfGLP/SjY9vWV8gH0M8xelOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042018; c=relaxed/simple;
	bh=mkTDQJiz37FZWCfgo76jlEu68dlYjQJl9NUD7z/xaIw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HZelPUN4Y88XCcJYM8vH/VmjbLxS5sumAvf426B2xzMunJ95B/pihg3fo26KIJmPPGJBXYh4GQRPlCFb/8+ZN1NyDFPivnVG8+l/6+nRWZyERVBDSku5Q8tkihSnmtG+158w4NRLwf5aVgjVVPxKpI2AQLjloqrlcjIx7/oYI+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749042018;
	bh=mkTDQJiz37FZWCfgo76jlEu68dlYjQJl9NUD7z/xaIw=;
	h=Subject:From:To:Date:From;
	b=MJh0e4YUrcklHlYfJMH6RkZa+r2ZMZvnceuSB3ADArkpVLmWirwkdyMcLFnsk3p0M
	 obwVAjO4N+EsaK8gmsIbOo3z9kKabF0i8RIvt6643WnX/vfuF81l+uTiz4cItpmd6P
	 fP9segBAL5nj1wE+0sUi+CLHcs5VYGp7VGZNmTPw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 932FDC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:00:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEC1B38111E5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:00:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.238 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:00:49 +0000
Message-Id: <20250604130049.release-5.10.238@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.238
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.238.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.238.xz

Linux kernel version 5.10.238 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.238.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.238.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.238.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.238/v5.10.237

