Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B22524DD15
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Jun 2026 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781459124; cv=none; b=sOD9/yy3wUXWY86sdGeJlW8B1QGzqH/XSqNd1NKuvgc8Uz1mDedEUx3Sjw/ij9YTWFjC703sLL+59/jGIjtw4KQiNPJxRBN3lyuVY8W5DkMLujNB/g+8LactNiJJls2Cy61VZKUfccRmZnxwaCmilsvOnl2RP8teocgYsamp9ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781459124; c=relaxed/simple;
	bh=hXQLQIWGOL9CbyUSTaLOpoNZnkTqjvEJ/ZYzM0c5Y4Q=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Bt4IlTnfB2atlD0CKSuq+bIOP9hxmJQxqrkPjrCs4nQ5cqLTFYusN9iPR3TZFbCX8JREFZxBNhdTln5UuT84hhpedmnDUVSho17NSVq5YYeO3+wUynQ5OKpPRyCpXcqDabxVz6PzX90orFVXWyZeq1AivWTg3BazCMqjYDKvDsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781459124;
	bh=hXQLQIWGOL9CbyUSTaLOpoNZnkTqjvEJ/ZYzM0c5Y4Q=;
	h=Subject:From:To:Date:From;
	b=fwwTO9opciUN0Bir7z68nozEoeeCcHPwnZyDY/SfjqePGL1Lehl/rfNz2TZ2zeoAU
	 E3JHroLf8LAsCnQjsjXgQnF2bncF7+rhjaHt46EAYOQQHVkQAsDAtRFsH+QA9wv9LB
	 Mnvw0j/Mtltx2f2PnF6U9gJM4jhvtbPgdvB1Vl4g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F35E61F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Jun 2026 17:45:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D34F23A566CB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Jun 2026 17:45:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 14 Jun 2026 17:45:18 +0000
Message-Id: <20260614174518.release-7.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.xz

Linux kernel version 7.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.1/v7.0

