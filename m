Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D868119D88F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604945; cv=none; b=E6rV47JI0Lt60Culuydb6dxDQwRK8s8KCIABojUsT7/z6G1r7JG9TQJHVMEztKtVac//qCkRNsIsi2mkOWnqSWDUa4hztBr6iNg4qjWnQ//nQt72neX0HYlNX8kB3TjANQnBlaAjN3v+Whke5frKiwXYmhEFaLM0AK6DMWuFtsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604945; c=relaxed/simple;
	bh=x2dZatjxoPE7RJtl3+/NsqfA/FVsgWM+8wPLRHJGKYQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Eg4dQ8GUAVkt+XxYXpYL2LvDVsbg+Ose/f7P84F78WNHd4SL8YJ6IZjeUaUiO5Js6lVOGERNBX2kEgXaukjMxpVXSBv4TD0pXOFH+GZxAimUbfAC2UGQQbM6fLIjV6S2/HhxUvVB1F6hM3VL4rdq9wL0iWCy+xMR+AHgm751Igk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757604945;
	bh=x2dZatjxoPE7RJtl3+/NsqfA/FVsgWM+8wPLRHJGKYQ=;
	h=Subject:From:To:Date:From;
	b=VH+1YbSbsVFwtS/pUGT9U5Ia6egu/mcJ9Gkkeu3CaiVWW4fnoK7+CMDSO+4Gd6az4
	 olAeJI2kYtNfOAAHYDIufiQN0MdDxJz4+/t0BIK1rZ/YP06IZcPxiidvMnpJFRZJVL
	 0NXXRSHXlZvGc9KwJTFq5dLWkkThKRL7Mhyw6dMo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73362C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A125383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:35:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.152 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:35:47 +0000
Message-Id: <20250911153547.release-6.1.152@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.152
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.152.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.152.xz

Linux kernel version 6.1.152 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.152.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.152.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.152.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.152/v6.1.151

