Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21007166F00
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731852935; cv=none; b=czRq8SDlxzyow82Ogu7dcx/yWlLqFI2bt81OyfhXIn1Bp8mZigeJCxAnPm1kCcuEL3o2ATZ6U7E5nkthKTJSlSF8HnoYZrQgwfGqI2/zbko1ZHWLzjvXupRhcyDKz5w3yP/mpMUcZYtJ6B0HSXLFmuRsoGgRhqIW+qG9emGijSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731852935; c=relaxed/simple;
	bh=61jtbJALe86cIzZvmex4Pji82BNctROLr+5YsrqQEOc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fqPWNv4BmpS9FfMa+KlsD1da3cxbYz3cEqQZAGcramljcZRZXO0m/AbdyT4FGElJFqTSgy4S/6LT1lBrmXynO2LP60fbujAwod/pFDttaR0CWzZ1cV1W+3+D99ET0WACcZODdQyatLisxNWg18mlcTXPfr9z4jSGVZn0VeEowfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731852935;
	bh=61jtbJALe86cIzZvmex4Pji82BNctROLr+5YsrqQEOc=;
	h=Subject:From:To:Date:From;
	b=EyOw7/RtN89zJ/q7mFWz413Vl5e0f0OFqi+RL+CX0WTpexjXqngsWGBn1KRNrDE8M
	 WuiTE+KKyRtShOxZVtDHkR6C/7UJfp+B38rEwalvTsFKh9lCOri2qd538/pBIAKdPl
	 iNrApP7l7qTV2pTE3MSTnerzYif561PtFKurdJoU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4879C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:15:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE8183809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:15:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.286 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:15:45 +0000
Message-Id: <20241117141545.release-5.4.286@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.286
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.286.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.286.xz

Linux kernel version 5.4.286 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.286.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.286.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.286.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.286/v5.4.285

