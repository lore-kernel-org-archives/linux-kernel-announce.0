Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054723CA4BC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792067476; cv=none; b=k9lET3SWk81ur3yU5bGA4CH3zFvE9aEAUIFn3udy81b8e3ep53gJczYyCgGWrQCcYTQQNua8KB0t+L8xoXbsB6XFp5aiuFMYaPDd13Bry/AfHPaZsX/pbULnsMP00JarMwl8F3lsrWsipHOwTmi8EhKUazMj3mJs4cxhiIFz0dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792067476; c=relaxed/simple;
	bh=psXvPR3TnPfFudpYvMaMsHOqTHf6YFz8HGJE3zl4o3g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JEx8+nilWfKotjbTRX2AxIqJ4zHQk1LZu44sfnI36/m6dYTZ1W9xMfhCP4TEC/FvrmdF3f9Y21KdBQEMFzBr2UHXPo8WoZ094+45csWzbEq+LQ+X9l68+DpW5BHIW76VLDiFcNQofA05Suxp78ClrZiyGUcYW5/O5F6ICdeVYgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792067476;
	bh=psXvPR3TnPfFudpYvMaMsHOqTHf6YFz8HGJE3zl4o3g=;
	h=Subject:From:To:Date:From;
	b=Qd40DUZmZtWq5rCD7LAOhfsTEBkJscaZ889kX73Y4GxrfX5VlWBmU9EfNzL8dKzMa
	 ol4pnD2YA3J4jJAnCOl6/91Ad6sBQaMKsVu24y8+OZCimiOVKfHYpFSf2N/zcnUOkE
	 hCTrl9202wxmDuHRCNpMrTLxBfRPQzFECIS3IJKg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A093C1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:31:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 79EBE392EA6D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 12:31:15 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.190 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 12:31:14 +0000
Message-Id: <20261015123114.release-6.1.190@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.190
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.190.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.190.xz

Linux kernel version 6.1.190 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.190.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.190.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.190.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.190/v6.1.189

