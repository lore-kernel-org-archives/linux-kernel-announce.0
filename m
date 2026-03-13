Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B39635F188
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420625; cv=none; b=OdxlA3wOxItdZFtGAsUSYB/x3yHQi23/131wWVHLCMMlJ+P1fYrZlWtLrJKJ/M8Fqr+kw1ysVzLs0qlTIY8PxdnKkkKT0oBOdYuf7v1/Q4/4DZlYkrPL9l+0ZxM4kWT7U1+oGxNFrZ1ucidWnfNm6/FXOGZ+9rW56t17YMVXzOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420625; c=relaxed/simple;
	bh=6Zyhb3lxBIaYIvqA/8zhfT/y0ZmKKb+ZQc+3CNJfp4g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TZ08vxfcbMVcPUjARTQca1g8WoaLvWl7kXbLRXl2rXRO+DvTc+1jzmsfaoLNqGIxD31QT+Th+bdN1CK/CYNVKEClz64l+VGPm7MkALGbuRs8qx428aN4Is9D3K6rqs+VChuHVXlLEddW9ReUKFVpBFVqDoUQLoQ/gS807814qrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773420625;
	bh=6Zyhb3lxBIaYIvqA/8zhfT/y0ZmKKb+ZQc+3CNJfp4g=;
	h=Subject:From:To:Date:From;
	b=Ubj05ojeznx6OCkeSNBWgUt4Jk9/+Bt3m/ix+FbKY8gRJo13BzhQJSK+fh4+7qZHV
	 XY+rddD3AdpGrG3SXN+eyT/BoBFqbTfly7ROPW4+cs6ohDMyJnIkMmbE2lT8BthOvi
	 hVPza2Vn8TWn5FekxZomUZl7JJgRMt0ixrpJOyIE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0107C19421
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:50:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC9553808200
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 13 Mar 2026 16:50:19 +0000
Message-Id: <20260313165019.release-6.19.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.8.xz

Linux kernel version 6.19.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.8/v6.19.7

