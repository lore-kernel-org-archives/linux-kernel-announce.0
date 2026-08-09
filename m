Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B2E372ECB
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786301535; cv=none; b=fG3inB8F3FvOGrbb0rRwzlzSvG4I5KDCtvCzd0d6eW5EJdm/29pJrj8EdmYzfTeYobB2xthwbEVoFfELl4TMGaPifhHHUOW6v5vhvfkNcS4x1X9Uf+vPYqfeC3zi9Dxkys/drA+wuvFVZCOgigMKSAV/q6M7ntV60hL4p9iOp5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786301535; c=relaxed/simple;
	bh=5fllXJJc1mRAkl/upXi9InVTGV+rwqFrDQXVkLZJCi8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=B69ZIPVOVwwSswPRO9WDwAUOi080cy5FqSK6QuQmPzF1ZFSCVrNlicC3Z72+bxJbZX/lBzEmzsWNAWpqB14bqh491kL9VkWj5SxJlcRhJ51YVgLXV3zFCB8wR5ZrhKMRa5rDOuZ+Csc7rCvJdU2/08s7nLFWXeYwhHarAl2rCSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786301535;
	bh=5fllXJJc1mRAkl/upXi9InVTGV+rwqFrDQXVkLZJCi8=;
	h=Subject:From:To:Date:From;
	b=A2yyrbP5uxiMUzwe27tGlaNiR+AHiAtT/Cvl0hej/LZZchhfts1YjdFplorQu1OBg
	 EcLWq2VNHMFy2s/hO5uV0XXCj/Yjj+rAXhFrFuGiU4E44DSkOqqz1XzpVIq89FSusQ
	 /E210l9Xhda3IIhkkFcUyqlJhszjtE/irqHLvLII=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5E3D1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:52:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 568E73924470
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:51:32 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.44 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Aug 2026 18:51:30 +0000
Message-Id: <20260809185130.release-6.18.44@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.44
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.44.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.44.xz

Linux kernel version 6.18.44 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.44.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.44.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.44.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.44/v6.18.43

