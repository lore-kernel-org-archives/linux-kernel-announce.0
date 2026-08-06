Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EF38DC69
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786037795; cv=none; b=YehjmvEYXf8rbU/VlOFSZaJWsxJah4YTUmh7ZXY+byu+G+8PNbp8p17frEIZBb9BlurNP738esm8dE5qkjD6O+jwo+AxEw14MUp7f5xQAXxJzYR8u0ioR7x58ejDz4oHnKIJpPZQCr9DIARhMclGuQ0FS9gZdkxMMzb3JOkB+ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786037795; c=relaxed/simple;
	bh=/7A+aQV+QpYdwg/bb01mlGqFRI4UJjkoyCnZln3V+sw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uaYg1nH1D7I4D6IwLcRNWy2yBgHOcgTzLaee9bio4g6OcUPFT+IcG3cOnpcHLo6+CCcPysOCWojHCSsH6ldauLa+WYlZkY/2jhEOaoZyK+AzxiqOrc5tXRoZQSOKZ6mdYGnq4ih4P18pQukVJOkpa4lMn5gL49msQZbXuC0yLZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786037795;
	bh=/7A+aQV+QpYdwg/bb01mlGqFRI4UJjkoyCnZln3V+sw=;
	h=Subject:From:To:Date:From;
	b=wxPQVJ2ftY500+9zAzO8NYOa4CHCT/6FhOMJ9209srbhjWhp0lbLaGKpj5NMB41dj
	 nqOXK1dz4l6gzSmaQTNCqMHUmm8qWh/RUB5RwPzTiRyksfoLUUwAI6yDgjqljNpoCJ
	 n8CaG4Yh4symyqdWuVyWPHa7kM7j08YKxNhtbfL0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCA8C1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:36:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 59B3F3809A0C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:35:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.214 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:35:52 +0000
Message-Id: <20260806173552.release-5.15.214@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.214
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.214.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.214.xz

Linux kernel version 5.15.214 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.214.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.214.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.214.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.214/v5.15.213

