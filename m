Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9594518DB0A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745138413; cv=none; b=UD0NP4r/UKHSxRV0EvpWquvQxvAERegmTfqJzUfHwTf3CBccqpEZ3iPvonfrzkUXN28HuhNpkn/wV/if853gtL35oh1Ptr3r5n/yKlDcZK7cs0G7O+M8u1Ik66fTzgyWBRi+MUv7ci036FOFBCjLq2L/6I16BIlPmokqngFLJb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745138413; c=relaxed/simple;
	bh=DSneYqEFeb8QEoxYQkBCEH+YHy3VZfsJDEZd/DtuhyQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sGbuSLzaf202LaO3fJLgYoMINVdwNYDilU1Qb34d9TfLaQc5Dk4eKCipWrwBrFBpHM5i0M3x8ZHqmFPgJzEGb66pJ4KSmqIHFCsomZ8A9p3N2TBFLqYwkIUBeRI63u0A/CtOz9s36MSgauQf/JRuuOyV73EH0Ns1sPmU5sDCWJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1745138413;
	bh=DSneYqEFeb8QEoxYQkBCEH+YHy3VZfsJDEZd/DtuhyQ=;
	h=Subject:From:To:Date:From;
	b=X02oxi6AkVW2nEH9N9sE/Sj92UKmBghhL+8TQBhsdSicJaqSAd2nyPurxNPyp2M8j
	 pEyvNFiu1bHMWedsjWFULY0gZY2aCxYkygp4+r43WnqgwYNC3Gyw7LOMQWaG+Pr6th
	 CdxYuVSbQsLDNv/vC7FIvnji6QTPLR8vxgy1EFYk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14899C4CEE2
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 78CEE38111D4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Apr 2025 08:40:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Apr 2025 08:40:51 +0000
Message-Id: <20250420084051.release-6.14.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.3.xz

Linux kernel version 6.14.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.3/v6.14.2

