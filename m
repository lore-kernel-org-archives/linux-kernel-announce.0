Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BD729615D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020812; cv=none; b=QOE7pxdurThXpID8hINrtUn2XYmKAAat8s3hUHphFbIqMcD9MUu+fcVKNYt5cxH3VQh9soYde/+8VIxW7BaSEm3Wk/nlnYUH6Ljig55Th3xRGTdIiB66tmGUziYvmtUrFjATuMwt8tlSiac0XBSlNqk5pWh9Mt3/eTa+Fhefdss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020812; c=relaxed/simple;
	bh=p7F92SHOc3Jx5oOM8qoI7WTaDRyk9hLGIgeig7dYDgw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ng2VPMcCbn5eLPXpTHECgI86wlyHX5slFKoXJBXbjGQE1EwSzFPuOdvOB4uTHq/JjSfZF2FYlkkN8Jov6e4BCww1Pe4RiaMaBZ1dxIm33iixBVLWGW+GPXMQbtEsoRoF919NWP5ZUjIq5DDplUqm2K/+53P/Kp2F+bH4IXcb+DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751020812;
	bh=p7F92SHOc3Jx5oOM8qoI7WTaDRyk9hLGIgeig7dYDgw=;
	h=Subject:From:To:Date:From;
	b=gUO4WmWm76k/xFUeig7+HURJASJWe76c5Kyr4FY51AYYllPcg4VYYijtZSM6J5bS6
	 5AsqZ6hosoeoE1JRE8GWH6uVkXSxdcrEuguHlbJ+/H5nk52rGFZqXykGikrMpBluTY
	 1TFp+615KBRbhSolQnbgShNxUzUftkZiTqNXfelQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4F77C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE816380DBEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.35 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:40:36 +0000
Message-Id: <20250627104036.release-6.12.35@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.35
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.35.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.35.xz

Linux kernel version 6.12.35 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.35.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.35.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.35.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.35/v6.12.34

