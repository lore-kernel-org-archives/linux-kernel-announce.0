Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0E7E0FF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 13:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787490211; cv=none; b=txcbYHEXZarDWjNkhYLuEq7aEFzVgk7I/QrZyBWtXijqbTS5gm4vlSxboRILYpwyKmFGDSVjcoJwqJaovJKCHFqBfrOcmUWTpcgHQ8lf2/Kib/b2Xhpu3Qo0AApKU19z+XvSI12F5YaLxcvHpn5NoVNFrLZvVYOAajuGek7Qsho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787490211; c=relaxed/simple;
	bh=8Z6KTCbZTRYACZ2uV2hDctTQ/mRWrsL1u5zaXwKMjcE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lIhZ2BQAPGZjJ5+qDHGm8jPKvHaa0U9PKr9wSZMkvexfsiyQTJdS4ThR6guQTbPTC3iULRjlwVFKT9+1B+vEBE+IPfncjIMwaINzKBVrGg1+utjieZJ4grGAEW+PSOrDlWbvbehSE3q0+yjSZHD2zUOm5uyishX65WFycsk/dxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787490211;
	bh=8Z6KTCbZTRYACZ2uV2hDctTQ/mRWrsL1u5zaXwKMjcE=;
	h=Subject:From:To:Date:From;
	b=WAP3/PqhEBQ29adHi4RH56VPo4LFMt10VqI/HjesqmNnG5gz4BuO7WwoxziLTWLYU
	 NG1HIksk0u541W8fZT7c5nLr2OT8S3VkNAlJ5bTIbGm5QdVnPlk6kVFZin5ud/GPs1
	 pFLDxmwGpepAssLLU06/APFDFco6/dLk9PltggUE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC6B61F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 13:03:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 59449380CFE9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 13:02:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 13:02:37 +0000
Message-Id: <20260823130237.release-7.1.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.10.xz

Linux kernel version 7.1.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.10/v7.1.9

