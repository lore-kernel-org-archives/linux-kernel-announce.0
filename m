Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FA2211472
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407053; cv=none; b=E2zc0gPfnZilT1Epu26yc+d7T9Mz6YtFe5kXJMXQ5ifnLPVQn3WvSUJAT7EKr/C9wwGaIedWvdkCTbTzuxBonR6V+LI6xp72nudsDNiTbqVXG3NCNjJt4fX+Bu7XR5uWdX+ZbV4j+44qkjUuuAMjZOpFkxBnAFgQl6BVbG1qBL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407053; c=relaxed/simple;
	bh=l4lK/tES1NzOQkfdGfma/5dYlBcswVhsBivfO5ay6Js=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=H2PjyE4bsj5vz0X2i6UbAFRpBhmBxgVlsm5GLdgVNTQaHNYudxXbKkkF4slU5thOWQCyza1ocDe3xaSR3UU3e4kImyL3vHyfK8HS6bymcbWKmULSMKnYOPEpExPMM7Ls5i5B1vBIhmeClHz4brFAQaIcUbK1Fph9Omi7ujZHE1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759407053;
	bh=l4lK/tES1NzOQkfdGfma/5dYlBcswVhsBivfO5ay6Js=;
	h=Subject:From:To:Date:From;
	b=bmdO+04+ynd6vo/jnnYUXkUpdQiE8Z3PyV0gQWVvH0DuAa9FGerw91+nRHmINiExo
	 5L3xzzgY/QCiZg3/dkdA2iRbShXsmXMaMdrTJ7KGJYrKKzVOt6/sF27vHXSRIw/HyB
	 P46g0sl+X9trP2HF6PkT+ze+SOmS55AZflU+RFd0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07DB0C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:10:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3752E39D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 12:10:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.50 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 12:10:44 +0000
Message-Id: <20251002121044.release-6.12.50@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.50
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.50.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.50.xz

Linux kernel version 6.12.50 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.50.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.50.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.50.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.50/v6.12.49

