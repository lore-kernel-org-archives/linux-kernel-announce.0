Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10F437266D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778223371; cv=none; b=Uy+6UsnORa295M90ichNTA/UVe+owNJp1IyjioYF5D+1LE9hh45wvC31YxJrLtnbp9/bVab9y0S26yJDLpvsIhMw45xo+gzL+zvAdT2ltZ+J0RrSwMk7NAla4cDFMitjmjSYNbi+ZfhWJQTTT4jnnxpslq+K9YeYwmYtyr8feZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778223371; c=relaxed/simple;
	bh=FiaGUiCIt4MECu8/gqbkCvov7CDP2h3+UI4UIhDUtA8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iQDV3rsKv3f9+oPIRMEOnY0qjaodkyaJvh5DPMaUWBh2X1O431ONmnevI8VMlmOoXgCtmtGnuC1Mjcc3RR8x2H7dXuifpyd8i1eS+NrvvE+K/GvPkVLdwsuBYGuTjBnj4fGknjPN/ZjjklCru0fpWsDGEa4t5WeCHMS5L7YkC+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778223371;
	bh=FiaGUiCIt4MECu8/gqbkCvov7CDP2h3+UI4UIhDUtA8=;
	h=Subject:From:To:Date:From;
	b=JTFHb3GQrUhUrQKxovY0SaCGt8U0D0RJN0yr4mlCO5V7GmWFTTjUFasJl0CRU9hVY
	 +nqpMhb8OC8eULiAetFlc6iqjhlUnGerW4AyYBwuaoewe85WswP3I8xqjDAtIlbEum
	 GGLUT7Cnka1wr4AFpdmuYy9ViVfRpTs+1l5mIWR4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E880C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:56:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4260D3810934
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.28 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 06:55:20 +0000
Message-Id: <20260508065520.release-6.18.28@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.28
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.28.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.28.xz

Linux kernel version 6.18.28 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.28.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.28.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.28.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.28/v6.18.27

