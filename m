Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF11E47A6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744290911; cv=none; b=UDwJTrQqKStCL7q6ZPH8FIvG6xhuiHa+o52UHxjjP54W91vky9vPdmx+ZQARI4sLiQc1UW+LUdcTOEyPaNiJtXi/3GK0e/itNPVAlU4bzfyo+o3YHJCwmmnlIXGxRRNYWFX/3WJ89jFmtn8j2xKEcFU7WkiWmumol+Q2oGamzpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744290911; c=relaxed/simple;
	bh=LDuHBgaK5agOHC6lCZWuWpXnCQXjehUTf31OgysLAHY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XZd4fB/RjwPFHhSmzvdTRdFWfgoj2e1/FenoEY3hrqXIgHrTVMUkp3/tPsaO5rxoMI3QrH5Eh+lEmgIZToRqOpjsvnf6Kkx1nXGGcDkwCFdbSdMPg6tgqmtimr8/e6Te1o41SAKHvvhBxG34MDWS9CGdRavCOr3JlsfPFmPsbAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744290911;
	bh=LDuHBgaK5agOHC6lCZWuWpXnCQXjehUTf31OgysLAHY=;
	h=Subject:From:To:Date:From;
	b=UaVb7NNcJmcoyF6vNVAA2gbn4eCwhpwg9m8KQBq+ayboT9DCg7pZ28Hgc1e5xkDn5
	 bnwFz3+z8xBhFU/xdJqbdWENuqt5A2vdE7bzP7VqBEYsuvVwStwgVk6RK7cDf7Wzl3
	 /szh3CuQA7B3dR26h2Agr9mMo7Nu81pv6tWwLJCA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3E81C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:15:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 769F2380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:15:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.23 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 13:15:48 +0000
Message-Id: <20250410131548.release-6.12.23@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.23
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.23.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.23.xz

Linux kernel version 6.12.23 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.23.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.23.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.23.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.23/v6.12.22

