Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F705C613
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041248; cv=none; b=cECp5U0NrwWAlT82BwVg+LWjn4mbzUt6kO4Fl+8mb3D1uYYKX/Kzi1tUtdDZ0EDtnH1Wq+YJOxDk9ArZox/pDq+ghIL2OubPZ0uBJpUeR3BKmvVicP5Krfz1N7L7vvODamTuPwojvl6+nQy39I0nyHCRCk3sPgwK5J22RdZkCFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041248; c=relaxed/simple;
	bh=23mbbSOPHWQ+EqTrc981O1TT40TUeq7ukCanqCG4Dq4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=l/OdxZxTFSGvn/Ff2gwrPeid9x1THm/q1BWut42i3P5NoJfbgyB3viC5walSucmZOmQU3rv/kwU3Wf9ScuyiaD45PKcbhEvmqKCGKSCsMmjAJ243TQlcvgAUHjdAsGHiYMjLnK0L9VwJyomd2GUALgHzzv3jKtbwU2D1R/4xwM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041248;
	bh=23mbbSOPHWQ+EqTrc981O1TT40TUeq7ukCanqCG4Dq4=;
	h=Subject:From:To:Date:From;
	b=Y+xalEXlyiOR5wNcLbhBCnLENUk2PnUMF8rj9/6Kx0iLDK9+oZaqNYEjZOD8dnXlD
	 SJhqmcDYxPrVyQF7K+X8BUFEfXLAuhjuFzMHtSG52o0u8Ff90+0lqgD94Sm5Duxk6B
	 Cb+CVfLmUWVjtPTgzufx7X6B7PWxYnRBRGM83hzE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43752C4AF0F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:48 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EBAC43823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.165 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:20:47 +0000
Message-Id: <20240819042047.release-5.15.165@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.165
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.165.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.165.xz

Linux kernel version 5.15.165 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.165.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.165.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.165.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.165/v5.15.164

