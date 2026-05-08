Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D267827FB37
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 15:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252477; cv=none; b=ifWiHSbVZ6LYRgEJl1rUKqtHYZbRsM0uBbJe6UxJHvXgYhEZqHNKjzQZQP8HpYnWzFNskGTUJa2X2Fsk3bvRstdHarjGy2UxtH+Ip1G3TQEzcAnJytxnm29oA7Y4te0ZS8WlJfRbkJPxZ9de51m402utDtbbMeJ8KG8nA5uiFAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252477; c=relaxed/simple;
	bh=zYDzs21Wuni8LyDCBFCeGr6ooQaWLDUK/Sl7gOnNccg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UUiuEBWGQz2q3g4z6Co71SBRG6GlW1yAbkcrkRbY1fAix7wLbT3W8t6osuh4Lp8o+jLMbDGq9fcR28dh003CHoOBdG79aMqenkD1LH3uBDpS64arnrfXuxG648ykAvYZLCMEU8AN+3hBBKNmHvqmxcrr9zcFZm2RlY9aMkhjK20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778252477;
	bh=zYDzs21Wuni8LyDCBFCeGr6ooQaWLDUK/Sl7gOnNccg=;
	h=Subject:From:To:Date:From;
	b=InZ6YSDtDo3DMcAfTn5QmNKYJ2kwe7OFWkfyqviNIs4MVqZQ97CKfFaj4cLuvBRjU
	 eVPSs/qileTHeFCzkqIKglI8myuCtFsUyAn7F004fi5+a99p638Jot6BG3sOZp2gh3
	 dYeg31Hq6doUE6bl/sajvQ4LWsHvf3Zk/8lFxgKA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887CCC2BCFC
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 15:01:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42A153811968
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 15:00:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.172 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 15:00:25 +0000
Message-Id: <20260508150025.release-6.1.172@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.172
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.172.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.172.xz

Linux kernel version 6.1.172 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.172.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.172.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.172.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.172/v6.1.171

