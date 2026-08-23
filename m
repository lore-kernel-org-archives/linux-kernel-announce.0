Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251C83CB559
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488597; cv=none; b=c0qHupM7ebe9HgXLGvDQ62w4VBrMsKYyKua98h5u6PyeJmket7PdJLHHv5pltVHHzmEqQotIgvLDLD627eB8DBKM5enpdbgsjI+c1tDQcEPwRmkGBZ1e4VDIP3RMVRIqSO63xHblcf/qzSZm7bxtd4vCs2mtpWYeZvXpexRMRQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488597; c=relaxed/simple;
	bh=oSxrkmNEaI5Nf2qku+d8u17VdbDy/DqYGKOl0JVLnRA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UHTkmajWZjR0FXGuWVpeXxTWzsf649zKp81hhzvCGrtu4XVCqu8nKCqVcLgSLeAH8FEzdgZ1VRJOUNvwKS9LORHBBnJxiGtPCvhw+pMEeaDiyAA6H7OaOFNlw5Gde9hcmEVrFDLDLlUEKM5O/2nf/2oVbopqi2tclj527am+kos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787488597;
	bh=oSxrkmNEaI5Nf2qku+d8u17VdbDy/DqYGKOl0JVLnRA=;
	h=Subject:From:To:Date:From;
	b=vD8zyWnoxDK9iEDWvLl0459OxLcJgkREJWrn+ZBm/Wlon//xVjkgmIZpff+/Ww7Pr
	 mNkmubYZ8URgFE22zKgxNOveSlPCPKG7LIox6YYHwAP+1ZHYAl67f2c4/gVTmFKBJf
	 wVosFUrDkkijP6KYiJP85ok8HJVwWeSIeieBFLJA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C4E1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:36:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9650C380CFE9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.184 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:35:43 +0000
Message-Id: <20260823123543.release-6.1.184@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.184
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.184.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.184.xz

Linux kernel version 6.1.184 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.184.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.184.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.184.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.184/v6.1.183

