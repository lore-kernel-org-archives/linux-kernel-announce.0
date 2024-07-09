Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67704148FED
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jul 2024 10:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720519540; cv=none; b=ubx8S+8bQlvP0fgwkPGUJAirSESVhf8XCVWK7RpwaEhZtAXbv8qw9rVMrMkP6a6JpXj74zge2kwEMvlX8gfb7rQd2R1Pvl+SkjeO9DrVdB0FfwmI+ej+wnxKtblDd7XLmmihB3xi+yaUZds//3oFWEtcA2DyTUL1+LAK3sPddOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720519540; c=relaxed/simple;
	bh=6TNWGIA1cdAu6hNaO0UclFrt/UsObmzDMuo6SZaAuDg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=IdzXLNf5Mg3Qg/V8DDnXCPu4iUV9qKe5zS0vJhhvuW0uJmhVv1/9o2jpd/rO5Fz2tTaXY6yPLPX6DezGYZjzqcgaUwWNb8kcEV4uByoSoPOMiJoRk6s6+malxS83Fot7yhp8vgQ2fj3+WzuX5ZkWwVTSaLDkS7ukKFFJmLUpUak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720519540;
	bh=6TNWGIA1cdAu6hNaO0UclFrt/UsObmzDMuo6SZaAuDg=;
	h=Subject:From:To:Date:From;
	b=HlHHxc/K22N+KqxCva3LdUHTWJ1MrrACVRx63xeh69fhSFYVA+wavftpvmA5duKNe
	 hHdJvTA4BvA6DTOrJrtWp6cUvoJGgDiOR5YpjLa8GXszdvVM3MtNmqQAV79/zTCK+Q
	 KP3+/0y8MrQx8gljIH2gtl6Lgdp3KP0efWA6eNoQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB194C3277B
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jul 2024 10:05:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D9C5CC433E9
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Jul 2024 10:05:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.38 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Jul 2024 10:05:39 +0000
Message-Id: <20240709100539.release-6.6.38@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.38
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.38.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.38.xz

Linux kernel version 6.6.38 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.38.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.38.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.38.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.38/v6.6.37

