Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458863624B3
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785750074; cv=none; b=PUMle5KYM/RRzyQRRCJXMbehro5FcsiGZEOINbR0878//pdQRhE/T2VpsdglMqmiWteX3wEzzFz5DfXHTJQHjgV+NIFPAVtrQgwG8T8f8CdiorO/21VBbC8av1+1HKQi4ch4ETYsV/8E2S78qe1STC2oUA+S46lv/H0OpF8yV94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785750074; c=relaxed/simple;
	bh=T7NiYPbtbYvU12oV09QijnxpXbzccWtIfDGabVdZ5U8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KxdL36Oa++fWuX9/RMEXSOb1bVsF5UfljcA2HygB7H46IJy16sOj0dXKYyyn5dpo/RR/0SuHeJsreru3w2HvyGVxbBed3roSEK33i1fofz6AsT/o88HHF4SAAU51+BfeRECxEy+FsRVDMlhDPz8vut1CK0/cXJ1oh0/wU6MjbKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785750074;
	bh=T7NiYPbtbYvU12oV09QijnxpXbzccWtIfDGabVdZ5U8=;
	h=Subject:From:To:Date:From;
	b=Fkeo32ZvXWWUclOzpgvKUtklufR7s+9KtnNcU6M6Kq+txtagH9RxH3WSkCc5HTGQf
	 UF2vWTyFjuVIJMKyky84RlTp4th16j7eVEy6gOW7ZeRlANwECS+e/qqwUAilW310nP
	 Hk4fTlTFq8oXIE5t6z/v4jKaopp0S3m4XK0H44uA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23C811F000E9
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:41:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9642A380A949
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:40:35 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 03 Aug 2026 09:40:33 +0000
Message-Id: <20260803094033.release-7.1.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.6.xz

Linux kernel version 7.1.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.6/v7.1.5

