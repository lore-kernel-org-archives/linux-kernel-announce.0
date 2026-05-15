Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13853314A95
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850376; cv=none; b=M5t2xTbF22ZbOTK1MsE2tLPOU+pmphifgrm/iy8YCyo2XqCxz8fZXaKh0ApA1rZqOTxlI5J0kEkYPWERy51/1D9wkasZOtQP9Ht3oFMkRrtJVRZy7w6r7EqMHpZFtoBPwRGE9My2cAq2NAs5qF0ZMAbYj1A9P4bMtWq4jcgNnxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850376; c=relaxed/simple;
	bh=7/thkw0FBSY/i5zEZ1cjXTw/Gw8G0GTeGOCzVIRcvlQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uMQJXA1XNtcbYHjKACLXyWfEMf6B+9QyWhadUloQb4bc7/vwHHOiwhMygzDAgw3B7dLLnnH6EXk22HsjpJjnmc/KxQmz3wp0IrIxxbA3JzCbzPFUl36SVk9SVM5rY01L6bR6KvwA67tLC5h/AOVHELibnqrSdtrUAsOXo/LNWW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778850376;
	bh=7/thkw0FBSY/i5zEZ1cjXTw/Gw8G0GTeGOCzVIRcvlQ=;
	h=Subject:From:To:Date:From;
	b=Q9J3eGERMCYsfJQVVzy2FzZekh/zWChfdC6Yfzwa1NSj8jeOPxxK3TMPrUYrSLHCx
	 aZ2UCzWzo1pXaR3w9T63O0dEkU9V2pnIiku+BzkZG/+WxRAkF2AQMB7JJiDVuB15+e
	 JdmlqVq03Cuql8zN8Ms0Cn8wQSEewatR10HmRMxI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C235FC2BCB7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:06:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 40A03383BAC4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:05:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.173 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:05:19 +0000
Message-Id: <20260515130519.release-6.1.173@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.173
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.173.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.173.xz

Linux kernel version 6.1.173 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.173.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.173.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.173.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.173/v6.1.172

