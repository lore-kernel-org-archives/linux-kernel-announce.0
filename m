Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EFD23AB81
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753341317; cv=none; b=pELBv8XI3CwT3MEmir35bsE3/ccyC0Glcom097004b2A7wWXzoTLD3YDRrN300oF/z4uX050vaU857s0crHoEpApdavXToaJWTLYQ9grcdU5YMzL9vsEvUPnjn2v0o6OveYMG0RnnJYsIWPb3LZwa25UXH42BIDTJlRgOxBM+Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753341317; c=relaxed/simple;
	bh=9c1wgKCQc3+N/sRsqcE8IfbaebucGZsrvXIke+elfbc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=X/dCUBn+5ns8JSJn8izwHGsJGN0FpLwIlwl20JXFF6lJfD/yRsEuAntpkeEZP+rKhW3aUBHdyUXzpXS3rEN/OzYUCpZfowLomnQV8mhazZjkctiRm2+Te5J5Y34qpKeZBvKoO/KdRmZt/w9Y7Lz6E+qF15vwpYPyR/RAfJShhnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753341317;
	bh=9c1wgKCQc3+N/sRsqcE8IfbaebucGZsrvXIke+elfbc=;
	h=Subject:From:To:Date:From;
	b=IpmJfDVB30ar2UkZhfRfwA0qv0UxXobaxNmONoOcn8cpkkuAz3cV6bIIoxRbfQKYu
	 1FmfLYLZTWAcmQbdSXHIwEjF99I3m5e9FMieRfTEudp5jWjdEb0XS/WmfW/Nimem+T
	 2l8deS/GL59hOM6cpXAW2ZZfWTGTwVYBJMY1l7kM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 874A9C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:15:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B137F383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:15:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.100 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 24 Jul 2025 07:15:35 +0000
Message-Id: <20250724071535.release-6.6.100@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.100
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.100.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.100.xz

Linux kernel version 6.6.100 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.100.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.100.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.100.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.100/v6.6.99

