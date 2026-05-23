Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0461B2BFC60
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779535513; cv=none; b=Mp5To7akXK9GNSCiLIOxn0TaZMgr+mNxSzV7ZAmqYNU1f5WqLsCaH6CisjZuTu2hN9I0lncokbq3VWB/ck3A/d0C0Vw9JApnF6A42wBWaZ1nl+qW01CKdl1piGvwWZm8dKFie8PRq2poQGeVgi6gqLVVx5GImLqDcOxOfTj8WAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779535513; c=relaxed/simple;
	bh=agf7Br8u2V8BWA3vFvN+5JiwZfeeYn5/kwoCPUR6imo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ed+HLiSM5/tNdsect9Wi+Cf+RjjmvJWwBh0Q4FwjHMTIe+Vw3ixcye9YpRjGhR2Nil2urzIEUqDv6niiaNZWUTecaRFzN/EF2wPY9g8LpLVEjtSCdI+o7fy71Wao8YCPvNPBNFhnpx/A8jIsxH0A3mLbC3K9JKUMLIutJmUxfFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779535513;
	bh=agf7Br8u2V8BWA3vFvN+5JiwZfeeYn5/kwoCPUR6imo=;
	h=Subject:From:To:Date:From;
	b=GlsfIezeEGJkzKU2Fs3WVNTy5V6t9aD6dJKfMyJtWQBIdUBZsCXUvD5iGHagJ+0cu
	 XR6n8wBe6byv3jAWi5SHX+idYNVhoqmRPIOGb4CRliXncEcuBlL+yeI8TSSxB259dW
	 K+cLK0gQMYwd866uyMnMxR2wW0LZdihAGyP9Pnjg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE1BB1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:25:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 597F13808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 11:25:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.91 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 11:25:20 +0000
Message-Id: <20260523112520.release-6.12.91@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.91
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.91.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.91.xz

Linux kernel version 6.12.91 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.91.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.91.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.91.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.91/v6.12.90

