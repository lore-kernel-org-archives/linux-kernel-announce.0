Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E97449B1B
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789387886; cv=none; b=EfY5EB6uZeZ3YEys2X8NbgT1tl2Yfru7454nvwOpPx9brpveoVM0oRO9esG3kQhPm+bAuu5u84+cNPRPpp7lpIJnCW8w4Ykcpk1oKttbGmRlBeAP9BNA7iY8bdBVci5EJmmO+Ax76RNXMFXhlqVBER/qrVqIpZKw/RqQt3VbMQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789387886; c=relaxed/simple;
	bh=jNFLwsUOzyTuyVpbFRpJAUObXZcBJoYYezBPw1Y6vhk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mnDSygbDzGiCCexJklcxL1pqMdR7KiSQDBYCGw+5NGnze5sSBlVPi7JIiyLMiVcQkmsC+zsZ+uyDPXj4mq1mh7K6prMZdUa/CID6Iw6g1QK9oY2jVLwIusP8+4J2yn7pMisN3tkbJtRCFWH+kgo4VSZxPUeOLFfaaqDQy4Ex5Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789387886;
	bh=jNFLwsUOzyTuyVpbFRpJAUObXZcBJoYYezBPw1Y6vhk=;
	h=Subject:From:To:Date:From;
	b=Qfy/O3rBbOHZ1ZzsUXFKC5LvFANkAOu3c0Ct0XsQaRMLT2Wsu9lBzEQWOdrIsM9DO
	 YuOjpmmDGA6CrcH3iecdvTxW5Ugx87saZUb0kdJhAThVFH2nerDcg9kksdXKs/MOst
	 blpN1LSoh83Ji45thy2ZButfQqm0M/+PlBnxb0l0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 052D91F000FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:11:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 5982F3924457
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:10:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 12:10:19 +0000
Message-Id: <20260914121019.release-7.2.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.6.xz

Linux kernel version 7.2.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.6/v7.2.5

