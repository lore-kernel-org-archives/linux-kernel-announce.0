Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB00446C1E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786083973; cv=none; b=I0ZUWEgv0MHfT+bO91OKGWsnbMV7qp27FqioFJtit7I9gcRb3lJQcLo6KMgPuQgnfeWcRvjP8RSUcltefPbH0NLTYjngi27wM1vol52QW0mP/8xw6K4o/tevFo+5004pkLHjkrDYIFIc9oulFaMWgWc5lkeLMazZUYkhbQWBnjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786083973; c=relaxed/simple;
	bh=U0t+7rw0sH+zYeiQr8bLDQFy6edvKGOstCiAU8Prvi0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=X26qAhKxvzIC/SkusuVOl5Hbf/ZRplgD3mdQfVDlFEEcA49iIbCzUX6HOcLEse7vTPfYJr/8xW/XsGPqFT44U6zgi4vMI4rSAECwRMLlsrRVtNqpZEgC/+K6mrkdAlMNoH3EGRDHA2RKkvNakyocylURrbAspwl6hl1Cf78pO4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786083973;
	bh=U0t+7rw0sH+zYeiQr8bLDQFy6edvKGOstCiAU8Prvi0=;
	h=Subject:From:To:Date:From;
	b=REPvu+EZX6U++IDJ144qVn0N6Mou+VF8T857ZAAEGRGbJc4C+OOjRpAvhcEw3MVAU
	 8BuqW6NbqRXTWi1UBVD6B5GYJr8lZBdTIfJVGt6Pm4o6ERULY5pW/Hqi5pDXAutwx4
	 ZeyItoIVKWQyonrJFEpW9K6O7SVrTuK9jsLUVXjI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF74A1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:26:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3498380A963
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:25:31 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.182 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Aug 2026 06:25:30 +0000
Message-Id: <20260807062530.release-6.1.182@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.182
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.182.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.182.xz

Linux kernel version 6.1.182 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.182.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.182.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.182.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.182/v6.1.181

