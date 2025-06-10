Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4835228CBC
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555378; cv=none; b=uZAsQ9OJPq8Vz3lF9AyUO5fOXEwZKIIeJ5pPeJF9nHyJapS+NM15Brh/TqSfAYRsnAh2L6U7zhCmIjap5SynNndekeBhoDHrrl8RGQ3c1g2TvwjltiTkO33SSfnj9Jw9+3IdlqCv+6oIfXt9WcydSIb9Qk+gLYvvAN+5U8vX8Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555378; c=relaxed/simple;
	bh=D2OT2JU7IXYMtnvZkFAgNdB7A7VpcZEkAfZ39ZzPDA4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sBGtXDSwmAnkO1JCnQU/EKQWXzc9UE+PzzawCbhI+tyy9zM9f1KAGf2i7KwYeyskl6SiM0ck+c7XD7oAth7rqK6TlPHcbC+/FrVVMf+qfoq7Va5aI5Ao78GsDPFXkagFEcaVxX6PcBD37XoDjEMQwCsmkTicEbU2DLRIMCzHCsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749555378;
	bh=D2OT2JU7IXYMtnvZkFAgNdB7A7VpcZEkAfZ39ZzPDA4=;
	h=Subject:From:To:Date:From;
	b=r4911+tjrLGL3LL5hrs8AFk96dGqg+PG13P1FD0WKIhbOsSyX4UwHp5EInVD/t3dX
	 MoEFWolS6vjqz37PAFPPmwC+YWqwTw57lcarPcV1A1vVKSjqTiK0cruk8Tf/f83hSZ
	 ex0V3lMiE9Y/x/Ebod19QiAUKKvwM5c0e6gefGzE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B958DC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:36:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70E5E38111D2
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:36:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Jun 2025 11:36:49 +0000
Message-Id: <20250610113649.release-6.14.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.11.xz

Linux kernel version 6.14.11 (EOL) is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.11/v6.14.10

