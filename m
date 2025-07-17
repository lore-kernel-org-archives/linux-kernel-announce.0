Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B54145348
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752770421; cv=none; b=Up0IoGEAuMFAE9szrdjD+qQhsV2GEW+weXcnIj33SmEFNDCpd7A2rSa7+OeFT6yEo1WZIy6KNXEDRMjIDRsnj5FT3/GrqawDzwFA+Jww42fpBU38FfWhbJvBol78YwctsrOTkJdXH6ZQXANaD8FoDzULplo9s2l+74XOSwxZ5uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752770421; c=relaxed/simple;
	bh=uqnPI+pxo5ZNg4izMQUZ+6Mnpu/lEExXAcm7fsK6Oog=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eXH27UPpJYR2VMxsNcgtCR+f9FtvJ5aBf/CyQtLlHxLIocMQ5MjhcqF4jy8iQU/TqtOAi/QIFDo0dC808piPhRbEjq9b2bbEgPDNqcYyNjZAC3TYZpdP2stOFn909R6rUpcZS2hpUEnkTP7GutvmIgcd04iwcs0N52AzBKZj47s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752770421;
	bh=uqnPI+pxo5ZNg4izMQUZ+6Mnpu/lEExXAcm7fsK6Oog=;
	h=Subject:From:To:Date:From;
	b=ft+KGx5tuscGlZ7UdnAQyGFLh1CHeTZsGIWl9w0y0coF/lvqh6UhJlDmOV24Res3R
	 GTTepz+zh3TqVVtFxHTq9UDHAfUuGo+WQN1p92frmfu/1XXsj6lhTw8Hd0pBWRvZW5
	 mDSRZ/iyU1SN5PmFQG0aqwXT+Th8+o8fVtYg9iaU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95ED4C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:40:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1A16383BF49
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:40:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.296 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 16:40:40 +0000
Message-Id: <20250717164040.release-5.4.296@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.296
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.296.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.296.xz

Linux kernel version 5.4.296 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.296.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.296.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.296.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.296/v5.4.295

