Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81522AE90
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Aug 2025 16:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756053856; cv=none; b=fi1dWUPZBQbtyaOZCexfkknVMlDiNjONUbgCn4lkjztLfLIUuXuaiT5YMj1r+09f5BOtFX6HV8RlF18spFbdzWHVsR3JnRovubpBNOoATr+xlglJrLfl7Gqx4NWGTxJuyKyhi4B+p7wZryy1UZHeWPgUGctwp/DOnC8nYQioxSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756053856; c=relaxed/simple;
	bh=gPceRJpGP55zJE9YoaJDRjDY0SM+G3Mw946U5rt8UVU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=PrADGe3uzlwqVonijy7nh5a5n0Q5Fu6T93lDTH337gW0hYMUm/u4tiQxbeG2Bq8m4Jv6IpzYL4fNEPSCFkG6Au0a0PK0MzZM6IDVFobCjH4UmEbr9M7CxFDjh/YVx5rFegkR3NEnauzkdxFFLwRkPtH6oOKvNHCnjLDZ8I0KP/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756053856;
	bh=gPceRJpGP55zJE9YoaJDRjDY0SM+G3Mw946U5rt8UVU=;
	h=Subject:From:To:Date:From;
	b=fi/wQmS0xrspxDR3zkbrlxPLA6a1Cec/v6RcHeyFbBwPtitFKtqt2TqZeorT9ewD+
	 xPvexp0Y3Kt8T6I7gOFM8rb0jyHE6fMOH5RfZ8XjPmb5yx91y8bhtGEJslSL09fzhz
	 47pfUPXNiH/LwVLNsOjxojoCzqesCgjBQIsJZDag=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77930C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Aug 2025 16:44:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EED9E383BF69
	for <linux-kernel-announce@vger.kernel.org>; Sun, 24 Aug 2025 16:44:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 24 Aug 2025 16:44:24 +0000
Message-Id: <20250824164424.release-6.17-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc3/v6.16

Linux kernel version 6.17-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc3/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc3/v6.17-rc2

