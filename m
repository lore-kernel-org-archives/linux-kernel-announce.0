Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B38431F981
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778237775; cv=none; b=f8gjNbJMzhd+3LBkGqLpcGkUeWqbTaXWPqplNh7nEejKcYgQrNhfoJuTFzZqPLPXqRQ0UAWeFhGWcTegHSJVPKQacdSXiHeyCl2MgJf7iGpzlxfBvjmOgs2yKWMfcfocQzx2Iu6gNWzbN2UpIvEWQLseuxmMDaLKU4BlE82DZzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778237775; c=relaxed/simple;
	bh=kFV0UyVk+AYxbV5YPmj6uBLObXqiUvEjo+Vt5tdjSCY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=o4u1sFw6NfiHNzZ7edM4ElywNGMORooX7OB/e4X1AnFw1b2oG4uFWWIsvNhPISR8FjHAydAAbJf6EMAiOhb0ttDf5PDQZCVZhDNWsoXNUek/veRXH6y8cghU3cnfidykZh4ZUypbzMKAGgvahMErt6bZMcei+wWI2uvPFTbO/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778237775;
	bh=kFV0UyVk+AYxbV5YPmj6uBLObXqiUvEjo+Vt5tdjSCY=;
	h=Subject:From:To:Date:From;
	b=WCdDYWSrn5p70yvWLD1yMDnjol8bnPqSsAu9Xgk+sZPe+jvVOKaPtg9KACPOUQ0FR
	 NKzEsFk1USWKgmhCfL1H+DRL3R8XIMPj4uBv/a/3zFYAL+9d87kjRbfQoWDJnlmY4v
	 i85O5+apJ3MDh/pypInPoD+5gsq9DijHdAiAYHdY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64977C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 10:56:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4294F3811959
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 10:55:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.255 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 10:55:23 +0000
Message-Id: <20260508105523.release-5.10.255@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.255
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.255.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.255.xz

Linux kernel version 5.10.255 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.255.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.255.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.255.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.255/v5.10.254

