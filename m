Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B657118890D
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725449453; cv=none; b=gY8YR8As/pfqgUqCesmI9xGDaC71NmGzoYlhl/Dp+ypALqIXnTk0VLEzvPcNA7I1VM2w7yyrlX//TiZnC05iJyQ7iU6csFALGQd1jNuXQx4Gt8eecENfxdiEKbDF74sxi+El3J4oDIC7XDsLCq1DURkp93e9Bw5um//0aIzwUoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725449453; c=relaxed/simple;
	bh=zZ4QfXjHL1aYfgiua8DefcgP4sk/aR80r8sPo9Cqc7s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k93t3qcvyC7G7esZjDbgFZll+JEZ7K+jkbXUdNTt9EN7bHAWFtE8VNp6HuBJiYBtq22azTypds17qArk7uDUx7IYjeYMalbSPinbkih+xk9WndQOilAUvyMSzL5i7UbmaMuexmTAAV+S0KwAT2bhxaUTz9oX+BJKpyYgTUQFVXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725449453;
	bh=zZ4QfXjHL1aYfgiua8DefcgP4sk/aR80r8sPo9Cqc7s=;
	h=Subject:From:To:Date:From;
	b=wH9tMvgMdfb/VDA4EeeZiG46o2iRQdDLxaUujdWgSuvPtUfkUPbFkcV9H1eSPIbz/
	 qVR0AUycr53Q2z1JCKXy/wJuSKzETzHHjsUFDbWHVijXhAWBxS0UuOXQKczODA7E6r
	 WPtCYwUcbII4Nrdko4fpDMtMohDPtmqAvBCA0ps8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6157FC4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:30:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3CB463806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:30:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.321 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:30:53 +0000
Message-Id: <20240904113053.release-4.19.321@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.321
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.321.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.321.xz

Linux kernel version 4.19.321 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.321.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.321.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.321.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.321/v4.19.320

