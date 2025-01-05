Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F15487BE
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Jan 2025 22:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736117493; cv=none; b=Xk5ldKWj7ZPv/7w1QGWZhWGlR0DsBneXScf5ubpLklO/ojDDFjb4+wTWpJMohmhsatkLdzWKYtuSkWE9U6gsoVtIsXJIGPRQwSAMTSjWhk3h4F8ichXlmLFYL9XYoGC88o9yq08OkjokDQ1Zy0anZJdB0nSMufDTKLG5bnxg//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736117493; c=relaxed/simple;
	bh=SPaMQNiq8aBEyEaw2JWiulWFGaHm/Gbt+Hs+PHqHw+g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OMGcIA/sl3A2tYZcUoVGs20hNqTmymSpGiVMleO8n/b5jFo98PBUOjN6ud7TumOwfr00n/bpr0aTzRyQu7tPPrEiqQCed2FVFLXtSEGszqF5TCDz2QsQvAAta2CXA36idmYR47X1LlC6/6ixN0ldd3Fthccc+Kkkvwrmo9E7Nu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736117493;
	bh=SPaMQNiq8aBEyEaw2JWiulWFGaHm/Gbt+Hs+PHqHw+g=;
	h=Subject:From:To:Date:From;
	b=KW7If/wK5A03RNO1CbuDAKUrTUOkRjbzsYO8p4IX8x7MkBnBWchRNRHL8c9UH1tFl
	 iFWLLI8G8SkgP2RTuOlmDbOKAR7LM7rSZ7PNUnueh8RtJlOjzcKv/xwQYKNLvX+z0K
	 ngjiG1Z/eW9JFctFBQPf1BCOzVfktW2bE1dcSjRU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C404C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Jan 2025 22:51:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75358380A97D
	for <linux-kernel-announce@vger.kernel.org>; Sun,  5 Jan 2025 22:51:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 05 Jan 2025 22:51:54 +0000
Message-Id: <20250105225154.release-6.13-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc6/v6.12

Linux kernel version 6.13-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc6/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc6/v6.13-rc5

