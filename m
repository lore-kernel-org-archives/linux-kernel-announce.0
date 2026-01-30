Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DD532E723
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769766328; cv=none; b=l/onA9xmOEMQjcW0ZlBOsGCZTXUOy/GWLgW5U7RXTYsm+bMbQb+lIlcVWCLz3mkFebB2VifCIdh1QhdZrEWT4E3NR1XSzdHcjlPLgj1TQwS7NO6BLvxB3M2mJCOT4qzu74P0ftm5AF9yU+POtTm1MQA113V2TiSHh8TGeI7trB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769766328; c=relaxed/simple;
	bh=CgFbxqHFPA+rOQeZzClzdkuH7zLkoOp2Q3r7DwVy53s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iaPwRY0PLganAucjlUmR9wROSHRSWr71fE+JTHklwj+hz5PnMZDpYTzwlhry/d5LQ4PX5jT9V9emBUsZxcDre1Spx68243R7r4F3ElrN8WDsvDTg+7SIbiHwEatr28Vtj9s9PWw189qfEEo0TAI+sokMmhUGObqhFhUL3bRYp2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769766328;
	bh=CgFbxqHFPA+rOQeZzClzdkuH7zLkoOp2Q3r7DwVy53s=;
	h=Subject:From:To:Date:From;
	b=u8JUaAt4rIutitti+DeEbCS4eB7vecjfnlzWc0Kvb5OAnSsebqkgb3WCEtAlwbIUP
	 37fr/VVh8wG5aXxGR+aI5WwbC5OYkab5wDJHWaoGeKkRjrRFmPh/0WN15PPRUyKZ/i
	 pK+ynxAMGxUssxJpI0FF7im63ARFY9r3YmUtZQNU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9EE6C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:45:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 8BB26380CEE8
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Jan 2026 09:45:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.68 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Jan 2026 09:45:20 +0000
Message-Id: <20260130094520.release-6.12.68@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.68
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.68.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.68.xz

Linux kernel version 6.12.68 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.68.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.68.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.68.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.68/v6.12.67

