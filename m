Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764CE183CA6
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755710129; cv=none; b=D9SqYTMPwgKVfWtDDRyv6pnHPQ3+80T4TUD/kuACndISQb9Qb4+N0P/K/GhaIwq1Jv+evAMICQeAN1r1ePFm4X/K1hJ1VXIsm8osFYomOd9Vmrm+dp2mQvHqsZFApVVaOndTpRva2IJIlAM5TH37vRijGRs/7HgpIqdi5f1pg3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755710129; c=relaxed/simple;
	bh=9ryHBsxh/R+4A6BntafipxaInrygK8pxzKPaLfghUTI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rZEwSfPSWN9vMyBiZx66+D4Ldeqlea4K8/kRDY8I38pwe7Yes1KjvTNq3QX8ifa3YzMUv3N25cv06xrPuFAXXh0Ik/DOR5k0+1YVCi1s4uiHFzIRzhroVjWFffAUi7OsWKuR67dmjX6MQ/b6keKQDRZx6osYeibtgszZVnPoXq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755710129;
	bh=9ryHBsxh/R+4A6BntafipxaInrygK8pxzKPaLfghUTI=;
	h=Subject:From:To:Date:From;
	b=lWwwJabtIDIKyL9CEE5KDa1vbf0iMMviCUP8ExJIGcVaV8XwHhDoXPmace+xzSYX/
	 SzXkaGM1rkQyYuA2sUTPwmVWU9TJv7TZYgqesWk00amK8qs6nXbOBLJ+4Vzco8WNHx
	 R0MTTbX5C+yQ5N6msRij58c5V/HU1vgdFBy1tARw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10874C113CF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1D75383BF57
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 20 Aug 2025 17:15:38 +0000
Message-Id: <20250820171538.release-6.16.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.2.xz

Linux kernel version 6.16.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.16.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.16.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.16.2/v6.16.1

