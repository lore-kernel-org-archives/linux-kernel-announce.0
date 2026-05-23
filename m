Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAC5388889
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779534912; cv=none; b=SZyog09z8jGBNQ0iQTO4Wgtea5bgxz81cToDHCUv7+B2yuFAMvTGcHEbq00qu43dbZfyAUH/+U4ryIUOit4QqAqlIDoYBLe+XpOpxU+ntnHb7UiIBMUfjX/qWQSI5bJaDcBQAhWRvqkBnbkQAVOA7l1s+Uz4yN9CUaSXHeGIAdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779534912; c=relaxed/simple;
	bh=shk60Ozu3As6iMAyxxdNBOFrVAe9i2qWnwdyrYgH/Ks=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DwaA+GNR+1Mq8xgmh+eU+RPo3WQraespaQZ6W5XUPfz9h9LhXvABwCSlTb4iPcWNMRNVXJpCdi0/0rp+K6jOTh6yHLzs7R3qmMu8c3qti/4Fa/2sZ44YghfRN1cYtTgXOu5Hp4bK0cfAY1IHJ2Es+JorCzzLeKwjUD4PJD7wths=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779534912;
	bh=shk60Ozu3As6iMAyxxdNBOFrVAe9i2qWnwdyrYgH/Ks=;
	h=Subject:From:To:Date:From;
	b=AISpJiCCgWfrOgF/VvDGuLpL8sQqP1AcTD9e3n33Mp+3mxoOnEmkxryq3T2z2m4kt
	 jCjPTMtHpNouLZeJj5f6Fk3gcs3F98ffzP4hU00l4hzbWbH2+kuuwvQylaNCluZGZT
	 YI3qfRjg4IAPBqAeKqa02IUNLAZaxionZ2zZ0fzI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2929C1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:15:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3EAC3808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:15:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.141 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 11:15:19 +0000
Message-Id: <20260523111519.release-6.6.141@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.141
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.141.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.141.xz

Linux kernel version 6.6.141 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.141.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.141.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.141.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.141/v6.6.140

