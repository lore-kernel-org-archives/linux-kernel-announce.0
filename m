Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E73A0B13
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775129737; cv=none; b=GaudI1c1PUSTWS1hKGWoJ9MrNThM7qjmLt8hrFdZIb3ked0WVAGRdePkSjh782/vtE5onajWGZNw1RW/OIB9vTV0IvY5kSf08rKNmE9fcICxeDtSDAcKhXld731DbDrYyWaj1gJgjbVeSiDDuSKJWs+t/ToHBUn/K893+p2mFyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775129737; c=relaxed/simple;
	bh=PRWz/VPw9p78KtSxyABdWdOeNDW1KpudNI+6GUHleMg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=lBVnU1+g6USn9F/x0Lu3s//w0V5JBrAyzrxhjDkXFNhnVGBTF572UbQWDuUb/Lhpi8C8EVyScG15uAVpdcq+ICUduN6niPQmyVSDEnQOz0tYuwEO1l7/DDcfCO+XGTJH1HSzmsh9RZWsFCle0KOWy+pr3YNOx9PT2aNw1XqyQo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775129737;
	bh=PRWz/VPw9p78KtSxyABdWdOeNDW1KpudNI+6GUHleMg=;
	h=Subject:From:To:Date:From;
	b=hD8/CozUU6JGJ2bG38lr8nAPGRMNz29NEjWfPoA7KRq4LuM/RYGKUr8PG1tBDlUaS
	 AZsgUU+RY9M+x5sLG5UBxYar1MxdWieQtRl6tHWDN8nuSpJsKhSdFwEfMXe8etnXSM
	 9vKf92nS3rpw9BdYaUc7A/6kUlyEymrd+eHLOSw0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1B0EC19423
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:35:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42EA0380820D
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Apr 2026 11:35:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.21 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Apr 2026 11:35:18 +0000
Message-Id: <20260402113518.release-6.18.21@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.21
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.21.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.21.xz

Linux kernel version 6.18.21 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.21.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.21.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.21.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.21/v6.18.20

