Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A81474271
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788354680; cv=none; b=dYg+H4H0NMRQGWSQYR7moDD3aO7OfW07s0+FFpywDUVBPyz4pEkiAz22LpO+vgcrAwcnvZg5T7VU1guJfIscmUZ/G6vIvv03A48IOUZysGaREXeBBdCwfrR6NqjOvrrA2FFUIyyMrJFhShR1MYyYuvgc7bV3f4HKsMtBv80ZK3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788354680; c=relaxed/simple;
	bh=+0cmfbjLbhIMX4DGI/hVNavhbCCorthVkRb/6NJYfFM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=A5WVBCEAbSMQHA2gKusBQhLby/PwWwLKsfkfotR+OyJf0AN7ildM8D4U2uAL7R3Gz3p0YGjNyofxb7OMO4zPX1+po2/3dVzGtCembRFKPrwPvj1FKyMH1oNHbZVJvNIDDWNABuJmaaJB/x36cvc1q1f9sWFrvN86+dSQH19x9CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788354680;
	bh=+0cmfbjLbhIMX4DGI/hVNavhbCCorthVkRb/6NJYfFM=;
	h=Subject:From:To:Date:From;
	b=ty9MC+navDNnglUZY3wpCys0Lytj82M4sXiJ+2qC+1bF6vigG44M+ttK5ZBBifyZI
	 9AicdAiQYzUwteA4jyroIRp7NZvSW07HreTCADkB9sMEMIUEpfF0X1ZJErOZu1E1a7
	 KAYapNb1HJkAM1vD1n5jgRIO1Ps4L80HsT2bACGc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C461A1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:11:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F37C339263BA
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:10:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 13:10:20 +0000
Message-Id: <20260902131020.release-7.1.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.13.xz

Linux kernel version 7.1.13 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.13/v7.1.12

