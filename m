Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D745523BD04
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741364708; cv=none; b=Xfzx1HD62bTjBI66EceMVUzfrOVMPZYPf2IFYX4sxmOvmM1b+0bfAoXKeDovBgd5YCYj/LM64m3Y1d4R8IvRtGze7skXn6RVW+eNppP90ONFQdKV42TKAY4oO1fnkdKeApaQi4bHbKd+468AXJtxhCDqw34ri128/HssLBLvyks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741364708; c=relaxed/simple;
	bh=1qqH7LwBHpCB5PJfXgZ8maoqNM6caseuLHBgz6yBlvc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QehSjc7LO9HOUwXOYgAYklJUQWZAOryQNw58f0OQDCOw8CBTmyhU8/kHewjaS6IWCkGokOXat7mCY1BCEwqaLuuvmRqm3ZYbWZ/kBu9R/HUcDDu0Gx3Jg0EdNBf4g3vPgP09StRqViY/IWz6tK5ohL+3jC/aYB1Q2FE7PmmqHt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741364708;
	bh=1qqH7LwBHpCB5PJfXgZ8maoqNM6caseuLHBgz6yBlvc=;
	h=Subject:From:To:Date:From;
	b=RcoGxRwRHHZPi+wf1JSrKHBAYOkbpI7282Z8ZeWyXrCpcO9fUh1YWBazg+kO/TyuT
	 SQLQVAs+IwAR/RYBxBDcwpDqTfzpI3gBJNioDhl6yVI2F6v/VPy6Iei7DLAXbzfWAJ
	 5GOOMcRBlyDC4QbNnAd4Na/GylSnKfoRPR4fCVZo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 600EBC4CED1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:25:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF336380CFD7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Mar 2025 16:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.130 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Mar 2025 16:25:41 +0000
Message-Id: <20250307162541.release-6.1.130@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.130
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.130.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.130.xz

Linux kernel version 6.1.130 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.130.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.130.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.130.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.130/v6.1.129

