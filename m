Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CCA191F85
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727707855; cv=none; b=Yl4ybiTffdeU98dRJwIaZA6xmTUEWzEmZ4SdZ9yrk7Hexj4EAEQX+c4EP/C+txIVFgOCqa89D4n2NWBr+eAvJYoAxGnaCkfDgeBOePp5FDdwqUnXt7m9N+KkseUAAp+nyneb2FDokDJsOIQqEoJR6zFutR1A8h3eiweEf3MPcY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727707855; c=relaxed/simple;
	bh=nPJp5fCN2+BVqj/+2lVDWP1L7MQ73LnkwnaFqsMi/t4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=s+/KKQZHIVxYeY9KIpf2nyC8U0zOx3ksRiuTvrvquhVvtLgjkZwrEVK7VGv+tlPf8fOZ8A6+bz/5MU7gxwJSwuvTlZt1WiRrc8eyDWtrajL0jy81fA1ldDKznnNl8MCpAhc/p1Nl/jdJtK8NgElaGvyVOZ4Sv1mDusZYZdeLZ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1727707855;
	bh=nPJp5fCN2+BVqj/+2lVDWP1L7MQ73LnkwnaFqsMi/t4=;
	h=Subject:From:To:Date:From;
	b=jWdgK879jhKnfn67NaT30kkn4i3Aanz4sliOwD5RYpyANNxSnX6SaoCwTklqSPo+n
	 eplwoUT8IzBRPq0wL5ms0Q5MR69CdIMwHi1cgBvPyd3ZUJcZdl8cABrPO0jwerl833
	 UKX1DnVnfMABTNSI4IgxQQjY9WXjsTDuQFA3R3zY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABC8CC4CEC7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:50:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B575D3804CB9
	for <linux-kernel-announce@vger.kernel.org>; Mon, 30 Sep 2024 14:50:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 30 Sep 2024 14:50:57 +0000
Message-Id: <20240930145057.release-6.11.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.1.xz

Linux kernel version 6.11.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.1/v6.11

