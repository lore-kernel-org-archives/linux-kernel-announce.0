Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CBC1C6B9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716647747; cv=none; b=Q3yxLtLhXKMNBaOY5I507UCcAL7Qh2J+eVRNdi5hPG/dFf0rS/vjjCVGC4FaMEys3Dw1n3drbmGuMiL5NRvvH8DPsJz8Fbr4jAN+H9pM5dWpggX9qmgfRIPfEhk8nraqRPhL1pEV0g70MOIEQ2f+f8deUAKtGC8mQlYuB8R2Xm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716647747; c=relaxed/simple;
	bh=C6q+zhqCbyNnBjA+mgbRL4uhJObuKXwoRmROXfj7ZQk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f8Lht2ZfnfCDv+UChIhGnasm5DddXGJkLf5QmG5GAkf0PN7R9frHJ+QqfQ24qpnY6YlL02N2nEV2u0W6zK81BAOVN1kHXl4ioXlJxLwLhiKjMuFf0Id0Bx7CnINnewjrOmuSZuIY8oUZ9zgwHcqTqxAZ9UR9+leQLkIwS2KagI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716647746;
	bh=C6q+zhqCbyNnBjA+mgbRL4uhJObuKXwoRmROXfj7ZQk=;
	h=Subject:From:To:Date:From;
	b=Y15UzlklNskjhA7o1yR1P1dVJ7Vns3hi5JXDbc3Tx9utstETG01utzDfvalvO/6tu
	 +GtcfPlSHcqnz4i1azONgUxoTSs3BgPxsbIG3E/lTcW8LxjzW33LSuWfe6xuhQ2cli
	 3xOZLUvvCaAH5330rxJ1xHAG8WNj6C9GaatMPhBk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDC8C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 81453D38A64
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.277 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:35:46 +0000
Message-Id: <20240525143546.release-5.4.277@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.277
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.277.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.277.xz

Linux kernel version 5.4.277 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.277.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.277.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.277.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.277/v5.4.276

