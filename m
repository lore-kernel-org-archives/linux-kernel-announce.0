Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE6E361977
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785750076; cv=none; b=ecyEGGi8wur0ItO4mlj1UAsj6aFot2lyDOx3lgnEdofJV5LYGIB8HTpVNJtX3D0RZMLlpLwyyvcJymlnRdMgQvs+BUbe6VOrD415V9tBeVXwkZjn/IASbdVTIvfI9NtZCTXuIUaQO4GZ88QqZXSljP8bVqWdn8b0CUICjtUMM9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785750076; c=relaxed/simple;
	bh=jxctAIz0dluLeJI8teDc4hzxU1hnGoDbVpHJwiKpWYM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NtXtos/lkq/ot1jRvak1mkf5x3AIQZ5sYLoReP8YXAOwKoNh65PtKfNFOwwaaDk6btN0OzE0vjZWYj521YwBgpjI8D1dEXS7MTI2LOruorkPjKXiH9pfY4aXnPCqXwe5jsK2wtXbTc2qEdnspK8YNJUN/xe/srFsXSgH02WU/g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785750076;
	bh=jxctAIz0dluLeJI8teDc4hzxU1hnGoDbVpHJwiKpWYM=;
	h=Subject:From:To:Date:From;
	b=SV+EWWfyWrFYkTRctSushESA3AILug6O+cshjwWF9gXYkeQu4t/pun1dhyA6MfBd7
	 Z0b1AiRZXQqyf3p459DFAv++TphS2kOFEcPLSafzLVoilUSbiNKfIvvfiuTXHGsJcM
	 v+KeeH/3sAtBbJcXl1ixZel/HuZl6j2oq3PoSmYo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91BEB1F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:41:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 197EB380A949
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:40:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.42 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 03 Aug 2026 09:40:35 +0000
Message-Id: <20260803094035.release-6.18.42@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.42
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.42.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.42.xz

Linux kernel version 6.18.42 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.42.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.42.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.42.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.42/v6.18.41

