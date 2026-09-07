Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED37361968
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788795399; cv=none; b=Z2iNPs6GIGl3x73xc9Gybs84Z6c3riAG7HahdM7Xlz3peFHB6MYeGNCNaSgF0JrvsICb0NMAhJloY6bmf242zWcURxxzcs+xxFbcn1bfK/OURl7LIPyp1hif1NSf0ANCsZyPiCLAZjPZWsYBTqda6kvgVL+1c90rVR27J1UfP78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788795399; c=relaxed/simple;
	bh=3RlfJumU0pCF4RdyKkJck8i5eRVZE+5Cg8CJdXDsrYQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UlcZeQbPz4q/rxzZvRODIaipNb7CB56Z+mjSPJZQB16FDT3NgKg25TxVcj5qtyN7dY4FUyd63W/70CTwEWqhPt+aNmCfQXuGUGctkez4CTRp4Nsnws3oyNEuArb51fD/U7rp6bgBWcgBBmmb7hN8Xq9OOHidu+B2sx4Sf6wHR08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788795399;
	bh=3RlfJumU0pCF4RdyKkJck8i5eRVZE+5Cg8CJdXDsrYQ=;
	h=Subject:From:To:Date:From;
	b=cyRiiPk+8UGP7gkXrd2xywnS/VOP9MIM5E7MUUX7nZOohihFJBzMz2l+lMxvv5dyf
	 TrCmIoZR0YvLZb1Xxxgy29wl/Ny7odKrXjVUI+nBxvjGWpKSdApSO/TPV6qmaRFQ/f
	 7bD5hdUpXlGsy027C7d5QK4uUja1+h1haKsgbpOY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4B241F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:36:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C2FF39E4DB3
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Sep 2026 15:35:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.109 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Sep 2026 15:35:36 +0000
Message-Id: <20260907153536.release-6.12.109@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.109
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.109.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.109.xz

Linux kernel version 6.12.109 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.109.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.109.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.109.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.109/v6.12.108

