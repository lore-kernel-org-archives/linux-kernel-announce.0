Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C88F130E3F
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709737254; cv=none; b=twiG0JTIujqkcnUvJU26u6oFfXEfw1H4oV9v48OAfK3S+itM62ql/rHW3Z1C9nNekUJsLxmMJzrwV/pce/xcixZ+JdO2cM9dKAZwn02mofx0YVoVRAVCUvguJTn3HAJLDj6ZNostZ2XhdjjmFkkcleuJta1fK1/nB5ZtsdiI0bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709737254; c=relaxed/simple;
	bh=v/VvNFjTPvv/q+gLDUKIyt9iZqv5SczVs66+djVimwc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=b7+KxtzcPHEs3Yu+V489dB6YjAYhMp2aWW+jJ2cahDF9Hje0oa2Uz9dqiZqHJ+gqCT+tqu37dKVeqBJsst07iwSCYpHgybeGd4TECGoa86pDcEOjL1t7w6rKmHALRthonNqNPCkSuurs/18/xMFLAbtzXriH64ePx0xYM9u0iQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709737254;
	bh=v/VvNFjTPvv/q+gLDUKIyt9iZqv5SczVs66+djVimwc=;
	h=Subject:From:To:Date:From;
	b=ZKp9H3kCMLsa8u6ccX8ObfU1fyPUcHoRKNKSg2YJTw7F/Cl/L+U+QiBjRYhipCE/6
	 c+mRLuHCXGnrMZ3/HLHlmIp3cOE0d9hTYVnGiz30Toi/a60/cYRbU23iFysO/4bUB7
	 WsWZeXymi0d3KmQhhnYnNgAtc69OgweZHUG9/ROk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B24FC433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 214D5D9A4B6
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.151 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 15:00:54 +0000
Message-Id: <20240306150054.release-5.15.151@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.151
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.151.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.151.xz

Linux kernel version 5.15.151 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.151.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.151.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.151.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.151/v5.15.150

