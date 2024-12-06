Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A52CC8FE
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Dec 2024 06:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733467242; cv=none; b=CPtXztgSjEuTLVBpPRLrMqIU2VPr44beTW3Pz9GuudRNA++LcG1p4P37tFWjBU7fYbeUsGbvGw4rO+sJTSrK7mpEB3yMVIN5usaLxTrpjv/JWcCBRaWVfe05+nzxFlnprrsmsw/d+ZaQ50roTWyJUQirku4n22NKpA3FrsrPrMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733467242; c=relaxed/simple;
	bh=uw1by4F1ExKRoJKSRUCnTvwEOMrbYWx+AdYrOexXcsE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SI3LVulgIhvmmkSaAbkfcZ3c8nLAJcE21dKujsXkAVrpzfOF6Cp3KylypLEp9QYwKJGSARdZlAs/I54cffcJ+yvNC/9mQLXQNCVOMPvWPvKB82SlyzNHZRXdU4NFXaI2RLuTbTn1WZTlHtXmo52X5YsKjsYS421Dj/QdsQzIlx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733467242;
	bh=uw1by4F1ExKRoJKSRUCnTvwEOMrbYWx+AdYrOexXcsE=;
	h=Subject:From:To:Date:From;
	b=NCrUhCl5cwLjfpE9vDOSCtio0lTKW5LFWQg1AeRUxwffCIKXPnhpDKXvfJN98Zd02
	 uiJ5ASoC0p819H1SBV3NuR3pFtS52MpzyZ7m/O+CSzC4tpDv27S5MAWT3DBPwBpqtb
	 P+684WGKjI96W1qjGUO51hPfHEhl3ZmLKQ/SzGuE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F169C4CEDC
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Dec 2024 06:40:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F0169380A954
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Dec 2024 06:40:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Dec 2024 06:40:56 +0000
Message-Id: <20241206064056.release-6.12.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.3.xz

Linux kernel version 6.12.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.3/v6.12.2

