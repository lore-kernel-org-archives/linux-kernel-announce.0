Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC3E192D97
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782556536; cv=none; b=RBszMiJ7y3dwrhSCeYOg7e9kSJ0eVGkxBavuw1sP1cRjFOpRigyVIPofHbrh+kxNeps5wbiq0RURBCcw42xOEJAhbEtLRDCs1IDVHb3513Y1LD+Ogp0wFe13+ASXinwGRhaor8vLasHKN/Q2wfnnjuvuIlPqvpsA6Arczk+rqVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782556536; c=relaxed/simple;
	bh=9XTLwqBIT6wxg1boeBfTt9Kbnrpjyd9Yu17eGiMEGlk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AZwxDvi1600YYSpOqDXI63Kmtu115IfZDePtCY3asqsAkuBl/VUpiDbR+GpGnzLZtuljGvTJ/OckRAkCCes00m0wS7dA8D3RC5ChMjMgz9RCGQVYrIcqDGfMDxC6idJrmV0QFjX/6m3luB1Omwpy99I3E7mKkqGn7P4V4ytgRCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1782556536;
	bh=9XTLwqBIT6wxg1boeBfTt9Kbnrpjyd9Yu17eGiMEGlk=;
	h=Subject:From:To:Date:From;
	b=Zk5PtlybSG+5UAW3Sdq2Vl26mqIkSBH/wwUuWVoKoeh8PFFcDc8fv+xOP0p5zthrV
	 l5f/1zIR99rAnljr5uygvqW5qAfF3UED9QgLwD//OAV1K78iqcbITOvMfs8r5muHGH
	 GaKiK8ZXP0jkRxLpkgcJbWRXGUp9G49gwpo6hYng=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AB311F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:35:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 59AE23938C7A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jun 2026 10:35:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jun 2026 10:35:20 +0000
Message-Id: <20260627103520.release-7.1.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.2.xz

Linux kernel version 7.1.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.2/v7.1.1

