Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C1D3A3E6E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419725; cv=none; b=d1iY74DcJ+UGIglEk6k1gCJLjUMDO63bIYZUFTYvcpe5jYYPFhXoaR9B0nR9I6EQ6SI+0OQqy2fdewFD//DEc6HZEHd55w9Rf/xL1MI2kYHl47KKWJeQXyPy+Nk71dOHWyvo6Z+qRx7z6gqXWmkw5gossoiqEjImFCyHA/qWpEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419725; c=relaxed/simple;
	bh=vwal23TgYvJQ0Hf1J7EAqD8vGG8kDVTNi097kZvi8IM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MAMLbYLWRiA6BEL3wCjJQeCsdnPG138WIjHAk2oupPbqR/2EIViXYyjwjpdc/QG5uZAQCyXSdqBTC/Ke/GTbU+Uz87uLDoEQMRrmU5G/MtP+GSNDFJ7FC61/SV32/McanAwUnoERAsMIoJqBV0M5Fm96VCFJX+3EoD991Yo5RN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773419725;
	bh=vwal23TgYvJQ0Hf1J7EAqD8vGG8kDVTNi097kZvi8IM=;
	h=Subject:From:To:Date:From;
	b=bW7x6iCr2JAKDo3yRa3GbTBPeF8c4T1vGgxkjYiS9bYQ87xl1Mz37bnioSEkEAr/b
	 MRNSsUia1Oga7IxWjHbLBv22IAW5i7v9KpTJBOgeoJKT8TfFHNBw2Y3dG9qSO+FDH3
	 lYW2YQYGMm/N7hvK92m0wPPcB6f8wtWUh9PF8iHA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EC40C19421
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:35:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05DF93808200
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Mar 2026 16:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.77 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 13 Mar 2026 16:35:19 +0000
Message-Id: <20260313163519.release-6.12.77@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.77
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.77.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.77.xz

Linux kernel version 6.12.77 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.77.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.77.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.77.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.77/v6.12.76

