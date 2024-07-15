Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604206AB8
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721029845; cv=none; b=HA9nneZhRV/kswDrl1iCk/FiDEJBwD4Zy419c3ZZy/IY4BFJ0aVuDBw+Y8PrzDIzjpOfVQto0bLyGWThWCFPeS8Imw3Lf4YbpndWShojb7iftWMSoq2eYTmdJodVQssjbNkt8c13jCslaTFOBnKqPsZtzPvYj0YfkdBRLfQtjQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721029845; c=relaxed/simple;
	bh=N/OS0KkX15rdN7Wjw5Xr5fm5RIzyAi+KIYBvYLItOEY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CiHNZbfupUEo7qFqewYlaKtL4QgSgvkksWd4nw+8wwOcWAOvXY+YIzZpe+K1WoZzeXvSBRmWlTauOplhTQTV2j+80aG3M9CM1HsDrzumokPbhHg77eQfxvw3g2nZzZmIsESgktLQS11dZh4yBNmGjsLehakdTs+j0goIZY38FbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721029845;
	bh=N/OS0KkX15rdN7Wjw5Xr5fm5RIzyAi+KIYBvYLItOEY=;
	h=Subject:From:To:Date:From;
	b=VFMa0ZnZa9LZX7yWkXF2HhhUnS5ILOauMX9/6uq8lm/LUOowE8F/fNcysmlpHzvEZ
	 3Ksurej2mSJDpIgJ4UnWh7GtfsdJLTe1z1VgMKaNSrm32990HFXNhRLsDMnqbsjSMn
	 xYqoHn+C549K2PYe90txeTuaa2mv6b1TincmhWJ4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 087A4C32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:50:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E7153C43443
	for <linux-kernel-announce@vger.kernel.org>; Mon, 15 Jul 2024 07:50:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.40 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 15 Jul 2024 07:50:44 +0000
Message-Id: <20240715075044.release-6.6.40@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.40
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.40.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.40.xz

Linux kernel version 6.6.40 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.40.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.40.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.40.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.40/v6.6.39

