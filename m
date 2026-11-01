Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793570660;
	b=aw/uDR1arQI8xHxC8KnylNE2kNngy2xaJ8UNYZxsWoDxK+q6rtV2s9BlHoc1pJStnycm
	 5mWjcWJb2VUJ/734mZmSbhRSvuxgqcYjYuJPVe4UYM1W5gZ4B98cwPadTtzdh7nPMLFq/
	 TxaAJnzJg72y2je/L5VpBzCH3f1xzHqIwU5l1k8y63ITfS+sYRWMOCIGZEUnQuGiImawG
	 +EbvlmdqnL0pJ9ocKHSxwQQOZSlz7qOwIxZYkABBt+1DDYNOanwiVeUd0wr8B2oeHy1+2
	 QbDNrJCOAO1JeChkaET9B0TiTMw1FcefUV69oN9nDEwYizIfelCi9eUzA0kLSTtY8uA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793570660;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=XP1Eb92Vm6/Q+9Y+mDhNvL+wnyehpw0n8gEyaLobmDM=;
	b=5tWE1t294IWOMrJPSNfBiDWiMjopj6mxXb2VwCmPFPCGTYfRNekrpjYKyLcyuFJHpdr8
	 OxZ4gV0XEcT04EbMwHFST7uMW1qFAh57SunyTl4OQ3mSW5SLTOjppb4G8Uhc/8C7Lcy+b
	 GjKYTtXgYr7NqjKFoVg1dPtWSsk5cTxNoNUZmGBnRkRySbRXz+8mU8StPLBIj46cLM8yp
	 AJzVrPgPZzZ6av2XPowLVy17XtoNlVG4Z7noFXFZiWlHzGCslVbaHsCUaQJCBmDDxQA8U
	 jV30jY/0qZXpsIkGoUD0p9fXFvUz2mHCQgvoo17WiPqF9fO1PtI4BCByjI72WDOms+A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB580606A32C
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 22:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793570660;
	bh=XP1Eb92Vm6/Q+9Y+mDhNvL+wnyehpw0n8gEyaLobmDM=;
	h=Subject:From:To:Date;
	b=ew9zmUMMhQihrROB/BEOn2CwvLqeTrHtePFlg2iv+U5OPJpPI1+DUGmM25RZXMw2I
	 ux8JDTXkYY5sowkEgzq9Nr42hVPjSdFCTPLmUDYeTTl9IYiKAzjXBaFCxH7ygFHRL6
	 KR5BQe4QO2pVdjgVKj4pb0ULFr+ENpQQbaF3EEyQ+/A3Isp9W4U06f5cgokdC6XpxF
	 Tkt69lvkyxBqBVPLGMZPhryosKaLesrcwA4qHrnJcSfaXHdFH2uQmmOxWYEGcerafs
	 dL0Rf0AykVxHxGSzH5GPXXK+IKkSWkBcppvBXmYvbpIN2BsFKEk6TPNE3hdgdyhzWt
	 3D34DbLTa16Hg==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 691601F00A18
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 22:04:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42EDA38003FF
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Nov 2026 22:04:19 +0000 (UTC)
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
Subject: Linux kernel 7.4-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 01 Nov 2026 22:04:17 +0000
Message-Id: <20261101220417.release-7.4-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.4-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.4-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.4-rc1/v7.3

Linux kernel version 7.4-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.4-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.4-rc1/v7.3

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.4-rc1/v7.3

