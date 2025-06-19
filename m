Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C0821ABBB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342210; cv=none; b=eQ/4AQK3WXNZ+RZ2YLtQsoP2EeYWcWcac4uRjCS9/6fEatAXFdISZ2mbJP5Sxu13b3DjXNrkQlkX6bONB+tBPQKbP2n6qUu9lsprJ01aUQs699nYQUw4jh7zmnsAUpwflA/NiZuKY8LS/u2I17pC6s6Ol6ynF3qQK5VsEcWIG5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342210; c=relaxed/simple;
	bh=KzbRU7q9dx2qmov0MTmyeMHfdVvNVuBHWuWCMO/3WBM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XCr65PrmeCw4LMHdFGFtLjXndMm0b3e1TuKrXojMkyIbtjkelwSli7DFOWUyT6nJr2RFR7pEd3J1MCeQ2wxVRfRp3qj1Ab0NMGFsDdurgmBtuGzT5A2pmeJ+jncZCSyARWEsS3bmkz1lpxv9zOG/JEIp15adx9c4eQ9ulEhE5cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1750342210;
	bh=KzbRU7q9dx2qmov0MTmyeMHfdVvNVuBHWuWCMO/3WBM=;
	h=Subject:From:To:Date:From;
	b=WNkwfKHZta3GIYfR5nFR4F0M7UrqOWqhFRy0Jmu4dALBE2l507ir5SHI7ZmRzFQwN
	 xHJhnUciKAGBwQoPB1Ga8Wjsd02l9on43EO/Fl82KoRG+CLNEkWcbgf+fBNzib21Yt
	 C6usJNNNZNZw2PVr2GB4H+JPtMDWZvXuqOGqyIIs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39C7C4CEEA
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:10:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEB9A39F1DF2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Jun 2025 14:10:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Jun 2025 14:10:37 +0000
Message-Id: <20250619141037.release-6.15.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.3.xz

Linux kernel version 6.15.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.3/v6.15.2

