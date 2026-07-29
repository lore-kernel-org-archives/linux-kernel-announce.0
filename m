Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BB23C1D47
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785340859; cv=none; b=TOaGJZnbH/tLPKnIzn96miCHnQKN+vEYf6Z0z/HPCKtgEFZABw4AWIqYVTtEC63/O0yyhhuJG0biM0xXJ2MsTzZ5Zw3q1fWXrkZOS9URxblMdrYOf+erpCSgaz+ctdU5snOMVxRmVAhTIIPeZFbkUcrnQZwlE9YWuyvpZ7V0vAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785340859; c=relaxed/simple;
	bh=maTO78ZrsC+RK80SVwa4pH1uWIHiBtd1C02eV3c13MU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=K2wioCmGRYym9bqTLs0I7U7iHQgcyRCSUoKtm3w7mYC34vLX02zphLhnVIyrCuW+JsoXMzUenRGRQFzQ0KL9Sy/F5TSc1NBDCD7mMmcEUwJR0PzNsgNffMtHX17064VROZrIF0ucvbxVtSEsaLGPwamyt8t8znUIDIEKo2cEH10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785340859;
	bh=maTO78ZrsC+RK80SVwa4pH1uWIHiBtd1C02eV3c13MU=;
	h=Subject:From:To:Date:From;
	b=R6Z36waP6vQOLXyFPWyFmGtkh5PycGn0+y7Qjhsyq9C74cbIHEGD4Sb8RS7CXtZAz
	 19pce/o5vxzgFFmRNjhKBIHuryNKsarFgdBvW4D+JCB2a3Y6OqpjmjQYanxOQ2KhUR
	 zImmag6ZjdfZKvwJnKryPq3x+VcfuCEVDDSFnve0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A49111F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1997339253CF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Jul 2026 16:00:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.179 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Jul 2026 16:00:22 +0000
Message-Id: <20260729160022.release-6.1.179@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.179
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.179.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.179.xz

Linux kernel version 6.1.179 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.179.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.179.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.179.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.179/v6.1.178

