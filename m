Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9802F290E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765562024; cv=none; b=jxMzACL1HOBajpWOghW03yOqin5aPUnT02Tb4Wlmlj+5flJo5wj8AGxBJNFxjdQHFfWX7Ws9lMC17w6hyAhhjbOTDoOHDJFm0kDFss+94IdMngeVMEYn3FYcGRuI+FvKcLY6O6CG8O5b8RiYDPasky7uGXCOJCkceF+1TYoWy5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765562024; c=relaxed/simple;
	bh=guI6ZtV5JhRsR6dAt0oI1RpfaHYgr+MZ2a1kKBUCk/M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fegv0B0qUN4vQ01tb5chlxBM5B2uxNmiu76JjQ8DGUiP0vlUITo2DYMGnirSsYYY2VobZKZmEaa8WTri6G+dpwb6qV/EaBouVUx4PrNbntUVcFHIcJSe+XG19KPsoBXHW9pPgR50bdy6gSmQ6zBzf/QuaJySdJiMYMU2eJwFPp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765562024;
	bh=guI6ZtV5JhRsR6dAt0oI1RpfaHYgr+MZ2a1kKBUCk/M=;
	h=Subject:From:To:Date:From;
	b=cFQPS1gTDvkVtk3Rzu6+6X0FmFPEqd8/0LgsLpXamH4lm7uCUA4h+oP/UVFO2089+
	 XU0cuB7BICQBMiAkYqxOCyNp2xhxAkHTllAfljO4s2R8CrV1KXiKmLJuUP/Kw8l3dQ
	 EReTTljyIxBTB/kRV8okF4mCoOnkS8A9BaFkpVOk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7626AC4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:53:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC673380A945
	for <linux-kernel-announce@vger.kernel.org>; Fri, 12 Dec 2025 17:50:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 12 Dec 2025 17:50:37 +0000
Message-Id: <20251212175037.release-6.17.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.12.xz

Linux kernel version 6.17.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.12/v6.17.11

