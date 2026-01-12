Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D7933AD93
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250059; cv=none; b=r/9zcx4uxHnSCB8HBiV2Tq31MI/DWdgj/Vzq3SFLPEPi3mJogBSZ9isXn5Dxb8vv1zGwKqkKIrXBUQRkgSuS9vNloJI+mhh87o4jAyhoBlKK64nmrUwhDwCpP3BTMgCpA84qxbmi58rJrM+IWHQewK2Qbl54Suo01rQlbvpAkgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250059; c=relaxed/simple;
	bh=0lGAU8PZv/HPwMgKte1Ap2sbEFF9VKPs+JCXmRDQ9Ek=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZO9uaa6pKaK6T3O1iZWQgHSL8L0athPdhXOMN7SIVHo0YooypbBuD8sH1xnVr08eReR9sZ/XwWXV2JacvDcWbGzjJsEhEYKnklwK9+C/KobMHhwh5YbEMAtTMBB2md7gUKN8IA+2KdCgf9jI9CYHy9AtrmDgBmHZqrjlhwCcD3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768250059;
	bh=0lGAU8PZv/HPwMgKte1Ap2sbEFF9VKPs+JCXmRDQ9Ek=;
	h=Subject:From:To:Date:From;
	b=KF9awnMptYI6j61P6qFeGjqtlsYtW47KzhwlIYGy8Be7N5W1xb8jO5f1KLXxdCR+i
	 i05JHkbaNVMQ71KamKQzMBhbRGZ6GvIpFtTnCyvaCYKg3EqOA0a/GtuML5Esj8kGsX
	 Rzul40d8ky6yXg4H/jsYkkV652iNTq6pBH5rYJCg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 966FCC116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6C9F380CFDB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.120 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Jan 2026 20:30:53 +0000
Message-Id: <20260112203053.release-6.6.120@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.120
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.120.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.120.xz

Linux kernel version 6.6.120 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.120.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.120.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.120.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.120/v6.6.119

