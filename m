Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971ED19F464
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743368; cv=none; b=a7u1LplScmBNqHLfPwqGHhEzQ1IZ9paoWLWKX4LZk2Mbl6Rm3TprY0/ycXX9BE0GrVzSNARPeS/IXFDPoPwZOfl1+XZ14TqaOyNrgZ4THrXdKgKksHZaQbp1ldp+8bYCs86yZgx6WIbiIYPkuXiS7UKeEjsM6XxcDYRzgjdirIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743368; c=relaxed/simple;
	bh=CV3aCPHaxasmUAm2zXdCxTWGePuG5922aA1invf1RQs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fedLlaE8q+3zXBXRX7kNmLH7ehg8NFhh3ouWMQ7IZPDPUZyo+lT6T2rOCU2y5EYHGg73ySFkHSWbYs+36MLQLBnzxeJbG44Ci3z1/bPnXOeSVClnhdcXDrwrQq66MzwiSDQa4ajCigngs2h1B1Wa+p2mEc5ogzJEOcXG05Q+G9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759743368;
	bh=CV3aCPHaxasmUAm2zXdCxTWGePuG5922aA1invf1RQs=;
	h=Subject:From:To:Date:From;
	b=oWAVfJO8N8RHlbxTrHEbD/n1n0/dhI+nYiQD+/DAeN295W858bh7Fl+Nwlbk+Jhtx
	 gWQsdEWuwrJdUrM7sKwwoF5sTCLRbvW9db3zUq0p7y7L0AsSQHYYxLJtTi+2Nfqw+G
	 we2k6w6mM9qeaMG4Ye5QCU+YenkrXHvMsK4yeSFA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D69DC4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:36:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 03ACE39D0C1B
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Oct 2025 09:35:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.51 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Oct 2025 09:35:57 +0000
Message-Id: <20251006093557.release-6.12.51@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.51
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.51.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.51.xz

Linux kernel version 6.12.51 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.51.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.51.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.51.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.51/v6.12.50

