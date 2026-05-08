Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43B8379996
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778223071; cv=none; b=Vyoo37dXRl3AV/yxnSgEHTXSpZzBbaopxzLK9k9Z+DEPCP3V/ws3wo/NsfI1CM4WD775ZTA1KOGE9iqyPgKVBIWKicmJmbWVmG47rmWWSI77Accg3Na9FJg2RAm1Cjyvw84vWUdQ1GhDUlsldkgfSOPs2nZx51EjrSs4DQm7MXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778223071; c=relaxed/simple;
	bh=ESH28nZaCUuq50KsnHQifDX8df9v/uJoTqgqav18i9M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BHQ+4ZSCNQAbBjHenb678byWokKNSaaBjR5jVHkXGCcntBsnOxHjrZYXm/x3MsZV8MhEZom7ObKydZEtMrk+JwxCt2OkSzTIs+C3lt2OE0CVgQrmIqRzgL7GV7w4FoDCe9zi7TZz+kqH1DsGJChbrHv2bLcScISJPQ7P8F3AHts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778223070;
	bh=ESH28nZaCUuq50KsnHQifDX8df9v/uJoTqgqav18i9M=;
	h=Subject:From:To:Date:From;
	b=J1kbTOHAD6YJY8DZ/y2YdSJpqGRmHgHN0WCt9VlJlIAiWEdBY2zbtF0XMHQBneQst
	 E3kULIuKjVLN2upviGB4R/d9wLzJA8Sl7bpscce5W/abHrm0TkwBL2N2TVcpcJlk4C
	 KQ+lvodvChdq61U04Xt/VyDNOsBKC9rrJffEgy88=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 782B2C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:51:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7F9353810934
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 06:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.87 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 06:50:18 +0000
Message-Id: <20260508065018.release-6.12.87@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.87
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.87.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.87.xz

Linux kernel version 6.12.87 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.87.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.87.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.87.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.87/v6.12.86

