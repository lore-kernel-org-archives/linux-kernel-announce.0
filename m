Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB919E7F7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293141; cv=none; b=tRIIqJqAogSNp0GaXeS21zjHBBoIZ10X0aMwhc0UPvCZWxd/didKydqliSvBq176DRXLPp40r4ZLFZYSb02JVj2sx9Acr4RsyKB8xeAutJ8Po60HeT6p/J1c15nPK6ZbHGMNmlyt6XQ3LYoJpV1/zXZZULVUu+GVyAeM6dKl1cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293141; c=relaxed/simple;
	bh=kK9b7LVohYeMsevYi7W1P0EYoreg8dokdei2mCvT2MQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KVacJbN8Le/iJQwKgwRUsMTW5TtgdgHUVu6BYu0bWO0v+vv6M26eqZ+OHWg8YJJm7GeOo3D4VJoFTGqst4r43ImLQelh91kCEhyvR0YMz7SYzrKy85b+uBWSS/AYaxyJwCucVWN09Q7ASK5M0Vn6ibvIFidBV5VezIICRoaWq1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1758293141;
	bh=kK9b7LVohYeMsevYi7W1P0EYoreg8dokdei2mCvT2MQ=;
	h=Subject:From:To:Date:From;
	b=GRVQciPfvst2L3i3GS0rR9Y5aL+9+WDU/aDZfBeWt8bM9VNNoFAfIAmt59yJqoEhn
	 kSWNI9ByRMvVA05tk0dR52AeR07YVWzF6dE6gNdKfEQqy973ZIHz1zXH52c/gqAwH7
	 RZku8z01Kl7uQ63C52QDbJV/9NC2MqoAO3w+Emgk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D4EC4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:45:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3783339D0C96
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Sep 2025 14:45:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.153 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Sep 2025 14:45:39 +0000
Message-Id: <20250919144539.release-6.1.153@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.153
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.153.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.153.xz

Linux kernel version 6.1.153 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.153.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.153.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.153.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.153/v6.1.152

