Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D694119F4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785410757; cv=none; b=EV3gkAchjpA9J0qD2T3k6/oIr57Vcpy9m/X5dVcmG28V0WQViJAs8GpNOO2P3Y92cycGccZ23dDjrH9roZ5FIbDVBLqiC9nVYXLMcjf6iglJT2TdzA/KIK+NH8HZ8Z7q4qNl8O0Mto2ktmNYmSI0NR0YNTcKsGoqWrH0Xo/Y10E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785410757; c=relaxed/simple;
	bh=ketMlaKnSWzzkkkj5zMUFa/b2JHyBMtCOor/D7NdWvc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MWePhCGbVUzNFL/CrKnBmCUW7BSEmXkDNaCuZ6xoGqudzxsx5dtoad0c9ReudlqQxzahELQ8c0rx3JdHKM4+0oIffHy0+Guz4chcKYTBR6HGuc03p++zMJR+SyapT9IvupHu9qBMYNjW2pIQbP6CY1PdDI4SZ+uBkeTrWPllFU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785410757;
	bh=ketMlaKnSWzzkkkj5zMUFa/b2JHyBMtCOor/D7NdWvc=;
	h=Subject:From:To:Date:From;
	b=OkKwQZdj6Gho1GJc5tfSOhonOSeoBFtYkEC9VMnm7eC2V0Krz3OSnzOSgcyGM1kWV
	 5AFnb5mCDC3n0m9Y/BzUiO/inDBGTf/ihry57jtr0/PasEmNgryIVoWeQOTqkDE6DC
	 9I+84L4Tp+x7S2g9M0+C3wctW9X2BNGSslo3ug0c=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77A461F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:25:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 594EF38119C8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:25:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.100 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:25:18 +0000
Message-Id: <20260730112518.release-6.12.100@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.100
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.100.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.100.xz

Linux kernel version 6.12.100 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.100.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.100.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.100.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.100/v6.12.99

