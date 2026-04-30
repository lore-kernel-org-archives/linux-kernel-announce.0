Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565853B389B
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777542365; cv=none; b=AHWBrw4BDFhTc8ELKtcMZ3diCz09psbz9jHa7A/J9x88P9e7exHGkqhAOld4Zao2mPYYSxaOC5R8zW6Qa85+GnwJo7Ngr2b28ocSjWn/btrHVx58d+F37z12F7HHAWb6G1O5wsLnh6S95zXRldFoyvRWJIoQ8XlPaBkON+t7EwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777542365; c=relaxed/simple;
	bh=sm8qBjiVj1tHAzUqi0Cy6iTEtKi4mp8eZPZhkBJJMJc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=R2NHb4JtQt8tloRud9oAM6hBTWfB/542pAaoKhkwt4tlxhQcQ6G3kNCG/8uBgH8z8K/9xxjWA3ZfdwUAAYss3bJZD84YYyHlov1XlnYRPTGYy2M2hKtQ6E8d4N64XA9f1jbgtf17gF/a00kAUOGmQ+WJ57aDuO3VcdDw0dWGBzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777542365;
	bh=sm8qBjiVj1tHAzUqi0Cy6iTEtKi4mp8eZPZhkBJJMJc=;
	h=Subject:From:To:Date:From;
	b=a6k9RQj/km8yxto1Ph9oMaPW0jooQCFITC9HT76bloOP9rymKs6ar/iwmYY0hcM1X
	 nykJJJKMxckcaG/ZW+1cmRIfYzNlsEz5nQhQfTOwWgNnyvfY6ZySHBnALjIxHkQOgN
	 jfdscnoGYre0EK32L4IdAA1ClyTk19MlKzhrEy1A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0894BC2BCB3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:46:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05BE2380A960
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Apr 2026 09:45:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.170 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Apr 2026 09:45:19 +0000
Message-Id: <20260430094519.release-6.1.170@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.170
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.170.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.170.xz

Linux kernel version 6.1.170 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.170.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.170.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.170.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.170/v6.1.169

