Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B292ECD3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Apr 2026 08:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775463040; cv=none; b=ZaA4vPM9v7QTnCjDG2f5j8SJB+u9uG//QGRajseQLbglfHYkDhPUrfC3BIFW3BgYr+dLqXB7F9BfVgtVbUoVSMzEirvO3teHXWAUKoVN/CASXhZfteLi5MnibnOvi+VHS5GiYLC2m2WNht/GjSzBB5lZJqUNuSfq73ECBJ9h+ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775463040; c=relaxed/simple;
	bh=AzASPFphoAukkxeK3p0o4wH9Ws1qVk9Q6LGHecHjR1c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=pCJLviHeusSJs0e3duUqRnhyBA6sY1sJs93YeAzajVAaBrR0PTmqzj5p1PRfgko3StKe9AYoo/X8oBI2pAYb3mWyGNp3QhjjMYa3lKiH+mSC9/FhtRei/cSyxtP591DNbbFYubikGrpooTwW8SHbqpulSQ+VgqrO1IduXcUMaIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775463040;
	bh=AzASPFphoAukkxeK3p0o4wH9Ws1qVk9Q6LGHecHjR1c=;
	h=Subject:From:To:Date:From;
	b=DO8YULs2i7e3XXZKGyTBV5CFDT5ej1eboksY3WD/QG4CAcqP9Ue/q2QS0DEW9z523
	 zUU32rwQ0ljHZNpe93ZiLtcgafygiX+7VfXTpO9YyThCHvDPxcgZfnE5vacUPqaXfJ
	 dOoCEnRNfNQaDFDdS+563+x3iz7sICElvKT9R7Mk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 345C9C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Apr 2026 08:10:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7F4913809A23
	for <linux-kernel-announce@vger.kernel.org>; Mon,  6 Apr 2026 08:10:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.133 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 06 Apr 2026 08:10:19 +0000
Message-Id: <20260406081019.release-6.6.133@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.133
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.133.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.133.xz

Linux kernel version 6.6.133 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.133.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.133.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.133.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.133/v6.6.132

