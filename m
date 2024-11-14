Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702FA1E4A6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731588036; cv=none; b=fZfpMxWeaz5RA53GRnehvUJcsstqmuX4d8zgbC6XpJ/Ds/HL5EMkjk83RCxRyupShxuxM34XNOE4IRGm36Io270FgUosnpklvhHSSNfe0nZCdoqSbaCnPjix3Bt6wBYlTDmTG9X4UfKlwksNiNECpeT86c4xdQtcGCLqopXYIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731588036; c=relaxed/simple;
	bh=FTyEkaC4//gJmt/C3jOXG1uAHO2YhWk7oMa9aM9blbw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qjeQWNoyeC3zQ5tv4z/60Unb1eG2B2zdya8rBzTOrXGu2xzQRHjYtfEvLy4Ea8tlrRW1eOGGBDilJfOJHGQsfzXfzjWEYRp2543sQ9CnaQMFTEH1qgaihaBLKpuXYTk2fWvAHY53mG/c8eoBOBQWfNdlMzSEQpYZ03dQvX+ZsUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731588036;
	bh=FTyEkaC4//gJmt/C3jOXG1uAHO2YhWk7oMa9aM9blbw=;
	h=Subject:From:To:Date:From;
	b=rornZ6e9wNyJPgBkZmk0h23IVoRr82DSrsMN1K9ybZ3oFwtYLwrs5E2mIKPTw1fn2
	 VlvtAKZTgpyv4C36TW2gS0hf6wmtL7oqUqkr0+zCKezzjGaX/l5uApzN9WoolJaoJ8
	 YZ+cDZr7rH/iijurvqDRTjo7ZC+pttQNNgvGBOfQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D41FC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:40:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B27973809A80
	for <linux-kernel-announce@vger.kernel.org>; Thu, 14 Nov 2024 12:40:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.61 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 14 Nov 2024 12:40:46 +0000
Message-Id: <20241114124046.release-6.6.61@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.61
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.61.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.61.xz

Linux kernel version 6.6.61 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.61.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.61.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.61.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.61/v6.6.60

