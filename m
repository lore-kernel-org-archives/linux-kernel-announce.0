Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD67D285066
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778851575; cv=none; b=qr6o2B1eCCJzyy8n5fSbqPtaHCI4D3bPMW68KH/8Z/gzLFIooouAGNUHK8JrFdKhYy6Oq+u3vYg6W6yMr1PLSAes6zKwpK78Z0fn/YU56ozMtTETegTjJ+qxTIneVMuxtfgdlxWEgflndLD5div5ONVxc5dYEVfxzFAC7pkiyOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778851575; c=relaxed/simple;
	bh=mxmSWMeYErg4Oxs82/tEBbqy3MSb1CbeZFHo457FM4c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YCjY0w1jgGccVY3/oA+8vMJAaj7JaMPoWqX7tYDG2cA5PFiNQ0DLA4HZE5hW/Un6jvhPvIOhqbHqV6CFx6zC1PwcPSMoHSqFraT4kjpgYPachyrdoNIT5+KbOGkKkU35+Qe8EEdcLczmvP55sA0HQXk770RGIootlqFd2Prpl0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778851575;
	bh=mxmSWMeYErg4Oxs82/tEBbqy3MSb1CbeZFHo457FM4c=;
	h=Subject:From:To:Date:From;
	b=u7c1UbujLVFrAt289uy49SH/Nqx/Xs7PvK5pWFTGT92uAYxTICnwWID8SBVws/CEx
	 y//Qjj4D+yBi1edmDGoX3dYqxJ8Pev+SbhjIjVgR2kO1ej3dacvT3kmquYWkXstO83
	 SwfAaZEe8ZAMNeP0COm05dMI+oAydC9RzCITwJJw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 886C8C2BCC7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:26:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB1E5383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:25:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:25:19 +0000
Message-Id: <20260515132519.release-7.0.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.8.xz

Linux kernel version 7.0.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.8/v7.0.7

