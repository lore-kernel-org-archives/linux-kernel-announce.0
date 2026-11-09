Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794185088;
	b=Tppx3XefP36YyBqHwFYvgmHHju3IWTCfn05T0X1fg4fm2DxbeiVun/k9J9pvZOTBtf4T
	 Ng7zT8B/4O2NjTKLUep2xVax1Td9IM1laanqlF+NQBlU//yJVUobJq7UaVZVO/lrXznLy
	 W0nbHpmznfoN4nVPO1+M7Ihs1H6hEY0ImECaoAi8XW2y8N21dhu/mL1gfY98yJegVs8Aq
	 mBMVB1LF1Jpa29aYL2jAtN2GS5WtSkFVIp//jnZWT6UGjzvGAvT6OVYBYzS0psX8gIG1i
	 7CSwpspB4d6hC7Na3e/cWc5QrMvRMBtqu3mYVieq1FOxMMWyeKaSeOGjYHYJPBZXRSg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794185088;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=XKNjwGvEBcTf7MfNFlQuP6Alki8SCEwzrw1/ifWKW7k=;
	b=LkFpxAOMgD4yjhajbM5FXNKBQMFGx6pBLn7xZ5zhBEujLtK9/FQY/mFKjw/4zMne4JOT
	 C57VQiU47e23KWKK1Cis2qdAYzKTTAVUJoTrDYtuPDRITuMfrdjs59xLx2ITstzFImwhE
	 W15q01n+RuYSQXsJh6OBV+OjywnTq7nJRlEU+xFVggO3a4ILgdcSWjdTtUpbgrLNzBRnQ
	 OcPiQgUzC/VHg+llBiVmhBHGgsJGT6NKvXAuuUlNvJEnf4V87qtxFjlbmmi738vK4iak0
	 FklZMFcbGp43BY7zOYR0Yqi44abng8CfpyxPcpUXDB8na/3BRJyB3vfI1pG5JA5mkew==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BC0606A31C
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Nov 2026 00:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794185088;
	bh=XKNjwGvEBcTf7MfNFlQuP6Alki8SCEwzrw1/ifWKW7k=;
	h=Subject:From:To:Date;
	b=NfQRKyI70genI5SH3BcrpjMW1KTDN2/V2u0mwEKMvMazzkXbtBpo30sg7BtuGAOO/
	 NUvzIenSNBM/kXFfyeSbEprlJ0iWUZpBfu9iiYMZ/QTop41strNku8LXBLxufNMhiD
	 0JKoiV89M1Kbo2QSuUBFGSBNWI3SamJqN+F3P2nO0fdDNDLG/73p9+jiKjyvI4j/g4
	 OiFZLZXtGyztHG200LVIgX1kXXDMTklpyz4HJ0ouh1zLmBj5avWvzxQqihle7cVnPl
	 1/Lp/GzRKyvZ/ImSoFrHh2aZzyshI7pBMnzZlJ/kb3MILMC2OUfV4mYob6p771sDoZ
	 NUwN1lOHQLS5g==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90C781F0089F
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Nov 2026 00:44:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 612A8380821F
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Nov 2026 00:44:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.4-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 09 Nov 2026 00:44:45 +0000
Message-Id: <20261109004445.release-7.4-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.4-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.4-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.4-rc2/v7.3

Linux kernel version 7.4-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.4-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.4-rc2/v7.3

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.4-rc2/v7.4-rc1

