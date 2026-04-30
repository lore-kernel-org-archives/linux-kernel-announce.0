Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A08DBA34
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541465; cv=none; b=Sr1sd9fdi/1N75+mlYv7sVpHIg5E6dOmwU7BXt3/zt3wefh+jXwzQeKY5ve+J0FpssUHSdK7hbWZIq4yGAuSuzCpWX2tyQlfkXozc+0f9OEEE4/2DSEuw6Ax7vHjglFvAcWAV2DgFPlAhd4+uk4zOLH2pJlWDcosLBcD3SWvhRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541465; c=relaxed/simple;
	bh=3kGAK6Flkv1FEn2PArvM2TFE2QnKtnYPz6m+fUruq6k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kfkUEpgAX20OJcctI6Zq8TJPcT58sHuPOxgPKhtO2Oj9SxbyDHtyNcj8Uj0S8ChUjVT9DaBji9y9QcWJmAozrh+NCV22DHUI/1KIFKCS9IPHUKZgiQA49hlyj6/+R/W2i5QpzCGS+0CcM+BKjoPLtmeqrv4m/+1wL0ugyxgYBHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777541465;
	bh=3kGAK6Flkv1FEn2PArvM2TFE2QnKtnYPz6m+fUruq6k=;
	h=Subject:From:To:Date:From;
	b=A88L1lpmgdTRLQOeKCaQMd17OI/oQ4udpJxwW6FACsLiPkGpIXf9lAayPsHPYYgbm
	 Qz8DKMUuIlocY8DdSt0abvPDYjbuGtM18yBtV1p4K1ONWmrnaJlbLBWWci+62PYAhe
	 XLaOgaHlm1IZlWyf1IZZxXAs8HnANrUCZ3VZoTak=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBA84C2BCC6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:31:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05AE4380A95D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.26 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:30:19 +0000
Message-Id: <20260430093019.release-6.18.26@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.26
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.26.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.26.xz

Linux kernel version 6.18.26 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.26.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.26.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.26.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.26/v6.18.25

