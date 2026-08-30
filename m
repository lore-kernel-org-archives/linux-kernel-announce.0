Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F041280037
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Aug 2026 21:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788126882; cv=none; b=iFinhdoLaEZFypVVZXH2Dj2R6Ei2MHE3OUp8N8GZDVEXraFv0x+E5m/2oiUT7vLd4vyVBCRkT3a/iPOFpPgMRmsL6v9j+zytKGLetdAcibS5JxZkeUAjhDQ9w76vOJ6+djofUb3OuG5XP6vzRjKYPoVk5JhR8i8wMCCKPBE7uSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788126882; c=relaxed/simple;
	bh=iqjB08tpZUWh4Tbd6sEUUCqEhjI//60meD1Z2w+aqaY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=PAonk9TKPu+B4wITfkL/ZqQs23jj8AL+ko/23k+pbS94ZCp8jOFLP4/A1cSAFCfKOyGrIWqkmxFX2EnKP6bhUEach1W1CbS/aVlt2zo7aqZHY3hgCJEpLOBRgMooly5muPeB0gaY6D7jTXjXmVzl4KU69iT8EmBmuHjqLeswzAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788126882;
	bh=iqjB08tpZUWh4Tbd6sEUUCqEhjI//60meD1Z2w+aqaY=;
	h=Subject:From:To:Date:From;
	b=D8dtzX9RY88Ntb24hts7iv2QqEV00xrXfp+/XM+SloqeJakNzyoVN5cGZyb9zluZx
	 FuGzI3XV4SYySn+GvD+m+bnSW7N/coY0wtMCfaiNt21FqS03E83eny8svdipfy7eXi
	 3Ndr/5rPKOKb8uULYFfn20CvEoon24NA6U+Ef9Cw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54C441F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Aug 2026 21:54:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C40E380CEFA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 30 Aug 2026 21:53:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 30 Aug 2026 21:53:43 +0000
Message-Id: <20260830215343.release-7.3-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc1/v7.2

Linux kernel version 7.3-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc1/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc1/v7.2

