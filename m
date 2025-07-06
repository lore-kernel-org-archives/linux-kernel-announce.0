Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F021C1F22
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751793914; cv=none; b=SAGOIlUN3h1Ou/yM8+gQG2BWtoSsBXcsR5PT3Snb4GYpfVUdyYNxfVrZ825oJH3JMH6KQR4KIn9RXtlAr4d2R5LM+oPapyDpHU/B8fSOjjnVoa9v11KFiDdLo4LLA4hZEsoshMyUIxYMk1vk4vqXbswP45cbhkm2kT1aZZiwMVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751793914; c=relaxed/simple;
	bh=L9YbZq+voZoqVL1ihaLOhlNY1NMgDY7v2GRD4AuXoVA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mYcjpCCzBYabI1qu+QwsrWHm5ibcuP2IhLx+bx+h1hrKw9W/GPQ2b/9194RnVoagPlJI7N0pyAd6s6WF5FPGMNUcK3vx7QbrxutL7G+kG4cGV1UAVmkD30tDrViHT81CRX35M68MZA94+hVCdOjiY5PwI9Edz7vkvNgZy2we8cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751793914;
	bh=L9YbZq+voZoqVL1ihaLOhlNY1NMgDY7v2GRD4AuXoVA=;
	h=Subject:From:To:Date:From;
	b=BHg+k9omaFlnvxnaz+KkUkADQxoInyh0PEcNPkvfb/Af1cj3341CoXES6wnxCQ+fw
	 6ZSZridur7pVrAq/SPRPRmvjZ/WgNurGDH9yMyd57CIamW/ibkr3UShs0GGb8HNqM8
	 eYg8k3bvdhx2rCYMFwPYt7qZ5AQCpp8MCxG138zc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8493C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:25:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7474E383BA05
	for <linux-kernel-announce@vger.kernel.org>; Sun,  6 Jul 2025 09:25:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.36 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 06 Jul 2025 09:25:37 +0000
Message-Id: <20250706092537.release-6.12.36@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.36
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.36.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.36.xz

Linux kernel version 6.12.36 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.36.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.36.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.36.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.36/v6.12.35

