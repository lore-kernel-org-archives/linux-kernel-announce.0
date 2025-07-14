Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADFC24A07C
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752503117; cv=none; b=nMQSqHeJOP9zAtGOcmP+vdXXkllPeJLfAJSnOPVjVL/Uaw4PjLKzUeioDjB067+rgb8H1OOocbNx77k5bs3cDXCslZw7mbr0PhCi3QTlIZjfXZJrndEacXC7ypx/V8NLOIw0/dcSYkzHoJyyXNFjRNpuvD+h8P1eYC1CjG4IFWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752503117; c=relaxed/simple;
	bh=IoGmYvwSnMjNaA46CXL3pkI6b5h3iNmD/XIST6oSorA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M58WnKfsJPfTTu8P9cHGj0Utc+FcHu63qC3sZusWIi/aLRz83HjHJuTnR8fyk+K2HCnShchiody54RU3hbT2ilnJIssv+3iPmk2V/4Qo3+1PUd6pZgUP93bpf7jYofksiKXZIHlAj1csn/FNjkIJNMwrOIgvmwTMEdbwCDblpWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752503117;
	bh=IoGmYvwSnMjNaA46CXL3pkI6b5h3iNmD/XIST6oSorA=;
	h=Subject:From:To:Date:From;
	b=l5RkYvH+atcrnO5M60WDVSusemLitn3TtebTKYc6f67e2tO2S6E5AZ24LusVRMk4B
	 TYh5QM3hMFRIWmizAYIIP7YuvSA70qYBVC3YtzOklbQYU3nj+pfdiBJxZIwOoFaIJK
	 ws0s5MT7/uuGN6h3jEjLNWSLsPpWzvNK9hG0v/xc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58E3EC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D44383B276
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:25:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.38 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Jul 2025 14:25:38 +0000
Message-Id: <20250714142538.release-6.12.38@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.38
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.38.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.38.xz

Linux kernel version 6.12.38 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.38.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.38.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.38.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.38/v6.12.37

