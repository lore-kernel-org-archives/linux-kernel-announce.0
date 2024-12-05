Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2ED21323B
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733404837; cv=none; b=taM103bRUkscUl/0jpo9QcLr14ritoX3d04laSnYdzL38BFRcOEfizfdxjRasB3qbTG8Lr20bp1h5wqr1aM+F6aBCUbqjlbskiWpGUGqBM9VpyuMytjblCtG7Zv1PUTaxeVNVRi2QQ9KzQsExJ+8R8y5WPec0mtAPXVsUOudnE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733404837; c=relaxed/simple;
	bh=FAVB+8IZRTGpPsX1GWsmRRBUMUwt5dR3QbDYcLSDnsU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=N2n7iZhwEqlq9uENrsUtux60Fm1HTuWkQog8W5yuP8SIaG/9MvzZ53/iJFQFD8FVpEXGkyEwxwEx5bz8eSreEGNhhss+HLPy7BFL+XucCYmH7UUAijaePKci9oRKvgdK8IwdGChNd1zTZAPVpLQJmD/r4CsvBFPJotOCfOsmzdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733404837;
	bh=FAVB+8IZRTGpPsX1GWsmRRBUMUwt5dR3QbDYcLSDnsU=;
	h=Subject:From:To:Date:From;
	b=mYl6PApv83BwGEI9n5flC09MPXRxFUr+byXnDaLdw7ecRd+1haRS1UD0ePCvmUwWN
	 pFsALbpG+lUcyzVoHhkP9tKJPiMGyyF3JZl/phapEHY+SYMZNvdkayhO+l+hwTwNZC
	 3yb/a3utk1lS+h/+EzGJFxs4+txQOxueGgT1LKMI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F4BDC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:20:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFB4A380A950
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Dec 2024 13:20:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Dec 2024 13:20:51 +0000
Message-Id: <20241205132051.release-6.12.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.2.xz

Linux kernel version 6.12.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.2/v6.12.1

