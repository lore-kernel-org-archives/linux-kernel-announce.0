Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92678357707
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770814525; cv=none; b=Lw1oO7+XBkUbD0yBJ7QNaoZJiIOnuI51ZIpEiqN9yb8OLpJTyO3tIyuD+V/4ImIWbWam9F6KXeJz8bWKy3HUvUhCxfxiPhnNhBfiC5tX2Y39JGE7aIEu+1Vx4VgwEmgFGMIWMAQ1Rcq79gAi5JhsLLNjwLOJojOAbYVEZYd3WoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770814525; c=relaxed/simple;
	bh=X9j9lwfMQ1zcWdtvQCMEPl8mh8qLzXD5SY+IsSV3my8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bSlfSxe18FOydvBAyorMoR556TrEq/pcXvPR6yyyUA+x8zO14TmlWQ1u/fKxX8W5s+j3LR/B5mbstfHy2hABAIMq9Zrx1uyh9zzkZm9d+CVz5AQMC/DgL1lJkXWRzYSHvvwgvXEIEjrrem5S8dM2Q03Aj8aaPooaid/Djvj/KNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770814525;
	bh=X9j9lwfMQ1zcWdtvQCMEPl8mh8qLzXD5SY+IsSV3my8=;
	h=Subject:From:To:Date:From;
	b=k1SKUl+gUAIUtjL924vNDwIXbVKQnt2K2FpnYK8jpxBtzNAEz2KzddGx1zJHoM2tf
	 jrlzvi4r5yaYj2gK1QGT5ASWnH7MWiEZAX+YrGgWZUspPfR6ao0UhmrEIlKYIREOU6
	 u3B1W2Em8rUCgkrmgwWP+BwQCoWPonFSV2rUHG58=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A7D7C19424
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:55:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4A4D739E961C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.163 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 11 Feb 2026 12:55:19 +0000
Message-Id: <20260211125519.release-6.1.163@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.163
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.163.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.163.xz

Linux kernel version 6.1.163 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.163.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.163.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.163.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.163/v6.1.162

