Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930CA134CFC
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709736946; cv=none; b=mn6ACWll3SiplcawHqe4BmwIhLY3BWzir7qHRpYosUVwlxLf+7AesL4Hqs0Ar8UN7BZPg7on+jlBkBK+TyPtPcSreI/rsQX7pSuB21P2QhmMENwxUe1v6CAMxA4Ee+HvXHChrYnBO+6Xr8a+iLaVpKcMKwGY2YE2S1JMxLGEWr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709736946; c=relaxed/simple;
	bh=YvYPpKSCsavpG8p7qKyJBKtbdnoNgZOkK6d2AkUasjc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=u/MJRQCN0dF8f26lHO2kmLF+8ZPNAix2bNbd+swQfxQ1y/FBrb7N1Dr1FeCS8yAJZylDC2MC+FeypQfCKQmLE2veLpou4+Y+igHiddDbvXL/0CA/AMWNYbCDtEAB99vjgyFl/ruWa3lc0GejM4qzABcYwc2xD47BgdsSAM1jL1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709736946;
	bh=YvYPpKSCsavpG8p7qKyJBKtbdnoNgZOkK6d2AkUasjc=;
	h=Subject:From:To:Date:From;
	b=pd8b09iN6PXUV0H38Jt+9NEMme9JfT/aWzEOQehCpBiV5OJ1MJBwsOVta4rdgRIQW
	 kA5DdK7L5q3udysT9V8SOwlUrpHn2dRYtITMPKR4kwCZQjtIrTJ4UNXJqf9PkRNvz4
	 75W1/mrjexKMlBJC+LBOeOmZU/h35enxBzkfbKkw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3999AC43394
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:55:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 19F5FD9A4B5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 14:55:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.271 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 14:55:46 +0000
Message-Id: <20240306145546.release-5.4.271@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.271
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.271.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.271.xz

Linux kernel version 5.4.271 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.271.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.271.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.271.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.271/v5.4.270

