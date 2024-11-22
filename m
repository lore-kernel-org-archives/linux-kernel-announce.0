Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24A1172BCE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732287332; cv=none; b=q1SZ3qt/4J3/MHDdKh3Bt/V1Y7mVm35tPPWQ6HgMckX08YVtYuGX9SI6dcGXTybncSVHkjjhkN2hpHk15VNGi+toHH+BPL7SnvJPeEe6e1ZyFd4k4jQfoUU4+IFezOP1na60p5uPPFLvk88L1XQkLUeb+iILh21YC+n/RbTDa/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732287332; c=relaxed/simple;
	bh=9a9WBnq6CFp1LgnIIwwXcvOxRLeHtUXh6EKVXCKnCXk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GpmL/GT7VRM+P5G5EjTYT95S/F2y7BOnSSEkyUJrq/079zJvG/jFX59hePAgFZly7RbVeqlmqnKuu/22oOReoJOS8wFJWpsVTw0kPa9M5xDwpi20lMc5tknVPm4qSJPKG/vbWSjWgPBF1WzHmknw+9GeNuJLCt1I5gtCNUFWj+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1732287332;
	bh=9a9WBnq6CFp1LgnIIwwXcvOxRLeHtUXh6EKVXCKnCXk=;
	h=Subject:From:To:Date:From;
	b=WFpfJ2tqH/oxG9xPpd8qf+/cuSgtS5U67jCRisfxHXnJUFytrL4ISRO5YB0WhhvHr
	 dDTdvVBEpwcraH+4hlRUim5u9Yy9acZ11y1ZqdoMp+LZe9BD2dwO4UT1HbvAFmMLSm
	 M1VMBa28BeBOhRssA+1CBL3JFTR68nf/nzdyYY7w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 660FEC4AF0C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADC973809A00
	for <linux-kernel-announce@vger.kernel.org>; Fri, 22 Nov 2024 14:55:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.119 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 22 Nov 2024 14:55:43 +0000
Message-Id: <20241122145543.release-6.1.119@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.119
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.119.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.119.xz

Linux kernel version 6.1.119 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.119.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.119.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.119.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.119/v6.1.118

