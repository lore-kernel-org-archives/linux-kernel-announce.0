Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0293822B5
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781870427; cv=none; b=YXm7RolSWInG3pTTmdholw1Te21rcrzu9cWHrOXJ4K86lPNKY9ITUkoA+8KDYRPWDidOlcMXo3Syaa+CCKt2J/3h/OTMPvJfoUck2UEjt7vdJ+RVkOsPbgXK0D//zwbVrl8lWXM4WpnyPtA0mbJjz0dk6nsw/J982lSbdsmJnw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781870427; c=relaxed/simple;
	bh=oXK+oTuwTn7oIngnerLhJ9OwG73SWemlxIEXVxxM+Yo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=g1IPMApBFx/8p+z0/YiF2BbDIJJVUAsyMbglJto9soib8HCDZO2a+rqP+sA31IXUaa6+zRTTp4HaaODeK1+a3T/04W/wcuQhhJR8No7ZpH0rYB3d6NS8c5IkDFJxP/D+/QpiBBOtapmhJuLhDAtKiflHa7HhXoK0EGg1c31ECOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781870427;
	bh=oXK+oTuwTn7oIngnerLhJ9OwG73SWemlxIEXVxxM+Yo=;
	h=Subject:From:To:Date:From;
	b=lPZiTS5rDQ9AkH7RXiDzbwy1A2DWU4h1VADXoXLtL4Knssx0FaLkSX2uJ2Icg3N/l
	 ZUMIuQnMwdN+4puWi5jAv/sjwceHS1iGpwSMoGGUo1ppliWd0CTBay1tbb6UOZ9Yq0
	 BqNrvq1nZdWqpn7wTblVrocItFze5qEkne1RLihQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C4A51F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:00:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0E363AA6A58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:00:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.143 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 12:00:19 +0000
Message-Id: <20260619120019.release-6.6.143@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.143
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.143.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.143.xz

Linux kernel version 6.6.143 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.143.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.143.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.143.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.143/v6.6.142

