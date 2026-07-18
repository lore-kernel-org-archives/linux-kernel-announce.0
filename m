Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56D1B142D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784387190; cv=none; b=n+07/J2+5pYi4RqBaX7zTAZdXd7spQLWt/MD+peqNkHFZ8AIfsMJCcitHkllQtZ/d2SORE7yYdPoz7YVTBjYyMjC9XIF4CAHRMntSnHusPKnf4Q5aOVJhqu5MQXEBsiGXeWv0dW60A7fF6RZqWnoVvuuZ7ndwsKA7OaOcSucPm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784387190; c=relaxed/simple;
	bh=F7utOeFLOkAuatbvuUT31bErginQgSp+cYkxpzQBxp8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cirDPaTltxdy2SwVqVi6FXVVZsKyt2f7/C7CqPnt6e81JYOETHJzZXpuQvqKOh2DqCGPqLZMxhOm159NIRMcmFMN4d6htKv4QT6FXU8HA4/IfkbldhgyingRhDlGp7C05xOlcoOh6xjw3sCRRzTT0I6I/XIVOf1SzTYqOGbd3ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784387190;
	bh=F7utOeFLOkAuatbvuUT31bErginQgSp+cYkxpzQBxp8=;
	h=Subject:From:To:Date:From;
	b=mpf265mhT/+vJ3PfFkySj3osC/fh48rdSIXIl9vBhz+l+0lHpCMsohnuize5euCko
	 BX0+zOa1EYfS1xDdrE8MBHeIXq5hqV8Agt7kqoEUMS4iLHmpAvV0qAIhw8zMUpNSPw
	 QsdrdhXFqrOcmt90ZxEMfHZa20DHY5UOmu3jMvPc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 045F71F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:06:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3B523811967
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Jul 2026 15:06:01 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.96 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Jul 2026 15:06:00 +0000
Message-Id: <20260718150600.release-6.12.96@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.96
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.96.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.96.xz

Linux kernel version 6.12.96 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.96.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.96.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.96.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.96/v6.12.95

