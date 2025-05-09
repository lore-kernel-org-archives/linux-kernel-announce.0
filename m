Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8095A270EC3
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746778201; cv=none; b=aTZ6gl95mlxcbsij+OOWNjvligHym67X3SlpI7FBb9whO0oWy8WVCSdQfbnXcrJ/HpxCFGSlaDQxQpFGtPQM0Sz97xVDEsRONEiJLoL4QMkuOKPzNX7YETIHGFbOvN1nhF3PFq6EB23KL5OXbVSNpPSQJHKkG6yYYqwZdzA/tRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746778201; c=relaxed/simple;
	bh=JN45896q8Sqhtk9pkoK+X5LaVDAHaPNFojI88zfyaz0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YtI3DcP5n5WZl0cPnIjqZOXc/Hea32h4vR3tjku8w6bIoduoDbjzsJ51Q7dR+Jq3Pd13B9QBrUMDwkPC9AL/G9ZVGTY916qxBodE/N0GfESQZZa09NQWzxo0Lj6WmOEM5HHChYSGaJzto6RCE3SYDszJZFkNMce2EJXdRx8rvOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746778201;
	bh=JN45896q8Sqhtk9pkoK+X5LaVDAHaPNFojI88zfyaz0=;
	h=Subject:From:To:Date:From;
	b=iku4nEbiygbA5YGDOEBn3vOPUZ4ZuE2rEhSgKloMzKHXNL8jhSZS1V1Qr6e/8Pnzl
	 q7X0/AOD8GXlzUO2oqAv6IncqHzL9DIvHvqA865T3u+z6UFS70lZEb0GU23ryAI+yX
	 D0/lzmgOCBPRJMA65DE0rwUjK8fjaWZQI/we+T64=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0090CC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:10:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B13FF380AA7D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:10:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.90 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 09 May 2025 08:10:39 +0000
Message-Id: <20250509081039.release-6.6.90@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.90
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.90.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.90.xz

Linux kernel version 6.6.90 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.90.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.90.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.90.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.90/v6.6.89

